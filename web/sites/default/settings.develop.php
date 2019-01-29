<?php

# Turn off assets optimized
$config['system.performance']['css']['preprocess'] = FALSE;
$config['system.performance']['js']['preprocess'] = FALSE;

# kint
// require_once DRUPAL_ROOT . '/modules/contrib/devel/kint/kint/Kint.class.php';
// Kint::$maxLevels = 5;

# Disable cache
$settings['cache']['bins']['render'] = 'cache.backend.null';
$settings['cache']['bins']['dynamic_page_cache'] = 'cache.backend.null';

