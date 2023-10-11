# Estatistica_Aplicada
Trabalho desenvolvido para a disciplina de Estatística da Pós em Especialização em Ciência de Dados 

## Emenda
- Introdução/Contextualização
- Perguntas da Pesquisa
- Metodologia
- Resultados e Análise
- Conclusão

## Introdução/Contextualização
Análise de dados de vendas de camisas geek em uma rede de lojas.
A loja possui cerca de 6 unidades ao redor da região sul e sudeste do Brasil além de vendas online:

- Florianópolis;  
- Curitiba;
- Belo Horizonte;
- Rio de Janeiro;
- São Paulo;
- Porto Alegre;
- Online.

Também nos dados apresenta-se o sexo, tamanho, data de nascimento, cidade e estado do cliente que fez a compra além do valor unitário do produto, quantidade, desconto e a data da compra.

## Perguntas da Pesquisa
Após uma breve análise chegou-se às seguintes perguntas a serem respondidas a respeito de algumas informações da base de dados.
- A média de clientes com idade avançada tendem a comprar mais online ?
- Existe diferença de gastos entre as faixa-etárias de idade ?
- Existe alguma loja(online também) que tenha um preço médio maior que as demais ?

## Metodologia
Inicialmente para atender boa parte das perguntas, foi necessário criar quatro novas colunas na base:
- Total da Venda  -> (Valor do Produto * Quantidade) - Desconto
- Idade -> Data de Nascimento – Data da Compra (Idade do cliente no momento da compra)
- Faixa Etária -> Indicando Range das idades: Exemplo Idade = 17 anos a faixa etária ficou ‘17-19’
- Online -> Indica se a compra foi online 0 = Não, 1 = Sim

Após a criação das novas colunas iniciou-se então uma análise de Estatística descritiva, analisando a frequência de clientes, frequência de vendas das lojas e preço médio por sexo. Além de uma analise para constar se o Total da Venda é uma distribuição normal. 
Por fim aplicamos em todos os casos das perguntas a ANOVA caso os dados de total da venda tenha uma distribuição normal.

## Base de Dados
![image](https://github.com/tavares51/Estatistica_Aplicada/assets/54647142/69cfb682-6cb5-4369-9d67-ecee7386ff56)

## Resultados e Análise
### Estatística Descritiva
### Frequência de clientes
![image](https://github.com/tavares51/Estatistica_Aplicada/assets/54647142/4cd07106-3d86-486d-876e-376af0fc3133)
### Ranking das lojas que mais venderam
![image](https://github.com/tavares51/Estatistica_Aplicada/assets/54647142/8794cfef-603a-4e8e-9d27-d8c05bc4a668)
### Preço médio por sexo
![image](https://github.com/tavares51/Estatistica_Aplicada/assets/54647142/af03a73e-13b1-430f-80bc-f75baade81da)
### Verificando se as vendas possuem distribuição normal
![image](https://github.com/tavares51/Estatistica_Aplicada/assets/54647142/846e5986-8cb6-4063-a204-8c4bc3a1e588)
<br />
![image](https://github.com/tavares51/Estatistica_Aplicada/assets/54647142/063283ef-3a03-4afb-a9e7-c1248aa82dc4)
<br />
![image](https://github.com/tavares51/Estatistica_Aplicada/assets/54647142/25fac855-467f-4847-a565-063d9c4e0c4b)
<br />
![image](https://github.com/tavares51/Estatistica_Aplicada/assets/54647142/5729a9aa-6a9c-4e79-b9a8-df0872a75252)

### Roteiro Análise ANOVA
![image](https://github.com/tavares51/Estatistica_Aplicada/assets/54647142/888c7242-ff74-4337-8625-ce715c8dc84e)
<br />
Como os dados de vendas não possuem distribuição normal, não será aplicado ANOVA e sim o teste de Kruskal-Wallis

### Kruskal-Wallis
- Existe diferença de gastos entre as faixa-etárias de idade ?
![image](https://github.com/tavares51/Estatistica_Aplicada/assets/54647142/f12fac2f-69ef-4784-bd6a-a37c8044a472)

PVALOR = acima do alfa, portanto aceitamos H0 ou seja as médias são iguais.
Portanto, não existe diferença de gastos entre faixa etárias.

#### Box-plot
![image](https://github.com/tavares51/Estatistica_Aplicada/assets/54647142/9238b4bb-7501-4ca3-be8c-0c131ddaddb1)

### Kruskal-Wallis
- Existe alguma loja(online também) com um preço médio maior que as demais ?
![image](https://github.com/tavares51/Estatistica_Aplicada/assets/54647142/b62164c2-69e6-44b2-821f-1d61a5ab5aa0)

PVALOR = acima de 0.05 portanto aceitamos H0 ou seja as o preço médio entre as lojas são iguais.
Portanto, não existe diferença no preço médio.

#### Box-plot
![image](https://github.com/tavares51/Estatistica_Aplicada/assets/54647142/2c54d8c5-9b9f-4cd9-89b3-ccbd5535e6a5)

### Kruskal-Wallis
- A média de clientes com idade avançada tendem a comprar mais online ?
![image](https://github.com/tavares51/Estatistica_Aplicada/assets/54647142/ec16b220-0d84-4c1f-9c66-d96fa55b6cad)

PVALOR = acima de 0.05 portanto aceitamos H0, ou seja a idade avançada não influencia a compra online
pois a média de compras são iguais para todas as idades.
<br />
Para esse caso foi filtrado somente os casos online utilizando a coluna online.

#### Box-plot
![image](https://github.com/tavares51/Estatistica_Aplicada/assets/54647142/56001756-4c08-4c35-b4ca-2ab85c65ba60)

### Conclusão

Temos que no gráfico de ranking das empresas, o online está com a menor incidência de vendas, porém o valor médio dos preços das vendas são iguais como constatada no teste de Kruskal-Wallis.
<br />Já com as demais análises mostra-se que as vendas estão com médias boas e iguais para todas as lojas independente da faixa-etária de idades.
<br />Portanto, a utilização do teste de Kruskal-Wallis mostrou-se bastante útil para chegar em algumas conclusões de como agir com as vendas, seja online ou física e também entre as faixa-etárias de idade dos clientes.



































