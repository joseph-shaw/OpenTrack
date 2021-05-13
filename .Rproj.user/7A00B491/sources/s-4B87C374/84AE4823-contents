settings <- read.csv("settings/sql.csv")
use.sql <- settings$csv[1] == 0

# Create a database backup
if(!use.sql){
  write.csv(read.csv("database.csv"), paste("backups/db_backup ", format(Sys.time(), "%Y-%m-%d %H%M"), ".csv", sep = ""), row.names = F)
}

