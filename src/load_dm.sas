/*
 *
 * Programa: load_dm.sas
 * Autor: Rodrigo Caputo
 * Data: 25/06/2025
 * Módulo: Carga de dados
 * Versão: 1.00
 *
 */
%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";
%include "&caminho/macro/importar_dados.sas";

%importar_dados(vendas, vendas)
%importar_dados(produtos, Produtos)
%importar_dados(deptos, Deptos)
%importar_dados(grupos, Grupos)
%importar_dados(cores, Cores)
%importar_dados(tamanhos, Tamanhos)
%importar_dados(estados, estados)
%importar_dados(regioes, Regiões)

%include "&caminho/src/clear_libs.sas";