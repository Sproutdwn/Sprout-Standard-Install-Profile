<?php

$node = array(
  'type'    => 'webform',
  'title'   => 'Contact us',
  'status'  => 1,
  'promote' => 0,
  'sticky'  => 0,
  'comment' => 1,   //2 = comments on, 1 = comments off
  //'path'    => 'contact-us',
  
  'webform' => array(
    'confirmation' => 'Thanks for contacting us, we\'ll be in touch as soon as possible.',
    'roles' => array( // who can submit this webform, one per line. 1 = anonymous, 2 = authenticated, 3 = admin
      0 => '1', 
      1 => '2'
    ),

    'components' => array(
      0 => array(
        'name' => 'your name',
        'form_key' => 'name',
        'type' => 'textfield',
        'mandatory' => 1,
        'weight' => 0,
        'pid' => 0
      ),
      
      1 => array(
        'name' => 'your email',
        'form_key' => 'email',
        'type' => 'email',
        'mandatory' => 1,
        'weight' => 1,
        'pid' => 0
      ),
      
      2 => array(
        'name' => 'Your message',
        'form_key' => 'message',
        'type' => 'textarea',
        'mandatory' => 1,
        'weight' => 2,
        'pid' => 0
      ) 
    )
  )
  
);