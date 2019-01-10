import { Component, OnInit } from '@angular/core';
import { SquadService } from '../../services/squad.service';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-squad',
  templateUrl: './squad.component.html',
  styleUrls: ['./squad.component.css']
})
export class SquadComponent implements OnInit {

  squads : Array<any>;
  id: number;
  private sub: any;

  public squadImageUrl ="././assets/imagens/squad.png";

  constructor(
    private squadService: SquadService,
    private route: ActivatedRoute,
    ) { }

  ngOnInit() {
    this.sub = this.route.params.subscribe(params => {
      console.log(params);
      this.id = +params['id']; // (+) converts string 'id' to a number
      if(this.id){
        this.getSquadByTribo();
      }
      else {
        this.getSquadSemTribo();
      }
      // In a real app: dispatch action to load the details here.
   });
  }

  getSquadSemTribo () {
    this.squadService.getSquadSemTribo().subscribe(dados => this.squads = dados);
  }

  getSquadByTribo () {
    this.squadService.getSquadByTribo(this.id).subscribe(dados => this.squads = dados);
  }

  formatarNome(nome: string){
    const nomeAux = nome.split(' ');
    return `${nomeAux[0]} ${nomeAux[nomeAux.length - 1]}`;
  }

  ngOnDestroy() {
    this.sub.unsubscribe();
  }
}
