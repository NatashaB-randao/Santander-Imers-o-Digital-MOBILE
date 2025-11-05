function comprar() {
    let tipo = document.getElementById('tipo-ingresso').value;
    let qtd = document.getElementById('qtd').value;

    if (tipo.value == 'Pista') {
        comprarPista(qtd.value);
    }
}