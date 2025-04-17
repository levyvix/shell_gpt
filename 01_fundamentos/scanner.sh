#!/bin/bash

list_arquivos(){
	local diretorio="$1"

	for arquivo in "$diretorio"/*.csv; do
		if [ -f "$arquivo" ]; then
			echo "$(basename "$arquivo")"
		fi
	done
	
}

numero_de_linhas_csv(){
	local arquivo="$1"

	echo "$(wc -l < "$arquivo")"
}

salvar_log_csv(){
	#nome_arquivo,qtde_linhas,data_hora
	local arquivo="$1"
	local num_linhas="$2"
	local data_hora=$(date +"%Y-%m-%d %H:%M:%S")

	# se arquivo nao existe, cria e coloca cabecalho
	if [ ! -f "log.csv" ]; then
		echo "nome_arquivo,qtde_linhas,data_hora" >> log.csv
	fi

	echo "$arquivo,$num_linhas,$data_hora" >> log.csv
}


diretorio="$1"

if [ ! -d "$diretorio" ]; then
	echo "Diretorio $diretorio nao encontrado"
	exit 1
fi

for arquivo in $(list_arquivos "$diretorio"); do
	num_linhas=$(numero_de_linhas_csv "$diretorio/$arquivo")
	salvar_log_csv "$arquivo" "$num_linhas"
done

