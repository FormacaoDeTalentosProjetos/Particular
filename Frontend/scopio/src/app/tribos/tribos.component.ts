import { Component, OnInit } from '@angular/core';
import { TriboService } from '../tribo.service';


@Component({
  selector: 'app-tribos',
  templateUrl: './tribos.component.html',
  styleUrls: ['./tribos.component.css']
})
export class TribosComponent implements OnInit {

  tribos : Array<any>;

  public triboImageUrl ="././assets/images/estandarte.png";

  constructor(private triboService: TriboService) {}
  ngOnInit() {
    this.listar();
  }
  listar () {
    this.triboService.listar().subscribe(dados => this.tribos = dados);
  }  

}
