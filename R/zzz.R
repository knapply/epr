.onLoad <- function(libname, pkgname) {
    if (requireNamespace("tibble", quietly = TRUE)) {
        tibble::tibble()
    }
    if (requireNamespace("data.table", quietly = TRUE)) {
        data.table::data.table()
    }
    
    invisible()
}
