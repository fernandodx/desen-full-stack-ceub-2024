class Post {
  String id;
  String profileImageUrl;
  String comment;
  String timestamp;

  Post(
    this.id,
    this.profileImageUrl,
    this.comment,
    this.timestamp,
  );
}

List<Post> posts = [
  Post(
    '1',
    'assets/profile_pics/person_cesare.jpeg',
    'Fiz esta pizza deliciosa esta manhã',
    '10',
  ),
  Post(
    '2',
    'assets/profile_pics/person_stef.jpeg',
    'Fiz uma deliciosa massa cremosa com camarão e pimenta-do-reino.',
    '80',
  ),
  Post(
    '3',
    'assets/profile_pics/person_crispy.png',
    'Fiz uma salada deliciosa hoje!',
    '20',
  ),
  Post(
    '4',
    'assets/profile_pics/person_joe.jpeg',
    'Cozinhei um omelet esta manhã.',
    '30',
  ),
  Post(
    '5',
    'assets/profile_pics/person_katz.jpeg',
    'Cozinhei um ovo esta manhã.',
    '50',
  ),
  Post(
    '5',
    'assets/profile_pics/person_katz.jpeg',
    'Vou começar o dia com esse smoothie de nozes para finalizar o Flutter Apprentice para nossos leitores!''',
    '40',
  ),
  Post(
    '6',
    'assets/profile_pics/person_kevin.jpeg',
    'Vou preparar um bife 🥩 hoje. O bife deve estar malpassado, médio ou bem passado?',
    '50',
  ),
  Post(
    '7',
    'assets/profile_pics/person_sandra.jpeg',
    'Começando a manhã com a receita de smoothie verde do Mike. Hora de editar esses capítulos!',
    '50',
  ),
  Post(
    '8',
    'assets/profile_pics/person_manda.png',
    'Não tenho certeza de onde devo viajar para comer hoje.',
    '60',
  ),
  Post(
    '9',
    'assets/profile_pics/person_ray.jpeg',
    'Acabadinhos de sair do forno, preparando mais livros este ano!',
    '70',
  ),
  Post(
    '10',
    'assets/profile_pics/person_tiffani.jpeg',
    'Hmmm... Salmão, brócolis pequeno, purê de batatas',
    '90',
  ),
];
