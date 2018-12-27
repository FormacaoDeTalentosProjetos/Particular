import { Component, OnInit } from '@angular/core';
import { TriboService } from '../tribo.service';
import { Route, Router } from '@angular/router';
import { Navigation } from 'selenium-webdriver';

@Component({
  selector: 'app-tribos',
  templateUrl: './tribos.component.html',
  styleUrls: ['./tribos.component.css']
})
export class TribosComponent implements OnInit {

  tribos : Array<any>;

  public triboImageUrl ="././assets/images/estandarte.png";

  constructor(
    private router: Router,
    private triboService: TriboService
  ) {}
  
  ngOnInit() {
    this.listar();
  }
  
  listar () {
    this.triboService.listar().subscribe(dados => this.tribos = dados);
  } 

  acessar(tribo){
    this.router.navigate(['squads-from-tribe'])
  }

}
