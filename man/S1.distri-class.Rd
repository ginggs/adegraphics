\name{S1.distri-class}
\docType{class}

\alias{S1.distri}
\alias{S1.distri-class}
\alias{prepare,S1.distri-method}
\alias{panel,S1.distri-method}

\title{Class \code{S1.distri}}

\description{
  A class for the representation of a set of distributions on a numeric score.
}

\section{Objects from the Class}{
  \code{S1.distri} objects can be created by calls of the form \code{new("S1.distri", ...)}.
  
  The regular usage in this package is to use the \code{s1d.distri} function.
}

\section{Slots}{
  \describe{
    \item{\code{data}}{a list containing data or data's name. \itemize{
      \item{\code{score}: the displayed values in the form of a numeric vector, a name or a matching call.}
      \item{\code{dfdistri}: the mass distribution in which each column is a class.}
      \item{\code{labels}: the labels' names drawn for each distribution.}
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
      
    \item{\code{g.args}}{a list containing some method parameters linked with the created object of \code{ADEg.S1} class.
      The specific slots for \code{S1.distri} objects are: \itemize{
      \item{\code{sdSize}: the size of the standard deviation segments.}
      \item{\code{yrank}: a logical to draw the distributions sorted by means ascending order.}
    }}
    
    \item{\code{stats}}{a list of internal preliminary calculations. 
      The specific slots for \code{S1.distri} objects are: \itemize{
      \item{\code{means}: the weighted mean calculated for each distribution.} 
      \item{\code{sds}: the weighted variance calculated for each distribution.}
    }}
    
    \item{\code{s.misc}}{a list of some others internal parameters}
    
    \item{\code{Call}}{an object of class \code{call}}
  }
}

\section{Extends}{
  Class \code{\linkS4class{ADEg.S1}}, directly.\cr
  Class \code{\linkS4class{ADEg}}, by class \code{ADEg.S1}, distance 2.\cr
  Class \code{\linkS4class{ADEgORtrellis}}, by class \code{ADEg.S1}, distance 3.\cr
  Class \code{\linkS4class{ADEgORADEgSORtrellis}}, by class \code{ADEg.S1}, distance 3.
}

\section{Methods}{
  The methods of the father classes \code{"ADEg.S1"} and \code{"ADEg"} can be used by inheritance.
  The specific methods for \code{S1.distri} are: 
  \describe{
    \item{prepare}{\code{signature(object = "S1.distri")}: 
      calls the parent method (\code{prepare} for \code{ADEg.S1}), modifies some graphical parameters used by default and calculates weighted mean and standard deviation.}
    
    \item{panel}{\code{signature(object = "S1.distri")}: 
      draws mean points and segments with matching labels.}
  }
}

\author{Alice Julien-Laferriere, Aurelie Siberchicot \email{aurelie.siberchicot@univ-lyon1.fr} and Stephane Dray
}

\seealso{
  \code{\linkS4class{ADEg}}    
  \code{\linkS4class{ADEg.S1}}
  \code{\link{s1d.distri}}
} 

\examples{
showClass("S1.distri")
}

\keyword{classes}
