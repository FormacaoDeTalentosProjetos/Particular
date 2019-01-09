import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { MapaComponent } from './model/mapa/mapa.component';
import { SquadComponent } from './model/squad/squad.component';

const routes: Routes = [
  { path: '', redirectTo: '/mapa', pathMatch: 'full' },
  { path: 'mapa', component: MapaComponent },
  { path: 'mapa/:id', component: SquadComponent },
  { path: 'tribos/:id', component: SquadComponent },
  { path: 'squads/:id', component: SquadComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
