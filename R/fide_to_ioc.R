#' Fide to ioc
#'
#' Convert Fide country codes to ioc
#' @param fc Fide country code
#' @keywords Fide country code ioc
#' @export
#' @examples
#' fide_to_ioc(c("ENG","USA","RUS"))

fide_to_ioc <- function(fc) {
	ff<-as.factor(fc)
	levels(ff)<-c(levels(ff),"GBR")
	ff[ff=="ENG"]<-"GBR"
	return(ff)
}