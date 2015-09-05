require(rvest)
require(doParallel)

cl <- makeCluster(detectCores())
registerDoParallel(cl, cores = detectCores())
source(file = "schools_html.R")

cfb.df <-rbind(air.force, akron, alabama, app.st, arizona, arizona.st, arkansas, 
               arkansas.st, army, auburn, ball.st, baylor, boise.st, 
               boston.college, bowling.green, brigham.young, buffalo, 
               california, central.florida, central.michigan, charlotte,
               cincinnati, clemson, colorado, colorado.st, connecticut, duke, 
               east.carolina, e.michigan, florida, florida.atl, florida.int, 
               florida.st, fresno.st, georgia, georgia.southern, georgia.st, 
               georgia.tech, hawaii, houston, idaho, illinois, indiana, iowa, 
               iowa.st, kansas, k.state, kent.st, kentucky, la.lafayette, 
               la.monroe, la.tech, louisville, lsu, marshall, maryland, memphis,
               miami, miami.ohio, michigan, michigan.st, middle.tenn, minnesota, 
               miss.st, missouri, navy, nc.st, nebraska, nevada, new.mexico, 
               new.mexico.st, north.carolina, n.illinois, north.texas, 
               northwestern, notre.dame, ohio, ohio.st, oklahoma, oklahoma.st, 
               old.dominion, ole.miss, oregon, oregon.st, penn.st, pittsburgh, 
               purdue, rice, rutgers, san.diego.st, san.jose.st, smu, 
               south.alabama, south.carolina, southern.miss, south.florida, 
               stanford, syracuse, tcu, temple, tennessee, texas, texas.am, 
               texas.st, texas.tech, toledo, troy, tulane, tulsa, ucla, umass,
               unlv, usc, utah.st, utah, utep, utsa, vanderbilt, virginia, 
               virginia.tech, wake.forest, washington, washington.st, 
               western.michigan, west.virginia, wisconsin, wku, wyoming)
stopCluster(cl)

write.table(cfb.df,file = "cfb_rosters_2015.txt", sep = ",")
save.image("C:/projects/R Web Scraping/cfb/rosters_html.RData")
