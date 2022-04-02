package com.exchange.challenge.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@Entity
@Table(name = "CURRENCY")
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CurrencyEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "CURRENCY_ID")
    public Long id;

    @NotNull
    @Column(name = "CODE")
    public String code;

    @NotNull
    @Column(name = "NAME")
    public String name;

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
