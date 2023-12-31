import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { environment } from '../../../environments/environment';
import { Trainer } from './model/trainer';

@Injectable({
  providedIn: 'root',
})
export class TrainerService {

  private apiUrl = `${environment.backendUrl}/graphql`;

  constructor(private http: HttpClient) {}

  getTrainers(): Observable<Trainer[]> {
    const query = `
      query {
        trainers {
          id
          name
          email
          instagramLink
          pokemons {
            id
            name
          }
        }
      }
    `;

    return this.http.post<any>(this.apiUrl, { query }).pipe(
      map((response) => {
        return response.data.trainers as Trainer[];
      })
    );
  }

  getTrainerById(id: number): Observable<Trainer> {
    const query = `
      query {
        trainer(trainerId: "${id}") {
          id
          name
          email
          instagramLink
          pokemons {
            id
            name
          }
        }
      }
    `;

    return this.http.post<any>(this.apiUrl, { query }).pipe(
      map((response) => {
        return response.data.trainer as Trainer;
      })
    );
  }

  createTrainer(name: string, email: string, instagramLink: string): Observable<Trainer> {
    const query = `
      mutation {
        createTrainer(
          email: "${email}"
          name: "${name}"
          instagramLink: "${instagramLink}"
        ) {
          id
          instagramLink
          name
          email
        }
      }
    `;

    return this.http.post<any>(this.apiUrl, { query }).pipe(
      map((response) => {
        return response.data.createTrainer as Trainer;
      })
    );
  }
}