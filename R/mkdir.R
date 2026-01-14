#' Create Timestamped Directory
#'
#' Quickly create a directory with automatic date stamping.
#'
#' @param prefix Optional prefix for directory name
#' @param suffix Suffix for directory name
#' @param base_dir Base directory path (default: current directory)
#'
#' @return Path to created directory
#'
#' @examples
#' \dontrun{
#' mkdir("C610", "sub_cluster_analysis")
#' }
#'
#' @export
mkdir <- function(prefix = NULL, suffix = NULL, base_dir = ".") {
  rundate <- gsub("-", "_", Sys.Date())
  
  if (!is.null(prefix)) {
    dirname <- paste0(prefix, "_", rundate, "_", suffix)
  } else {
    dirname <- paste0(rundate, "_", suffix)
  }
  
  savepath <- file.path(base_dir, dirname)
  dir.create(savepath, recursive = TRUE, showWarnings = FALSE)
  
  return(savepath)
}
