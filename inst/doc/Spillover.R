## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- error=FALSE, message=FALSE, warning=FALSE-------------------------------
options(repos = list(CRAN="http://cran.rstudio.com/"))
library(Spillover, quietly = TRUE)
data(dy2012)

## -----------------------------------------------------------------------------
require(dplyr)

dy2012 %>% 
  dplyr::select(-Date) %>% 
  VAR(p=4) %>% 
  G.spillover(standardized = FALSE) %>% 
  round(2)


## ---- warning=FALSE, message=FALSE, fig.align='center'------------------------
total_dynamic <- total.dynamic.spillover(as.zoo(dy2012[,-1]),
                          width = 200, 
                          index="generalized",
                          p=4) 

require(ggplot2)

tibble(Date= dy2012$Date[-c(1:199)],  index = total_dynamic) %>% 
  mutate(Date=as.Date(as.character(Date))) %>% 
  ggplot(aes(x=Date, y=index)) +
  geom_line()+
  labs(caption = "Fig 2. Total volatility spillovers, four asset classes.")+
  theme(plot.caption = element_text(hjust = 0))

## -----------------------------------------------------------------------------
dy_results <- dynamic.spillover(data=dy2012, 
                                width=200, 
                                p=4) 

## ---- fig.align='center'------------------------------------------------------
pp_from <- plotdy(data=dy_results, direction = "from") 

pp_from +
  labs(caption = "Fig 3. Directional volatility spillovers, FROM four asset classes.")+
  theme(plot.caption = element_text(hjust = 0.5))

## ---- fig.align='center', warning=FALSE, message=FALSE------------------------
pp_to <- plotdy(dy_results, direction = "to")

# Just for customization 
pp_from +
  labs(caption = "Fig. 4. Directional volatility spillovers, TO four asset classes.")+
  theme(plot.caption = element_text(hjust = 0.5))

## ---- fig.align='center', warning=FALSE, message=FALSE------------------------
pp_net <- plotdy(dy_results, direction = "net")


pp_net +
  labs(caption = "Fig. 5. Net volatility spillovers, four asset classes.")+
  theme(plot.caption = element_text(hjust = 0.5))

## ---- fig.align='center'------------------------------------------------------
pp_netpairwise <- plotdy(dy_results, direction = "net_pairwise")

pp_netpairwise +
  labs(caption = "Fig. 6. Net pairwise volatility spillovers.")+
  theme(plot.caption = element_text(hjust = 0.5))

## ---- fig.align='center'------------------------------------------------------
pp_from_to_pairwise <- plotdy(dy_results, direction = "from_to_pairwise")



