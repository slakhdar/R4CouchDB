\name{cdbListDB}
\alias{cdbListDB}
\title{Returns all databases on the server}
\usage{
  cdbListDB(cdb)
}
\arguments{
  \item{cdb}{Only the connection settings \code{cdb$port}
  and \code{cdb$serverName} is needed.}
}
\value{
  \item{cdb }{The result of the request is stored in
  cdb$res after converting the json answer into a list
  using \code{cdb$fromJSON()}.}
}
\description{
  Gives a list of all databases available at
  \code{cdb$serverName}.
}
\details{
  The function uses the CouchDB API end point:
  \url{http://localhost:5984/_all_dbs}
}
\author{
  wactbprot
}
\references{
  \url{ http://www.omegahat.org/RCurl/ } \url{
  http://www.omegahat.org/RJSONIO/ } \url{
  http://couchdb.apache.org/ }
}
\seealso{
  \code{cdbMakeDB}
}
\keyword{misc}

