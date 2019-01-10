import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import ApiConexao from './api/apiConexao';

@Injectable({
  providedIn: 'root'
})

export class MembroService {
  //URL base de conenexão com a API
  urlBase: ApiConexao;
  
  //URL de conexão com a api membro 
  urlApi: string;

  constructor(private http: HttpClient) { 
    this.urlBase = new ApiConexao();
    this.urlApi = this.urlBase.getUrl().trim() + 'User/Ativos/';
  }
  
  getMembrosAtivos () {
    return this.http.get<any[]>(`${this.urlApi}`);
  }
}
