import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class MentorService {

  /* API ADRESS */
  mentorsUrl = 'http://localhost:5000/api/Mentor/MentoresAtivos';

  constructor(private http: HttpClient) { }

  listar () {
    return this.http.get<any[]>(`${this.mentorsUrl}`);
  }
}

