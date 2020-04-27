#' EPR - Ethnic Power Relations
#' 
#' _The Ethnic Power Relations (EPR) Core Dataset 2019 is based on the original 
#' dataset [EPR v.1.1](https://icr.ethz.ch/data/epr/core/v1.1/) and identifies
#' all politically relevant ethnic groups and their access to state power in
#' every country of the world from 1946 to 2017. It includes annual data on 
#' over 800 groups and codes the degree to which their representatives held 
#' executive-level state power—from total control of the government to overt
#' political discrimination._
#' 
#' @format 
#' * Variables:
#'   + `gwid`
#'     + [Gleditsch and Ward State ID](http://ksgleditsch.com/data-4.html)
#'   + `statename`
#'   + `from`
#'   + `to`
#'   + `group`
#'   + `groupid`
#'   + `gwgroupid`
#'   + `umbrella`
#'   + `size`
#'   + `status`
#'     + The group rules alone:
#'       +  `"MONOPOLY"`
#'         + Elite members hold monopoly power in the executive to the exclusion
#'           of members of all other ethnic groups.
#'       + `"DOMINANCE"`
#'         + Elite members of the group hold dominant power in the executive but 
#'           there is some limited inclusion of “token” members of other groups 
#'           who however do not have real influence on decision making.
#'     + The group shares power:
#'       + `"SENIOR PARTNER"`
#'         +  Representatives of the group participate as senior partners in a 
#'         formal or informal power-sharing arrangement. By power sharing, we mean 
#'         any arrangement that divides executive power among leaders who claim 
#'         to represent particular ethnic groups and who have real influence on 
#'         political decision making.
#'       + `"JUNIOR PARTNER"`
#'         + Representatives participate as junior partners in government.
#'           + The choice between senior and junior partner depends on the group’s 
#'           absolute influence in the executive - that is, irrespective of group 
#'           size -, measured by the number and importance of the positions 
#'           controlled by group members.
#'     + The group is excluded:
#'       + `"POWERLESS"`
#'         + Elite representatives hold no political power (or do not have 
#'         influence on decision making) at the national level of executive 
#'         power - although without being explicitly discriminated against.
#'       + `"DISCRIMINATION"`
#'         + Group members are subjected to active, intentional, and targeted
#'           discrimination by the state, with the intent of excluding them from
#'           political power. Such active discrimination can be either formal or 
#'           informal, but always refers to the domain of public politics
#'           (excluding discrimination in the socio-economic sphere).
#'       + `"SELF-EXCLUSION"`
#'         + The special category of self-exclusion applies to groups that have 
#'           excluded themselves from central state power, in the sense that 
#'           they control a particular territory of the state which they have 
#'           declared independent from the central government.
#'           + This category was labeled “separatist autonomy” in previous EPR versions.
#'   + `reg_aut`
#'
#' @references 
#' * Vogt, Manuel, Nils-Christian Bormann, Seraina Rüegger, Lars-Erik Cederman, Philipp Hunziker, and Luc Girardin. 2015. “[Integrating Data on Ethnicity, Geography, and Conflict: The Ethnic Power Relations Data Set Family](https://icr.ethz.ch/publications/integrating-data-on-ethnicity-geography-and-conflict/).” Journal of Conflict Resolution 59(7): 1327–42.
#' * Cederman, Lars-Erik, Andreas Wimmer, and Brian Min. 2010. “[Why Do Ethnic Groups Rebel? New Data and Analysis](https://icr.ethz.ch/publications/why-do-ethnic-groups-rebel/).” World Politics 62(1): 87–119.
#' 
#' @source 
#' * [EPR - Ethnic Power Relations](https://icr.ethz.ch/data/epr/core/)
#'   + [Data (CSV)](https://icr.ethz.ch/data/epr/core/EPR-2019.csv)
#'   + [Codebook](https://icr.ethz.ch/data/epr/core/EPR_2019_Codebook_EPR.pdf)
#' 
#' @examples
#' epr_df
#' 
#' epr_status_codes_df 
#' 
"epr_df"

#' @rdname epr_df
#' @format
"epr_status_codes_df"
