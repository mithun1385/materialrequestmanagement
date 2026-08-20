namespace materialrequest;

using { cuid } from '@sap/cds/common';

entity Employees : cuid {

    name       : String(100);
    email      : String(100);
    department : String(50);

}

entity Materials : cuid {

    materialName : String(100);
    category     : String(50);
    unit         : String(20);
    unitPrice    : Decimal(10,2);

}

entity MaterialRequests : cuid {

    requestDate : Date;
    status      : String(30);
    priority    : String(30);
    reason      : String(255);

    employee : Association to Employees;

    requestItems : Association to many MaterialRequestItems
        on requestItems.materialRequest = $self;
}

entity MaterialRequestItems : cuid {

    requestedQuantity : Integer;
    approvedQuantity  : Integer;

    materialRequest : Association to MaterialRequests;
    material        : Association to Materials;

}