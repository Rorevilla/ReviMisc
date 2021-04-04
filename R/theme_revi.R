#' Revi theme, based on Theme Ipsum RC by Hrbrthemes
#'
#' @param border Indicates whether the panel border should be included on the plot
#' @param ... params for theme_ipsum_rc
#' @export
#' @import hrbrthemes

theme_revi <- function (border=TRUE,...) {
  hrbrthemes::import_roboto_condensed()
  if (border) {
    hrbrthemes::theme_ipsum_rc(...) +
      theme(axis.title.x = element_text(hjust = 0, vjust=0, colour="darkgrey",size=12,face="bold"))+
      theme(axis.title.y = element_text(hjust = 0, vjust=3, colour="darkgrey",size=12,face="bold"))+
      theme(panel.border = element_rect(colour = "lightgrey", fill=NA, size=2))
  } else {
    hrbrthemes::theme_ipsum_rc(...) +
      theme(axis.title.x = element_text(hjust = 0, vjust=0, colour="darkgrey",size=12,face="bold"))+
      theme(axis.title.y = element_text(hjust = 0, vjust=3, colour="darkgrey",size=12,face="bold"))
  }
}
