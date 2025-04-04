################################################################################
# Topico 03: Operadores em R
#
# Autor: Jean Resende (jean.s.s.resende@gmail.com)
################################################################################
# -- Operadores aritmeticos --
# Dados de expressão gênica de um gene em amostras tumorais e normais
expressao_tumor <- 15
expressao_normal <- 5

# Cálculo do fold-change
fold_change <- expressao_tumor / expressao_normal

# Exibição do resultado
print(paste("Fold-change:", fold_change)) # Output: Fold-change: 3

# -- Operadores de comparacao -- ###############################################
# Níveis de expressão gênica de um gene em diferentes amostras
niveis_expressao <- c(10, 5, 12, 8, 15)

# Identificação de amostras com expressão acima de 10
amostras_superexpressas <- niveis_expressao > 10

# Exibição do resultado
print(paste("Amostras superexpressas:", amostras_superexpressas)) # Output: Amostras superexpressas: TRUE FALSE TRUE FALSE TRUE

# -- Operadores logicos -- #####################################################
# Condições lógicas para expressão gênica e prognóstico
superexpresso <- c(TRUE, FALSE, TRUE, TRUE, FALSE)
mau_prognostico <- c(FALSE, TRUE, TRUE, FALSE, TRUE)

# Identificação de genes superexpressos e com mau prognóstico
genes_interesse <- superexpresso & mau_prognostico

# Exibição do resultado
print(paste("Genes de interesse:", genes_interesse)) # Output: Genes de interesse: FALSE FALSE TRUE FALSE FALSE

# -- Operadores de atribuicao -- ###############################################
# Criação de uma sequência de números de 1 a 10
posicoes_genoma <- 1:10

# Verificação se um gene específico está presente em uma lista
genes_interesse <- c("GENE1", "GENE2", "GENE3")
gene_alvo <- "GENE2"
gene_presente <- gene_alvo %in% genes_interesse

# Exibição do resultado
print(paste("Gene presente:", gene_presente)) # Output: Gene presente: TRUE

# -- Outros operadores -- ######################################################
# Criação de uma sequência de números de 1 a 10
posicoes_genoma <- 1:10

# Verificação se um gene específico está presente em uma lista
genes_interesse <- c("GENE1", "GENE2", "GENE3")
gene_alvo <- "GENE2"
gene_presente <- gene_alvo %in% genes_interesse

# Exibição do resultado
print(paste("Gene presente:", gene_presente)) # Output: Gene presente: TRUE
################################################################################