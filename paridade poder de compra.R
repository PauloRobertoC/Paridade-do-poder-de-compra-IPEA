### Dados do IPEA com r: ipeadatar
#Este material visa auxiliar na obtenção de séries econômicas do IPEAData diretamente do repositório, 
#fazendo uso do pacote ipeadatar de Gomes (2019).

#instalando o pacote
install.packages("devtools")
devtools::install_github("gomesleduardo/ipeadatar")

### carregando pacotes
library(ipeadatar)
library(knitr)
library(tidyr)
library(dplyr)
library(DT)
library(magrittr)
library(dygraphs)

PIB_search<-as.data.frame(search_series(terms = c("PIB - paridade", "PPC"), fields = c("name"),language = c("br")))
PIB_search %<>% dplyr::slice(1:500L)
datatable(PIB_search)

data<-ipeadata(c("WDI_PIBPPCCAPBRA"))

library(dygraphs)

dygraph(ts(data$value,start = c(1980),frequency = 1), main = "Brasil - PIB - paridade do poder de compra (PPC) - US$ per capita (Anual)  <br> IPEADATA WDI_PIBPPCCAPBRA <br> Banco Mundial, World Development Indicators (WDI)") %>%
  dyAxis("x", drawGrid = TRUE) %>%
  dyOptions(drawPoints = TRUE, pointSize = 2)



























































































































































































