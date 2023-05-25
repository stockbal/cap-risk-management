using {riskmanagement as db} from '../db/schema';

@requires: 'ApiAccess'
service ApiService {
  entity Risks as select * from db.Risks;
}
