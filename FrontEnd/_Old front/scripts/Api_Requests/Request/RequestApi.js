class RequestApi{
    //Construtor da Classe
    constructor(apiRequest, typeRequest){
        //Propiedade que contêm a URL da API
        this.api = apiRequest,
        
        //Propriedade que contêm o tipo de requisição
        this.type = typeRequest

        this.requestApi();
    };

    //Método que realiza uma requisição na API
    requestApi(){
    return request = 
        new Request(this.api, {
            method: this.type,
            headers: new Headers({
                'Content-Type': 'application/json'
            })
        });
    }

}