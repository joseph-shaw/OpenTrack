## install.packages("remotes")
#remotes::install_github("chasemc/electricShine")
#
#electricShine::electrify("https://github.com/chasemc/demoApp/")
#
#
#functionName='run_app'
#
#n
#
#
#buildPath <- tempdir()
#
#platform <- "win"
#arch <- "x64"
#
#electricShine::electrify(app_name = "My_App4",
#                         short_description = "My demo application",
#                         semantic_version = "1.0.0",
#                         build_path = buildPath,
#                         function_name = "run_app",
#                         git_host = "github",
#                         git_repo = "chasemc/demoApp@8426481",
#                         package_install_opts = list(type = "binary",
#                                                     dependencies = c("Depends", 
#                                                                      "Imports")
#                         ),
#                         cran_like_url = "https://cran.r-project.org"
#)
#
#electricShine::install_nodejs(node_url = "https://nodejs.org/dist",
#                              #nodejs_path = file.path(system.file(package = "electricShine"),"nodejs"), 
#                              force_install = TRUE, 
#                              nodejs_version = "v10.16.0",
#                              permission_to_install = FALSE)
#
#