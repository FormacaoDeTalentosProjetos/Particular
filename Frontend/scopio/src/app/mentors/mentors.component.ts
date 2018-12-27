import { Component, OnInit } from '@angular/core';
import { MentorService } from "../services/mentor.service";

@Component({
  selector: 'app-mentors',
  templateUrl: './mentors.component.html',
  styleUrls: ['./mentors.component.css']
})
export class MentorsComponent implements OnInit {

  mentors : Array<any>;

  public mentorImageUrl = "././assets/images/mentor.png";

  constructor(private mentorService: MentorService) { }

  ngOnInit() {
    this.listar();
  }

  listar () {
    this.mentorService.listar().subscribe(dados => this.mentors = dados);
  }

}
