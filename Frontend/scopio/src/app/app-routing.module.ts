import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { MapComponent } from './map/map.component';
import { SquadsFromTribeComponent } from './squads-from-tribe/squads-from-tribe.component';

const routes: Routes = [
  {
    path: '',
    component: MapComponent
  },
  {
    path: 'squads-from-tribe',
    component: SquadsFromTribeComponent
  }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
