package com.example.pokestation.model;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.ForeignKey;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class Pokemon {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_POKEMON")
    @SequenceGenerator(name = "SEQ_POKEMON", sequenceName = "SEQ_POKEMON", allocationSize = 1)
    private Long id;

    @NonNull
    private String name;
    @NonNull
    private Integer experience;

    @ManyToOne
    @JoinColumn(name = "trainer_id")
    private Trainer trainer;

    @ManyToMany
    @JoinTable(name = "pokemon_ability", 
        joinColumns = @JoinColumn(name = "pokemon_id"), 
        inverseJoinColumns = @JoinColumn(name = "ability_id")
    )
    private List<Ability> abilities;

}
