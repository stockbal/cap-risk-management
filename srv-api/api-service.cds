using {riskmanagement as db} from '../db/schema';

@requires: 'RiskViewer'
service ApiService {
  entity Risks as projection on db.Risks;
}
