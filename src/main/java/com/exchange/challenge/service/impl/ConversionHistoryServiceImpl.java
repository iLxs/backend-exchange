package com.exchange.challenge.service.impl;

import com.exchange.challenge.entity.ConversionHistoryEntity;
import com.exchange.challenge.repository.ConversionHistoryRepository;
import com.exchange.challenge.service.ConversionHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Service
public class ConversionHistoryServiceImpl implements ConversionHistoryService {

    @Autowired
    private ConversionHistoryRepository conversionHistoryRepository;

    @Override
    public void createHistory(
            BigDecimal sourceAmount,
            Long sourceCurrency,
            BigDecimal destinationAmount,
            Long destinationCurrency,
            BigDecimal exchangeRate,
            String username
    ) {
        ConversionHistoryEntity conversionHistoryEntity = ConversionHistoryEntity.builder()
                .sourceAmount(sourceAmount)
                .sourceCurrency(sourceCurrency)
                .destinationAmount(destinationAmount)
                .destinationCurrency(destinationCurrency)
                .exchangeRate(exchangeRate)
                .creationDate(LocalDateTime.now())
                .creationUser(username)
                .build();
        conversionHistoryRepository.save(conversionHistoryEntity);
    }
}
