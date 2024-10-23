# configure-module input Schema

```txt
http://schema.nethserver.org/meeting-2024-app/configure-module-input.json
```

Configure meeting-2024-app

| Abstract            | Extensible | Status         | Identifiable | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                         |
| :------------------ | :--------- | :------------- | :----------- | :---------------- | :-------------------- | :------------------ | :------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | No           | Forbidden         | Allowed               | none                | [configure-module-input.json](meeting-2024-app/configure-module-input.json "open original schema") |

## configure-module input Type

`object` ([configure-module input](configure-module-input.md))

## configure-module input Examples

```json
{
  "domain": "example.com",
  "timezone": "UTC"
}
```

# configure-module input Properties

| Property              | Type     | Required | Nullable       | Defined by                                                                                                                                                               |
| :-------------------- | :------- | :------- | :------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [domain](#domain)     | `string` | Required | cannot be null | [configure-module input](configure-module-input-properties-domain.md "http://schema.nethserver.org/meeting-2024-app/configure-module-input.json#/properties/domain")     |
| [timezone](#timezone) | `string` | Optional | cannot be null | [configure-module input](configure-module-input-properties-timezone.md "http://schema.nethserver.org/meeting-2024-app/configure-module-input.json#/properties/timezone") |

## domain

The domain name to configure

`domain`

* is required

* Type: `string`

* cannot be null

* defined in: [configure-module input](configure-module-input-properties-domain.md "http://schema.nethserver.org/meeting-2024-app/configure-module-input.json#/properties/domain")

### domain Type

`string`

### domain Constraints

**(international) hostname**: the string must be an (IDN) hostname, according to [RFC 5890, section 2.3.2.3](https://tools.ietf.org/html/rfc5890 "check the specification")

### domain Examples

```json
"example.com"
```

```json
"sub.example.com"
```

## timezone

The timezone to configure

`timezone`

* is optional

* Type: `string`

* cannot be null

* defined in: [configure-module input](configure-module-input-properties-timezone.md "http://schema.nethserver.org/meeting-2024-app/configure-module-input.json#/properties/timezone")

### timezone Type

`string`

### timezone Examples

```json
"UTC"
```

```json
"Europe/Rome"
```
