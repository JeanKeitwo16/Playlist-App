# Flutter Music Downloader

**Descrição**  
Este aplicativo Flutter para Android permite baixar e reproduzir uma playlist de músicas MP3 obtidas de um JSON remoto.  
- **Streaming Progressivo**: A reprodução de cada música inicia antes do término do download completo.  
- **Download em Background**: O download dos arquivos MP3 ocorre em segundo plano via WorkManager, com suporte a resume (HTTP Range).  
- **Serviço em Foreground com Notificações de Mídia**: Durante a reprodução, é exibida uma notificação persistente contendo título, autor e controles (play, pause, stop).  
- **Status de Download e Progresso**: A interface exibe uma lista de músicas com título, autor e estado do download (não iniciado, baixando, pausado, concluído, falha).  
- **Resiliência**: Trata falhas de rede e permite retomar downloads interrompidos.

---

## Como Rodar

1. **Pré‐requisitos**  
   - Flutter SDK (>= 2.18) instalado  
   - Android SDK configurado (mínimo API 21 ou superior)  
   - Dispositivo Android (ou emulador) com Internet ativa  

2. **Clonar ou Baixar o Repositório**  
   ```bash
   git clone https://github.com/JeanKeitwo16/Playlist-App
   cd Playlist-App
