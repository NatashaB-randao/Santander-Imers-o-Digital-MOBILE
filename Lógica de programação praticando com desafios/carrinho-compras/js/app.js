let totalGeral;
limpar();

function adicionar() {
  // Recupera os valores
    let produto = document.getElementById("produto").value;
    let nomeProduto = produto.split('-')[0].trim();
    let valorUnitario = produto.split('R$')[1].trim();
    let quantidade = document.getElementById("quantidade").value;

  // Calcula o subtotal
  let preco = parseInt(quantidade) * parseFloat(valorUnitario);

  // Adiciona produto ao carrinho
    let carrinho = document.getElementById('lista-produtos');
    carrinho.innerHTML += `
    <section class="carrinho__produtos__produto">
        <span class="texto-azul">${quantidade}x</span> ${nomeProduto} 
        <span class="texto-azul">R$${preco}</span>
    </section>
    `;

  // Atualiza o total
    totalGeral += preco;
    let valorTotal = document.getElementById('valor-total');
    valorTotal.textContent = `R$${totalGeral}`;
    document.getElementById("quantidade").value = 0;
}

function limpar() {
    totalGeral = 0;
    document.getElementById('lista-produtos').innerHTML = '';
    document.getElementById('valor-total').innerHTML = 'R$ 0';
}
