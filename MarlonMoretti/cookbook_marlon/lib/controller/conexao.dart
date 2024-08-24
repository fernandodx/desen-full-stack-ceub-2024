// Mock para simular conexão com Banco de Dados
class MockBancoDeDados{
  final String _login = "aluno@ceub.edu.br";
  final String _senha = "12345678";

  String get login => _login;
  String get senha => _senha;
}