#' Compare Elements Between 2 Columns
#'
#' If both columns contain the same elements, a message is displayed
#' If the columns do not contain the same elements, 3 elements are printed: elements on list A but not on list B, elements on list B but not on list A and common elements
#'
#' @param list1 first column to compare
#' @param list2 second column to compare
#'
#' @export

compare_column_elements <- function(list1,list2){
  if(setequal(list1,list2)){
    writeLines("Both lists are equal (contain the same elements)")
  } else {
    writeLines("Elements in A but not in B:")
    print(setdiff(list1,list2))
    writeLines("\n")
    writeLines("Elements in B but not in A:")
    print(setdiff(list2,list1))
    writeLines("\n")
    writeLines("Elements in common:")
    print(intersect(list2,list1))
  }
}
