#!/bin/bash

contar_linhas_csv(){
	local arquivo="$1"

	echo "$(wc -l < "$arquivo")"
}

processar_contagem(){
	local nome_arquivo="$1"
	local num_linhas="$2"

	echo "Total em $nome_arquivo: $num_linhas"
}

for f in *.csv; do
	linhas=$(contar_linhas_csv "$f")
	processar_contagem "$f" "$linhas"
done

