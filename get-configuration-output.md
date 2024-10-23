# get-configuration output Schema

```txt
http://schema.nethserver.org/meeting-2024-app/get-configuration-output.json
```

Get meeting-2024-app configuration

| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                             |
| :------------------ | :--------- | :------------- | :----------- | :---------------- | :-------------------- | :------------------ | :----------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [get-configuration-output.json](meeting-2024-app/get-configuration-output.json "open original schema") |

## get-configuration output Type

`object` ([get-configuration output](get-configuration-output.md))

## get-configuration output Examples

```json
{
  "domain": "example.com",
  "timezone": "UTC"
}
```

# get-configuration output Properties

| Property              | Type     | Required | Nullable       | Defined by                                                                                                                                                                     |
| :-------------------- | :------- | :------- | :------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [domain](#domain)     | `string` | Required | cannot be null | [get-configuration output](get-configuration-output-properties-domain.md "http://schema.nethserver.org/meeting-2024-app/get-configuration-output.json#/properties/domain")     |
| [timezone](#timezone) | `string` | Required | cannot be null | [get-configuration output](get-configuration-output-properties-timezone.md "http://schema.nethserver.org/meeting-2024-app/get-configuration-output.json#/properties/timezone") |

## domain

The domain of the application

`domain`

* is required

* Type: `string`

* cannot be null

* defined in: [get-configuration output](get-configuration-output-properties-domain.md "http://schema.nethserver.org/meeting-2024-app/get-configuration-output.json#/properties/domain")

### domain Type

`string`

### domain Examples

```json
"example.com"
```

## timezone

The timezone of the application

`timezone`

* is required

* Type: `string`

* cannot be null

* defined in: [get-configuration output](get-configuration-output-properties-timezone.md "http://schema.nethserver.org/meeting-2024-app/get-configuration-output.json#/properties/timezone")

### timezone Type

`string`

### timezone Examples

```json
"UTC"
```

```json
"Europe/Rome"
```
