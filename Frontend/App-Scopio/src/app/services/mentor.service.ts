import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class MentorService {

  /* API ADRESS */
  Url = 'http://localhost:55221/api/User/Mentores/';

  constructor(private http: HttpClient) { }

  getMentoresAtivos () {
    return this.http.get<any[]>(`${this.Url}`);
  }
}

