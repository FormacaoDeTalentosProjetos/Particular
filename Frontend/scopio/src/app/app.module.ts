import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { MapComponent } from './map/map.component';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { TribosComponent } from './tribos/tribos.component';
import { TriboService } from './tribo.service';
import { SquadsComponent } from './squads/squads.component';
import { SquadService } from './squad.service';

import { HttpClientModule } from '@angular/common/http';
import { SquadsFromTribeComponent } from './squads-from-tribe/squads-from-tribe.component';

@NgModule({
  declarations: [
    AppComponent,
    MapComponent,
    HeaderComponent,
    FooterComponent,
    TribosComponent,
    SquadsComponent,
    SquadsFromTribeComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    HttpClientModule
  ],
  providers: [TriboService, SquadService],
  bootstrap: [AppComponent]
})
export class AppModule { }
