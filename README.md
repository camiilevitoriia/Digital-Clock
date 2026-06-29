# Relógio Digital & Módulos Logico-Aritméticos em VHDL

Este repositório contém o desenvolvimento de um projeto de Sistemas Digitais em VHDL utilizando o ambiente **Altera Quartus II**. O projeto engloba a implementação de blocos estruturais básicos, circuitos aritméticos/combinacionais, contadores sequenciais e o mapeamento para displays de 7 segmentos, servindo como fundação para a construção de um **Relógio Digital** completo.

> ⚠️ **Status do Projeto:** Em desenvolvimento. Os blocos de hardware fundamentais e aritméticos estão concluídos e validados. O módulo integrador do relógio (base de tempo e contagem de horas/minutos) está planeado para a próxima etapa.

---

## 📂 Estrutura de Arquivos do Projeto

Os arquivos estão organizados no diretório principal `/projetoSD` e divididos funcionalmente da seguinte forma:

### 🏛️ Unidades de Memória & Contadores (`Flip-Flops`)
* **`ffd.vhd`**: Implementação de um Flip-Flop tipo D, elemento básico para armazenamento de estados.
* **`ffjk.vhd`**: Implementação de um Flip-Flop tipo JK, configurado para alternância de estado (*toggle*).
* **`fft.vhd`**: Implementação de um Flip-Flop tipo T, ideal para divisores de frequência.
* **`contador_assincrono.vhd` / `circ_contador_assincrono.vhd`**: Contadores progressivos estruturados a partir de flip-flops em cascata.
* **`contador_assincrono_dec.vhd` / `circ_contador_assincrono_decr.vhd`**: Contadores regressivos (decrementadores).
* **`teste_ff.vhd`**: Banco de testes (*Testbench*) para validação dos elementos de memória.

### 🧮 Circuitos Aritméticos & Combinacionais
* **`MeioSomador.vhd`**: Circuito meio-somador de 1 bit (Soma e Carry Out).
* **`somadorCompleto.vhd`**: Somador completo de 1 bit com entrada de Carry In.
* **`somador4bits.vhd`**: Ripple Carry Adder de 4 bits baseado na associação de somadores completos.
* **`somador5.vhd`**: Extensão do circuito somador para operações com palavras de 5 bits.
* **`sub.vhd`**: Unidade responsável pela operação de subtração binária.
* **`comp2.vhd`**: Bloco para cálculo de complemento de dois, essencial para representação de números negativos.
* **`magnitude.vhd`**: Comparador de magnitude (A > B, A < B, A = B).
* **`mux.vhd`**: Multiplexador para seleção de barramentos de dados.

### 📺 Visualização & Sincronismo
* **`divisor_frequencia.vhd`**: Redutor do clock nativo da FPGA para frequências menores. Será o responsável por gerar o pulso preciso de 1 Hz (1 segundo) para o relógio.
* **`decod.vhd`**: Decodificador BCD/Binário para Displays de 7 segmentos (Anodo ou Catodo Comum).
* **`decod_sinal.vhd`**: Bloco auxiliar para exibição de sinais e formatações especiais nos displays.

### 🔝 Nível Topo & Aplicações Integradas
* **`calculadora.vhd`**: Circuito combinacional que integra os blocos de soma e subtração para realizar operações controladas por chaves.
* **`circuito.vhd`**: Arquivo *Top-Level* atual do projeto, utilizado para interconectar e testar as entidades desenvolvidas diretamente na placa de desenvolvimento.

### 🛠️ Configurações do Quartus II
* **`ProjetoQuartus.qpf`**: Arquivo de projeto do Quartus (*Quartus Project File*).
* **`ProjetoQuartus.qsf`**: Configurações de compilação e atribuição de pinos (*Quartus Settings File*).

---

## 🛠️ Tecnologias e Ferramentas Utilizadas

* **Linguagem:** VHDL (IEEE 1076)
* **Software de Síntese:** Altera/Intel Quartus II (versões compatíveis com Cyclone IV ou similares)
* **Metodologia:** Descrição Estrutural (Port Map) e Comportamental

---

