# Monitor de Regeneração

Quem está consertando o mundo, e onde. Um site estático em uma página que mostra:

- **Quem está ajudando agora** nas crises do Brasil (enchentes no RS, estiagem no Amazonas, seca no Semiárido, preparo para o El Niño): quem está lá, o que faz e como ajudar.
- **Grandes obras do bem** pelo mundo (Grande Muralha Verde, queda do desmatamento na Amazônia, Mata Atlântica, camada de ozônio, verme-da-Guiné, pólio, malária, baleias-jubarte, Mar de Aral do Norte, Costa Rica, Platô de Loess), com meta, progresso e status.

Todo número tem link para a fonte. Estimativa aparece como estimativa.

No ar: https://regeneracao.coderstudio.club

## Estrutura

```
site/
  index.html      página (d3 + topojson pelo CDN)
  data.json       todo o conteúdo: crises, projetos, destaque
  geo/            mapas do mundo e do Brasil por UF
  img/hero.jpg    arte do topo
deploy.sh         publica site/ no Cloudflare Pages
```

Para atualizar o conteúdo, edite só o `data.json`.

## Rodar localmente

```bash
python3 -m http.server 8791 --directory site
```

## Publicar

```bash
./deploy.sh
```
