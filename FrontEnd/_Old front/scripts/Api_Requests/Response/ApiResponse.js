class ApiResponse{
    constructor(requestApi, errorRequest){
        //Propriedade que contêm a requisição da API
        this.request = requestApi,

        //Propriedade que contêm uma mensagem de resposta de erro ao realizar uma requisição com a API
        this.errorRequest = errorRequest

        //Rea
        this.getResponse();
    }

    getResponse(){
        fetch(this.request)
            .then(function(response) {
                console.log(response);       
                if (response.status >= 200 && response.status <= 204) {
                    response.json()
                        .then(function (obj) {
                            return obj;
                        });
                } else {
                    alert(errorRequest);
                    break;
                }
            })

            .catch(function(response) {
                console.log(response);
                alert("Desculpe, ocoreu um erro no servidor...");
                break;
            });
    }
    
}