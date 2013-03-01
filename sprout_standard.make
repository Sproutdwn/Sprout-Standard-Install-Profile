; ----------------
; Generated makefile originally from http://drushmake.me
; Permanent URL: http://drushmake.me/file.php?token=3962d7912530
; ----------------

; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all projects should be compatible with.
  
core = 7.x
  
; API version
; ------------
; Every makefile needs to declare its Drush Make API version. This version of drush make uses API version `2`.
  
api = 2
  
; Core project
; ------------
; In order for your makefile to generate a full Drupal site, you must include
; a core project. This is usually Drupal core, but you can also specify
; alternative core projects like Pressflow. Note that makefiles included with
; install profiles *should not* include a core project.
  
; Drupal 7.x. Requires the `core` property to be set to 7.x.
;
; projects[drupal][version] = 7

  
; Modules
; --------
projects[admin][type] = "module"
projects[admin_menu][type] = "module"
projects[admin_tools][type] = "module"
projects[backup_migrate][type] = "module"
projects[colorbox][type] = "module"
projects[ctools][type] = "module"
projects[devel][type] = "module"
projects[ds][type] = "module"
projects[features][type] = "module"
projects[globalredirect][type] = "module"
projects[google_analytics][type] = "module"
projects[libraries][type] = "module"
projects[markdown][type] = "module"
projects[menu_block][type] = "module"
projects[omega_tools][type] = "module"
projects[pathauto][type] = "module"
projects[prepro][type] = "module"
projects[sassy][type] = "module"
projects[search404][type] = "module"
projects[token][type] = "module"
projects[views][type] = "module"
projects[webform][type] = "module"


; Themes
; --------
projects[omega][type] = "theme"
projects[rubik][type] = "theme"
projects[tao][type] = "theme"

  
; Libraries
; ---------
libraries[colorbox][directory_name] = "colorbox"
libraries[colorbox][type] = "library"
libraries[colorbox][destination] = "libraries"
libraries[colorbox][download][type] = "get"
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox/archive/master.zip"

libraries[jquery.cycle][directory_name] = "jquery.cycle"
libraries[jquery.cycle][type] = "library"
libraries[jquery.cycle][destination] = "libraries"
libraries[jquery.cycle][download][type] = "get"
libraries[jquery.cycle][download][url] = "http://www.malsup.com/jquery/cycle/release/jquery.cycle.zip"

libraries[phpsass][directory_name] = "phpsass"
libraries[phpsass][type] = "library"
libraries[phpsass][destination] = "libraries"
libraries[phpsass][download][type] = "get"
libraries[phpsass][download][url] = "https://github.com/richthegeek/phpsass/archive/master.zip"