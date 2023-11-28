<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Remover Alternativa</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1>Remover Alternativa</h1>
            <p>Tem certeza que deseja remover a alternativa "${alternativa.texto}" ?</p>
            <form action="/alternativa/delete" method="post">
                <input type="hidden" name="id" value="${alternativa.id}" />
                <br />
                <a href="/alternativa/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-danger">Excluir</button>
            </form>
        </div>
    </body>
</html>