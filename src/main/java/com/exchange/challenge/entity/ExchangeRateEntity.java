package com.exchange.challenge.entity;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "EXCHANGE_RATE")
@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ExchangeRateEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "EXCHANGE_RATE_ID")
    public Long id;

    @NotNull
    @Column(name = "SOURCE_CURRENCY_ID")
    public Long sourceCurrency;

    @NotNull
    @Column(name = "DESTINATION_CURRENCY_ID")
    public Long destinationCurrency;

    @NotNull
    @Column(name = "EXCHANGE_RATE")
    public BigDecimal exchangeRate;

    @NotNull
    @Column(name = "CREATION_USER")
    public String creationUser;

    @NotNull
    @Column(name = "CREATION_DATE")
    public LocalDateTime creationDate;

    @Column(name = "MODIFIER_USER")
    public String modifierUser;

    @Column(name = "MODIFICATION_DATE")
    public LocalDateTime modificationDate;
}
