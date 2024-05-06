namespace riskmanagement;

using {
    managed,
    cuid
} from '@sap/cds/common';

entity Risks : cuid, managed {
    title       : String(100);
    owner       : String;
    prio        : String(5);
    descr       : String;
    miti        : Association to Mitigations;
    impact      : Integer;
    criticality : Integer;
}

entity Mitigations : cuid, managed {
    descr    : String;
    owner    : String;
    timeline : String;
    risks    : Association to many Risks
                   on risks.miti = $self;
}
