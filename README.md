`{epr}`
================

  - [Introduction](#introduction)
  - [Installation](#installation)
  - [Usage](#usage)

<!-- README.Rmd generates README.md. -->

<!-- badges: start -->

[![R build
status](https://github.com/knapply/epr/workflows/R-CMD-check/badge.svg)](https://github.com/knapply/epr/actions?workflow=R-CMD-check)
[![GitHub last
commit](https://img.shields.io/github/last-commit/knapply/epr.svg)](https://github.com/knapply/epr/commits/master)
[![License: GPL
v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Depends](https://img.shields.io/badge/Depends-GNU_R%3E=3.6-blue.svg)](https://www.r-project.org/)
[![HitCount](http://hits.dwyl.io/knapply/epr.svg)](http://hits.dwyl.io/knapply/epr)
<!-- [![Codecov test coverage](https://codecov.io/gh/knapply/epr/branch/master/graph/badge.svg)](https://codecov.io/gh/knapply/epr?branch=master) -->
<!-- [![CRAN status](https://www.r-pkg.org/badges/version/epr)](https://cran.r-project.org/package=epr) -->
<!-- badges: end -->

# Introduction

`{epr}` provides Ethnic Power Relations data and associated analytical
routines.

# Installation

``` r
if (!requireNamespace("remotes", quietly = TRUE)) install.packages("remotes")
remotes::install_github("knapply/epr")
```

# Usage

``` r
library(epr)
```

``` r
epr_df
```

    #> # A tibble: 4,255 x 11
    #>     gwid statename      from    to group             groupid gwgroupid umbrella   size status        reg_aut
    #>    <int> <chr>         <int> <int> <chr>               <int>     <int>    <int>  <dbl> <chr>         <lgl>  
    #>  1     2 United States  1946  1965 Whites               1000    201000       NA 0.691  MONOPOLY      NA     
    #>  2     2 United States  1946  1965 Latinos              2000    202000       NA 0.125  IRRELEVANT    NA     
    #>  3     2 United States  1946  1965 African Americans    3000    203000       NA 0.124  DISCRIMINATED FALSE  
    #>  4     2 United States  1946  1965 Asian Americans      4000    204000       NA 0.036  IRRELEVANT    NA     
    #>  5     2 United States  1946  1965 American Indians     5000    205000       NA 0.0078 POWERLESS     TRUE   
    #>  6     2 United States  1946  1965 Arab Americans       6000    206000       NA 0.0042 IRRELEVANT    NA     
    #>  7     2 United States  1966  2008 Whites               1000    201000       NA 0.691  DOMINANT      NA     
    #>  8     2 United States  1966  2008 Latinos              2000    202000       NA 0.125  POWERLESS     FALSE  
    #>  9     2 United States  1966  2008 African Americans    3000    203000       NA 0.124  POWERLESS     FALSE  
    #> 10     2 United States  1966  2008 Asian Americans      4000    204000       NA 0.036  POWERLESS     FALSE  
    #> # … with 4,245 more rows

``` r
epr_status_codes_df
```

    #> # A tibble: 7 x 3
    #>   status        category    definition                                                                                                                
    #>   <chr>         <chr>       <chr>                                                                                                                     
    #> 1 MONOPOLY      rules_alone Elite members hold monopoly power in the executive to the exclusion of members of all other ethnic groups.                
    #> 2 DOMINANCE     rules_alone Elite members of the group hold dominant power in the executive but there is some limited inclusion of “token” members of…
    #> 3 SENIOR PARTN… shares_pow… Representatives of the group participate as senior partners in a formal or informal power-sharing arrangement. By power s…
    #> 4 JUNIOR PARTN… shares_pow… Representatives participate as junior partners in government.                                                             
    #> 5 POWERLESS     is_excluded Elite representatives hold no political power (or do not have influence on decision making) at the national level of exec…
    #> 6 DISCRIMINATED is_excluded Group members are subjected to active, intentional, and targeted discrimination by the state, with the intent of excludin…
    #> 7 SELF-EXCLUSI… is_excluded The special category of self-exclusion applies to groups that have excluded themselves from central state power, in the s…

``` r
library(data.table)
options(datatable.print.trunc.cols = TRUE)

merge(as.data.table(epr_df), epr_status_codes_df,
      all.x = TRUE, by = "status")
```

    #>               status gwid     statename from   to                   group groupid gwgroupid umbrella  size reg_aut    category
    #>    1:  DISCRIMINATED    2 United States 1946 1965       African Americans    3000    203000       NA 0.124   FALSE is_excluded
    #>    2:  DISCRIMINATED   20        Canada 1946 1960      Aboriginal peoples    4000   2004000       NA 0.020   FALSE is_excluded
    #>    3:  DISCRIMINATED   70        Mexico 1946 1974 Other indigenous groups    3000   7003000       NA 0.142   FALSE is_excluded
    #>    4:  DISCRIMINATED   70        Mexico 1946 1974            Afromexicans    9000   7009000       NA 0.050   FALSE is_excluded
    #>    5:  DISCRIMINATED   70        Mexico 1946 1974                    Maya    2000   7002000       NA 0.007   FALSE is_excluded
    #>   ---                                                                                                                         
    #> 4251: STATE COLLAPSE  451  Sierra Leone 1998 2001                    Kono    2000  45102000       NA 0.040   FALSE        <NA>
    #> 4252: STATE COLLAPSE  483          Chad 1979 1979     Muslim Sahel groups    2000  48302000       NA 0.270   FALSE        <NA>
    #> 4253: STATE COLLAPSE  483          Chad 1979 1979                    Sara    4000  48304000       NA 0.240   FALSE        <NA>
    #> 4254: STATE COLLAPSE  483          Chad 1979 1979                   Arabs    1000  48301000       NA 0.140   FALSE        <NA>
    #> 4255: STATE COLLAPSE  483          Chad 1979 1979                  Toubou    6000  48306000       NA 0.040   FALSE        <NA>
    #> 1 variable not shown: [definition]

``` r
library(dplyr)

epr_df %>% 
  left_join(epr_status_codes_df)
```

    #> # A tibble: 4,255 x 13
    #>     gwid statename    from    to group     groupid gwgroupid umbrella   size status   reg_aut category definition                                     
    #>    <int> <chr>       <int> <int> <chr>       <int>     <int>    <int>  <dbl> <chr>    <lgl>   <chr>    <chr>                                          
    #>  1     2 United Sta…  1946  1965 Whites       1000    201000       NA 0.691  MONOPOLY NA      rules_a… Elite members hold monopoly power in the execu…
    #>  2     2 United Sta…  1946  1965 Latinos      2000    202000       NA 0.125  IRRELEV… NA      <NA>     <NA>                                           
    #>  3     2 United Sta…  1946  1965 African …    3000    203000       NA 0.124  DISCRIM… FALSE   is_excl… Group members are subjected to active, intenti…
    #>  4     2 United Sta…  1946  1965 Asian Am…    4000    204000       NA 0.036  IRRELEV… NA      <NA>     <NA>                                           
    #>  5     2 United Sta…  1946  1965 American…    5000    205000       NA 0.0078 POWERLE… TRUE    is_excl… Elite representatives hold no political power …
    #>  6     2 United Sta…  1946  1965 Arab Ame…    6000    206000       NA 0.0042 IRRELEV… NA      <NA>     <NA>                                           
    #>  7     2 United Sta…  1966  2008 Whites       1000    201000       NA 0.691  DOMINANT NA      <NA>     <NA>                                           
    #>  8     2 United Sta…  1966  2008 Latinos      2000    202000       NA 0.125  POWERLE… FALSE   is_excl… Elite representatives hold no political power …
    #>  9     2 United Sta…  1966  2008 African …    3000    203000       NA 0.124  POWERLE… FALSE   is_excl… Elite representatives hold no political power …
    #> 10     2 United Sta…  1966  2008 Asian Am…    4000    204000       NA 0.036  POWERLE… FALSE   is_excl… Elite representatives hold no political power …
    #> # … with 4,245 more rows
