alert('Boas vindas ao jogo do número secreto!');

let numeroSecreto = 29;
console.log(numeroSecreto);

// Solicitar ao usuário que faça um chute
let chute = prompt('Escolha um número entre 0 e 30:');

// Se o chute for igual ao número secreto, exiba uma mensagem de parabéns
if (chute == numeroSecreto) {
    alert('Parabéns! Você acertou o número secreto!');
} else {
    alert('Que pena! Você errou.');
}