library(DBI)

#Be sure to replace SERVICE and YOURUSERNAME when you run your report.
con <- DBI::dbConnect(odbc::odbc(), "SERVICE", timeout = 10, UID = "YOURUSERNAME", 
                      PWD = keyring::key_get(service = "SERVICE", 
                                             username = "YOURUSERNAME"))