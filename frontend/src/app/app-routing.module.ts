import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TrainersComponent } from './catalog/ui/trainers/trainers.component';
import { TrainerDetailComponent } from './catalog/ui/trainer-detail/trainer-detail.component';
import { AuthGuard } from './auth/guards/auth.guard';

const routes: Routes = [
  {
    path: '',
    component: TrainersComponent,
    data: { roles: ['ADMIN'] },
    canActivate: [AuthGuard],
  },
  {
    path: 'trainer/:id',
    component: TrainerDetailComponent,
    data: { roles: ['ADMIN'] },
    canActivate: [AuthGuard],
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
