/*
 *
 * Programa: rel_carros_usa.sas
 * Autor: Rodrigo Caputo
 * Data: 24/06/2025
 * M�dulo: Relat�rios
 * Vers�o: 1.001
 *
 */

%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";

%include "&caminho/src/libraries.sas";
proc print data=sicoob.carros;
	where origin='USA';
run;

proc print data=sicoobsp.carros123;
	where origin='Europe';
run;