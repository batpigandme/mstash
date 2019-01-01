---
title: "table re-creation w/ gt"
output: 
  html_document:
    keep_md: TRUE
---



__Original table from:__
Joel West & Siobhán O'Mahony (2008) The Role of Participation Architecture in Growing Sponsored Open Source Communities, _Industry and Innovation_, 15:2, 145-168, DOI: 10.1080/13662710801970142

__Original table as image:__
![Mapping forms of openness against dimensions of open source](https://i.imgur.com/yXPs0Vb.png)


```r
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
```

```
## Warning: The `printer` argument is soft-deprecated as of rlang 0.3.0.
## This warning is displayed once per session.
```

<!--html_preserve--><style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#sagltllrzk .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #000000;
  font-size: 16px;
  background-color: #FFFFFF;
  /* table.background.color */
  width: auto;
  /* table.width */
  border-top-style: solid;
  /* table.border.top.style */
  border-top-width: 2px;
  /* table.border.top.width */
  border-top-color: #A8A8A8;
  /* table.border.top.color */
}

#sagltllrzk .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#sagltllrzk .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#sagltllrzk .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#sagltllrzk .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#sagltllrzk .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#sagltllrzk .gt_col_heading {
  color: #000000;
  background-color: #FFFFFF;
  /* column_labels.background.color */
  font-size: 16px;
  /* column_labels.font.size */
  font-weight: initial;
  /* column_labels.font.weight */
  vertical-align: middle;
  padding: 10px;
  margin: 10px;
}

#sagltllrzk .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#sagltllrzk .gt_group_heading {
  padding: 8px;
  color: #000000;
  background-color: #FFFFFF;
  /* stub_group.background.color */
  font-size: 16px;
  /* stub_group.font.size */
  font-weight: initial;
  /* stub_group.font.weight */
  border-top-style: solid;
  /* stub_group.border.top.style */
  border-top-width: 2px;
  /* stub_group.border.top.width */
  border-top-color: #A8A8A8;
  /* stub_group.border.top.color */
  border-bottom-style: solid;
  /* stub_group.border.bottom.style */
  border-bottom-width: 2px;
  /* stub_group.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* stub_group.border.bottom.color */
  vertical-align: middle;
}

#sagltllrzk .gt_empty_group_heading {
  padding: 0.5px;
  color: #000000;
  background-color: #FFFFFF;
  /* stub_group.background.color */
  font-size: 16px;
  /* stub_group.font.size */
  font-weight: initial;
  /* stub_group.font.weight */
  border-top-style: solid;
  /* stub_group.border.top.style */
  border-top-width: 2px;
  /* stub_group.border.top.width */
  border-top-color: #A8A8A8;
  /* stub_group.border.top.color */
  border-bottom-style: solid;
  /* stub_group.border.bottom.style */
  border-bottom-width: 2px;
  /* stub_group.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* stub_group.border.bottom.color */
  vertical-align: middle;
}

#sagltllrzk .gt_striped {
  background-color: #f2f2f2;
}

#sagltllrzk .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#sagltllrzk .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#sagltllrzk .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#sagltllrzk .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#sagltllrzk .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#sagltllrzk .gt_table_body {
  border-top-style: solid;
  /* field.border.top.style */
  border-top-width: 2px;
  /* field.border.top.width */
  border-top-color: #A8A8A8;
  /* field.border.top.color */
  border-bottom-style: solid;
  /* field.border.bottom.style */
  border-bottom-width: 2px;
  /* field.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* field.border.bottom.color */
}

#sagltllrzk .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#sagltllrzk .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#sagltllrzk .gt_center {
  text-align: center;
}

#sagltllrzk .gt_left {
  text-align: left;
}

#sagltllrzk .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#sagltllrzk .gt_font_normal {
  font-weight: normal;
}

#sagltllrzk .gt_font_bold {
  font-weight: bold;
}

#sagltllrzk .gt_font_italic {
  font-style: italic;
}

#sagltllrzk .gt_super {
  font-size: 65%;
}

#sagltllrzk .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="sagltllrzk" style="overflow-x:auto;"><!--gt table start-->
<table class='gt_table'>
<thead>
<tr>
<th class='gt_heading gt_title gt_font_normal gt_center' colspan='4'>Mapping forms of openness against dimensions of open source<sup class='gt_footnote_glyph'>1</sup></th>
</tr>
<tr>
<th class='gt_heading gt_subtitle gt_font_normal gt_center gt_bottom_border' colspan='4'></th>
</tr>
</thead>
<tr>
<th class='gt_col_heading gt_center' rowspan='2' colspan='1'>Dimension of participation architecture</th>
<th class='gt_col_heading gt_column_spanner gt_center' rowspan='1' colspan='2'>Form of openness</th>
<th class='gt_col_heading gt_center' rowspan='2' colspan='1'>Proprietary model</th>
</tr>
<tr>
<th class='gt_col_heading gt_left' rowspan='1' colspan='1'>Transparency</th>
<th class='gt_col_heading gt_left' rowspan='1' colspan='1'>Accessibility</th>
</tr>
<tbody class='gt_table_body'>
<tr>
<td class='gt_row gt_left'>Production the way that the community conducts production processes</td>
<td class='gt_row gt_left'>Ability to read code and observe or follow production processes</td>
<td class='gt_row gt_left'>Ability to change code directly</td>
<td class='gt_row gt_left'>Production remains within a single corporation</td>
</tr>
<tr>
<td class='gt_row gt_left gt_striped'>Governance the processes by which decisions are made within the community</td>
<td class='gt_row gt_left gt_striped'>Publicly visible governance, observers can understand how decisions are made</td>
<td class='gt_row gt_left gt_striped'>Ability to participate in governance</td>
<td class='gt_row gt_left gt_striped'>The corporation makes all decisions at its own discretion</td>
</tr>
<tr>
<td class='gt_row gt_left'>Intellectual property the allocation of the rights to use the community’s output</td>
<td class='gt_row gt_left'>Rights to use code and access source code</td>
<td class='gt_row gt_left'>Ability to reuse and recombine code in the creation of derivative code</td>
<td class='gt_row gt_left'>Limited use rights are granted by the corporation for a licensing fee interactions</td>
</tr>
</tbody>
<tfoot>
<tr>
<td colspan='4' class='gt_footnote'><sup class='gt_footnote_glyph'><em>1</em></sup> Joel West &amp; Siobhán O'Mahony (2008) The Role of Participation Architecture in Growing Sponsored Open Source Communities, <em>Industry and Innovation</em>, 15:2, 145-168, DOI: 10.1080/13662710801970142</td>
</tr>
</tfoot></table>
<!--gt table end-->
</div><!--/html_preserve-->

## Bonus

One from Gasson, Susan, and Jim Waters. “Using a Grounded Theory Approach to Study Online Collaboration Behaviors.” _European Journal of Information Systems_ 22.1 (2013): 95–118.


```r
gasson2013 <- tibble::tribble(
               ~Level,                                                                                                                                                                                                                                                                           ~Form.of.activity,                                                                                                                                                                                                           ~Observed.learning.interactions,
      "Participation",                                                                                                                         "Observable behavior that denotes interaction with course materials through passive activity and externalization (reproduction) of knowledge acquired in this way.",                                                                    "Predominantly contractual reproduction of knowledge, as student grades depend on the frequency and quality of discussion posts. This results in individual learning.",
        "Involvement",                                                               "Behavior that indicates a psychological state of identifi- cation with course objects, indicating the internalization of knowledge from other learners and the reuse (objectivation) of such knowledge in discussion posts.",                                               "Engaged students, who appear to be enthusiastic about the topic and who debate points raised by others. This results in a joint learning outcome (shared knowledge across peer-learners).",
  "Social Engagement", "Behavior indicating enthusiastic commitment to the facilitation and direction of sustained learning (cycles of knowledge externalization, objectivation, internalization, and reframing). Socially engaged students interacted with peers in the learning community as well as the topic.", "Students who actively manage social interactions with peer-learners, explicitly facilitating or directing discussions to reframe the subject of discussion. This results in the active co-construction of knowledge with peer-learners."
  )

gasson2013 %>%
  gt() %>%
  cols_label(
    Form.of.activity = "Form of activity",
    Observed.learning.interactions = "Observed learning interactions"
  ) %>%
  tab_header(title = "Three levels of socially situated engagement with the peer learning community") %>%
  tab_footnote(
    footnote = md("Gasson, Susan, and Jim Waters. “Using a Grounded Theory Approach to Study Online Collaboration Behaviors.” _European Journal of Information Systems_ 22.1 (2013): 95–118."),
    locations = cells_title(groups = "title")
  )
```

<!--html_preserve--><style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#tkquopgery .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #000000;
  font-size: 16px;
  background-color: #FFFFFF;
  /* table.background.color */
  width: auto;
  /* table.width */
  border-top-style: solid;
  /* table.border.top.style */
  border-top-width: 2px;
  /* table.border.top.width */
  border-top-color: #A8A8A8;
  /* table.border.top.color */
}

#tkquopgery .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#tkquopgery .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#tkquopgery .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#tkquopgery .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#tkquopgery .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#tkquopgery .gt_col_heading {
  color: #000000;
  background-color: #FFFFFF;
  /* column_labels.background.color */
  font-size: 16px;
  /* column_labels.font.size */
  font-weight: initial;
  /* column_labels.font.weight */
  vertical-align: middle;
  padding: 10px;
  margin: 10px;
}

#tkquopgery .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#tkquopgery .gt_group_heading {
  padding: 8px;
  color: #000000;
  background-color: #FFFFFF;
  /* stub_group.background.color */
  font-size: 16px;
  /* stub_group.font.size */
  font-weight: initial;
  /* stub_group.font.weight */
  border-top-style: solid;
  /* stub_group.border.top.style */
  border-top-width: 2px;
  /* stub_group.border.top.width */
  border-top-color: #A8A8A8;
  /* stub_group.border.top.color */
  border-bottom-style: solid;
  /* stub_group.border.bottom.style */
  border-bottom-width: 2px;
  /* stub_group.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* stub_group.border.bottom.color */
  vertical-align: middle;
}

#tkquopgery .gt_empty_group_heading {
  padding: 0.5px;
  color: #000000;
  background-color: #FFFFFF;
  /* stub_group.background.color */
  font-size: 16px;
  /* stub_group.font.size */
  font-weight: initial;
  /* stub_group.font.weight */
  border-top-style: solid;
  /* stub_group.border.top.style */
  border-top-width: 2px;
  /* stub_group.border.top.width */
  border-top-color: #A8A8A8;
  /* stub_group.border.top.color */
  border-bottom-style: solid;
  /* stub_group.border.bottom.style */
  border-bottom-width: 2px;
  /* stub_group.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* stub_group.border.bottom.color */
  vertical-align: middle;
}

#tkquopgery .gt_striped {
  background-color: #f2f2f2;
}

#tkquopgery .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#tkquopgery .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#tkquopgery .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#tkquopgery .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#tkquopgery .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#tkquopgery .gt_table_body {
  border-top-style: solid;
  /* field.border.top.style */
  border-top-width: 2px;
  /* field.border.top.width */
  border-top-color: #A8A8A8;
  /* field.border.top.color */
  border-bottom-style: solid;
  /* field.border.bottom.style */
  border-bottom-width: 2px;
  /* field.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* field.border.bottom.color */
}

#tkquopgery .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#tkquopgery .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#tkquopgery .gt_center {
  text-align: center;
}

#tkquopgery .gt_left {
  text-align: left;
}

#tkquopgery .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#tkquopgery .gt_font_normal {
  font-weight: normal;
}

#tkquopgery .gt_font_bold {
  font-weight: bold;
}

#tkquopgery .gt_font_italic {
  font-style: italic;
}

#tkquopgery .gt_super {
  font-size: 65%;
}

#tkquopgery .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="tkquopgery" style="overflow-x:auto;"><!--gt table start-->
<table class='gt_table'>
<thead>
<tr>
<th class='gt_heading gt_title gt_font_normal gt_center' colspan='3'>Three levels of socially situated engagement with the peer learning community<sup class='gt_footnote_glyph'>1</sup></th>
</tr>
<tr>
<th class='gt_heading gt_subtitle gt_font_normal gt_center gt_bottom_border' colspan='3'></th>
</tr>
</thead>
<tr>
<th class='gt_col_heading gt_left' rowspan='1' colspan='1'>Level</th>
<th class='gt_col_heading gt_left' rowspan='1' colspan='1'>Form of activity</th>
<th class='gt_col_heading gt_left' rowspan='1' colspan='1'>Observed learning interactions</th>
</tr>
<tbody class='gt_table_body'>
<tr>
<td class='gt_row gt_left'>Participation</td>
<td class='gt_row gt_left'>Observable behavior that denotes interaction with course materials through passive activity and externalization (reproduction) of knowledge acquired in this way.</td>
<td class='gt_row gt_left'>Predominantly contractual reproduction of knowledge, as student grades depend on the frequency and quality of discussion posts. This results in individual learning.</td>
</tr>
<tr>
<td class='gt_row gt_left gt_striped'>Involvement</td>
<td class='gt_row gt_left gt_striped'>Behavior that indicates a psychological state of identifi- cation with course objects, indicating the internalization of knowledge from other learners and the reuse (objectivation) of such knowledge in discussion posts.</td>
<td class='gt_row gt_left gt_striped'>Engaged students, who appear to be enthusiastic about the topic and who debate points raised by others. This results in a joint learning outcome (shared knowledge across peer-learners).</td>
</tr>
<tr>
<td class='gt_row gt_left'>Social Engagement</td>
<td class='gt_row gt_left'>Behavior indicating enthusiastic commitment to the facilitation and direction of sustained learning (cycles of knowledge externalization, objectivation, internalization, and reframing). Socially engaged students interacted with peers in the learning community as well as the topic.</td>
<td class='gt_row gt_left'>Students who actively manage social interactions with peer-learners, explicitly facilitating or directing discussions to reframe the subject of discussion. This results in the active co-construction of knowledge with peer-learners.</td>
</tr>
</tbody>
<tfoot>
<tr>
<td colspan='3' class='gt_footnote'><sup class='gt_footnote_glyph'><em>1</em></sup> Gasson, Susan, and Jim Waters. “Using a Grounded Theory Approach to Study Online Collaboration Behaviors.” <em>European Journal of Information Systems</em> 22.1 (2013): 95–118.</td>
</tr>
</tfoot></table>
<!--gt table end-->
</div><!--/html_preserve-->

From: Lindberg, Aron et al. “Coordinating Interdependencies in Online Communities : A Study of an Open Source Software Project Coordinating Interdependencies in Online Communities : A Study of an Open Source Software Project.” _Information Systems Research_ 27.November 2018 (2016): 0–22.


```r
lindberg2016 <- tibble::tribble(
                                                         ~Construct,                                                                                             ~Operationalization,                        ~op_type,
      "Nonmodular work (presence of development interdependencies)",                   "A dummy variable indicating which pull requests have two or more files associated with them", "Development interdependencies",
                          "Degree of development interdependencies",                                                        "Total number of files being coedited in a pull request", "Development interdependencies",
                  "Average degree of development interdependencies",        "The average number of files being coedited in a pull request within a specific subset of pull requests", "Development interdependencies",
  "Nonsuperposition work (presence of developer interdependencies)",  "A binary variable indicating which pull requests have two or more developers working on them codebase or not",   "Developer interdependencies",
                            "Degree of developer interdependencies",                                                       "Number of developers working together on a pull request",   "Developer interdependencies",
                    "Average degree of developer interdependencies", "The average number of developers working together on a pull request within a specific subset of pull requests",   "Developer interdependencies",
                                               "Activity variation",                                                "The Shannon (1948) entropy of activity types in a pull request",             "Routine variation",
                                                  "Order variation",           "The ratio of transitions between activity types to the total number of activities in a pull request",             "Routine variation",
                                                          "Merging",                        "Binary measure of whether a pull request has been merged into the baseline copy of the",               "Other variables",
                                                       "Activities",                                    "A count of the number of activities executed in relation to a pull request",               "Other variables",
                                     "Average number of activities", "The average number of activities executed in relation to a pull request in a specific subset of pull requests",               "Other variables",
                                                "Code-related work",                  "A binary variable indicating which pull requests have one or more files associated with them",               "Other variables",
                                  "Proportion of code-related work",  "The percentage of pull requests, within a specific subset of pull requests, that have files attached to them",               "Other variables"
  )
```


```r
lindberg2016 %>%
  group_by(op_type) %>%
  gt() %>%
  tab_header(title = "Construct Operationalization") %>%
  tab_footnote(
    footnote = md("Aron Lindberg, Nicholas Berente, James Gaskin, Kalle Lyytinen (2016) Coordinating Interdependencies in Online Communities: A Study of an Open Source Software Project. _Information Systems Research_"),
    locations = cells_title(groups = "title")
  )
```

<!--html_preserve--><style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#lbrumhkqmf .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #000000;
  font-size: 16px;
  background-color: #FFFFFF;
  /* table.background.color */
  width: auto;
  /* table.width */
  border-top-style: solid;
  /* table.border.top.style */
  border-top-width: 2px;
  /* table.border.top.width */
  border-top-color: #A8A8A8;
  /* table.border.top.color */
}

#lbrumhkqmf .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#lbrumhkqmf .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#lbrumhkqmf .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#lbrumhkqmf .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#lbrumhkqmf .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#lbrumhkqmf .gt_col_heading {
  color: #000000;
  background-color: #FFFFFF;
  /* column_labels.background.color */
  font-size: 16px;
  /* column_labels.font.size */
  font-weight: initial;
  /* column_labels.font.weight */
  vertical-align: middle;
  padding: 10px;
  margin: 10px;
}

#lbrumhkqmf .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#lbrumhkqmf .gt_group_heading {
  padding: 8px;
  color: #000000;
  background-color: #FFFFFF;
  /* stub_group.background.color */
  font-size: 16px;
  /* stub_group.font.size */
  font-weight: initial;
  /* stub_group.font.weight */
  border-top-style: solid;
  /* stub_group.border.top.style */
  border-top-width: 2px;
  /* stub_group.border.top.width */
  border-top-color: #A8A8A8;
  /* stub_group.border.top.color */
  border-bottom-style: solid;
  /* stub_group.border.bottom.style */
  border-bottom-width: 2px;
  /* stub_group.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* stub_group.border.bottom.color */
  vertical-align: middle;
}

#lbrumhkqmf .gt_empty_group_heading {
  padding: 0.5px;
  color: #000000;
  background-color: #FFFFFF;
  /* stub_group.background.color */
  font-size: 16px;
  /* stub_group.font.size */
  font-weight: initial;
  /* stub_group.font.weight */
  border-top-style: solid;
  /* stub_group.border.top.style */
  border-top-width: 2px;
  /* stub_group.border.top.width */
  border-top-color: #A8A8A8;
  /* stub_group.border.top.color */
  border-bottom-style: solid;
  /* stub_group.border.bottom.style */
  border-bottom-width: 2px;
  /* stub_group.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* stub_group.border.bottom.color */
  vertical-align: middle;
}

#lbrumhkqmf .gt_striped {
  background-color: #f2f2f2;
}

#lbrumhkqmf .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#lbrumhkqmf .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#lbrumhkqmf .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#lbrumhkqmf .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#lbrumhkqmf .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#lbrumhkqmf .gt_table_body {
  border-top-style: solid;
  /* field.border.top.style */
  border-top-width: 2px;
  /* field.border.top.width */
  border-top-color: #A8A8A8;
  /* field.border.top.color */
  border-bottom-style: solid;
  /* field.border.bottom.style */
  border-bottom-width: 2px;
  /* field.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* field.border.bottom.color */
}

#lbrumhkqmf .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#lbrumhkqmf .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#lbrumhkqmf .gt_center {
  text-align: center;
}

#lbrumhkqmf .gt_left {
  text-align: left;
}

#lbrumhkqmf .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#lbrumhkqmf .gt_font_normal {
  font-weight: normal;
}

#lbrumhkqmf .gt_font_bold {
  font-weight: bold;
}

#lbrumhkqmf .gt_font_italic {
  font-style: italic;
}

#lbrumhkqmf .gt_super {
  font-size: 65%;
}

#lbrumhkqmf .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="lbrumhkqmf" style="overflow-x:auto;"><!--gt table start-->
<table class='gt_table'>
<thead>
<tr>
<th class='gt_heading gt_title gt_font_normal gt_center' colspan='2'>Construct Operationalization<sup class='gt_footnote_glyph'>1</sup></th>
</tr>
<tr>
<th class='gt_heading gt_subtitle gt_font_normal gt_center gt_bottom_border' colspan='2'></th>
</tr>
</thead>
<tr>
<th class='gt_col_heading gt_left' rowspan='1' colspan='1'>Construct</th>
<th class='gt_col_heading gt_left' rowspan='1' colspan='1'>Operationalization</th>
</tr>
<tbody class='gt_table_body'>
<tr class='gt_group_heading_row'>
<td colspan='2' class='gt_group_heading'>Development interdependencies</td>
</tr>
<tr>
<td class='gt_row gt_left'>Nonmodular work (presence of development interdependencies)</td>
<td class='gt_row gt_left'>A dummy variable indicating which pull requests have two or more files associated with them</td>
</tr>
<tr>
<td class='gt_row gt_left gt_striped'>Degree of development interdependencies</td>
<td class='gt_row gt_left gt_striped'>Total number of files being coedited in a pull request</td>
</tr>
<tr>
<td class='gt_row gt_left'>Average degree of development interdependencies</td>
<td class='gt_row gt_left'>The average number of files being coedited in a pull request within a specific subset of pull requests</td>
</tr>
<tr class='gt_group_heading_row'>
<td colspan='2' class='gt_group_heading'>Developer interdependencies</td>
</tr>
<tr>
<td class='gt_row gt_left gt_striped'>Nonsuperposition work (presence of developer interdependencies)</td>
<td class='gt_row gt_left gt_striped'>A binary variable indicating which pull requests have two or more developers working on them codebase or not</td>
</tr>
<tr>
<td class='gt_row gt_left'>Degree of developer interdependencies</td>
<td class='gt_row gt_left'>Number of developers working together on a pull request</td>
</tr>
<tr>
<td class='gt_row gt_left gt_striped'>Average degree of developer interdependencies</td>
<td class='gt_row gt_left gt_striped'>The average number of developers working together on a pull request within a specific subset of pull requests</td>
</tr>
<tr class='gt_group_heading_row'>
<td colspan='2' class='gt_group_heading'>Routine variation</td>
</tr>
<tr>
<td class='gt_row gt_left'>Activity variation</td>
<td class='gt_row gt_left'>The Shannon (1948) entropy of activity types in a pull request</td>
</tr>
<tr>
<td class='gt_row gt_left gt_striped'>Order variation</td>
<td class='gt_row gt_left gt_striped'>The ratio of transitions between activity types to the total number of activities in a pull request</td>
</tr>
<tr class='gt_group_heading_row'>
<td colspan='2' class='gt_group_heading'>Other variables</td>
</tr>
<tr>
<td class='gt_row gt_left'>Merging</td>
<td class='gt_row gt_left'>Binary measure of whether a pull request has been merged into the baseline copy of the</td>
</tr>
<tr>
<td class='gt_row gt_left gt_striped'>Activities</td>
<td class='gt_row gt_left gt_striped'>A count of the number of activities executed in relation to a pull request</td>
</tr>
<tr>
<td class='gt_row gt_left'>Average number of activities</td>
<td class='gt_row gt_left'>The average number of activities executed in relation to a pull request in a specific subset of pull requests</td>
</tr>
<tr>
<td class='gt_row gt_left gt_striped'>Code-related work</td>
<td class='gt_row gt_left gt_striped'>A binary variable indicating which pull requests have one or more files associated with them</td>
</tr>
<tr>
<td class='gt_row gt_left'>Proportion of code-related work</td>
<td class='gt_row gt_left'>The percentage of pull requests, within a specific subset of pull requests, that have files attached to them</td>
</tr>
</tbody>
<tfoot>
<tr>
<td colspan='2' class='gt_footnote'><sup class='gt_footnote_glyph'><em>1</em></sup> Aron Lindberg, Nicholas Berente, James Gaskin, Kalle Lyytinen (2016) Coordinating Interdependencies in Online Communities: A Study of an Open Source Software Project. <em>Information Systems Research</em></td>
</tr>
</tfoot></table>
<!--gt table end-->
</div><!--/html_preserve-->

__Original table as image__
![Lindberg 2016 Table 4](https://i.imgur.com/B4MezFX.png)


Same deal for table 1


```r
lindberg_table1 <- tibble::tribble(
                       ~Construct,                                                                                         ~Definition,
  "Development interdependencies", "Interdependencies arising from tasks that necessitate unanticipated interactions with other tasks",
    "Developer interdependencies",    "Interdependencies where developers require input from other developers to complete their tasks",
             "Activity variation",                                  "Diversity of activities comprising an instantiation of a routine",
                "Order variation",                    "Diversity of the sequencing of activity types in an instantiation of a routine"
  )
```


```r
lindberg_table1 %>%
  gt() %>%
  tab_header(title = "Key Constructs") %>%
  tab_footnote(
    footnote = md("Aron Lindberg, Nicholas Berente, James Gaskin, Kalle Lyytinen (2016) Coordinating Interdependencies in Online Communities: A Study of an Open Source Software Project. _Information Systems Research_"),
    locations = cells_title(groups = "title")
  )
```

<!--html_preserve--><style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#rjxbqyagou .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #000000;
  font-size: 16px;
  background-color: #FFFFFF;
  /* table.background.color */
  width: auto;
  /* table.width */
  border-top-style: solid;
  /* table.border.top.style */
  border-top-width: 2px;
  /* table.border.top.width */
  border-top-color: #A8A8A8;
  /* table.border.top.color */
}

#rjxbqyagou .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#rjxbqyagou .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#rjxbqyagou .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#rjxbqyagou .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#rjxbqyagou .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#rjxbqyagou .gt_col_heading {
  color: #000000;
  background-color: #FFFFFF;
  /* column_labels.background.color */
  font-size: 16px;
  /* column_labels.font.size */
  font-weight: initial;
  /* column_labels.font.weight */
  vertical-align: middle;
  padding: 10px;
  margin: 10px;
}

#rjxbqyagou .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#rjxbqyagou .gt_group_heading {
  padding: 8px;
  color: #000000;
  background-color: #FFFFFF;
  /* stub_group.background.color */
  font-size: 16px;
  /* stub_group.font.size */
  font-weight: initial;
  /* stub_group.font.weight */
  border-top-style: solid;
  /* stub_group.border.top.style */
  border-top-width: 2px;
  /* stub_group.border.top.width */
  border-top-color: #A8A8A8;
  /* stub_group.border.top.color */
  border-bottom-style: solid;
  /* stub_group.border.bottom.style */
  border-bottom-width: 2px;
  /* stub_group.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* stub_group.border.bottom.color */
  vertical-align: middle;
}

#rjxbqyagou .gt_empty_group_heading {
  padding: 0.5px;
  color: #000000;
  background-color: #FFFFFF;
  /* stub_group.background.color */
  font-size: 16px;
  /* stub_group.font.size */
  font-weight: initial;
  /* stub_group.font.weight */
  border-top-style: solid;
  /* stub_group.border.top.style */
  border-top-width: 2px;
  /* stub_group.border.top.width */
  border-top-color: #A8A8A8;
  /* stub_group.border.top.color */
  border-bottom-style: solid;
  /* stub_group.border.bottom.style */
  border-bottom-width: 2px;
  /* stub_group.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* stub_group.border.bottom.color */
  vertical-align: middle;
}

#rjxbqyagou .gt_striped {
  background-color: #f2f2f2;
}

#rjxbqyagou .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#rjxbqyagou .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#rjxbqyagou .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#rjxbqyagou .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#rjxbqyagou .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#rjxbqyagou .gt_table_body {
  border-top-style: solid;
  /* field.border.top.style */
  border-top-width: 2px;
  /* field.border.top.width */
  border-top-color: #A8A8A8;
  /* field.border.top.color */
  border-bottom-style: solid;
  /* field.border.bottom.style */
  border-bottom-width: 2px;
  /* field.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* field.border.bottom.color */
}

#rjxbqyagou .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#rjxbqyagou .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#rjxbqyagou .gt_center {
  text-align: center;
}

#rjxbqyagou .gt_left {
  text-align: left;
}

#rjxbqyagou .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#rjxbqyagou .gt_font_normal {
  font-weight: normal;
}

#rjxbqyagou .gt_font_bold {
  font-weight: bold;
}

#rjxbqyagou .gt_font_italic {
  font-style: italic;
}

#rjxbqyagou .gt_super {
  font-size: 65%;
}

#rjxbqyagou .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="rjxbqyagou" style="overflow-x:auto;"><!--gt table start-->
<table class='gt_table'>
<thead>
<tr>
<th class='gt_heading gt_title gt_font_normal gt_center' colspan='2'>Key Constructs<sup class='gt_footnote_glyph'>1</sup></th>
</tr>
<tr>
<th class='gt_heading gt_subtitle gt_font_normal gt_center gt_bottom_border' colspan='2'></th>
</tr>
</thead>
<tr>
<th class='gt_col_heading gt_left' rowspan='1' colspan='1'>Construct</th>
<th class='gt_col_heading gt_left' rowspan='1' colspan='1'>Definition</th>
</tr>
<tbody class='gt_table_body'>
<tr>
<td class='gt_row gt_left'>Development interdependencies</td>
<td class='gt_row gt_left'>Interdependencies arising from tasks that necessitate unanticipated interactions with other tasks</td>
</tr>
<tr>
<td class='gt_row gt_left gt_striped'>Developer interdependencies</td>
<td class='gt_row gt_left gt_striped'>Interdependencies where developers require input from other developers to complete their tasks</td>
</tr>
<tr>
<td class='gt_row gt_left'>Activity variation</td>
<td class='gt_row gt_left'>Diversity of activities comprising an instantiation of a routine</td>
</tr>
<tr>
<td class='gt_row gt_left gt_striped'>Order variation</td>
<td class='gt_row gt_left gt_striped'>Diversity of the sequencing of activity types in an instantiation of a routine</td>
</tr>
</tbody>
<tfoot>
<tr>
<td colspan='2' class='gt_footnote'><sup class='gt_footnote_glyph'><em>1</em></sup> Aron Lindberg, Nicholas Berente, James Gaskin, Kalle Lyytinen (2016) Coordinating Interdependencies in Online Communities: A Study of an Open Source Software Project. <em>Information Systems Research</em></td>
</tr>
</tfoot></table>
<!--gt table end-->
</div><!--/html_preserve-->

![Lindberg 2016 Table 1](https://i.imgur.com/9aTX0Gp.png)
