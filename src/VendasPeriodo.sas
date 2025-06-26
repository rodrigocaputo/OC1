/*
 *
 * Programa: VendasPeriodo.sas
 * Autor: Rodrigo Caputo
 * Data: 25/06/2025
 * M�dulo: Prepara��o de Dados
 * Vers�o: 1.00
 *
 */

%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";

proc sql;
	create table sicoobsp.VendasPeriodo as
	select a.codproduto, b.descricao, b.codgrupo, b.coddepto,
	       a.codcor, a.codtamanho, a.codestado,
	       a.datavenda, a.qtdevendida, b.precounitario,
		   a.qtdevendida*b.precounitario as totalvenda
	from sicoob.vendas a
	     inner join sicoob.produtos b
		    on b.codproduto = a.codproduto;
quit;

%include "&caminho/src/clear_libs.sas";