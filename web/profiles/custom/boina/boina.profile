<?php

/**
 * @file
 * Enables modules and site configuration for the boina profile.
 */

use Drupal\Core\Routing\RouteMatchInterface;
use Drupal\Core\Entity\EntityInterface;

/**
 * Implements hook_node_presave().
 */
function boina_node_presave(EntityInterface $node) {
  if ($node->bundle() !== 'article') {
    return;
  }

  if ($node->get('field_image')->entity) {
    return;
  }

  $siteSettings = \Drupal::service('site_settings.loader')->loadAll();

  if (!$siteSettings){
    return;
  }

  if (!array_key_exists('site', $siteSettings) ||
      !array_key_exists('site', $siteSettings['site']) ||
      !array_key_exists('field_article_image', $siteSettings['site']['site'])
    ) {
    return;
  }

  $mediaStorage = \Drupal::entityTypeManager()
    ->getStorage('media');

  $media = $mediaStorage->load($siteSettings['site']['site']['field_article_image']);

  if (!$media) {
    return;
  }

  $node->field_image = $media;
}
