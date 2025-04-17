#!/bin/bash

ARQUIVO="dados.csv"

if [ -f "$ARQUIVO" ]; then
	echo "Arquivo $ARQUIVO encontrado"
else
	echo "Arquivo $ARQUIVO nao encontrado"
fi

