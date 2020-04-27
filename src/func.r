library(miceadds)

load_data <- function(filename) {
    load.Rdata2(
        paste(filename, '.RData', sep=''),
        path=paste(getwd(), '/data', sep='')
    )
}