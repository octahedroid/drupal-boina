# Drupal Boina Distribution

Drupal 8 has plenty of contributed modules to help you building a headless/decoupled web application. However, getting all the those setup correctly can be a daunting task.

The Drupal Boina Distribution, comes with everything you need (code, configuration and even default content), all that will be added to your site during the installation process so you can start working with the Boina Gatsby Starter immediately.

## Project dependencies

* [git](https://git-scm.com/)
* [docker](https://www.docker.com/)
* [ahoy (ver 2)](https://github.com/ahoy-cli/ahoy)

## Project setup

### Clone repository

```bash
git clone git@github.com:weknowinc/drupal-boina.git
```

### Copy .env file

```bash
cp .env.dist .env
```

### Add hostname entry in your /etc/hosts file

```bash
127.0.0.1    drupal-boina.develop
```

### Start containers

```bash
ahoy up
```

### Install Composer dependencies

```bash
ahoy composer install
```

### Install Boina distribution

```bash

ahoy drupal boina:install
```

### Login site

Open browser and point to `http://drupal-boina.develop/user/login` and enter user/passwrod as `admin/admin` 

> NOTE: Make sure you update admin user using a strong password.

### Reset password

```bash
ahoy drupal user:password:reset admin [ENTER_YOUR_DESIRE_PASSWORD]
```

### Generate a one time login link

```bash
ahoy drupal user:login:url admin
```
