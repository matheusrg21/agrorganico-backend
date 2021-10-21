

# README
Leitura explicando como executar o código fonte.

Essa é uma API para o projeto Agroôrganico para o curso SI ( Sistema de Informação ) com o propósito de oferecer uma ferramente que possibilita criação de Listas de compras, localização de feiras, informações nutricionais e gerais de alimentos e produtos.


Necessidades para execução.
Versão do Ruby e versão condizente com o projeto
* Ruby version 2.7.4

* System dependencies
* ( Bundle install )

* PostgreSQL
* rails db:create (Database creation)
* rails db:migrate (Database migration)
* rails db:seed (Seed execution, the admin User is located at)

* Database initialization
Download do postgres (https://www.postgresql.org/download/)

* Deployment instructions
(Heroku https://devcenter.heroku.com/categories/deployment)
* ...


Git clone para captura do código fonte local.

    rails s 

para execução após as instruções localizadas acima.

Link da API, requisições FREE
	
	https://agroorganicobackend.herokuapp.com


https://agroorganicobackend.herokuapp.com

|         METHOD       |ENDPOINT                          |output                         |
|----------------|-------------------------------|-----------------------------|
|**GET**             |`/users`                       |All users       
|**POST**             |`/users`                       |Create User      
|**GET**             |`/users/{id}`                       |Create User      
|**DELETE**             |`/users/{id}`                  |Delete User       
|**PUT**             |`/users/{id}`                        |Edit User      
|**PUT**             |`/auth/login`                        |Autentication      
|            |                  |   
|**GET**             |`/fruits/{id}`                  |Show Fruit
|**POST**             |`/fruits`                       |Create Fruit      
|**GET**             |`/fruits/{id}`                  |Show Fruit
|**DELETE**             |`/fruits/{id}`                  |Delete Fruit       
|**PUT**             |`/fruits/{id}`                        |Edit Fruit      
|            |                  |   
|**GET**             |`/shopping_lists`                       |All Shopping Lists       
|**POST**             |`/shopping_lists`                       |Shopping Lists      
|**GET**             |`/shopping_lists/{id}`                  |Show Shopping List
|**DELETE**             |`/shopping_lists/{id}`                  |Delete Shopping List       
|**PUT**             |`/shopping_lists/{id}`                        |Edit Shopping List    
