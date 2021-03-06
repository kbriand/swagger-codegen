//
// Order.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Order: Codable {

    public enum Status: String, Codable { 
        case placed = "placed"
        case approved = "approved"
        case delivered = "delivered"
    }
    public var _id: Int64?
    public var _idNum: NSNumber? {
        get {
            return _id.map({ return NSNumber(value: $0) })
        }
    }
    public var petId: Int64?
    public var petIdNum: NSNumber? {
        get {
            return petId.map({ return NSNumber(value: $0) })
        }
    }
    public var quantity: Int?
    public var quantityNum: NSNumber? {
        get {
            return quantity.map({ return NSNumber(value: $0) })
        }
    }
    public var shipDate: Date?
    /** Order Status */
    public var status: Status?
    public var complete: Bool?
    public var completeNum: NSNumber? {
        get {
            return complete.map({ return NSNumber(value: $0) })
        }
    }

    public init(_id: Int64?, petId: Int64?, quantity: Int?, shipDate: Date?, status: Status?, complete: Bool?) {
        self._id = _id
        self.petId = petId
        self.quantity = quantity
        self.shipDate = shipDate
        self.status = status
        self.complete = complete
    }


    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case petId
        case quantity
        case shipDate
        case status
        case complete
    }


}

