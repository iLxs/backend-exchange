package com.exchange.challenge.service.impl;

import com.exchange.challenge.dto.request.ConvertAmountRequestDto;
import com.exchange.challenge.dto.request.ExchangeRateRequestDto;
import com.exchange.challenge.dto.response.ExchangeRateResponseDto;
import com.exchange.challenge.entity.ExchangeRateEntity;
import com.exchange.challenge.entity.projection.ExchangeRateProjection;
import com.exchange.challenge.repository.ExchangeRateRepository;
import com.exchange.challenge.service.ConversionHistoryService;
import com.exchange.challenge.service.ExchangeRateService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rx.Completable;
import rx.Single;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Service
public class ExchangeRateServiceImpl implements ExchangeRateService {

    @Autowired
    private ExchangeRateRepository exchangeRateRepository;

    @Autowired
    private ConversionHistoryService conversionHistoryService;

    @Override
    public Single<Long> createExchangeRate(ExchangeRateRequestDto exchangeRateRequestDto) {
        return Single.create( singleSubscriber -> {
            ExchangeRateEntity entity = exchangeRateRepository.getExchangeRateByCurrency(
                            exchangeRateRequestDto.getSourceCurrency(),
                            exchangeRateRequestDto.getDestinationCurrency())
                    .orElse(null);

            if (entity != null) throw new RuntimeException("Ya existe un tipo de cambio para las monedas seleccionadas");

            ExchangeRateEntity exchangeRateEntity = ExchangeRateEntity.builder()
                    .sourceCurrency(exchangeRateRequestDto.sourceCurrency)
                    .destinationCurrency(exchangeRateRequestDto.destinationCurrency)
                    .exchangeRate(exchangeRateRequestDto.exchangeRate)
                    .creationUser("ADMIN")
                    .creationDate(LocalDateTime.now())
                    .build();
            Long id = exchangeRateRepository.save(exchangeRateEntity).getId();
            singleSubscriber.onSuccess(id);
        });
    }

    @Override
    public Completable updateExchangeRate(Long id, ExchangeRateRequestDto exchangeRateRequestDto) {
        return Completable.create(completableSubscriber -> {
            ExchangeRateEntity exchangeRateEntity = exchangeRateRepository.findById(id)
                    .orElseThrow(() -> new RuntimeException("No se encontró un tipo de cambio para las monedas ingresadas"));
            exchangeRateEntity.setSourceCurrency(exchangeRateRequestDto.getSourceCurrency());
            exchangeRateEntity.setDestinationCurrency(exchangeRateRequestDto.getDestinationCurrency());
            exchangeRateEntity.setExchangeRate(exchangeRateRequestDto.getExchangeRate());
            exchangeRateEntity.setModifierUser("ADMIN");
            exchangeRateEntity.setModificationDate(LocalDateTime.now());
            exchangeRateRepository.save(exchangeRateEntity);
            completableSubscriber.onCompleted();
        });
    }

    @Override
    public Single<BigDecimal> convertAmount(ConvertAmountRequestDto convertAmountRequestDto) {
        return Single.create(singleSubscriber -> {
            ExchangeRateEntity exchangeRateByCurrency = exchangeRateRepository.getExchangeRateByCurrency(
                            convertAmountRequestDto.getSourceCurrency(),
                            convertAmountRequestDto.getDestinationCurrency())
                    .orElseThrow(() -> new RuntimeException("No se encontró un tipo de cambio para las monedas ingresadas"));

            BigDecimal newAmount = convertAmountRequestDto.getAmount().multiply(exchangeRateByCurrency.exchangeRate);
            conversionHistoryService.createHistory(
                    convertAmountRequestDto.getAmount(),
                    convertAmountRequestDto.getSourceCurrency(),
                    newAmount,
                    convertAmountRequestDto.getDestinationCurrency(),
                    exchangeRateByCurrency.getExchangeRate(),
                    "ADMIN"
            );
            singleSubscriber.onSuccess(newAmount);
        });
    }

    @Override
    public Single<List<ExchangeRateResponseDto>> searchExchangeRate(Long sourceCurrency, Long destinationCurrency) {
        return Single.create(singleSubscriber -> {
            Long finalDestinationCurrency = (destinationCurrency == null) ? -1 : destinationCurrency;
            List<ExchangeRateProjection> exchangeRateProjections = exchangeRateRepository.searchExchangeRate(
                    sourceCurrency,
                    finalDestinationCurrency);
            List<ExchangeRateResponseDto> exchangeRateResponseDtos = exchangeRateProjections.stream()
                    .map(e -> ExchangeRateResponseDto.builder()
                            .id(e.getId())
                            .sourceId(e.getSourceId())
                            .sourceName(e.getSourceName())
                            .sourceSymbol(e.getSourceSymbol())
                            .destinationId(e.getDestinationId())
                            .destinationName(e.getDestinationName())
                            .destinationSymbol(e.getDestinationSymbol())
                            .exchangeRate(e.getExchangeRate())
                            .build())
                    .collect(Collectors.toList());
            singleSubscriber.onSuccess(exchangeRateResponseDtos);
        });
    }
}
