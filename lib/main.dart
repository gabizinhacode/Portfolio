import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
          child: AnimacaoEntrada(
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
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: texto,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Portfólio Mobile desenvolvido por Gabriela',
                    textAlign: TextAlign.center,
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
                            builder: (context) => const TelaHome(),
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
      ),
    );
  }
}

class TelaHome extends StatelessWidget {
  const TelaHome({super.key});

  final Color rosa = const Color(0xFFF6B0BB);
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
            AnimacaoEntrada(
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.75),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: texto.withOpacity(0.12),
                      blurRadius: 18,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const CircleAvatar(
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
                        color: rosa,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 18),
                    Text(
                      'Estudante de Desenvolvimento de Sistemas, apaixonada por tecnologia, design de interfaces e criação de soluções digitais.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: texto.withOpacity(0.75),
                        fontSize: 15,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
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
                    child: AnimacaoEntrada(
                      delay: 150,
                      child: _menuCard(
                        icon: Icons.folder_copy_outlined,
                        titulo: 'Projetos',
                        descricao: 'Meus trabalhos',
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TelaSobreMim(),
                        ),
                      );
                    },
                    child: AnimacaoEntrada(
                      delay: 250,
                      child: _menuCard(
                        icon: Icons.favorite_border,
                        titulo: 'Sobre mim',
                        descricao: 'Minha trajetória',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TelaSkills(),
                        ),
                      );
                    },
                    child: AnimacaoEntrada(
                      delay: 350,
                      child: _menuCard(
                        icon: Icons.code,
                        titulo: 'Skills',
                        descricao: 'Tecnologias',
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TelaContato(),
                        ),
                      );
                    },
                    child: AnimacaoEntrada(
                      delay: 450,
                      child: _menuCard(
                        icon: Icons.mail_outline,
                        titulo: 'Contato',
                        descricao: 'Redes sociais',
                      ),
                    ),
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
        color: Colors.white.withOpacity(0.75),
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
          AnimacaoEntrada(
            child: _projetoCard(
              titulo: 'Clone Banco Itaú',
              descricao:
                  'Aplicativo mobile desenvolvido em Flutter, inspirado na interface do banco Itaú, com foco em design moderno e experiência do usuário.',
              imagem: 'assets/imagens/itau.png',
              tecnologia: 'Flutter • Dart • UI Design',
            ),
          ),
          AnimacaoEntrada(
            delay: 150,
            child: _projetoCard(
              titulo: 'Penélope Charmosa',
              descricao:
                  'Site desenvolvido em React com interface delicada, usando componentes reutilizáveis e estilização personalizada.',
              imagem: 'assets/imagens/penelope.png',
              tecnologia: 'React • CSS • Vite',
            ),
          ),
          AnimacaoEntrada(
            delay: 300,
            child: _projetoCard(
              titulo: 'API REST Restaurante',
              descricao:
                  'API desenvolvida com Django REST Framework para gerenciamento de dados de restaurante, pedidos e funcionalidades do sistema.',
              imagem: 'assets/imagens/restaurante.png',
              tecnologia: 'Python • Django • API REST',
            ),
          ),
        ],
      ),
    );
  }

  Widget _projetoCard({
    required String titulo,
    required String descricao,
    required String imagem,
    required String tecnologia,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 22),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.78),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: Colors.white),
        boxShadow: [
          BoxShadow(
            color: texto.withOpacity(0.12),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(28),
            ),
            child: Image.asset(
              imagem,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: TextStyle(
                    color: texto,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  descricao,
                  style: TextStyle(
                    color: texto.withOpacity(0.75),
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 14),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: rosaClaro.withOpacity(0.85),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Text(
                    tecnologia,
                    style: TextStyle(
                      color: texto,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
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

class TelaSobreMim extends StatelessWidget {
  const TelaSobreMim({super.key});

  final Color rosa = const Color(0xFFF6B0BB);
  final Color fundo = const Color(0xFFFFF6F7);
  final Color texto = const Color(0xFF5B4B4B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fundo,
      appBar: AppBar(
        backgroundColor: rosa,
        foregroundColor: Colors.white,
        title: const Text('Sobre Mim'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            AnimacaoEntrada(
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.75),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: texto.withOpacity(0.12),
                      blurRadius: 18,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/gabs.jpg.JPG'),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Gabriela Santos',
                      style: TextStyle(
                        color: texto,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Desenvolvedora em formação',
                      style: TextStyle(
                        color: rosa,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Sou estudante de Análise e Desenvolvimento de Sistemas, apaixonada por tecnologia, interfaces modernas e desenvolvimento de aplicações. Atualmente estou focando meus estudos em Flutter, React e desenvolvimento de APIs.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: texto.withOpacity(0.78),
                        fontSize: 15,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            AnimacaoEntrada(
              delay: 150,
              child: _infoCard(
                icone: Icons.school_outlined,
                titulo: 'Formação',
                descricao: 'Cursando Análise e Desenvolvimento de Sistemas.',
              ),
            ),
            AnimacaoEntrada(
              delay: 300,
              child: _infoCard(
                icone: Icons.work_outline,
                titulo: 'Experiência',
                descricao:
                    'Jovem aprendiz, desenvolvendo habilidades profissionais e técnicas.',
              ),
            ),
            AnimacaoEntrada(
              delay: 450,
              child: _infoCard(
                icone: Icons.favorite_border,
                titulo: 'Objetivo',
                descricao:
                    'Crescer na área de tecnologia como desenvolvedora front-end e mobile.',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoCard({
    required IconData icone,
    required String titulo,
    required String descricao,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.75),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icone, color: rosa, size: 30),
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
                    height: 1.5,
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

class TelaSkills extends StatelessWidget {
  const TelaSkills({super.key});

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
        title: const Text('Minhas Skills'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(22),
        children: [
          AnimacaoEntrada(
            child: _skillCard(
              icone: Icons.phone_android,
              titulo: 'Flutter',
              descricao:
                  'Desenvolvimento de aplicativos mobile modernos utilizando Flutter.',
            ),
          ),
          AnimacaoEntrada(
            delay: 150,
            child: _skillCard(
              icone: Icons.code,
              titulo: 'Dart',
              descricao:
                  'Linguagem utilizada para construção da lógica dos aplicativos Flutter.',
            ),
          ),
          AnimacaoEntrada(
            delay: 300,
            child: _skillCard(
              icone: Icons.web,
              titulo: 'React',
              descricao:
                  'Criação de interfaces web utilizando componentes reutilizáveis.',
            ),
          ),
          AnimacaoEntrada(
            delay: 450,
            child: _skillCard(
              icone: Icons.storage,
              titulo: 'Django REST',
              descricao:
                  'Desenvolvimento de APIs e integração entre front-end e back-end.',
            ),
          ),
          AnimacaoEntrada(
            delay: 600,
            child: _skillCard(
              icone: Icons.design_services,
              titulo: 'Figma',
              descricao:
                  'Criação de protótipos e planejamento de interfaces modernas.',
            ),
          ),
          AnimacaoEntrada(
            delay: 750,
            child: _skillCard(
              icone: Icons.folder_copy_outlined,
              titulo: 'GitHub',
              descricao:
                  'Versionamento de código e gerenciamento de projetos.',
            ),
          ),
        ],
      ),
    );
  }

  Widget _skillCard({
    required IconData icone,
    required String titulo,
    required String descricao,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.78),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: rosaClaro,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              icone,
              color: rosa,
              size: 28,
            ),
          ),
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
                    height: 1.5,
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

class TelaContato extends StatelessWidget {
  const TelaContato({super.key});

  final Color rosa = const Color(0xFFF6B0BB);
  final Color rosaClaro = const Color(0xFFF8D7DA);
  final Color fundo = const Color(0xFFFFF6F7);
  final Color texto = const Color(0xFF5B4B4B);

  Future<void> abrirLink(String url) async {
    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fundo,
      appBar: AppBar(
        backgroundColor: rosa,
        foregroundColor: Colors.white,
        title: const Text('Contato'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(22),
        children: [
          AnimacaoEntrada(
            child: GestureDetector(
              onTap: () {
                abrirLink('mailto:gaabi3028@gmail.com');
              },
              child: _contatoCard(
                icone: Icons.email_outlined,
                titulo: 'Email',
                descricao: 'gaabi3028@gmail.com',
              ),
            ),
          ),
          AnimacaoEntrada(
            delay: 150,
            child: GestureDetector(
              onTap: () {
                abrirLink('https://github.com/gabizinhacode');
              },
              child: _contatoCard(
                icone: Icons.code,
                titulo: 'GitHub',
                descricao: 'github.com/gabizinhacode',
              ),
            ),
          ),
          AnimacaoEntrada(
            delay: 300,
            child: GestureDetector(
              onTap: () {
                abrirLink(
                  'https://www.linkedin.com/in/gabriela-santos-65765625a',
                );
              },
              child: _contatoCard(
                icone: Icons.work_outline,
                titulo: 'LinkedIn',
                descricao: 'linkedin.com/in/gabriela-santos-65765625a',
              ),
            ),
          ),
          AnimacaoEntrada(
            delay: 450,
            child: _contatoCard(
              icone: Icons.phone_android,
              titulo: 'Tecnologias',
              descricao: 'Flutter • React • Django • Figma',
            ),
          ),
        ],
      ),
    );
  }

  Widget _contatoCard({
    required IconData icone,
    required String titulo,
    required String descricao,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.78),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white),
        boxShadow: [
          BoxShadow(
            color: texto.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: rosaClaro,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              icone,
              color: rosa,
              size: 28,
            ),
          ),
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
                    height: 1.5,
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

class AnimacaoEntrada extends StatelessWidget {
  const AnimacaoEntrada({
    super.key,
    required this.child,
    this.delay = 0,
  });

  final Widget child;
  final double delay;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: Duration(milliseconds: 600 + delay.toInt()),
      curve: Curves.easeOut,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 30 * (1 - value)),
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}