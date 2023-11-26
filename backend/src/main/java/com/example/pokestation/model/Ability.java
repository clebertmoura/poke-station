package com.example.pokestation.model;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.SequenceGenerator;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@RequiredArgsConstructor
@Builder
@Entity
public class Ability {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEQ_ABILITY")
    @SequenceGenerator(name = "SEQ_ABILITY", sequenceName = "SEQ_ABILITY", allocationSize = 1)
    private Long id;

    @NonNull
    private String name;

    @ManyToMany(mappedBy = "abilities")
    private List<Pokemon> pokemons;

}
