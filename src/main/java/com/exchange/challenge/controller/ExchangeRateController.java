package com.exchange.challenge.controller;

import com.exchange.challenge.dto.request.ConvertAmountRequestDto;
import com.exchange.challenge.dto.request.ExchangeRateRequestDto;
import com.exchange.challenge.dto.response.ExchangeRateResponseDto;
import com.exchange.challenge.service.ExchangeRateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import rx.Single;
import rx.schedulers.Schedulers;

import javax.validation.Valid;
import java.math.BigDecimal;
import java.net.URI;
import java.util.List;

@RestController
@RequestMapping(value = "/api/exchange-rate")
public class ExchangeRateController {

    @Autowired
    private ExchangeRateService exchangeRateService;

    @PostMapping(
            consumes = MediaType.APPLICATION_JSON_VALUE,
            produces = MediaType.APPLICATION_JSON_VALUE
    )
    public Single<ResponseEntity<Long>> createExchangeRate(
            @Valid @RequestBody ExchangeRateRequestDto exchangeRateRequestDto) {
        return exchangeRateService.createExchangeRate(exchangeRateRequestDto)
                .subscribeOn(Schedulers.io())
                .map(s -> ResponseEntity
                        .created(URI.create("/api/exchange-rate/" + s))
                        .body(null));
    }

    @PutMapping(
            value = "/{id}",
            consumes = MediaType.APPLICATION_JSON_VALUE,
            produces = { MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE, "text/xml" }
    )
    public Single<ResponseEntity<Object>> updateExchangeRate(
            @PathVariable("id") Long id,
            @Valid @RequestBody ExchangeRateRequestDto exchangeRateRequestDto) {
        return exchangeRateService.updateExchangeRate(id, exchangeRateRequestDto)
                .observeOn(Schedulers.io())
                .toSingle(() -> ResponseEntity.ok(null));
    }

    @PostMapping("/convert")
    public Single<ResponseEntity<BigDecimal>> convertAmount(
            @Valid @RequestBody ConvertAmountRequestDto exchangeRateRequestDto) {
        return exchangeRateService.convertAmount(exchangeRateRequestDto)
                .subscribeOn(Schedulers.io())
                .map(ResponseEntity::ok);
    }

    @GetMapping("/search")
    public Single<ResponseEntity<List<ExchangeRateResponseDto>>> searchExchangeRate(
            @RequestParam(name = "sourceId") Long sourceId,
            @RequestParam(name = "destinationId", required = false) Long destinationId) {
        return exchangeRateService.searchExchangeRate(sourceId, destinationId)
                .subscribeOn(Schedulers.io())
                .map(ResponseEntity::ok);
    }
}
