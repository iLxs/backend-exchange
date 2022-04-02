package com.exchange.challenge.dto.response;

import lombok.*;

import java.math.BigDecimal;

@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ExchangeRateResponseDto {
    public Long id;
    public Long sourceId;
    public String sourceName;
    public String sourceSymbol;
    public Long destinationId;
    public String destinationName;
    public String destinationSymbol;
    public BigDecimal exchangeRate;
}
