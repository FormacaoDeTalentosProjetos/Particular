import { Component, OnInit } from '@angular/core';
import { SquadService } from '../squad.service';

@Component({
  selector: 'app-squads',
  templateUrl: './squads.component.html',
  styleUrls: ['./squads.component.css']
})
export class SquadsComponent implements OnInit {

  squads : Array<any>;

  public squadImageUrl ="././assets/images/brasao.png";

  constructor(private squadService: SquadService) { }

  ngOnInit() {
    this.listar();
  }

  listar () {
    this.squadService.listar().subscribe(dados => this.squads = dados);
  }
}
