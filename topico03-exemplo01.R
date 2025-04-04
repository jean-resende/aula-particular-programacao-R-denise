################################################################################
# Exemplo 01 (operadores em R): Calculo de Fold-Change
#
# Autor: Jean Resende (jean.s.s.resende@gmail.com)
################################################################################

# Passo 1: Importar dados (simulados para demonstração)
# Em um cenário real, você carregaria seus dados de um arquivo CSV ou similar
# Este exemplo simula dados de expressão gênica de 10 genes em amostras tumorais e normais

# Expressão gênica em amostras tumorais
expressao_tumor <- c(15, 8, 22, 10, 18, 12, 25, 7, 19, 14)

# Expressão gênica em amostras normais
expressao_normal <- c(5, 3, 7, 4, 6, 5, 8, 2, 6, 4)

# Criar um data frame para organizar os dados
dados_expressao <- data.frame(
  gene = paste0("Gene", 1:10),
  expressao_tumor = expressao_tumor,
  expressao_normal = expressao_normal
)

# Exibir os dados
print(dados_expressao)

# Passo 2: Calcular o fold-change
dados_expressao$fold_change <- dados_expressao$expressao_tumor / dados_expressao$expressao_normal

# Passo 3: Interpretar os resultados
# Genes com fold-change > 2 são considerados superexpressos em tumores
genes_superexpressos <- dados_expressao[dados_expressao$fold_change > 2, ]

# Exibir genes superexpressos
print("Genes Superexpressos:")
print(genes_superexpressos)

# Genes com fold-change < 0.5 são considerados subexpressos em tumores
genes_subexpressos <- dados_expressao[dados_expressao$fold_change < 0.5, ]

# Exibir genes subexpressos
print("Genes Subexpressos:")
print(genes_subexpressos)