import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common'
import { Routes, RouterModule } from '@angular/router';

import { MapComponent } from './map/map.component';
import { TribosComponent } from './tribos/tribos.component';
import { SquadsComponent } from './squads/squads.component';
import { MentorsComponent } from './mentors/mentors.component';
import { MembersComponent } from './members/members.component';

const routes: Routes = [];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
