# Full Cycle Rocks Project

Este projeto é uma demonstração simples de como criar um contêiner Docker executando um aplicativo Go. O aplicativo em si é minimalista, apenas exibindo a mensagem "Full Cycle Rocks!!" quando executado.

## Visão Geral

O projeto utiliza uma imagem Docker baseada em `golang:1.21.4-alpine3.18` para compilar o código Go e, em seguida, executa o binário compilado em uma imagem `scratch` extremamente leve. Este processo resulta em um contêiner Docker muito eficiente e de tamanho reduzido, ideal para deploy rápido e seguro.

## Docker Image

A imagem Docker do projeto está hospedada no Docker Hub e pode ser encontrada em: **leogrig/go-scratch**. Esta imagem foi especialmente configurada para demonstrar a eficácia de imagens Docker minimalistas.

## Como Usar

Para executar este projeto, você precisará ter o Docker instalado em sua máquina. Uma vez instalado, você pode baixar e executar a imagem usando os seguintes comandos:

```bash
docker pull leogrig/go-scratch
docker run leogrig/go-scratch