#' Data_read
#'
#' @param dir
#' @param na.rm
#'
#' @return
#' @export
#'
#' @examples
data_read <- function(dir, na.rm=FALSE) {
  return.me<-list()
  for(i in c(1:length(dir))){
    dt<-lapply(dir, readRDS)
    names(dt)<-dir
    dt<-rbindlist(dt, idcol='SID')
    output[[i]]<-as.data.table(dt, na.rm=na.rm)
  }
  rbindlist(return.me)
}
