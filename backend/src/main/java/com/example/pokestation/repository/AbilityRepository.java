package com.example.pokestation.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.pokestation.model.Ability;

@Repository
public interface AbilityRepository extends JpaRepository<Ability, Long> {
    @Query("select ab from Ability ab join ab.pokemons pok where pok.id = ?1")
    List<Ability> findByPokemonId(Long pokemonId);
}
