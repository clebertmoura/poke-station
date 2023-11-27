import { Pokemon } from './pokemon';

export interface Trainer {
  id: string;
  name: string;
  email: string;
  instagramLink?: string;
  pokemons?: Pokemon[];
}
