---
title: "tidyverse by the numbers"
author: "Mara Averick"
date: "2018-12-06"
output: 
  html_document:
    keep_md: TRUE
---




```r
library(tidyverse)
library(gt)
```




__Data retrieved: 2018-12-06__


```r
options(readr.num_columns = 0) # supress columns message
overview <- read_csv(here::here("mloss", "data", "overview.csv"))
org_downloads <- read_csv(here::here("mloss", "data", "org_downloads.csv"))
count_commit_num <- read_csv(here::here("mloss", "data", "count_commit_num.csv"))
tot_contrib_commits<- read_csv(here::here("mloss", "data", "tot_contrib_commits.csv"))
```


```r
overview %>%
  filter(owner == "tidyverse" & downloads > 0) %>%
  select(one_of(c("repo", "downloads", "watchers", "revdep"))) %>%
  arrange(desc(downloads)) %>%
  gt() %>%
  tab_header(
    title = "tidyverse package usage",
    subtitle = glue::glue("as of {overview_date}")
  ) %>%
  fmt_number(
    columns = vars(downloads, watchers, revdep),
    decimals = 0
  )
```

<!--html_preserve--><style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif;
}

#idockghplz .gt_table {
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

#idockghplz .gt_heading {
  background-color: #FFFFFF;
  /* heading.background.color */
  border-bottom-color: #FFFFFF;
}

#idockghplz .gt_title {
  color: #000000;
  font-size: 125%;
  /* heading.title.font.size */
  padding-top: 4px;
  /* heading.top.padding */
  padding-bottom: 1px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#idockghplz .gt_subtitle {
  color: #000000;
  font-size: 85%;
  /* heading.subtitle.font.size */
  padding-top: 1px;
  padding-bottom: 4px;
  /* heading.bottom.padding */
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#idockghplz .gt_bottom_border {
  border-bottom-style: solid;
  /* heading.border.bottom.style */
  border-bottom-width: 2px;
  /* heading.border.bottom.width */
  border-bottom-color: #A8A8A8;
  /* heading.border.bottom.color */
}

#idockghplz .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  padding-top: 4px;
  padding-bottom: 4px;
}

#idockghplz .gt_col_heading {
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

#idockghplz .gt_sep_right {
  border-right: 5px solid #FFFFFF;
}

#idockghplz .gt_group_heading {
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

#idockghplz .gt_empty_group_heading {
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

#idockghplz .gt_striped tr:nth-child(even) {
  background-color: #f2f2f2;
}

#idockghplz .gt_row {
  padding: 10px;
  /* row.padding */
  margin: 10px;
}

#idockghplz .gt_stub {
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #A8A8A8;
  text-indent: 5px;
}

#idockghplz .gt_stub.gt_row {
  background-color: #FFFFFF;
}

#idockghplz .gt_summary_row {
  background-color: #FFFFFF;
  /* summary_row.background.color */
  padding: 6px;
  /* summary_row.padding */
  text-transform: inherit;
  /* summary_row.text_transform */
}

#idockghplz .gt_first_summary_row {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
}

#idockghplz .gt_table_body {
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

#idockghplz .gt_footnote {
  font-size: 90%;
  /* footnote.font.size */
  padding: 4px;
  /* footnote.padding */
}

#idockghplz .gt_sourcenote {
  font-size: 90%;
  /* sourcenote.font.size */
  padding: 4px;
  /* sourcenote.padding */
}

#idockghplz .gt_center {
  text-align: center;
}

#idockghplz .gt_left {
  text-align: left;
}

#idockghplz .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#idockghplz .gt_font_normal {
  font-weight: normal;
}

#idockghplz .gt_font_bold {
  font-weight: bold;
}

#idockghplz .gt_font_italic {
  font-style: italic;
}

#idockghplz .gt_super {
  font-size: 65%;
}

#idockghplz .gt_footnote_glyph {
  font-style: italic;
  font-size: 65%;
}
</style>
<div id="idockghplz"><!--gt table start-->
<table class='gt_table'>
<thead>
<tr>
<th class='gt_heading gt_title gt_font_normal gt_center' colspan='4'>tidyverse package usage</th>
</tr>
<tr>
<th class='gt_heading gt_subtitle gt_font_normal gt_center gt_bottom_border' colspan='4'>as of 2018-12-06</th>
</tr>
<tr>
<th class='gt_col_heading gt_left' rowspan='1' colspan='1'>repo</th>
<th class='gt_col_heading gt_right' rowspan='1' colspan='1'>downloads</th>
<th class='gt_col_heading gt_right' rowspan='1' colspan='1'>watchers</th>
<th class='gt_col_heading gt_right' rowspan='1' colspan='1'>revdep</th>
</tr>
<tbody class='gt_table_body gt_striped'>
<tr>
<td class='gt_row gt_left'>ggplot2    </td>
<td class='gt_row gt_right'>720,115</td>
<td class='gt_row gt_right'>3,497</td>
<td class='gt_row gt_right'>2,007</td>
</tr>
<tr>
<td class='gt_row gt_left'>dplyr      </td>
<td class='gt_row gt_right'>617,774</td>
<td class='gt_row gt_right'>2,725</td>
<td class='gt_row gt_right'>1,308</td>
</tr>
<tr>
<td class='gt_row gt_left'>glue       </td>
<td class='gt_row gt_right'>565,475</td>
<td class='gt_row gt_right'>319</td>
<td class='gt_row gt_right'>87</td>
</tr>
<tr>
<td class='gt_row gt_left'>stringr    </td>
<td class='gt_row gt_right'>523,378</td>
<td class='gt_row gt_right'>299</td>
<td class='gt_row gt_right'>696</td>
</tr>
<tr>
<td class='gt_row gt_left'>tibble     </td>
<td class='gt_row gt_right'>504,699</td>
<td class='gt_row gt_right'>237</td>
<td class='gt_row gt_right'>499</td>
</tr>
<tr>
<td class='gt_row gt_left'>magrittr   </td>
<td class='gt_row gt_right'>447,455</td>
<td class='gt_row gt_right'>660</td>
<td class='gt_row gt_right'>767</td>
</tr>
<tr>
<td class='gt_row gt_left'>tidyselect </td>
<td class='gt_row gt_right'>399,120</td>
<td class='gt_row gt_right'>49</td>
<td class='gt_row gt_right'>32</td>
</tr>
<tr>
<td class='gt_row gt_left'>purrr      </td>
<td class='gt_row gt_right'>367,608</td>
<td class='gt_row gt_right'>714</td>
<td class='gt_row gt_right'>407</td>
</tr>
<tr>
<td class='gt_row gt_left'>readr      </td>
<td class='gt_row gt_right'>345,721</td>
<td class='gt_row gt_right'>668</td>
<td class='gt_row gt_right'>249</td>
</tr>
<tr>
<td class='gt_row gt_left'>tidyr      </td>
<td class='gt_row gt_right'>335,584</td>
<td class='gt_row gt_right'>664</td>
<td class='gt_row gt_right'>539</td>
</tr>
<tr>
<td class='gt_row gt_left'>readxl     </td>
<td class='gt_row gt_right'>305,854</td>
<td class='gt_row gt_right'>476</td>
<td class='gt_row gt_right'>79</td>
</tr>
<tr>
<td class='gt_row gt_left'>hms        </td>
<td class='gt_row gt_right'>291,048</td>
<td class='gt_row gt_right'>57</td>
<td class='gt_row gt_right'>19</td>
</tr>
<tr>
<td class='gt_row gt_left'>haven      </td>
<td class='gt_row gt_right'>274,085</td>
<td class='gt_row gt_right'>270</td>
<td class='gt_row gt_right'>44</td>
</tr>
<tr>
<td class='gt_row gt_left'>lubridate  </td>
<td class='gt_row gt_right'>264,284</td>
<td class='gt_row gt_right'>399</td>
<td class='gt_row gt_right'>296</td>
</tr>
<tr>
<td class='gt_row gt_left'>forcats    </td>
<td class='gt_row gt_right'>217,088</td>
<td class='gt_row gt_right'>255</td>
<td class='gt_row gt_right'>44</td>
</tr>
<tr>
<td class='gt_row gt_left'>dbplyr     </td>
<td class='gt_row gt_right'>208,932</td>
<td class='gt_row gt_right'>152</td>
<td class='gt_row gt_right'>42</td>
</tr>
<tr>
<td class='gt_row gt_left'>tidyverse  </td>
<td class='gt_row gt_right'>208,581</td>
<td class='gt_row gt_right'>626</td>
<td class='gt_row gt_right'>50</td>
</tr>
<tr>
<td class='gt_row gt_left'>reprex     </td>
<td class='gt_row gt_right'>144,679</td>
<td class='gt_row gt_right'>361</td>
<td class='gt_row gt_right'>1</td>
</tr>
<tr>
<td class='gt_row gt_left'>modelr     </td>
<td class='gt_row gt_right'>144,280</td>
<td class='gt_row gt_right'>309</td>
<td class='gt_row gt_right'>8</td>
</tr>
<tr>
<td class='gt_row gt_left'>blob       </td>
<td class='gt_row gt_right'>69,774</td>
<td class='gt_row gt_right'>19</td>
<td class='gt_row gt_right'>8</td>
</tr>
<tr>
<td class='gt_row gt_left'>googledrive</td>
<td class='gt_row gt_right'>2,876</td>
<td class='gt_row gt_right'>139</td>
<td class='gt_row gt_right'>3</td>
</tr>
</tbody>
</table>
<!--gt table end-->
</div><!--/html_preserve-->


```r
knitr::kable(
  overview %>%
    filter(owner == "tidyverse" & downloads > 0) %>%
    select(one_of(c("repo", "downloads", "watchers", "revdep"))) %>%
    arrange(desc(downloads))
)
```



repo           downloads   watchers   revdep
------------  ----------  ---------  -------
ggplot2           720115       3497     2007
dplyr             617774       2725     1308
glue              565475        319       87
stringr           523378        299      696
tibble            504699        237      499
magrittr          447455        660      767
tidyselect        399120         49       32
purrr             367608        714      407
readr             345721        668      249
tidyr             335584        664      539
readxl            305854        476       79
hms               291048         57       19
haven             274085        270       44
lubridate         264284        399      296
forcats           217088        255       44
dbplyr            208932        152       42
tidyverse         208581        626       50
reprex            144679        361        1
modelr            144280        309        8
blob               69774         19        8
googledrive         2876        139        3

