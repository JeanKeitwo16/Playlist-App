# Player de Música - Flutter (MVVM)

Este aplicativo Flutter é um **player de música** moderno que carrega uma **playlist remota em JSON**, permite o **streaming progressivo** das faixas e oferece **execução em segundo plano com notificações do sistema**. 

A arquitetura segue o padrão **MVVM**, separando claramente a interface do usuário, a lógica e os dados.

## 🎵 Funcionalidades

- Carregamento dinâmico da playlist via HTTP (JSON remoto)
- Reprodução de áudio com `just_audio` e `just_audio_background`
- Controles de mídia no painel de notificações
- Streaming e execução em segundo plano
- Interface intuitiva com indicação de música tocando
- Arquitetura **MVVM** para escalabilidade e organização

## 🧠 Estrutura do Projeto

```
lib/
├── main.dart                         # Ponto de entrada do app
├── model/
│   └── musica_model.dart             # Modelo de dados da música
├── service/
│   └── musica_service.dart           # Serviço HTTP para buscar músicas
├── view/
│   ├── musica_lista_view.dart        # Página principal com a lista
│   └── widget/
│       └── card_musica.dart          # Widget customizado para exibir músicas
├── viewmodel/
│   └── musica_viewmodel.dart         # ViewModel com lógica de reprodução
```

## ▶️ Como Executar

1. Clone este repositório:

```bash
git clone https://github.com/JeanKeitwo16/Playlist-App
cd Playlist-App
```

2. Instale as dependências:

```bash
flutter pub get
```

3. Execute em um dispositivo físico ou emulador:

```bash
flutter run
```

> **Importante:** O app utiliza streaming, então é necessário conexão com a internet.

## 🧑‍💻 Autor

Jean Carlo, Luis Eduardo, Fabricio Machado
[github.com/jeankeitwo16](https://github.com/jeankeitwo16)
[github.com/FabricioMachad](https://github.com/FabricioMachad)
[github.com/LuisKlt](https://github.com/LuisKlt)

---

## 📄 Licença

Este projeto é de código aberto para fins educacionais e pessoais. Licenciado sob a [MIT License](LICENSE).
