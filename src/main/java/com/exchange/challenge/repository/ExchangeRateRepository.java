package com.exchange.challenge.repository;

import com.exchange.challenge.entity.ExchangeRateEntity;
import com.exchange.challenge.entity.projection.ExchangeRateProjection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ExchangeRateRepository extends JpaRepository<ExchangeRateEntity, Long> {

    @Query(nativeQuery = true, value =
            "SELECT * FROM EXCHANGE_RATE WHERE SOURCE_CURRENCY_ID = :sourceCurrency AND DESTINATION_CURRENCY_ID = :destinationCurrency")
    Optional<ExchangeRateEntity> getExchangeRateByCurrency(
            @Param("sourceCurrency") Long sourceCurrency,
            @Param("destinationCurrency") Long destinationCurrency);

    @Query(nativeQuery = true, value =
            "SELECT\n" +
                    "ER.EXCHANGE_RATE_ID AS [Id],\n" +
                    "SOURCE_CURRENCY_ID AS [SourceId],\n" +
                    "SC.NAME AS [SourceName],\n" +
                    "SC.SYMBOL AS [SourceSymbol],\n" +
                    "DESTINATION_CURRENCY_ID AS [DestinationId],\n" +
                    "DC.NAME AS [DestinationName],\n" +
                    "DC.SYMBOL AS [DestinationSymbol],\n" +
                    "EXCHANGE_RATE AS [ExchangeRate]\n" +
                    "FROM EXCHANGE_RATE ER\n" +
                    "INNER JOIN CURRENCY SC ON SC.CURRENCY_ID = ER.SOURCE_CURRENCY_ID\n" +
                    "INNER JOIN CURRENCY DC ON DC.CURRENCY_ID = ER.DESTINATION_CURRENCY_ID\n" +
                    "WHERE\n" +
                    "(-1 = :sourceCurrency OR SOURCE_CURRENCY_ID = :sourceCurrency) AND\n" +
                    "(-1 = :destinationCurrency OR DESTINATION_CURRENCY_ID = :destinationCurrency)")
    List<ExchangeRateProjection> searchExchangeRate(
            @Param("sourceCurrency") Long sourceCurrency,
            @Param("destinationCurrency") Long destinationCurrency);
}
