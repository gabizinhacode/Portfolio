import 'package:flutter/material.dart';

void main() {
  runApp(const MeuPortfolio());
}

class MeuPortfolio extends StatelessWidget {
  const MeuPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfólio Gabriela',
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

final Color rosa = const Color(0xFFF6B0BB);
final Color rosaClaro = const Color(0xFFF8D7DA);
final Color dourado = const Color(0xFFC8A96B);
final Color fundo = const Color(0xFFFFF6F7);
final Color texto = const Color(0xFF5B4B4B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fundo,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.all(28),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.55),
              borderRadius: BorderRadius.circular(32),
              border: Border.all(color: Colors.white),
              boxShadow: [
                BoxShadow(
                  color: texto.withOpacity(0.18),
                  blurRadius: 25,
                  offset: const Offset(0, 12),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 88,
                  height: 88,
                  decoration: BoxDecoration(
                    color: rosaClaro,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.auto_awesome, size: 46, color: dourado),
                ),

                const SizedBox(height: 22),

                Text(
                  'Bem-vindos ao meu portfólio!',
                  style: TextStyle(
                    color: texto,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  'Portfólio Mobile desenvolvido por Gabriela',
                  style: TextStyle(
                    color: texto.withOpacity(0.75),
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 34),

                TextField(
                  decoration: InputDecoration(
                    hintText: 'Digite seu e-mail',
                    prefixIcon: Icon(Icons.email_outlined, color: texto),
                    filled: true,
                    fillColor: fundo,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 18),

                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Digite sua senha',
                    prefixIcon: Icon(Icons.lock_outline, color: texto),
                    filled: true,
                    fillColor: fundo,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 28),

                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Tela_Home(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: texto,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 18),

                Text(
                  'Desenvolvido em Flutter por Gabriela',
                  style: TextStyle(
                    color: texto.withOpacity(0.65),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class Tela_Home extends StatelessWidget {
  const Tela_Home({super.key});

final Color rosa = const Color(0xFFF6B0BB);
final Color rosaClaro = const Color(0xFFF8D7DA);
final Color dourado = const Color(0xFFC8A96B);
final Color fundo = const Color(0xFFFFF6F7);
final Color texto = const Color(0xFF5B4B4B);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fundo,
  appBar: AppBar(
    backgroundColor: rosa,
    foregroundColor: Colors.white,
    title: const Text('Meu Portfólio'),
    centerTitle: true,
    ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.65),
                borderRadius: BorderRadius.circular(28),
                boxShadow: [
                  BoxShadow(
                    color: texto.withOpacity(0.15),
                    blurRadius: 18,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 65,
                     backgroundImage: AssetImage('assets/gabs.jpg.JPG'),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Gabriela Santos',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: texto,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Desenvolvedora em formação',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: rosa.withOpacity(0.75),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Estudante de Desenvolvimento de Sistemas, apaixonada por tecnologia, design de interfaces e criação de soluções digitais.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 15,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TelaProjetos(),
                        ),
                      );
                    },
                    child: _menuCard(
                      icon: Icons.folder_copy_outlined,
                      titulo: 'Projetos',
                      descricao: 'Meus trabalhos',
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: _menuCard(
                    icon: Icons.favorite_border,
                    titulo: 'Sobre mim',
                    descricao: 'Minha trajetória',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 14),

            Row(
              children: [
                Expanded(
                  child: _menuCard(
                    icon: Icons.code,
                    titulo: 'Skills',
                    descricao: 'Tecnologias',
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: _menuCard(
                    icon: Icons.mail_outline,
                    titulo: 'Contato',
                    descricao: 'Redes sociais',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuCard({
    required IconData icon,
    required String titulo,
    required String descricao,
  }) {
    return Container(
      height: 135,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.65),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: rosa, size: 32),
          const SizedBox(height: 10),
          Text(
            titulo,
            style: TextStyle(
              color: rosa,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            descricao,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: texto,
            ),
          ),
        ],
      ),
    );
  }
}



class TelaProjetos extends StatelessWidget {
  const TelaProjetos({super.key});

  final Color rosa = const Color(0xFFF6B0BB);
  final Color rosaClaro = const Color(0xFFF8D7DA);
  final Color fundo = const Color(0xFFFFF6F7);
  final Color texto = const Color(0xFF5B4B4B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fundo,
      appBar: AppBar(
        backgroundColor: rosa,
        foregroundColor: Colors.white,
        title: const Text('Meus Projetos'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(22),
        children: [
          _projetoCard(
            titulo: 'Banco Itaú - Clone em Flutter',
            descricao: 'Aplicativo mobile desenvolvido em Flutter com o objetivo de recriar algumas telas do aplicativo do banco Itaú.',
            icone: Icons.movie_creation_outlined,
          ),
          _projetoCard(
            titulo: 'Smart City',
            descricao: 'Sistema para monitorar sensores e ambientes usando tecnologia.',
            icone: Icons.sensors,
          ),
          _projetoCard(
            titulo: 'Portfólio Mobile',
            descricao: 'Aplicativo criado em Flutter para apresentar minha trajetória e projetos.',
            icone: Icons.phone_iphone,
          ),
        ],
      ),
    );
  }

  Widget _projetoCard({
    required String titulo,
    required String descricao,
    required IconData icone,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: rosaClaro.withOpacity(0.45),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white),
      ),
      child: Row(
        children: [
          Icon(icone, color: rosa, size: 36),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: TextStyle(
                    color: texto,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  descricao,
                  style: TextStyle(
                    color: texto.withOpacity(0.75),
                    fontSize: 14,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}