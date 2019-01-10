import { Component, OnInit } from '@angular/core';
import { SquadService } from '../../services/squad.service';

@Component({
  selector: 'app-squad',
  templateUrl: './squad.component.html',
  styleUrls: ['./squad.component.css']
})
export class SquadComponent implements OnInit {

  squads : Array<any>;

  public squadImageUrl ="././assets/imagens/squad.png";

  constructor(private squadService: SquadService) { }

  ngOnInit() {
    this.getSquadSemTribo();
  }

  getSquadSemTribo () {
    this.squadService.getSquadSemTribo().subscribe(dados => this.squads = dados);
  }
}
