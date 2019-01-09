// Imports do core do Angular
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {HttpClientModule} from '@angular/common/http';
import {FormsModule, ReactiveFormsModule} from '@angular/forms';
import {MatNativeDateModule} from '@angular/material';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LayoutModule } from '@angular/cdk/layout';
import { MatToolbarModule, MatButtonModule, MatSidenavModule, MatIconModule, MatListModule } from '@angular/material';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

// Imports dos componentes
import { HeaderComponent } from './model/header/header.component';
import { FooterComponent } from './model/footer/footer.component';
import { MapaComponent } from './model/mapa/mapa.component';
import { MembroComponent } from './model/membro/membro.component';
import { MentorComponent } from './model/mentor/mentor.component';
import { TriboComponent } from './model/tribo/tribo.component';
import { SquadComponent } from './model/squad/squad.component';

//Imports dos serviços
import { TriboService } from './services/tribo.service';
import { SquadService } from './services/squad.service';
import { MembroService } from './services/membro.service';
import { MentorService } from './services/mentor.service';


@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    MapaComponent,
    MembroComponent,
    MentorComponent,
    TriboComponent,
    SquadComponent
  ],
  imports: [
    BrowserAnimationsModule,
    BrowserModule,
    AppRoutingModule,
    LayoutModule,
    MatToolbarModule,
    MatButtonModule,
    MatSidenavModule,
    MatIconModule,
    MatListModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    MatNativeDateModule
  ],
  providers: [TriboService, SquadService, MembroService, MentorService],
  bootstrap: [AppComponent],
})
export class AppModule { }
