<?php
/**
 * @file
 * Provides info-type hook implementations that are infrequently called.
 *
 * @author Jim Berry ("solotandem", http://drupal.org/user/240748)
 */

/**
 * Implements hook_perm().
 */
function _accordion_menu_perm() {
  return array('administer accordion menu');
}

/**
 * Implements hook_menu().
 */
function _accordion_menu_menu() {
  $items['admin/settings/accordion_menu'] = array(
    'title' => 'Accordion Menu',
    'description' => 'Add and modify accordion menu blocks.',
    'page callback' => 'drupal_get_form',
    'page arguments' => array('accordion_menu_settings_form', 2),
    'access arguments' => array('administer accordion menu'),
    'type' => MENU_NORMAL_ITEM,
    'file' => 'includes/setting.inc',
  );
  return $items;
}

/**
 * Implements hook_theme().
 */
function _accordion_menu_theme(&$existing, $type, $theme, $path) {
  return array(
    'accordion_menu_wrapper' => array(
      'template' => 'accordion-menu-wrapper',
      'arguments' => array('content' => array(), 'config' => array(), 'delta' => NULL),
      'pattern' => 'accordion_menu_wrapper__',
      'file' => 'includes/view.inc',
    ),
    'accordion_menu_header' => array(
      'arguments' => array('element' => NULL),
      'file' => 'includes/view.inc',
    ),
  );
}

/**
 * Implements hook_block_info().
 */
function _accordion_menu_block_info() {
  for ($i = 1; $i <= variable_get('accordion_menu_count', '2'); $i++) {
    $blocks[$i]['info'] = variable_get('accordion_menu_menu_name_' . $i, 'Menu ' . $i) . ' (Accordion menu)';
    $blocks[$i]['cache'] = BLOCK_NO_CACHE;
  }
  return $blocks;
}
