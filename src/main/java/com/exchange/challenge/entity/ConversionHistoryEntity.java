package com.exchange.challenge.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "CONVERSION_HISTORY")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ConversionHistoryEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "CONVERSION_HISTORY_ID")
    public Long id;

    @NotNull
    @Column(name = "SOURCE_CURRENCY_ID")
    public Long sourceCurrency;

    @NotNull
    @Column(name = "SOURCE_AMOUNT")
    public BigDecimal sourceAmount;

    @NotNull
    @Column(name = "DESTINATION_CURRENCY_ID")
    public Long destinationCurrency;

    @NotNull
    @Column(name = "DESTINATION_AMOUNT")
    public BigDecimal destinationAmount;

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
