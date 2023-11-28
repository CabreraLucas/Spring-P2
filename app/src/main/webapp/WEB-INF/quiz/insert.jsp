<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Novo Quizz</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1>Novo Quizz</h1>
            <form action="/quizz/insert" method="post">
                <div class="form-group">
                    <label for="nome">Nome</label>
                    <input type="text" name="nome" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="questao">Questão:</label>
                    <select name="questao" class="form-select">
                        <c:forEach var="q" items="${questaos}">
                            <option value="${q.id}">${q.enunciado}</option>
                        </c:forEach>
                    </select>
                </div>
                <br />
                <a href="/quizz/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>