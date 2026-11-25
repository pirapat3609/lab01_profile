import 'package:material_ui/material_ui.dart';

void main() => runApp(const MaterialApp(home: HomePage()));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _likes = 0;

  void _like() => setState(() => _likes++);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lab L1 · 67124651')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.person, size: 96),
            const Text('พิรพัฒน์ เลาหะสราญ - 67124651'),
            Text('Likes: $_likes'),
            FilledButton(onPressed: _like, child: const Text('Like')),
          ],
        ),
      ),
    );
  }
}
