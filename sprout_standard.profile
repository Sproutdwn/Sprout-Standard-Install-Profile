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
 * Implements hook_form_alter().
 */
function system_form_install_select_profile_form_alter(&$form, $form_state) {
  // select pb_test install profile by default
  foreach ($form['profile'] as $key => $element) {
    $form['profile'][$key]['#value'] = 'sprout_standard';
  }
}