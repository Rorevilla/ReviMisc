#' Paste from excel (clipboard)
#'
#' Imports a copied Excel region into a dataframe
#'
#' @param header indicates wether the copied region contains a header row
#' @param ... params used in read.table function (from utils package)
#'
#' @return None
#' @export
#'
#' @importFrom utils read.table
paste_from_excel <- function(header=TRUE,...) {
  read.table("clipboard",sep="\t",header=header,...)
}
