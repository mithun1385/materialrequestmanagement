using { materialrequest as db } from '../db/schema';

service MyService {

    entity Employess as projection on db.Employees;
    entity Materials as projection on db.Materials;
    entity MaterialRequests as projection on db.MaterialRequests;
    entity MaterialRequestItems as projection on db.MaterialRequestItems;

}
