import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class MemberService {

  /* API ADRESS */
  membersUrl = 'http://localhost:5000/api/Membro/MembrosAtivos';

  constructor(private http: HttpClient) { }
  listar () {
    return this.http.get<any[]>(`${this.membersUrl}`);
  }
}
