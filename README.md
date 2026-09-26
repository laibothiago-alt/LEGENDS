# LEGENDS — protótipo jogável

Abra `index.html` em um navegador moderno. O modo Offline 1v1 e Treinamento funcionam contra um bot com Felphs Silverhand e Marshall B. Nicko. Use o menu para selecionar o personagem.

## Regras implementadas
- Recursos começam em 8; Fôlego e Recarregar restauram tudo e consomem o turno.
- D6 dos tiros: 1–3 erro, 4–5 acerto, 6 crítico com o dobro do dano do golpe.
- D6 do bloqueio: 1–3 falha, 4–5 metade do dano (arredondado para cima), 6 bloqueio perfeito com contra-ataque gratuito que paga recurso e preserva a ação normal.
- Quebra de Armadura ignora bloqueio e defesa. Golpes e custos seguem as cartas incluídas.
- Combo do Marshall, Fuga Tática e Mira Fria do Felphs, efeitos das cartas e ultimates de uso único.

## Próximas integrações
Online, contas, ranking e FFA para mais de dois jogadores dependem de servidor e de mais personagens. Os respectivos botões indicam isso na interface. O jogo inclui as artes e ícones enviados.

## Docker
Na pasta que contém o Dockerfile:

```sh
docker build -t legends .
docker run --rm -p 8080:80 legends
```

Abra `http://localhost:8080`. A imagem usa nginx e expõe a porta 80 no contêiner. Cada personagem tem duas Fugas por partida; Fuga Tática também consome uma dessas duas utilizações.
