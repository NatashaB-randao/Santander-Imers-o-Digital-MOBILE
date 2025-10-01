alert('Boas vindas ao jogo do número secreto!');

let numeroSecreto = 29;
console.log(numeroSecreto);

let chute;
let tentativas = 1;

while (chute != numeroSecreto) {
    chute = prompt('Escolha um número entre 0 e 30:');

    // Se o chute for igual ao número secreto, exiba uma mensagem de parabéns
    if (chute == numeroSecreto) {
        alert(`Parabéns! Você acertou o número secreto ${numeroSecreto} com ${tentativas} tentativas.`);
    } else {
        if (chute > numeroSecreto) {
            alert(`O número secreto é menor que ${chute}. Tente novamente!`);
        } else {
            alert(`O número secreto é maior que ${chute}. Tente novamente!`);
        }
        tentativas++;
    }
}

