package com.exchange.challenge.repository;

import com.exchange.challenge.entity.ConversionHistoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ConversionHistoryRepository extends JpaRepository<ConversionHistoryEntity, Long> {
}
