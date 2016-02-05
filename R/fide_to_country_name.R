#' Fide to country name
#'
#' Convert Fide country codes to country name
#' @param fc Fide country code
#' @keywords Fide country name
#' @export
#' @examples
#' fide_to_country_name(c("ENG","USA","RUS","FID","GER"))

fide_to_country_name <- function(fc) {
	require(countrycode)
	ff<-as.factor(fc)
	levels(ff)<-c(levels(ff),"GBR")
	ff[ff=="ENG"]<-"GBR"
	ft<-countrycode(ff,"ioc","country.name")
	levels(ft)<-c(levels(ft),"Fide Online Arena")
	for(i in 1:length(ft)) {
		if(ff[i]=="FID") {
			ft[i]="Fide Online Arena"
		}
	}
	return(ft)
}