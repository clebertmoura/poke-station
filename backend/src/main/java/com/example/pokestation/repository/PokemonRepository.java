package com.example.pokestation.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.pokestation.model.Pokemon;

@Repository
public interface PokemonRepository extends JpaRepository<Pokemon, Long> {
    @Query("select pok from Pokemon pok join pok.trainer tr where tr.id = ?1")
    List<Pokemon> findByTrainerId(Long trainerId);
}
