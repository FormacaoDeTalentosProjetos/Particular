import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import ApiConexao from './api/apiConexao';

@Injectable({
  providedIn: 'root'
})

export class SquadService {
  //URL base de conenexão com a API
  urlBase: ApiConexao;
  
  //URL de conexão com a api mentor 
  urlApi: string;

  constructor(private http: HttpClient) {
    this.urlBase = new ApiConexao();
    this.urlApi = this.urlBase.getUrl().trim() + 'Squad';
  }
 
  getSquadSemTribo () {
    return this.http.get<any[]>(`${this.urlApi}/SquadSemTribo/`);
  }

  getSquadByTribo(id: number){
    return this.http.get<any[]>(`${this.urlApi}/IdTribo/${id}`);
  }
}
