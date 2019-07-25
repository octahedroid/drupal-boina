Drupal Boina Distribution
--
Drupal 8 has plenty of contributed modules to help you building a headless/decoupled web application. However, getting all the those setup correctly can be a daunting task.

The Drupal Boina Distribution, comes with everything you need (code, configuration and even default content), all that will be added to your site during the installation process so you can start working with the Boina Gatsby Starter immediately.

## Project dependencies
* [git](https://git-scm.com/)
* [docker](https://www.docker.com/)
* [ahoy (ver 2)](https://github.com/ahoy-cli/ahoy)

## Project setup

### Clone repository
```
git clone git@github.com:weknowinc/drupal-boina.git
```

### Copy .env file
```
cp .env.dist .env
```

### Add hostname entry in your /etc/hosts file
```
127.0.0.1    drupal-boina.develop
```

### Start containers
```
ahoy up
```

### Install Composer dependencies
```
ahoy composer install
```

### Install Boina distribution
```
ahoy drupal boina:install
```
```
