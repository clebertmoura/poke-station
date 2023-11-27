import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TrainersComponent } from './catalog/ui/trainers/trainers.component';
import { TrainerDetailComponent } from './catalog/ui/trainer-detail/trainer-detail.component';

const routes: Routes = [
  { path: '', component: TrainersComponent },
  { path: 'trainer/:id', component: TrainerDetailComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
