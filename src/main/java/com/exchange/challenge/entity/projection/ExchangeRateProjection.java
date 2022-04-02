package com.exchange.challenge.entity.projection;

import java.math.BigDecimal;

public interface ExchangeRateProjection {
    Long getId();
    Long getSourceId();
    String getSourceName();
    String getSourceSymbol();
    Long getDestinationId();
    String getDestinationName();
    String getDestinationSymbol();
    BigDecimal getExchangeRate();
}
