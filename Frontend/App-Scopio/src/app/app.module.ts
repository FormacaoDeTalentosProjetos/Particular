//Imports do core do Angular
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { MatNativeDateModule, MatToolbarModule, MatButtonModule, MatSidenavModule, MatIconModule, MatListModule } from '@angular/material';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LayoutModule } from '@angular/cdk/layout';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

//Imports dos componentes
import { HeaderComponent } from './components/header/header.component';
import { MapaComponent } from './components/mapa/mapa.component';
import { MembroComponent } from './components/membro/membro.component';
import { MentorComponent } from './components/mentor/mentor.component';
import { TriboComponent } from './components/tribo/tribo.component';
import { SquadComponent } from './components/squad/squad.component';
import { FooterComponent } from './components/footer/footer.component';

//Imports dos serviços
import { TriboService } from './services/tribo.service';
import { SquadService } from './services/squad.service';
import { MembroService } from './services/membro.service';
import { MentorService } from './services/mentor.service';
import { MenuComponent } from './menu/menu.component';


@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    MapaComponent,
    MembroComponent,
    MentorComponent,
    TriboComponent,
    SquadComponent,
    FooterComponent,
    MenuComponent,
  ],
  imports: [
    BrowserAnimationsModule,
    BrowserModule,
    AppRoutingModule,
    LayoutModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    MatNativeDateModule,
    MatToolbarModule,
    MatButtonModule,
    MatSidenavModule,
    MatIconModule,
    MatListModule
  ],
  providers: [TriboService, SquadService, MembroService, MentorService],
  bootstrap: [AppComponent],
})
export class AppModule { }
