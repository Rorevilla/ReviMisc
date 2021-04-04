#' Paste from Excel (via clipboard)
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



#' Copy to Excel (via clipboard)
#'
#' @param x dataframe to be copied to Excel
#' @param row.names Binary - Indicates whether the row names should be copied
#' @param col.names Binary - Indicates whether the column names should be copied
#' @param ... params used in write.table function (from utils package)
#'
#' @return None
#' @export
#'
#' @importFrom utils write.table
copy_to_excel <- function(x,row.names=FALSE,col.names=TRUE,...) {
  write.table(x,"clipboard",sep="\t",row.names=row.names,col.names=col.names,...)
}
