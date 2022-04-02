package com.exchange.challenge.dto.request;

import lombok.*;

import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ExchangeRateRequestDto {
    @NotNull
    public Long sourceCurrency;
    @NotNull
    public Long destinationCurrency;
    @NotNull
    public BigDecimal exchangeRate;
}
