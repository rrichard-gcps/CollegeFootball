require(rvest)
cfb <- html("http://www.ourlads.com/ncaa-football-depth-charts/roster/central-florida/92200")
header <- html_nodes(cfb, "#gvRos th")
name   <- html_nodes(cfb, "#gvRos b")
pos    <- html_nodes(cfb, "#gvRos td:nth-child(3)")
school <- html_nodes(cfb, "#gvRos td:nth-child(7)")
hometn <- html_nodes(cfb, "#gvRos td:nth-child(8)")

