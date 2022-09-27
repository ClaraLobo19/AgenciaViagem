<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <title>Cadastro</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.0-beta1 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    
  <script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>
   

</head>

<body>
  <header>
    <!-- place navbar here -->
  </header>
  <main>
    
    <div class="container bg-light "  >

        <!--INICIO DA NAVBAR-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">VIAGEM </a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="home.html">Home</a>
                  </li>
                  <li class="nav-item" >
                    <a class="nav-link" href="destino.html">Destino</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="contatos.html">Contatos</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="promoçoes.html">Promoções</a>
                  </li>
                </ul>
    
              </div>
            </div>
          </nav>
          <!--FIM DA NAVBAR-->



        <!--inicio jumbottrom-->
        <div class="p-5 bg-light ">
            <div class="container ">
                <h1 class="display-3 " style="font-style:inherit;">Cadastre-se aqui</h1>
                <hr class="my-2 ">
                <br>
                <h4 style="font-style:inherit;">Tudo de melhor para sua viagem você encontra aqui</h4>


            </div>
        </div>
        <!--fim jumbottrom-->


   
    <!-------1------>
    <form class="row g-3" action="InserirCliente" method="post" class="form-control">
        <div class="col-md-6">
            <label for="nome" class="form-label">Nome</label>
            <input type="text" id="nome" name="nome"  class="form-control" placeholder="João Pinheiro" required>
        </div>
        
         <div class="col-6">
           <label for="inputAddress" class="form-label">Data de Nascimento</label>
           <input type="date" class="form-control" name="dataNascimento" id="dataNascimento "  >
        </div> 

        <div class="col-md-6">
          <label for="" class="form-label">CPF</label>
          <input type="text" id="cpf" name="cpf"  class="form-control"  placeholder="999999999-99">
        </div>
        <div class="col-md-6">
          <label for="" class="form-label">RG</label>
          <input type="text" class="form-control" name="rg"  placeholder="999999999-99">
        </div>
      
  
        <div class="col-md-6">
          <label for="inputEmail4" class="form-label">Email</label>
          <input type="email" class="form-control" name="email"id="inputEmail4" placeholder="nome@gmail.com">
        </div>        
        <div class="col-md-6">
          <label for="inputEmail4" class="form-label">Telefone</label>
          <input type="text" class="form-control" name="telefone" id="telefone" placeholder="" aria-label="9985777777">
        </div>
 
        <div class="col-6">
          <label for="inputAddress" class="form-label">Endereço</label>
          <input type="text" class="form-control" name="endereco" placeholder="Rua da Gloria, 234">
        </div>
        <div class="col-md-3">
          <label for="inputCity" class="form-label">Cidade</label>
          <input type="text" class="form-control" name="cidade" id="cidade" id="inputCity" placeholder="Fortaleza">
        </div>

        <div class="col-md-3">
          <label for="inputState" class="form-label" name="estado">Estado</label>
          <select id="inputState" class="form-select">
            <option selected>Escolher...</option>
            <option>Acre</option>  <option>Alagoas</option>  <option>Amapá</option> <option>Amazonas</option> <option>Bahia</option>
            <option>Ceará</option>  <option>Distrito Federal</option>  <option>Espírito Santo</option> <option>Goiás</option> <option>Maranhão</option>
            <option>Mato Grosso</option>  <option>Mato Grosso do Sul</option>  <option>Minas Gerais</option>  <option>Paraná</option>  <option>Paraíba</option> 
            <option>Pará</option>  <option>Pernambuco</option>  <option>Piauí</option> <option>Rio Grande do Norte</option>  <option>Rio Grande do Sul</option>
            <option>Rio de Janeiro</option>  <option>Rondônia</option>  <option>Roraima</option>  <option>Santa Catarina</option> <option>Sergipe</option>
            <option>São Paulo</option>  <option>Tocantins</option>  
          </select>
         </div> 
          
          
        <div class="col-md-6 ">
          <label for="inputPassword4" class="form-label">senha</label>
          <input type="password" class="form-control" id="inputPassword4" name="senha">
        </div>
       
        <div class="col-12">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" id="gridCheck">
            <label class="form-check-label" for="gridCheck" required>
              confirmar
            </label>
          </div>
        </div>
        <div class="col-12">
          <input type="submit" class="btn btn-primary"
          		  value="Cadastrar Cliente" required>
        </div>
      </form>
    <!-------1------->

    
  </main>
  <footer>
    <!-- place footer here -->
  </footer>
  <!-- Bootstrap JavaScript Libraries -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
    integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous">
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
    integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous">
  </script>
</body>

</html>