package com.example.pokestation.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.graphql.data.GraphQlRepository;
import org.springframework.stereotype.Repository;

import com.example.pokestation.model.Trainer;

@Repository
@GraphQlRepository
public interface TrainerRepository extends JpaRepository<Trainer, Long> {
    
}
