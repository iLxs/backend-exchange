package com.exchange.challenge.service;

import java.math.BigDecimal;

public interface ConversionHistoryService {
    void createHistory(
            BigDecimal sourceAmount,
            Long sourceCurrency,
            BigDecimal destinationAmount,
            Long destinationCurrency,
            BigDecimal exchangeRate,
            String username
    );
}
