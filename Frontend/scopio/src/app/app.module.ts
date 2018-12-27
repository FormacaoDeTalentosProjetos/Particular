import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import { AppRoutingModule } from './app-routing.module';
import { HttpClientModule } from '@angular/common/http';

import { AppComponent } from './app.component';
import { MapComponent } from './map/map.component';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { TribosComponent } from './tribos/tribos.component';
import { TriboService } from './services/tribo.service';
import { SquadsComponent } from './squads/squads.component';
import { SquadService } from './services/squad.service';
import { MentorsComponent } from './mentors/mentors.component';
import { MentorService } from './services/mentor.service';
import { MembersComponent } from './members/members.component';
import { MemberService } from './services/member.service';

@NgModule({
  declarations: [
    AppComponent,
    MapComponent,
    HeaderComponent,
    FooterComponent,
    TribosComponent,
    SquadsComponent,
    MentorsComponent,
    MembersComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    HttpClientModule
  ],
  providers: [TriboService, SquadService, MentorService, MemberService],
  bootstrap: [AppComponent]
})
export class AppModule { }
