class ConversorDeNumeroRomano
  TABELA = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000,
    }
  def converte (numero_em_romano)
    acomulador = 0
    ultimo_vizinho_da_direita = 0
    numero_em_romano.split('').reverse.each do | digito_em_romano|
      # pega o intero referente ao simbolo atual
      atual = TABELA[digito_em_romano]
      # se o da direita for maior, o multiplicaremos
      # por -1 para torna-lo negativo
      multiplicador = 1
      multiplicador = -1 if (atual < ultimo_vizinho_da_direita)

      acomulador += atual * multiplicador

      # atualiza o vizinho da direita
      ultimo_vizinho_da_direita = atual
    end
    acomulador
  end
end
