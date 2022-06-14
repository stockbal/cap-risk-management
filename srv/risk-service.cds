using {riskmanagement as rm} from '../db/schema';

/**
 * For serving end users
 */
service RiskService @(path : 'service/risk') {
    entity Risks            as projection on rm.Risks;
    annotate Risks with @odata.draft.enabled;
    entity Mitigations      as projection on rm.Mitigations;
    annotate Mitigations with @odata.draft.enabled;
    entity BusinessPartners as projection on rm.BusinessPartners;
}
