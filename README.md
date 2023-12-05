# Kubernetes na AWS - Guia para Iniciantes

Bem-vindo ao repositório k8s-aws-beginner! Este é um recurso projetado para ajudar iniciantes a dar os primeiros passos no uso de Kubernetes na Amazon Web Services (AWS). Aqui você encontrará guias simples, exemplos práticos e dicas úteis para começar sua jornada no mundo da orquestração de contêineres na nuvem da AWS.

## Conteúdo

1. [**Configuração Inicial do Ambiente**](#configuração-inicial-do-ambiente)
    - Passos para configurar suas credenciais da AWS.
    - Instalação do cliente `kubectl`.

2. [**Criando um Cluster Kubernetes na AWS**](#criando-um-cluster-kubernetes-na-aws)
    - Guia passo a passo para criar seu próprio cluster Kubernetes.

3. [**Implantando Aplicações Simples**](#implantando-aplicações-simples)
    - Exemplos práticos de como implantar e gerenciar aplicações básicas.

4. [**Dicas Úteis para Iniciantes**](#dicas-úteis-para-iniciantes)
    - Orientações e melhores práticas para facilitar seu aprendizado.

## Configuração Inicial do Ambiente

Antes de começar, certifique-se de configurar corretamente o ambiente:

1. **Configuração da AWS:**
    - [Guia AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html) para configurar suas credenciais.

2. **Instalação do `kubectl`:**
    - Siga as [instruções oficiais](https://kubernetes.io/docs/tasks/tools/install-kubectl/) para instalar o cliente `kubectl`.

## Criando um Cluster Kubernetes na AWS

Siga estes passos simples para criar seu próprio cluster Kubernetes:

1. Clone este repositório:
    ```bash
    git clone https://github.com/titi0001/k8s-aws-beginner.git
    cd k8s-aws-beginner
    ```

2. [Configuração do Cluster](docs/configuracao-cluster.md): Detalhes sobre a configuração do cluster e opções disponíveis.

3. [Provisionando o Cluster na AWS](docs/provisionamento-aws.md): Guia passo a passo para criar seu cluster utilizando o Amazon EKS.

## Implantando Aplicações Simples

Explore exemplos práticos para começar a implantar aplicações no seu cluster Kubernetes:

1. [Implantando uma Aplicação de Exemplo](examples/exemplo1/README.md): Guia passo a passo para implantar uma aplicação simples.

2. [Escalonamento Automático](examples/escalonamento-automatico/README.md): Aprenda a configurar o escalonamento automático de pods.

# Instalação e Configuração do Kind para Acesso Local ao Host

O Kind (Kubernetes in Docker) é uma ferramenta que facilita a criação de clusters Kubernetes para testes locais. Este guia fornece instruções para instalar o Kind e configurações adicionais para permitir o acesso local ao host.

## Pré-requisitos

- Certifique-se de ter o Docker instalado na sua máquina.

## Instalação do Kind

1. Abra um terminal e execute o seguinte comando para baixar o binário do Kind:

   ```bash
   curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64
   chmod +x ./kind
   sudo mv ./kind /usr/local/bin/kind

## Criando um Cluster Kind

1. Agora que o Kind está instalado, você pode criar um cluster Kubernetes com uma configuração específica para acessar localmente o host. Execute o seguinte comando:

    ```bash
    kind create cluster --name meu-cluster --config kind-config.yaml
    ```


## Contribuindo

Se você tiver sugestões, correções ou melhorias, sinta-se à vontade para contribuir! Basta abrir uma issue ou enviar um pull request.

Divirta-se explorando o Kubernetes na AWS!
