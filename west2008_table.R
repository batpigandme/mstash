library(tidyverse)
library(gt)
# data source: king2008_table2
openness_forms_dims <- tibble::tribble(
                                            ~`Dimension of participation architecture`,                                                                  ~`Transparency`,                                                           ~`Accessibility`,                                                                   ~`Proprietary model`,
               "Production the way that the community conducts production processes",              "Ability to read code and observe or follow production processes",                                        "Ability to change code directly",                                     "Production remains within a single corporation",
         "Governance the processes by which decisions are made within the community", "Publicly visible governance, observers can understand how decisions are made",                                   "Ability to participate in governance",                          "The corporation makes all decisions at its own discretion",
  "Intellectual property the allocation of the rights to use the community’s output",                                    "Rights to use code and access source code", "Ability to reuse and recombine code in the creation of derivative code", "Limited use rights are granted by the corporation for a licensing fee interactions"
  )


openness_forms_dims %>%
  gt() %>%
  tab_header(title = "Mapping forms of openness against dimensions of open source") %>%
  tab_spanner(
    label = "Form of openness",
    columns = vars(Transparency, Accessibility)
  ) %>%
  tab_footnote(
    footnote = md("Joel West & Siobhán O'Mahony (2008) The Role of Participation Architecture in Growing Sponsored Open Source Communities, _Industry and Innovation_, 15:2, 145-168, DOI: 10.1080/13662710801970142"),
    locations = cells_title(groups = "title")
  )


