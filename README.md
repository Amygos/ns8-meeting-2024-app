# ns8-meeting-2024-app

This is a module for [NethServer 8](https://github.com/NethServer/ns8-core).

## Install

Instantiate the module with:

    add-module ghcr.io/amygos/meeting-2024-app:latest 1

The output of the command will return the instance name.
Output example:

    {"module_id": "meeting-2024-app1", "image_name": "meeting-2024-app", "image_url": "ghcr.io/amygos/meeting-2024-app:latest"}

## Configure

Let's assume that the meeting-2024-app instance is named `meeting-2024-app1`.

Launch `configure-module`, by setting the following parameters:
- `domain`: The domain name to configure
- `timezone`: The timezone to configure

Example:

    api-cli run module/meeting-2024-app1/configure-module --data '{"domain": "example.com", "timezone": "UTC"}'

The above command will:
- start and configure the ns8-meeting-2024-app instance
- Set the APP_URL environment variable
- Configure Traefik to route the request to the module instance using the domain configured by the user
- Set the timezone into APP_TIMEZONE environment variable if 'timezone' is present in the request

Send a test HTTP request to the ns8-meeting-2024-app backend service:

    curl https://<domain>/shopping-list/

## Smarthost setting discovery

Some configuration settings, like the smarthost setup, are not part of the
`configure-module` action input: they are discovered by looking at some
Redis keys.  To ensure the module is always up-to-date with the
centralized [smarthost
setup](https://nethserver.github.io/ns8-core/core/smarthost/) every time
ns8-meeting-2024-app starts, the command `bin/discover-smarthost` runs and refreshes
the `state/smarthost.env` file with fresh values from Redis.

Furthermore if smarthost setup is changed when ns8-meeting-2024-app is already
running, the event handler `events/smarthost-changed/10reload_services`
restarts the main module service.

See also the `systemd/user/ns8-meeting-2024-app.service` file.

## Uninstall

To uninstall the instance:

    remove-module --no-preserve meeting-2024-app1

## Testing

Test the module using the `test-module.sh` script:


    ./test-module.sh <NODE_ADDR> ghcr.io/amygos/meeting-2024-app:latest

The tests are made using [Robot Framework](https://robotframework.org/)

## UI translation

Translated with [Weblate](https://hosted.weblate.org/projects/ns8/).

To setup the translation process:

- add [GitHub Weblate app](https://docs.weblate.org/en/latest/admin/continuous.html#github-setup) to your repository
- add your repository to [hosted.weblate.org]((https://hosted.weblate.org) or ask a NethServer developer to add it to ns8 Weblate project
