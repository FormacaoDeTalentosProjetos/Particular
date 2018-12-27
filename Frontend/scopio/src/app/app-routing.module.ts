import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { TribosComponent } from './tribos/tribos.component';
import { SquadsFromTribeComponent } from './squads-from-tribe/squads-from-tribe.component';

const routes: Routes = [
  {
    path: 'http://localhost:5000/api/Tribo/',
    component: TribosComponent
  },
  {
    path: '',
    component: SquadsFromTribeComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
