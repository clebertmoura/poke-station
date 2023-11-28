import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { environment } from '../../../environments/environment';
import { Pokemon } from './model/pokemon';

@Injectable({
  providedIn: 'root',
})
export class PokemonService {
  private apiUrl = `${environment.backendUrl}/graphql`;

  constructor(private http: HttpClient) {}

  getPokemons(): Observable<Pokemon[]> {
    const query = `
      query {
        pokemons {
          id
          name
        }
      }
    `;

    return this.http.post<any>(this.apiUrl, { query }).pipe(
      map((response) => {
        return response.data.pokemons as Pokemon[];
      })
    );
  }

  getPokemonById(id: number): Observable<Pokemon> {
    const query = `
      query {
        pokemon(pokemonId: "${id}") {
          id
          name
        }
      }
    `;

    return this.http.post<any>(this.apiUrl, { query }).pipe(
      map((response) => {
        return response.data.trainer as Pokemon;
      })
    );
  }

  createPokemon(name: string, trainerId: number): Observable<Pokemon> {
    const query = `
      mutation {
        createPokemon(name: "${name}", trainerId: "${trainerId}") {
          id
          name
        }
      }
    `;

    return this.http.post<any>(this.apiUrl, { query }).pipe(
      map((response) => {
        return response.data.createPokemon as Pokemon;
      })
    );
  }
}
