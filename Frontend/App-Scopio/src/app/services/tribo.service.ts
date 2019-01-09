import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class TriboService {

 /* API ADRESS */
 url = 'http://localhost:55221/api/Tribo/';

 constructor(private http: HttpClient) { }

 getTribo () {
   return this.http.get<any[]>(`${this.url}`);
 }
}
