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

<!--html_preserve--><style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#yckxfhhypq .gt_table {
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

#yckxfhhypq .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#yckxfhhypq .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#yckxfhhypq .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#yckxfhhypq .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#yckxfhhypq .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#yckxfhhypq .gt_col_heading {
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

#yckxfhhypq .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#yckxfhhypq .gt_group_heading {
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

#yckxfhhypq .gt_empty_group_heading {
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

#yckxfhhypq .gt_striped {
  background-color: #f2f2f2;
}

#yckxfhhypq .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#yckxfhhypq .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#yckxfhhypq .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#yckxfhhypq .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#yckxfhhypq .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#yckxfhhypq .gt_table_body {
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

#yckxfhhypq .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#yckxfhhypq .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#yckxfhhypq .gt_center {
  text-align: center;
}

#yckxfhhypq .gt_left {
  text-align: left;
}

#yckxfhhypq .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#yckxfhhypq .gt_font_normal {
  font-weight: normal;
}

#yckxfhhypq .gt_font_bold {
  font-weight: bold;
}

#yckxfhhypq .gt_font_italic {
  font-style: italic;
}

#yckxfhhypq .gt_super {
  font-size: 65%;
}

#yckxfhhypq .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="yckxfhhypq" style="overflow-x:auto;"><!--gt table start-->
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

#fdsxazhdhv .gt_table {
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

#fdsxazhdhv .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#fdsxazhdhv .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#fdsxazhdhv .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#fdsxazhdhv .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#fdsxazhdhv .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#fdsxazhdhv .gt_col_heading {
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

#fdsxazhdhv .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#fdsxazhdhv .gt_group_heading {
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

#fdsxazhdhv .gt_empty_group_heading {
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

#fdsxazhdhv .gt_striped {
  background-color: #f2f2f2;
}

#fdsxazhdhv .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#fdsxazhdhv .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#fdsxazhdhv .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#fdsxazhdhv .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#fdsxazhdhv .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#fdsxazhdhv .gt_table_body {
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

#fdsxazhdhv .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#fdsxazhdhv .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#fdsxazhdhv .gt_center {
  text-align: center;
}

#fdsxazhdhv .gt_left {
  text-align: left;
}

#fdsxazhdhv .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#fdsxazhdhv .gt_font_normal {
  font-weight: normal;
}

#fdsxazhdhv .gt_font_bold {
  font-weight: bold;
}

#fdsxazhdhv .gt_font_italic {
  font-style: italic;
}

#fdsxazhdhv .gt_super {
  font-size: 65%;
}

#fdsxazhdhv .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="fdsxazhdhv" style="overflow-x:auto;"><!--gt table start-->
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

#tvjkxlszxg .gt_table {
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

#tvjkxlszxg .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#tvjkxlszxg .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#tvjkxlszxg .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#tvjkxlszxg .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#tvjkxlszxg .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#tvjkxlszxg .gt_col_heading {
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

#tvjkxlszxg .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#tvjkxlszxg .gt_group_heading {
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

#tvjkxlszxg .gt_empty_group_heading {
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

#tvjkxlszxg .gt_striped {
  background-color: #f2f2f2;
}

#tvjkxlszxg .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#tvjkxlszxg .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#tvjkxlszxg .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#tvjkxlszxg .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#tvjkxlszxg .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#tvjkxlszxg .gt_table_body {
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

#tvjkxlszxg .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#tvjkxlszxg .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#tvjkxlszxg .gt_center {
  text-align: center;
}

#tvjkxlszxg .gt_left {
  text-align: left;
}

#tvjkxlszxg .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#tvjkxlszxg .gt_font_normal {
  font-weight: normal;
}

#tvjkxlszxg .gt_font_bold {
  font-weight: bold;
}

#tvjkxlszxg .gt_font_italic {
  font-style: italic;
}

#tvjkxlszxg .gt_super {
  font-size: 65%;
}

#tvjkxlszxg .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="tvjkxlszxg" style="overflow-x:auto;"><!--gt table start-->
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

#cflpgzanmh .gt_table {
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

#cflpgzanmh .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#cflpgzanmh .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#cflpgzanmh .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#cflpgzanmh .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#cflpgzanmh .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#cflpgzanmh .gt_col_heading {
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

#cflpgzanmh .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#cflpgzanmh .gt_group_heading {
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

#cflpgzanmh .gt_empty_group_heading {
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

#cflpgzanmh .gt_striped {
  background-color: #f2f2f2;
}

#cflpgzanmh .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#cflpgzanmh .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#cflpgzanmh .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#cflpgzanmh .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#cflpgzanmh .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#cflpgzanmh .gt_table_body {
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

#cflpgzanmh .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#cflpgzanmh .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#cflpgzanmh .gt_center {
  text-align: center;
}

#cflpgzanmh .gt_left {
  text-align: left;
}

#cflpgzanmh .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#cflpgzanmh .gt_font_normal {
  font-weight: normal;
}

#cflpgzanmh .gt_font_bold {
  font-weight: bold;
}

#cflpgzanmh .gt_font_italic {
  font-style: italic;
}

#cflpgzanmh .gt_super {
  font-size: 65%;
}

#cflpgzanmh .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="cflpgzanmh" style="overflow-x:auto;"><!--gt table start-->
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

From: Gasson, Susan, and Michelle Purcelle. “Legitimate Peripheral Participation in Hybrid FOSS Community Innovation.” Proceedings of the 51st Hawaii International Conference on System Sciences. Vol. 9. N.p., 2018. 4554–4563. Print.


```r
gasson2018 <- tibble::tribble(
                                                          ~Modes.of.peripheral.participation,                                                                                        ~Tech.affordances,                                                                         ~Performativity.effects.of.technology.use,                                                                                     ~Sociocultural.affordances,                                                                          ~Participation.effects.of.social.apprenticeship,                                                                                                               ~LPP.outcome,
           "1. New peripheral user does not follow advice to discuss idea before submission",                                           "Bug reporting tool offers structured idea submission and evaluation (status & priority)",                         "None for user – idea disappears into technology black box that communicates no progress",                     "Admin reviews change requests - only selected if user aligns feature with comm. interests",                                       "None for user, as admin selects and monitors implementation independent of user.",                                                                       "Little or no user learning or community visibility",
                             "2. User discusses idea on community IRC channel or email list",                                         "Steep learning curve on IRC as user understands turn-taking & genre of text communication",                    "Idea is explored across software developers. Discussion sensitizes others to value of change",                                                  "Need s/w dev. collaborator to co-create persuasive use- case",       "Aligns a network- of-practice: a set of developers who coordinate development activity via online tech. platform",                                        "Idea is legitimized, and user gains some visibility in community (social capital)",
              "3. Users collaborate around shared interests in special interest group (SIG)", "Collaboration with other users in virtual meetings. Coordination power depends on ability to legitimize access to exclusive space", "Ideas evaluated by application domain experts; Ideas gain comm. support; Users develop community social network", "Idea improvers develop ideas  Idea supporters vote for idea; Group memory managers recall rationale of change", "Persuasive use- case is developed for idea; Influence & social support provided SIG retains memory of change rationale", "User enculturated in socio-cultural community norms & practices; User gains social network of application domain experts",
                                  "4. User leads or takes prominent role in SIG or outreach",                                                                                 "Persistence of trace records indicate role in SIG",                                                                    "Provides user visibility to tech. developers",                                                           "Provides social capital to user with s/w developers",                                                            "Legitimates user as influential decision-maker in community",                                                                              "Moves user away from periphery towards core",
  "5. User engages in experiential learning by collaborating with software dev. discussions",                                                           "IRC permits rapid feedback; email list posts provide diffusion of ideas",                            "User is exposed to suggestions & questions that develop/clarify persuasive use- case",                                      "Need s/w dev. or admin sponsor to allocate effort to idea implementation",                     "Allows user to participate in s/w devt. practices Progresses change request towards implementation",                   "User enculturated in s/w development, practices; User gains social network of tech. developer contacts",
             "6. User acquires software development expertise through experiential learning",                                                   "Steep learning curve as user must engage via github & code tools to participate",                                         "Tech. tools for s/w development become ready- to-hand; automatic in use",                         "User allowed to participate in near-to-core activities, (code development. & testing)",                               "User gains access to s/w development tech. platform; allows user to modify software code",                                                      "User acquires software expert status & engages with core developers",
                          "7. User provides funding or effort for software code development",                                                       "Attracts attention, improving chance that idea will be selected for release",                                                      "Raises status & priority of feature request or change idea",                                                      "Admins prioritize changes that already have devt. effort",                                                  "Feature is more likely to progress rapidly & be scheduled for release",                                                   "Raises legitimacy of user as someone who can provide funding or effort",
              "8. User demon- strates software expertise & prod. knowledge via interactions",                                                                                "User gains code access and modification privileges",                                                    "User can influence feature adoption by providing sample code",                                              "User recognized as application domain and software domain expert",                       "User participates in organizing product releases; Ultimately user awarded core commit privileges",                                                 "User gains social capital and ultimately gains core community membership"
  )
```


```r
gasson2018 %>%
  gt() %>%
    tab_header(title = "Effects of various forms of participation on socio-technical participation architecture-in-practice and on outcomes affecting legitimate peripheral participation") %>%
  tab_footnote(
    footnote = md("Gasson, Susan, and Michelle Purcelle. “Legitimate Peripheral Participation in Hybrid FOSS Community Innovation.” _Proceedings of the 51st Hawaii International Conference on System Sciences_. Vol. 9. N.p., 2018. 4554–4563."),
    locations = cells_title(groups = "title")
  )
```

<!--html_preserve--><style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#bhszaknvgl .gt_table {
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

#bhszaknvgl .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#bhszaknvgl .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#bhszaknvgl .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#bhszaknvgl .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#bhszaknvgl .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#bhszaknvgl .gt_col_heading {
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

#bhszaknvgl .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#bhszaknvgl .gt_group_heading {
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

#bhszaknvgl .gt_empty_group_heading {
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

#bhszaknvgl .gt_striped {
  background-color: #f2f2f2;
}

#bhszaknvgl .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
  vertical-align: middle;
}

#bhszaknvgl .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  padding-left: 12px;
}

#bhszaknvgl .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#bhszaknvgl .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#bhszaknvgl .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#bhszaknvgl .gt_table_body {
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

#bhszaknvgl .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#bhszaknvgl .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#bhszaknvgl .gt_center {
  text-align: center;
}

#bhszaknvgl .gt_left {
  text-align: left;
}

#bhszaknvgl .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#bhszaknvgl .gt_font_normal {
  font-weight: normal;
}

#bhszaknvgl .gt_font_bold {
  font-weight: bold;
}

#bhszaknvgl .gt_font_italic {
  font-style: italic;
}

#bhszaknvgl .gt_super {
  font-size: 65%;
}

#bhszaknvgl .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="bhszaknvgl" style="overflow-x:auto;"><!--gt table start-->
<table class='gt_table'>
<thead>
<tr>
<th class='gt_heading gt_title gt_font_normal gt_center' colspan='6'>Effects of various forms of participation on socio-technical participation architecture-in-practice and on outcomes affecting legitimate peripheral participation<sup class='gt_footnote_glyph'>1</sup></th>
</tr>
<tr>
<th class='gt_heading gt_subtitle gt_font_normal gt_center gt_bottom_border' colspan='6'></th>
</tr>
</thead>
<tr>
<th class='gt_col_heading gt_left' rowspan='1' colspan='1'>Modes.of.peripheral.participation</th>
<th class='gt_col_heading gt_left' rowspan='1' colspan='1'>Tech.affordances</th>
<th class='gt_col_heading gt_left' rowspan='1' colspan='1'>Performativity.effects.of.technology.use</th>
<th class='gt_col_heading gt_left' rowspan='1' colspan='1'>Sociocultural.affordances</th>
<th class='gt_col_heading gt_left' rowspan='1' colspan='1'>Participation.effects.of.social.apprenticeship</th>
<th class='gt_col_heading gt_left' rowspan='1' colspan='1'>LPP.outcome</th>
</tr>
<tbody class='gt_table_body'>
<tr>
<td class='gt_row gt_left'>1. New peripheral user does not follow advice to discuss idea before submission</td>
<td class='gt_row gt_left'>Bug reporting tool offers structured idea submission and evaluation (status &amp; priority)</td>
<td class='gt_row gt_left'>None for user – idea disappears into technology black box that communicates no progress</td>
<td class='gt_row gt_left'>Admin reviews change requests - only selected if user aligns feature with comm. interests</td>
<td class='gt_row gt_left'>None for user, as admin selects and monitors implementation independent of user.</td>
<td class='gt_row gt_left'>Little or no user learning or community visibility</td>
</tr>
<tr>
<td class='gt_row gt_left gt_striped'>2. User discusses idea on community IRC channel or email list</td>
<td class='gt_row gt_left gt_striped'>Steep learning curve on IRC as user understands turn-taking &amp; genre of text communication</td>
<td class='gt_row gt_left gt_striped'>Idea is explored across software developers. Discussion sensitizes others to value of change</td>
<td class='gt_row gt_left gt_striped'>Need s/w dev. collaborator to co-create persuasive use- case</td>
<td class='gt_row gt_left gt_striped'>Aligns a network- of-practice: a set of developers who coordinate development activity via online tech. platform</td>
<td class='gt_row gt_left gt_striped'>Idea is legitimized, and user gains some visibility in community (social capital)</td>
</tr>
<tr>
<td class='gt_row gt_left'>3. Users collaborate around shared interests in special interest group (SIG)</td>
<td class='gt_row gt_left'>Collaboration with other users in virtual meetings. Coordination power depends on ability to legitimize access to exclusive space</td>
<td class='gt_row gt_left'>Ideas evaluated by application domain experts; Ideas gain comm. support; Users develop community social network</td>
<td class='gt_row gt_left'>Idea improvers develop ideas  Idea supporters vote for idea; Group memory managers recall rationale of change</td>
<td class='gt_row gt_left'>Persuasive use- case is developed for idea; Influence &amp; social support provided SIG retains memory of change rationale</td>
<td class='gt_row gt_left'>User enculturated in socio-cultural community norms &amp; practices; User gains social network of application domain experts</td>
</tr>
<tr>
<td class='gt_row gt_left gt_striped'>4. User leads or takes prominent role in SIG or outreach</td>
<td class='gt_row gt_left gt_striped'>Persistence of trace records indicate role in SIG</td>
<td class='gt_row gt_left gt_striped'>Provides user visibility to tech. developers</td>
<td class='gt_row gt_left gt_striped'>Provides social capital to user with s/w developers</td>
<td class='gt_row gt_left gt_striped'>Legitimates user as influential decision-maker in community</td>
<td class='gt_row gt_left gt_striped'>Moves user away from periphery towards core</td>
</tr>
<tr>
<td class='gt_row gt_left'>5. User engages in experiential learning by collaborating with software dev. discussions</td>
<td class='gt_row gt_left'>IRC permits rapid feedback; email list posts provide diffusion of ideas</td>
<td class='gt_row gt_left'>User is exposed to suggestions &amp; questions that develop/clarify persuasive use- case</td>
<td class='gt_row gt_left'>Need s/w dev. or admin sponsor to allocate effort to idea implementation</td>
<td class='gt_row gt_left'>Allows user to participate in s/w devt. practices Progresses change request towards implementation</td>
<td class='gt_row gt_left'>User enculturated in s/w development, practices; User gains social network of tech. developer contacts</td>
</tr>
<tr>
<td class='gt_row gt_left gt_striped'>6. User acquires software development expertise through experiential learning</td>
<td class='gt_row gt_left gt_striped'>Steep learning curve as user must engage via github &amp; code tools to participate</td>
<td class='gt_row gt_left gt_striped'>Tech. tools for s/w development become ready- to-hand; automatic in use</td>
<td class='gt_row gt_left gt_striped'>User allowed to participate in near-to-core activities, (code development. &amp; testing)</td>
<td class='gt_row gt_left gt_striped'>User gains access to s/w development tech. platform; allows user to modify software code</td>
<td class='gt_row gt_left gt_striped'>User acquires software expert status &amp; engages with core developers</td>
</tr>
<tr>
<td class='gt_row gt_left'>7. User provides funding or effort for software code development</td>
<td class='gt_row gt_left'>Attracts attention, improving chance that idea will be selected for release</td>
<td class='gt_row gt_left'>Raises status &amp; priority of feature request or change idea</td>
<td class='gt_row gt_left'>Admins prioritize changes that already have devt. effort</td>
<td class='gt_row gt_left'>Feature is more likely to progress rapidly &amp; be scheduled for release</td>
<td class='gt_row gt_left'>Raises legitimacy of user as someone who can provide funding or effort</td>
</tr>
<tr>
<td class='gt_row gt_left gt_striped'>8. User demon- strates software expertise &amp; prod. knowledge via interactions</td>
<td class='gt_row gt_left gt_striped'>User gains code access and modification privileges</td>
<td class='gt_row gt_left gt_striped'>User can influence feature adoption by providing sample code</td>
<td class='gt_row gt_left gt_striped'>User recognized as application domain and software domain expert</td>
<td class='gt_row gt_left gt_striped'>User participates in organizing product releases; Ultimately user awarded core commit privileges</td>
<td class='gt_row gt_left gt_striped'>User gains social capital and ultimately gains core community membership</td>
</tr>
</tbody>
<tfoot>
<tr>
<td colspan='6' class='gt_footnote'><sup class='gt_footnote_glyph'><em>1</em></sup> Gasson, Susan, and Michelle Purcelle. “Legitimate Peripheral Participation in Hybrid FOSS Community Innovation.” <em>Proceedings of the 51st Hawaii International Conference on System Sciences</em>. Vol. 9. N.p., 2018. 4554–4563.</td>
</tr>
</tfoot></table>
<!--gt table end-->
</div><!--/html_preserve-->

