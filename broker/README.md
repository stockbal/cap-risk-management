# Broker module

## Register broker

```sh
cf create-service-broker my-broker-name broker-user <plain-broker-password> <broker-url> --space-scoped
```

- The `plain-broker-password` can be taken from the file `broker_pwd-private.txt`.
- The `broker-url` can be read from e.g. the SAP BTP cockpit by navigating to the broker application in the space where it was deployed.
