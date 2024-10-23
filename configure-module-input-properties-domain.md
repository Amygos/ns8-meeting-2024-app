# Untitled string in configure-module input Schema

```txt
http://schema.nethserver.org/meeting-2024-app/configure-module-input.json#/properties/domain
```

The domain name to configure

| Abstract            | Extensible | Status         | Identifiable            | Custom Properties | Additional Properties | Access Restrictions | Defined In                                                                                           |
| :------------------ | :--------- | :------------- | :---------------------- | :---------------- | :-------------------- | :------------------ | :--------------------------------------------------------------------------------------------------- |
| Can be instantiated | No         | Unknown status | Unknown identifiability | Forbidden         | Allowed               | none                | [configure-module-input.json\*](meeting-2024-app/configure-module-input.json "open original schema") |

## domain Type

`string`

## domain Constraints

**(international) hostname**: the string must be an (IDN) hostname, according to [RFC 5890, section 2.3.2.3](https://tools.ietf.org/html/rfc5890 "check the specification")

## domain Examples

```json
"example.com"
```

```json
"sub.example.com"
```
