<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Nova Alternativa</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1>Nova Alternativa</h1>
            <form action="/alternativa/insert" method="post">
                <div class="form-group">
                    <label for="texto">Texto</label>
                    <input type="text" name="texto" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="isCorreta">Está correta?</label>
                    <input type="radio" name="isCorreta" />
                </div>
                <br />
                <a href="/alternativa/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>