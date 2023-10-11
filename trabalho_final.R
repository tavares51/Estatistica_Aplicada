# Importando base de dados
dados <- read.csv2('base_de_dados.csv')
summary(dados)
attach(dados)
library(FSA)
# Frequencia dos clientes que mais compraram nas lojas
freq <- table(dados$ClientID)
freq[freq==max(freq)]
names(freq)
as.numeric(names(freq))
max(freq)
par(mar=c(5,8,4,2))
bp <- barplot(freq[freq==max(freq)],
              xlim = c(0,max(freq)+1),
              horiz = T,
              las=1,
              main="Clientes (ClienteID) que mais compraram",
              xlab = "Frequência"
)

text(freq[freq==max(freq)],bp,freq[freq==max(freq)],pos=2)


# Ranking das lojas que mais venderam por Cidade
freq <- table(dados$City_Store)
names(freq)
as.numeric(names(freq))
max(freq)

par(mar=c(5,8,4,2))
bp <- barplot(sort(freq),
              horiz = T,
              las=1,
              main="Quantidade de vendas das lojas",
              xlab = "Frequência"
)

text(sort(freq),bp,sort(freq),pos=2,offset = 0.5)

# Criando coluna Online
dados["online"] <- (dados$City_Store == "Online")*1

# Verificando se as vendas possuem distribuição normal 
hist(dados$Total_Price)
# p menor que alfa portando rejeitamos a hipotese de que é uma distribuição norma

ks.test(dados$Total_Price, "pnorm")

boxplot((Total_Price), horizontal = TRUE, main = "Total de Vendas")

# Muitos outliers, e mesmo retirando os dados ainda ficam distribuidos à esquerda
quantile((Total_Price))

# Preço médio por sexo
value_mean = tapply(Total_Price, Sex, mean)
par(mar=c(5,8,4,2))
bp <- barplot(value_mean,
              horiz = T,
              las=1,
              main="Preço médio por Sexo"
)
text(value_mean,bp,value_mean,pos=2,offset = 0.5)

# Dados não são normais, portanto não usaremos a ANOVA

#Existe Diferença de gastos entre faixa etárias ?

FORMULA = Total_Price ~ as.factor(AgeRange) 
kruskal.test(FORMULA)


# preço médio por loja
FORMULA1 = Total_Price ~ as.factor(StoreID)
kruskal.test(FORMULA1)


# Coluna online -> analisar se o cliente com idade avançada comprou mais online ?
dados_online<-dados[which(dados$online==1),]

# Dados não são normais, portanto não usaremos a ANOVA
FORMULA2 = Total_Price ~ as.factor(Age) 
kruskal.test(FORMULA2, data=dados_online)

#aceitamos H0 portantdo nas compras online a idade avançada não é influencia
#pois a média de compras são iguais



