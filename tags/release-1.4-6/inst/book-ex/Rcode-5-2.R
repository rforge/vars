library(urca)
data(Raotbl3)
attach(Raotbl3)
lc <- ts(lc, start=c(1966,4), end=c(1991,2),
         frequency=4)
lc.ct <- ur.pp(lc, type='Z-tau', model='trend',
               lags='long')
lc.co <- ur.pp(lc, type='Z-tau', model='constant',
               lags='long')
lc2 <- diff(lc)
lc2.ct <- ur.pp(lc2, type='Z-tau', model='trend',
                lags='long')
