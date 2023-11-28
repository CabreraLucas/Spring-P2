<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Nova Questão</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1>Nova Questão</h1>
            <form action="/questao/insert" method="post">
                <div class="form-group">
                    <label for="enunciado">Enunciado</label>
                    <input type="text" name="enunciado" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="alternativa">Alternativa:</label>
                    <select name="alternativa" class="form-select">
                        <c:forEach var="a" items="${alternativas}">
                            <option value="${a.id}">${a.texto}</option>
                        </c:forEach>
                    </select>
                </div>
                <br />
                <a href="/questao/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>