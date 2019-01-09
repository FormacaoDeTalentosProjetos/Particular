import { Component, OnInit } from '@angular/core';
import { MentorService } from "../../services/mentor.service";

@Component({
  selector: 'app-mentor',
  templateUrl: './mentor.component.html',
  styleUrls: ['./mentor.component.css']
})
export class MentorComponent implements OnInit {

  mentors : Array<any>;

  public mentorImageUrl = "././assets/imagens/mentor.png";

  constructor(private mentorService: MentorService) { }

  ngOnInit() {
    this.listar();
  }

  listar () {
    this.mentorService.getMentoresAtivos().subscribe(dados => this.mentors = dados);
  }

}