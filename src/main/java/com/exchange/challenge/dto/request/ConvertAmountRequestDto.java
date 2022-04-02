package com.exchange.challenge.dto.request;

import lombok.*;

import java.math.BigDecimal;

@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ConvertAmountRequestDto {
    public Long sourceCurrency;
    public Long destinationCurrency;
    public BigDecimal amount;
}
