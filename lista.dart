void main() {
 print('Exemplo: ');
 Banco banco1 = Banco('inter');
 banco1.setSaldo = 1000;
 banco1.exibirBanco();
 print('Atividade 1: ');
 Pessoa pessoa1 = Pessoa('jao');
 pessoa1.setIdade = 19;
 pessoa1.exibirDados();



}

// exemplo:

class Banco{
  late int _saldo;
  final String nome;

  Banco(this.nome);

    set setSaldo(int saldo)
  {
    _saldo = saldo;
  }

  int get getSaldo => _saldo;

  void exibirBanco(){
    print('O banco selecionado foi o  $nome, você tem $_saldo no banco.');
  }


}






// Atividade 1

class Pessoa{
  late int _idadePrivada;
  final String nome;

  Pessoa(this.nome);


  set setIdade(int idade)
  {
    _idadePrivada = idade;
  }

  int get getIdade => _idadePrivada;

  void exibirDados(){
    print('Seja bem vindo $nome, você tem $getIdade anos.');
  }



}