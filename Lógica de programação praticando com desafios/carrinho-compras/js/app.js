function adicionar() {
    // recupera os valores dos campos - nome do produto, quantidade e valor
    let produto = document.getElementById("produto").value;
    let nomeProduto = produto.split('-')[0];
    let valorUnitario = produto.split('R$')[1];
    let quantidade = parseInt(document.getElementById("quantidade"));
    let valor = parseFloat(document.getElementById("valor").value);

    // cakcular o preço, o nosso subtotal
    let preco = quantidade.value * valorUnitario;


    // adicionar produto no carrinho de compras (tabela)
    // atualizar o valor total da compra

    
}

function limpar() {

}