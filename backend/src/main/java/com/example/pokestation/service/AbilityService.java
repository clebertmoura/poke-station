package com.example.pokestation.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.pokestation.model.Ability;
import com.example.pokestation.repository.AbilityRepository;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@AllArgsConstructor
@Service
@Slf4j
public class AbilityService {

    private final AbilityRepository abilityRepository;

    public List<Ability> getAbilities() {
        return abilityRepository.findAll();
    }

    public Ability getAbilityById(Long abilityId) {
        return abilityRepository.findById(abilityId).orElse(null);
    }

    public List<Ability> getAbilitiesByPokemonId(Long pokemonId) {
        return abilityRepository.findByPokemonId(pokemonId);
    }

    public Ability createAbility(String name) {
        log.info("Saving ability, name {}", name);
        var abilityEntity = new Ability(name);
        var savedAbility = abilityRepository.save(abilityEntity);
        log.info("Saved ability, {} ", savedAbility);
        return savedAbility;
    }

}
