# Getting Started

## Development Environment and CAP-Project

### Creating a CAP-Based Service

- create new folder `risk-management`
- run `cds init` inside this folder
- create new file `db/schema.cds`
- insert snippet from "Task 2: Add a Data Model to the project"
- create new file `srv/risk-service.cds`
- insert snippet from "Task 3: Add a Service to the Project"
- create new file `db/data/riskmanagement-Risks.csv`
- insert mock data from "Task 4: Provide Mock Data for Service"
- create new file `db/data/riskmanagement-Mitigations.csv`
- insert mock data from "Task 4: Provide Mock Data for Service"

## User Interface and Business Logic

### Generating a User Interface

- create fiori list report from "Task 1: Generate the UI With an SAP Fiori Elements Template"
- create new file `app/common.cds` and fill in the code snippet from "Task 2: Modify the UI With OData Annotations
- adjust file `app/services.cds` with snippet from same task
- adjust file `app/risks/annotations.cds` with snippet from same task

### Adding Custom Business Logic

- create new file `srv/risk-service.js`
- fill in snippet from "Task 1: Add Custom Code"

## External Services

### Adding an External Service

- navigate to [Business Partner (A2X)](https://api.sap.com/api/API_BUSINESS_PARTNER/overview)
- download the EDMX API specification
- move the file `API_BUSINESS_PARTNER.edmx` onto the folder `srv` to import the external service (**NOTE**: the service must be started with `cds watch`)
- copy the `api` key and insert into new file `.env` as

```env
apikey=<api key from api hub>
```

- adjust the file `db/schema.cds` with the snippet **1b** from "Task 1: Use the External API in the Project
- adjust the file `srv/risk-service.cds` with the snippet **1d**
- adjust the `cds.requires` section in the file `package.json` like described under **1h**
- adjust the file `srv/risk-service.js` like described in **1i**
- adjust the file `db/schema.cds` with the snippet at **1b** from "Task 3: Consume the External Service in Your UI Application
- replace the code in file `db/data/riskmanagement-Risks.csv` with snippet at **1d**
- adjust file `app/common.cds` with changes from snippet at **1b** from "Task 4: Add the Business Partner Field to the UI"
- adjust file `app/risks/annotations.cds` with snippet at **1c**
- adjust file `srv/risk-service.js` with snippet at **1f**
