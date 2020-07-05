# Makefile Sample

## Descrição
Projeto de exemplo de criação de makefile para código em linguagem C. Neste projeto há apenas um o código **main** e um arquivo **helloworld** para mostrar como fazer a configuração do makefile para que seja feita a compilação de linker dos arquivos de fonte e tambem a geração dos diretórios para organizar o projeto.
Este exemplo foi desenvolvido no MacOS, mas pode ser compilado também no linux e windows, mas para gerar um .exe, do Windows, serão necessários alguns passos a mais.
Como resultado, ao executar o binário gerado, será impresso no terminal a mensagem **hello world**, simples assim.

## Ferramentas necessárias
- Compilador GCC
- Terminal

## Compilando o projeto
No terminal, navegue até o diretório raiz do projeto e execute o seguinte comando:

```
make
```

Ao executar este comando será criado o diretório **objects** com os arquivos compilados e um arquivo **makefileSample** na raiz do projeto que é o binário final compilado. 

Para executar o binário gerado, execute o seguinte comando no terminal para ver a mensagem sendo impressa.

```
./makefileSample
```

Impressionante não?!

As instruções e explicações do que está acontencendo neste processo de compilação podem ser encontrados neste post https://www.embarcados.com.br/introducao-ao-makefile/

