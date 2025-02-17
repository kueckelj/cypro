% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/correlation-analysis.R
\name{initiateCorrelation}
\alias{initiateCorrelation}
\title{Set up correlation with cypro}
\usage{
initiateCorrelation(
  object,
  variable_set,
  phase = NULL,
  force = FALSE,
  verbose = NULL,
  ...
)
}
\arguments{
\item{object}{A valid cypro object.}

\item{variable_set}{Character value. Denotes the variable set of interest. Use \code{getVariableSetNames()}
to obtain all names of currently stored variable sets in your object.}

\item{phase}{Character or numeric. If character, the ordinal value referring to the phase of interest (e.g. \emph{'first'}, \emph{'second'} etc.).
referring to the phase of interest or \emph{'all'}. If numeric, the number referring to the phase.

If set to NULL takes the phase denoted as default with \code{adjustDefault()}.

Ignored if the experiment design contains only one phase.}

\item{force}{Logical value. Needs to be set to TRUE if you want to overwrite an already existing
set up or already existing results.}

\item{verbose}{Logical. If set to TRUE informative messages regarding
the computational progress will be printed.

(Warning messages will always be printed.)}

\item{variables_subset}{Character vector or NULL. Specifies the numeric variables the subsequent correlation
steps will include..

If set to NULL all of them are chosen. You can prefix variables you do NOT want to influence the clustering
with a \emph{'-'}. (Saves writing if there are more variables you are interested in
than variables you are not interested in.)

Use \code{getNumericVariableNames()} to obtain all valid input options.}
}
\value{
An updated version of the input \code{cypro}-object.
}
\description{
Set up the necessary object to perform correlation analysis.
}
\details{
All grouping variables that exist at the time this function is used are added to the correlation slot which can be used to compare
correlation results between different groups. Clustering variables that are added to the overall data via
\code{addHierarchicalCluster(), addKmeansCluster() etc.} are added as options for \code{correlateAcross()}
automatically.
}
