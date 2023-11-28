import { Injectable } from '@angular/core';
import { environment } from '../../../environments/environment';
import { HttpClient } from '@angular/common/http';
import { Observable, map } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class PokeApiService {

  private apiUrl = `${environment.pokeApiUrl}`;

  constructor(private http: HttpClient) {}

  getPokemon(pokemonName: string): Observable<unknown> {
    
    const url = `${this.apiUrl}/pokemon/${pokemonName?.toLowerCase()}`;

    return this.http.get<unknown>(url).pipe(
      map((response) => {
        return response;
      })
    );
  }

  getPokemons(offset: number, limit: number): Observable<any> {
    
    const url = `${this.apiUrl}/pokemon?offset=${offset}&limit=${limit}`;

    return this.http.get<any>(url).pipe(
      map((response) => {
        return response;
      })
    );
  }

}
