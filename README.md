
# HestiaCP-templates

NGINX web templates for HestiaCP (Wordpress, etc).

All files must be put in the HestiaCP template folder which is usually in (nginx):
/usr/local/hestia/data/templates/web/nginx/php-fpm

Afterwards, you can select the template in the HestiaCP control panel 

## Template Reference

| File | Application | Description | Reference |
| ---- | ----------- | ------------|---------- |
| wordpress-webpc | Converter for Media | HestiaCP Template for the **Converter for Media** WordPress plugin | [Mattplugins.com website](https://mattplugins.com/docs/nginx-configuration) |
| nodeproject | Generic Node project template | HestiaCP Template for a generic NodeJS project. It takes for granted that the Node server port is 4000, your api is at /api and there is a build folder in your public_html | None |

