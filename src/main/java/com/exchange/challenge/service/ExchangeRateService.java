package com.exchange.challenge.service;

import com.exchange.challenge.dto.request.ConvertAmountRequestDto;
import com.exchange.challenge.dto.request.ExchangeRateRequestDto;
import com.exchange.challenge.dto.response.ExchangeRateResponseDto;
import rx.Completable;
import rx.Single;

import java.math.BigDecimal;
import java.util.List;

public interface ExchangeRateService {
    Single<Long> createExchangeRate(ExchangeRateRequestDto exchangeRateRequestDto);
    Completable updateExchangeRate(Long id, ExchangeRateRequestDto exchangeRateRequestDto);
    Single<BigDecimal> convertAmount(ConvertAmountRequestDto convertAmountRequestDto);
    Single<List<ExchangeRateResponseDto>> searchExchangeRate(Long sourceCurrency, Long destinationCurrency);
}
