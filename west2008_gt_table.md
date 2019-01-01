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
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif;
}

#fvuzlsmkex .gt_table {
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

#fvuzlsmkex .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#fvuzlsmkex .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#fvuzlsmkex .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#fvuzlsmkex .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#fvuzlsmkex .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#fvuzlsmkex .gt_col_heading {
  color: #000000;
  background-color: #FFFFFF;
  /* column_labels.background.color */
  font-size: 16px;
  /* column_labels.font.size */
  font-weight: initial;
  /* column_labels.font.weight */
  padding: 10px;
  margin: 10px;
}

#fvuzlsmkex .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#fvuzlsmkex .gt_group_heading {
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
  /* stub_group.border.bottom  .style */
  border-bottom-width: 2px;
  /* stub_group.border.bottom  .width */
  border-bottom-color: #A8A8A8;
  /* stub_group.border.bottom  .color */
}

#fvuzlsmkex .gt_empty_group_heading {
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
  /* stub_group.border.bottom  .style */
  border-bottom-width: 2px;
  /* stub_group.border.bottom  .width */
  border-bottom-color: #A8A8A8;
  /* stub_group.border.bottom  .color */
}

#fvuzlsmkex .gt_striped tr:nth-child(even) {
  background-color: #f2f2f2;
}

#fvuzlsmkex .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
}

#fvuzlsmkex .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  text-indent: 5px;
}

#fvuzlsmkex .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#fvuzlsmkex .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#fvuzlsmkex .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#fvuzlsmkex .gt_table_body {
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

#fvuzlsmkex .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#fvuzlsmkex .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#fvuzlsmkex .gt_center {
  text-align: center;
}

#fvuzlsmkex .gt_left {
  text-align: left;
}

#fvuzlsmkex .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#fvuzlsmkex .gt_font_normal {
  font-weight: normal;
}

#fvuzlsmkex .gt_font_bold {
  font-weight: bold;
}

#fvuzlsmkex .gt_font_italic {
  font-style: italic;
}

#fvuzlsmkex .gt_super {
  font-size: 65%;
}

#fvuzlsmkex .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="fvuzlsmkex"><!--gt table start-->
<table class='gt_table'>
<thead>
<tr>
<th class='gt_heading gt_title gt_font_normal gt_center' colspan='4'>Mapping forms of openness against dimensions of open source<sup class='gt_footnote_glyph'>1</sup></th>
</tr>
<tr>
<th class='gt_heading gt_subtitle gt_font_normal gt_center gt_bottom_border' colspan='4'></th>
</tr>
<tr>
<th class='gt_col_heading gt_center' rowspan='2' colspan='1'>Dimension of participation architecture</th>
<th class='gt_col_heading gt_column_spanner gt_center' rowspan='1' colspan='2'>Form of openness</th>
<th class='gt_col_heading gt_center' rowspan='2' colspan='1'>Proprietary model</th>
</tr>
<tr>
<th class='gt_col_heading gt_left' rowspan='1' colspan='1'>Transparency</th>
<th class='gt_col_heading gt_left' rowspan='1' colspan='1'>Accessibility</th>
</tr>
<tbody class='gt_table_body gt_striped'>
<tr>
<td class='gt_row gt_left'>Production the way that the community conducts production processes             </td>
<td class='gt_row gt_left'>Ability to read code and observe or follow production processes             </td>
<td class='gt_row gt_left'>Ability to change code directly                                       </td>
<td class='gt_row gt_left'>Production remains within a single corporation                                    </td>
</tr>
<tr>
<td class='gt_row gt_left'>Governance the processes by which decisions are made within the community       </td>
<td class='gt_row gt_left'>Publicly visible governance, observers can understand how decisions are made</td>
<td class='gt_row gt_left'>Ability to participate in governance                                  </td>
<td class='gt_row gt_left'>The corporation makes all decisions at its own discretion                         </td>
</tr>
<tr>
<td class='gt_row gt_left'>Intellectual property the allocation of the rights to use the community’s output</td>
<td class='gt_row gt_left'>Rights to use code and access source code                                   </td>
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

