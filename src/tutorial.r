library(fpp2)

source('func.r')

births <- load_data('births')

# time series
ts.work <- ts(births$births, start=c(1946,1), frequency=12)
autoplot(ts.work)
ggtsdisplay(ts.work)
ggseasonplot(ts.work)
ggmonthplot(ts.work)

# deecomposition
ts.deco <- decompose(ts.work, type='additive')
autoplot(ts.deco)
ggtsdisplay(ts.deco$seasonal)
ggtsdisplay(ts.deco$random)