################################################################################
# Exemplo 02 (operadores em R): Identificacao de Genes Marcadores
#
# Autor: Jean Resende (jean.s.s.resende@gmail.com)
################################################################################

# Passo 1: Simular dados (em um cenário real, você teria dados de expressão e informações clínicas)
# Este exemplo simula dados de expressão, status tumoral e sobrevida de pacientes

# Expressão gênica
expressao <- c(12, 7, 18, 9, 15, 11, 20, 6, 16, 13)

# Status tumoral (1 = tumoral, 0 = normal)
status_tumoral <- c(1, 0, 1, 0, 1, 1, 1, 0, 1, 0)

# Sobrevida (em meses)
sobrevida <- c(24, 36, 18, 48, 20, 22, 15, 54, 19, 42)

# Criar um data frame
dados_pacientes <- data.frame(
  gene = paste0("Gene", 1:10),
  expressao = expressao,
  status_tumoral = status_tumoral,
  sobrevida = sobrevida
)

# Passo 2: Identificar genes com expressão alterada em tumores
# Genes com expressão > 15 em tumores são considerados de interesse
genes_interesse <- dados_pacientes[dados_pacientes$expressao > 15 & dados_pacientes$status_tumoral == 1, ]

# Passo 3: Analisar associação com sobrevida (exemplo simplificado)
# Pacientes com alta expressão do gene vivem menos (exemplo ilustrativo)
print("Genes de Interesse e Sobrevida:")
print(genes_interesse)

# Observação: Em uma análise real, você usaria testes estatísticos para avaliar a significância
# da associação entre expressão gênica e sobrevida.