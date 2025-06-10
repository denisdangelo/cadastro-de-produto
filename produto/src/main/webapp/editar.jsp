<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt_BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="keywords" content="">
<link rel="shortcut icon" href="img/icon.png" type="image/x-icon">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">

<title>Editar Produtos</title>
</head>
<body>
	<div
		class="container d-flex justify-content-center align-items-center min-vh-100">
		<section class="card shadow-sm p-4 w-100" style="max-width: 500px;">
			<div class="text-left">
				<h1 class="text-dark mb-4">Editar Produto</h1>

				<form id="form_produto" name="frmProduto" action="update" novalidate>
					<div class="form-group">
						<label>ID</label> <input type="text" class="form-control"
							name="id" readonly
							value="<%out.print(request.getAttribute("id"));%>">
					</div>
					<div class="form-group">
						<label for="nome_produto">Nome do Produto</label> <input
							type="text" class="form-control" name="nome_produto"
							id="nome_produto" placeholder="Nome do Produto" required
							aria-required="true"
							value="<%out.print(request.getAttribute("nome"));%>">
					</div>
					<div class="form-group">
						<label for="qtde">Quantidade</label> <input type="number"
							class="form-control" name="qtde" id="qtde" min="1"
							placeholder="Quantidade do produto" required aria-required="true"
							value="<%out.print(request.getAttribute("qtde"));%>">
					</div>
					<div class="form-group">
						<label for="valor_unit">Valor do produto</label> <input
							type="text" class="form-control" name="valorunit" id="valor_unit"
							placeholder="Ex 12,99" required pattern="^\d+(,\d{1,2})?$"
							title="Digite o valor com vírgula. Ex. 12,99" required
							aria-required="true"
							value="<%out.print(request.getAttribute("valorunit"));%>">
					</div>
					<div class="form-group">
						<label for="data">Data do Cadastro</label> <input type="date"
							class="form-control" name="data_cad" id="data" required
							aria-required="true"
							value="<%out.print(request.getAttribute("data_cad"));%>">
					</div>
					<button type="submit" class="btn btn-dark btn-block">Salvar</button>
				</form>

			</div>
		</section>
	</div>


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>