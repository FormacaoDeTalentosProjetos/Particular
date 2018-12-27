import { Component, OnInit } from '@angular/core';
import { MemberService } from "../services/member.service";

@Component({
  selector: 'app-members',
  templateUrl: './members.component.html',
  styleUrls: ['./members.component.css']
})
export class MembersComponent implements OnInit {

  members : Array<any>;

  public memberImageUrl = "././assets/images/membro.jpg";

  constructor(private memberService : MemberService) { }

  ngOnInit() {
    this.listar();
  }

  listar () {
    this.memberService.listar().subscribe(dados => this.members = dados);
  }
}
