import { Pokemon } from './pokemon';

export interface Trainer {
  id: number;
  name: string;
  email: string;
  instagramLink?: string;
  pokemons?: Pokemon[];
}
