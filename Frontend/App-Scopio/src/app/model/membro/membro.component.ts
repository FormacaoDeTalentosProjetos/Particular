import { Component, OnInit } from '@angular/core';
import { MembroService } from "../../services/membro.service";

@Component({
  selector: 'app-membro',
  templateUrl: './membro.component.html',
  styleUrls: ['./membro.component.css']
})
export class MembroComponent implements OnInit {

  membros : Array<any>;

  public memberImageUrl = "././assets/images/membro.jpg";

  constructor(private membroService : MembroService) { }

  ngOnInit() {
    this.listar();
  }

  listar () {
    this.membroService.listar().subscribe(dados => this.membros = dados);
  }
}
