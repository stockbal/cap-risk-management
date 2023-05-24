# Providing service broker for API service

## Deployment

### Generate Broker Credentials

1. Navigate into folder `/broker`
2. Run command `npm i` in terminal
3. Run command `npm run init` in terminal

### Create `.mtaext` file

1. Copy file `/config/free-tier-and-trial.mtaext` to `/trial-private.mtaext`
2. Copy the hashed broker credentials from file `/broker/broker_pwd-private.txt`

   ```txt
   Plaintext password:
   49sdfl4934
   Hashed credentials:
   sha256:343535345
   ```

   **Note**: The line after *Hashed credentials* must be copied from first to last character.

### Build the `mtar` file

Run command `npm run build` in terminal.

### Deploy to SAP BTP

1. Login to Cloud Foundry with `cf l`
2. Target correct cloud foundry org and space (e.g. `cf t -o <org-name> -s <space-name>`)
3. Run command `npm run deploy`

## Register API broker after deployment

See [here](./broker/README.md).
