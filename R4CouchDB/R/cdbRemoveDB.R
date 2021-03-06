#' Function to remove a database
#' 
#' Removing a database means sending a http- "DELETE"- request to
#' \code{http://cdb$serverName:cdb$port/ ...}
#' 
#' In \code{cdb} a entry \code{cdb$delDBName} should be provided for more
#' explicit deleting respectively more secure removing.
#' 
#' @usage cdbRemoveDB(cdb)
#' @param cdb The \code{cdb} has to provide \code{cdb$serverName},
#' \code{cdb$port} and \code{cdb$DBName}
#' @return \item{cdb}{The CouchDB answer is stored in \code{cdb$res}. Any
#' problems on the R side are reportet in \code{cdb$error} }
#' @author wactbprot
#' @export
#' @seealso \code{cdbMakeDB}
#' @references \url{ http://couchdb.apache.org/ }
#' @keywords misc

cdbRemoveDB <- function(cdb){
  
  fname <- deparse(match.call()[[1]])
  cdb   <- cdb$checkCdb(cdb,fname)
  
  if( cdb$error == ""){
    adrString <- paste(cdb$baseUrl(cdb),
                       cdb$removeDBName,
                       sep="")
    
    res       <- getURL(adrString,
                        curl=cdb$curl,
                        customrequest = "DELETE",
                        .opts =cdb$opts(cdb))
    return(cdb$checkRes(cdb,res))

  }else{
    stop(cdb$error)
  }
}
