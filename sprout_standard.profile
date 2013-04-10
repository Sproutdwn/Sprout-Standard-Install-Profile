<?php

/**
 * Implements hook_date_formats().
 *
 * to get a few nice looking Aussie formats
 */
function sprout_standard_date_formats() {
  return array(
    array(
      'type' => 'sprout_standard_date_only_short', 
      'format' => 'd.m.Y', 
      'locales' => array(),
    ),
    array(
      'type' => 'sprout_standard_date_only_medium', 
      'format' => 'd M Y', 
      'locales' => array(),
    ),
    array(
      'type' => 'sprout_standard_date_only_long', 
      'format' => 'd F Y', 
      'locales' => array(),
    ),
    array(
      'type' => 'sprout_standard_12_hour_medium', 
      'format' => 'd M Y, g:i a', 
      'locales' => array(),
    ),
    array(
      'type' => 'sprout_standard_12_hour_long', 
      'format' => 'd F Y, g:i a', 
      'locales' => array(),
    ),
  );
}

/**
 * Implements hook_date_format_types().
 *
 * to get a few nice looking Aussie date formats ready to use
 */
function sprout_standard_date_format_types() {
  // Define the core date format types.
  return array(
    'sprout_standard_date_only_short' => t('Sprout Date only short'), 
    'sprout_standard_date_only_medium' => t('Sprout Date only medium'), 
    'sprout_standard_date_only_long' => t('Sprout Date only long'), 
    'sprout_standard_12_hour_medium' => t('Sprout 12 hour medium'), 
    'sprout_standard_12_hour_long' => t('Sprout 12 hour long'),
  );
}

/**
 * Implements hook_form_ID_alter().
 */
function system_form_install_select_profile_form_alter(&$form, $form_state) {
  // select sprout standard install profile by default
  foreach ($form['profile'] as $key => $element) {
    $form['profile'][$key]['#value'] = 'sprout_standard';
  }  
}

/**
 * Implements hook_form_ID_alter().
 */
/*
function system_form_install_configure_form_alter(&$form, $form_state) { 
    // hide server settings (timezone)
    unset($form['server_settings']);
}
*/



/**
 * Implements hook_install_tasks().
 */
function sprout_standard_install_tasks($install_state) {
  $task['sprout_standard_create_content'] = array(
    'display_name' => st('Pre-install content'),
    'display' => TRUE,
    'type' => 'normal',
    'run' => INSTALL_TASK_RUN_IF_REACHED,
    //'function' => 'sprout_standard_create_content',
  );
  
  return $task;
}

/**
 * 
 */
function sprout_standard_create_content() {  
  $path = drupal_get_path('profile', 'sprout_standard') . '/content';
  $mask = '/.inc/';
  $files = file_scan_directory($path, $mask);
  
  foreach ($files as $file) {
    ob_start();
    include $path.'/'.$file->filename;
    ob_end_clean();

    $node = (object) $node;
    $node->language = LANGUAGE_NONE;
    node_object_prepare($node);
    node_save($node);
  }

}





