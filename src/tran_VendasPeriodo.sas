/*
 *
 * Programa: tran_VendasPeriodo.sas
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
	select a.codproduto, b.descricao, c.descricao as Grupo, 
	       d.descricao as Depto,
	       e.descricao as Cor, f.descricao as tamanho,
	       g.Sigla, g.Nome as Estado,
	       a.datavenda, a.qtdevendida,
	       b.precounitario,
		   a.qtdevendida*b.precounitario as TotalVenda,
		   g.percimposto,
		   a.qtdevendida*b.precounitario*g.percimposto as TotalImposto
	  from sicoob.vendas a
	  inner join sicoob.produtos b
		    on b.codproduto = a.codproduto
	  inner join sicoob.grupos c
	        on c.codgrupo = b.codgrupo
	  inner join sicoob.deptos d
	        on d.coddepto = b.coddepto
	  inner join sicoob.cores e
	        on e.codcor= a.codcor
	  inner join sicoob.tamanhos f
	        on f.codtamanho = a.codtamanho
	  inner join sicoob.estados g
	        on g.codestado = a.codestado
	  inner join sicoob.regioes h
	        on h.codregiao = g.codregiao;
quit;

%include "&caminho/src/clear_libs.sas";