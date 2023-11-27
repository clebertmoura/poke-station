import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TrainersComponent } from './catalog/ui/trainers/trainers.component';

const routes: Routes = [
  { path: '', component: TrainersComponent },
  // { path: 'trainer/:id', component: TrainerBioComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
