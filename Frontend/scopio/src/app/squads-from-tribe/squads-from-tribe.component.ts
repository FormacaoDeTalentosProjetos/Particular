import { Component, OnInit } from '@angular/core';
import { SquadFromTribeService } from '../squad-from-tribe.service';

@Component({
  selector: 'app-squads-from-tribe',
  templateUrl: './squads-from-tribe.component.html',
  styleUrls: ['./squads-from-tribe.component.css']
})
export class SquadsFromTribeComponent implements OnInit {

  squadsfromtribe : Array<any>;

  public squadFromTribeImageUrl = "././assets/images/brasao.png"

  constructor(private squadFromTribeService) { }

  ngOnInit() {
    this.listar();
  }

  listar () {
    this.squadFromTribeService.listar().subscribe(dados => this.squadsfromtribe = dados);
  }
}
