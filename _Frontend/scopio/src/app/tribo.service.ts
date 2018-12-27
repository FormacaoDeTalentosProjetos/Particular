import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class TriboService {

  /* API adress */
  tribosUrl = 'http://localhost:8080/tribo';

  constructor(private http: HttpClient) { }

  listar () {
    return this.http.get<any[]>(`${this.tribosUrl}`);
  }
}
