# 📚 Read Later

Aplicação web para salvar e gerenciar artigos para leitura posterior. O sistema permite que usuários autenticados explorem manchetes de notícias e salvem os artigos que desejarem ler depois.

---

## 📌 Descrição do Projeto

O **Read Later** foi desenvolvido com o objetivo de proporcionar uma experiência prática e eficiente para usuários que desejam organizar suas leituras online. Integrado à [NewsAPI](https://newsapi.org/), o sistema exibe as principais manchetes do momento, permitindo ao usuário salvar os artigos de interesse para ler quando quiser.

---

## 🧹 Funcionalidades

✅ Cadastro e autenticação de usuários (Devise)
✅ Integração com a NewsAPI para exibição de notícias
✅ Possibilidade de salvar artigos para leitura posterior
✅ Listagem dos artigos salvos por cada usuário
✅ Layout responsivo com Tailwind CSS
✅ Paginação com Pagy
✅ Internacionalização com suporte a português (`pt-BR`)

---

## ✅ Pré-requisitos

Antes de iniciar o projeto, verifique se você tem os seguintes itens instalados:

* [Ruby 3.3.0](https://www.ruby-lang.org/)
* [Rails 8.0](https://rubyonrails.org/)
* [Bundler](https://bundler.io/)
* [SQLite3](https://www.sqlite.org/index.html)
* [Tailwind 2.7.9](https://v3.tailwindcss.com/)

---

## 🛠️ Instalação

Clone o repositório e siga os passos abaixo para rodar o projeto localmente:

```bash
git clone https://github.com/lukascoradin/read_later.git
cd read_later
```

### 1. Instale as dependências

```bash
bundle install
```

### 2. Configure o banco de dados

```bash
rails db:create
rails db:migrate
```

### 3. Crie o arquivo `.env` com sua chave da NewsAPI

```env
NEWS_API_KEY=sua_chave_aqui
```

Você pode obter uma chave gratuita em: [https://newsapi.org/](https://newsapi.org/)

---

## 🚀 Executando o Projeto

Com tudo pronto, basta iniciar o servidor Rails:

```bash
bin/dev
```

Depois, acesse no navegador:

```
http://localhost:3000
```

---

## 📦 Tecnologias Utilizadas

* **Ruby on Rails 8**
* **Tailwind CSS**
* **Devise** (autenticação)
* **Pagy** (paginação)
* **NewsAPI** (integração com API externa)
* **SQLite3** (banco de dados local)
* **i18n** (internacionalização)

---

## 👨‍💼 Autor

Desenvolvido por José Lucas Coradin

---

## 📄 Licença

Este projeto está sob a licença MIT. Consulte o arquivo `LICENSE` para mais detalhes.
