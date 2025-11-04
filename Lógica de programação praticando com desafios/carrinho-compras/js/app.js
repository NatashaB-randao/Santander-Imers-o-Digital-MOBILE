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
    let valorTotal = document.getElementById('valor-total');
    let totalAtual = parseFloat(valorTotal.innerText.replace('R$', '')) || 0;
    let novoTotal = totalAtual + preco;
    valorTotal.innerText = `R$${novoTotal}`;
}

function limpar() {
    document.getElementById('lista-produtos').innerHTML = '';
    document.getElementById('valor-total').innerText = 'R$0';
}
