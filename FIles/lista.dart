void main() {
 print('Exemplo: ');
 Banco banco1 = Banco('inter');
 banco1.setSaldo = 1000;
 banco1.exibirBanco();
  
 print('--------------');
 print('Atividade 1 / 2: ');
 Pessoa pessoa1 = Pessoa('jao');
 pessoa1.setIdade = 19;
 pessoa1.exibirDados();

 print('--------------');
 print('Atividade 3: ');
 Carro carro1 = Carro('city');
 carro1.setMarca = 'Honda';
 carro1.setPreco= 10000;
 carro1.exibirDados();
 Carro carro2 = Carro('civic');
 carro2.setMarca = 'Honda';
 carro2.setPreco= 100000;
 carro2.exibirDados();

 print('--------------');
 print('Atividade 4: ');
 ContaBancaria conta1 = ContaBancaria('Berenisse', 0);
 conta1.exibirDados();
 conta1.depositar(1000);
 conta1.sacar(50);
 conta1.getSaldo();

 print('--------------');
 print('Atividade 5: ');
 Aluno aluno1 = Aluno('Bernardo', 3, 7);
 String resultado = aluno1.verificarAprovacao();
 print('O aluno $aluno1 foi $resultado.');
  
 print('--------------');
 print('Atividade 6: ');
 Produto produto1 = Produto('arroz', 3);
 produto1.desconto();
  
 print('--------------');
 print('Atividade 7: ');
 Funcionario funcionario1 = Funcionario('Paulo');
 funcionario1.setSalario = 100;
 double salarioAumentado = funcionario1.aumentarSalario();
 print('O salário final do $funcionario1 é de R\$$salarioAumentado.');
  
  
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






// Atividade 1 / 2

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


// Atividade 3

class Carro{
  String modelo = '';
  String _marca = '';
  int _precoPrivado = 0;
  Carro(this.modelo);

   set setMarca(String marca)
  {
    _marca = marca;
  }

  get getMarca => _marca;
  
  
  set setPreco(int preco)
  {
    if (preco >= 0)
    {
      _precoPrivado = preco;
    }
    else{
      print('O preço está incorreto');
    }
  }

  int get getPreco => _precoPrivado;
  
  void exibirDados(){
    print('O modelo do carro é $modelo, a marca do modelo é $_marca, e o preço do carro é RS$_precoPrivado.');
  }

}



// Atividade 4

class ContaBancaria{
  String titular = '';
  double _saldo = 0;
  ContaBancaria(this.titular, this._saldo);

  double get saldo => _saldo;

  set saldo(double saldo) {
    _saldo = saldo;
  }
  
  
  void exibirDados(){
    print('O titular da conta é $titular, o saldo no banco é $_saldo.');
  }
  
  
  double depositar(double valorDepositado){
    _saldo = _saldo + valorDepositado;
    return _saldo;
  }
  double sacar(double valorSacado){
    _saldo = _saldo - valorSacado;
    return _saldo;
  }
  
  void getSaldo(){
    print('O saldo atual é $saldo.');
  }
}


// Atividade 5
class Aluno{
  String nome = '';
  double _nota1 = 0;
  double _nota2 = 0;
  Aluno(this.nome, this._nota1, this._nota2);
  
  double calcularMedia(){
    double media = (_nota1 + _nota2) / 2;
    return media;
  }
  
  String verificarAprovacao(){
    if (calcularMedia() >= 7){
      String resultado = 'aprovado';
      return resultado;
    }
    else
    {
      String resultado = 'desaprovado';
      return resultado;
    }
  }
  @override
  String toString() {
    return nome;
  }
 
  
}

// Atividade 6
class Produto{
  String nome = '';
  double _preco = 0;
  
  Produto(this.nome, this._preco);
  
  set setPreco(double preco)
  {
    if (preco > 0)
    {
      _preco = preco;
    }
    else{
      print('O preco está incorreto');
    }
  }

  double get getPreco => _preco;
  
  
  
  void desconto(){
    String nomeDesconto = 'Descontasso';
    double precoOriginal = _preco;
    double precoDesconto = 20;
    double descontoAplicado = precoOriginal - (precoOriginal/ 100)*precoDesconto;
    
    print('O desconto aplicado foi o $nomeDesconto, o preço original era $precoOriginal e após o desconto de  $precoDesconto% ficou RS $descontoAplicado.');
    
  }
}


// Atividade 7

class Funcionario{
  String nome = '';
  double _salario = 0;
  
   Funcionario(this.nome);
  
  
  set setSalario(double salario)
  {
    if (salario > 0)
    {
      _salario = salario;
    }
    else{
      print('O salario está incorreto');
    }
  }

  double get getSalario => _salario;
  
  double aumentarSalario(){
    double aumentoPorcentagem = 30;
    double salarioAumentado = _salario + (_salario / 100) * aumentoPorcentagem;
    return salarioAumentado;
    
  }
  
  @override
    String toString() {
    return nome;
  }
  
}



























