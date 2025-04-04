################################################################################
# Exemplo 02 (operadores em R): Analise de Enriquecimento de Vias Metabolicas
#
# Autor: Jean Resende (jean.s.s.resende@gmail.com)
################################################################################

# Passo 1: Simular lista de genes diferencialmente expressos
genes_de_interesse <- c("GENE1", "GENE3", "GENE5", "GENE7", "GENE9")

# Passo 2: Simular conjunto de genes de uma via metabólica
via_metabolica <- c("GENE2", "GENE3", "GENE5", "GENE8", "GENE9", "GENE10")

# Passo 3: Verificar enriquecimento
genes_comuns <- genes_de_interesse %in% via_metabolica

# Calcular o número de genes em comum
numero_genes_comuns <- sum(genes_comuns)

# Exibir resultado
print(paste("Número de genes em comum:", numero_genes_comuns))

# Observação: Em uma análise real, você usaria testes estatísticos para avaliar se o
# enriquecimento é significativo.