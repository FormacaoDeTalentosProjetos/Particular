//Imports do core do Angular
import { NgModule,  } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

//Imports dos components das paginas
import { MapaComponent } from './components/mapa/mapa.component';
import { TriboComponent } from './components/tribo/tribo.component';

const routes: Routes = [
  { path: '', redirectTo: '/mapa', pathMatch: 'full' },
  { path: 'mapa', component: MapaComponent },
  { path: 'tribos', component: TriboComponent }
  // { path: 'tribos/:id', component: SquadComponent },
  // { path: 'squads/:id', component: SquadComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
