import 'package:flutter/material.dart';
import 'package:playlist_app/view/widget/Card_musica.dart';
import 'package:provider/provider.dart';

import '../viewmodel/Musica_ViewModel.dart';

class MusicaListView extends StatefulWidget {
  const MusicaListView({super.key});

  @override
  State<MusicaListView> createState() => _MusicaListViewState();
}

class _MusicaListViewState extends State<MusicaListView> {
  late Future<void> _carregamento;

  @override
  void initState() {
    super.initState();
    _carregamento = Provider.of<MusicaViewModel>(context, listen: false).carregarMusicas();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<MusicaViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Player de Música'),
      ),
      body: FutureBuilder(
        future: _carregamento,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Erro ao carregar músicas: ${snapshot.error}'));
          }

          return ListView.builder(
            itemCount: viewModel.musicas.length,
            itemBuilder: (context, index) {
              final musica = viewModel.musicas[index];
              final isSelected = viewModel.musicaAtual?.url == musica.url;

              return CardMusica(
                musica: musica,
                isPlaying: isSelected && viewModel.isPlaying,
                isSelected: isSelected,
                onPressed: () => viewModel.tocarOuPausar(musica),
              );
            },
          );
        },
      ),
    );
  }
}
