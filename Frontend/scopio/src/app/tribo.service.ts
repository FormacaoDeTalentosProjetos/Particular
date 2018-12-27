import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class TriboService {

  /* API ADRESS */
  tribosUrl = 'http://localhost:5000/api/Tribo/';

  constructor(private http: HttpClient) { }

  listar () {
    return this.http.get<any[]>(`${this.tribosUrl}`);
  }
}
