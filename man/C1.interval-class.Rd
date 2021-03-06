\name{C1.interval-class}
\docType{class}

\alias{C1.interval}
\alias{C1.interval-class}
\alias{prepare,C1.interval-method}
\alias{panel,C1.interval-method}

\title{Class \code{C1.interval}}

\description{
  A class for the creation and display of an interval between two numeric scores.
}

\section{Objects from the Class}{
  \code{C1.interval} objects can be created by calls of the form \code{new("C1.interval", ...)}.
  
  The regular usage in this package is to use the \code{s1d.interval} function.
}

\section{Slots}{
  \describe{
    \item{\code{data}}{a list containing data or data's name. \itemize{
      \item{\code{score}: the displayed values in the form of a vector, a factor, a name or a matching call.}
      \item{\code{at}: the index value.}
      \item{\code{frame}: a positive or null integer. It is the number of the frame containing the data (used 
        with \code{sys.frame(..., env = data$frame)}). Only if the data are not stored (i.e. \code{data$storeData = FALSE}).}
      \item{\code{storeData}: a logical indicating if the data should be stored in the returned object. 
        If \code{FALSE}, only the names of the data arguments are stored.}
    }}
    
    \item{\code{trellis.par}}{a list of parameters for \code{lattice} call. 
      It will be passed directly to \code{par.settings} arguments of the \code{lattice} function.}
  
    \item{\code{adeg.par}}{a list of graphical parameters, corresponding to the ones 
      given by \code{adegpar()} function.}
      
    \item{\code{lattice.call}}{a list to create the \code{trellis} object.}
    
    \item{\code{g.args}}{a list containing some method parameters linked with the created object of \code{ADEg.C1} class.
      The specific slot for \code{C1.density} objects is: \itemize{
      \item{\code{method}: a value, \code{bars} or \code{area}, to represent either segments or areas between scores.}
    }}
    
    \item{\code{stats}}{a list of internal preliminary calculations}

    \item{\code{s.misc}}{a list of some others internal parameters}
    
    \item{\code{Call}}{an object of class \code{call}}
  }
}

\section{Extends}{
  Class \code{\linkS4class{ADEg.C1}}, directly.\cr
  Class \code{\linkS4class{ADEg}}, by class \code{ADEg.C1}, distance 2.\cr
  Class \code{\linkS4class{ADEgORtrellis}}, by class \code{ADEg.C1}, distance 3.\cr
  Class \code{\linkS4class{ADEgORADEgSORtrellis}}, by class \code{ADEg.C1}, distance 3.
}

\section{Methods}{
  The methods of the father classes \code{"ADEg.C1"} and \code{"ADEg"} can be used by inheritance.
  The specific methods for \code{C1.interval} are: 
  \describe{
    \item{prepare}{\code{signature(object = "C1.interval")}: 
      calls the parent method (\code{prepare} for \code{ADEg.C1}) and modifies some graphical parameters used by default.}
      
    \item{panel}{\code{signature(object = "C1.interval")}: 
      draws segments or polygons.}
  }
}

\author{Alice Julien-Laferriere, Aurelie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr} and Stephane Dray
}

\seealso{
  \code{\linkS4class{ADEg}}    
  \code{\linkS4class{ADEg.C1}}
  \code{\link{s1d.interval}}
}

\examples{
showClass("C1.interval")
}

\keyword{classes}
