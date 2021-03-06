<div  class="container">
    <div class="col-md-12">
        <h3>
            <h2>Pesquisa | Paciente</h2>
            <button type="button" class="btn btn-default novo pull-right" data-controller="paciente">Novo</button>
        </h3>
    </div>
</div>

<div class="container">
    <form id="formPesquisa">
        <div class="col-md-2">
            <div class="form-group">
                <label for="nome"><g:message code="paciente.nome.label"/></label>
                <input type="text" class="form-control" id="nome" name="nome" value="${filters?.nome}">
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <label for="cpf"><g:message code="paciente.CPF.label"/></label>
                <input type="text" class="form-control" id="cpf" name="cpf" value="${filters?.cpf}">
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <label for="email"><g:message code="paciente.email.label"/></label>
                <input type="email" class="form-control" id="email" name="email" value="${filters?.email}">
            </div>
        </div>
        <div>
            <div class="form-group">
                <div class="ajBtnsemlabel"></div>
                <button type="button" class="btn btn-danger pesquisar" data-controller="paciente">Pesquisar</button>
            </div>
        </div>
    </form>
</div>
<div class="container">
    <div class="container">
        <table class="table">
            <thead class="thead-inverse">
                <tr>
                    <th><g:message code="paciente.nome.label"/></th>
                    <th><g:message code="paciente.email.label"/></th>
                </tr>
            </thead>
            <tbody>
            <g:each in="${entityInstanceList}" var="entityInstance" status="i">
                <tr>
                    <td>${entityInstance.nome}</td>
                    <td>${entityInstance.email}</td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
</div>