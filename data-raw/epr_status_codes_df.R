init <- tibble::tribble(
    ~status,            ~category,               ~definition,
    "MONOPOLY",          "rules_alone",     "Elite members hold monopoly power in the executive to the exclusion of members of all other ethnic groups.",
    "DOMINANCE",         "rules_alone",     "Elite members of the group hold dominant power in the executive but there is some limited inclusion of “token” members of other groups who however do not have real influence on decision making.",
    "SENIOR PARTNER",    "shares_power",    "Representatives of the group participate as senior partners in a formal or informal power-sharing arrangement. By power sharing, we mean any arrangement that divides executive power among leaders who claim to represent particular ethnic groups and who have real influence on political decision making.",
    "JUNIOR PARTNER",    "shares_power",    "Representatives participate as junior partners in government.",
    "POWERLESS",         "is_excluded",     "Elite representatives hold no political power (or do not have influence on decision making) at the national level of executive power - although without being explicitly discriminated against",
    "DISCRIMINATED",     "is_excluded",     "Group members are subjected to active, intentional, and targeted discrimination by the state, with the intent of excluding them from political power. Such active discrimination can be either formal or informal, but always refers to the domain of public politics (excluding discrimination in the socio-economic sphere).",
    "SELF-EXCLUSION",    "is_excluded",     "The special category of self-exclusion applies to groups that have excluded themselves from central state power, in the sense that they control a particular territory of the state which they have declared independent from the central government."
)

epr_status_codes_df <- (init)

usethis::use_data(epr_status_codes_df, overwrite = TRUE)
