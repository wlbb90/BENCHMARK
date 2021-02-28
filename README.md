# adbenchmark
 Códigos de Benchmark

Este repositório foi criado para disponibilização dos códigos de Benchmark desenvolvido para disciplina de Análise de Desempenho.
Trata-se de um trabalho para uma disciplina da Programa de Pós graduação em Computação (PCOMP) da Universidade Federal do Ceará.

O benchmark serve para avaliar o nível de interferência que um link de rede WI-FI sofre de outros links do mesmo tipo em um mesmo ambiente em relação ao envio de arquivos. Dada a limitação dessa experimentação em ambientes reais, este benchmark é desenvolvido para execução no simulador de redes NS-3 e o objetivo principal é verificar a interferência no envio de arquivos aumenta de acordo com o aumento da quantidade de links.
 
O código do benchmark é desenvolvido na linguagem C++ a partir da modificação de um módulo próprio do simulador NS-3. Para realizar uma experimentação mais concisa sem que haja necessidade de constantes mudanças nos códigos, foi escrito um script com extensão “.sh”, onde se pode alterar o número de pontos de acesso, o número de estações e o número de vezes que a simulação deve rodar.

O simulador NS-3 foi instalado em uma máquina rodando o Sistema Operacional Linux Mint, baseado em Debian. O script também foi desenvolvido para rodar no mesmo sistema operacional.

A simulação realiza o envio de um arquivo de texto simples no formato ".txt" e análise se o trhoughtput e o atraso no envio do arquivo sofrem interferência da quantidade de pontos de acesso e estações no mesmo ambiente de simulação.
