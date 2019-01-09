import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { TriboService } from '../../services/tribo.service';

@Component({
  selector: 'app-tribo',
  templateUrl: './tribo.component.html',
  styleUrls: ['./tribo.component.css']
})
export class TriboComponent implements OnInit {
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
    this.router.navigate(['tribo', tribo.id])
  }

}
