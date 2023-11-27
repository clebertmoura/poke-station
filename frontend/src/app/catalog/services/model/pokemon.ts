import { Ability } from './ability';

export interface Pokemon {
  id: string;
  name: string;
  experience: number;
  abilities?: Ability[];
}
