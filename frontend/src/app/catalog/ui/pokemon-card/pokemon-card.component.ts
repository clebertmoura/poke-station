import { Component, Input } from '@angular/core';
import { Observable } from 'rxjs';
import { Pokemon } from '../../services/model/pokemon';
import { PokeApiService } from '../../services/poke-api.service';

@Component({
  selector: 'app-pokemon-card',
  templateUrl: './pokemon-card.component.html',
  styleUrl: './pokemon-card.component.scss'
})
export class PokemonCardComponent {

  @Input('pokemon')
  pokemon!: Pokemon;

  pokemonData$?: Observable<any>;

  constructor(
    private pokeApiService: PokeApiService) {
  }

  ngOnInit(): void {
    this.pokemonData$ = this.pokeApiService.getPokemon(this.pokemon.name);
  }

}
