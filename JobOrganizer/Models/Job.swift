//
//  JOb.swift
//  JobOrganizer
//
//  Created by Jane Zhu on 2/25/19.
//  Copyright © 2019 JaneZhu. All rights reserved.
//

import Foundation

enum ApplicationPhase: String {
    case interested = "Interested"
    case applicationSent = "Applcation Sent"
    case phoneInterview = "Phone Interview"
    case inPersonInterview = "In-Person Interview"
    case whiteboarding = "Whiteboarding"
    case jobOffer = "Job Offer"
    case rejected = "Rejected"
    case itsComplicated = "It's Complicated"
    
    static let applicationPhasePickerData = [ ApplicationPhase.interested.rawValue, ApplicationPhase.applicationSent.rawValue, ApplicationPhase.phoneInterview.rawValue, ApplicationPhase.inPersonInterview.rawValue, ApplicationPhase.whiteboarding.rawValue, ApplicationPhase.jobOffer.rawValue, ApplicationPhase.rejected.rawValue, ApplicationPhase.itsComplicated.rawValue]
}

struct Job {
    var company: String
    var position: String
    var jobPostingURL: String
    var notes: String
    var applicationPhase: String
    var dateCreated: String
    var lastUpdated: String
    var contactPersonName: String
    var contactPersonNumber: String
    var contactPersonEmail: String
    var userID: String
    let dbReferenceDocumentId: String

    init(company: String, position: String, jobPostingURL: String, notes: String, applicationPhase: String, dateCreated: String, lastUpdated: String, contactPersonName: String, contactPersonNumber: String, contactPersonEmail: String, userID: String, dbReferenceDocumentId: String) {
        self.company = company
        self.position = position
        self.jobPostingURL = jobPostingURL
        self.notes = notes
        self.applicationPhase = applicationPhase
        self.dateCreated = dateCreated
        self.lastUpdated = lastUpdated
        self.contactPersonName = contactPersonName
        self.contactPersonNumber = contactPersonNumber
        self.contactPersonEmail = contactPersonEmail
        self.userID = userID
        self.dbReferenceDocumentId = dbReferenceDocumentId
    }
    
    init(dict: [String: String]) {
        self.company = dict[JobDictionaryKeys.company] ?? "no company name"
        self.position = dict[JobDictionaryKeys.position] ?? "no position"
        self.jobPostingURL = dict[JobDictionaryKeys.jobPostingURL] ?? "no URL"
        self.notes = dict[JobDictionaryKeys.notes] ?? "no notes"
        self.applicationPhase = dict[JobDictionaryKeys.applicationPhase] ?? "unknown phase"
        self.dateCreated = dict[JobDictionaryKeys.dateCreated] ?? "unkonwn creation date"
        self.lastUpdated = dict[JobDictionaryKeys.lastUpdated] ?? "unknown last updated date"
        self.contactPersonName = dict[JobDictionaryKeys.contactPersonName] ?? "no contact person"
        self.contactPersonNumber = dict[JobDictionaryKeys.contactPersonNumber] ?? "no contact person number"
        self.contactPersonEmail = dict[JobDictionaryKeys.contactPersonEmail] ?? "no contact person email"
        self.userID = dict[JobDictionaryKeys.userID] ?? "no user ID"
        self.dbReferenceDocumentId = dict["dbReferenceDocumentId"] ?? "no dbReference"
    }
    

}


struct JobDictionaryKeys {
    static let company = "Company"
    static let position = "Position"
    static let jobPostingURL = "Job Posting URL"
    static let notes = "Notes"
    static let applicationPhase = "Application Phase"
    static let dateCreated = "Date Created"
    static let lastUpdated = "Last Updated"
    static let contactPersonName = "Contact Person Name"
    static let contactPersonNumber = "Contact Person Number"
    static let contactPersonEmail = "Contact Person Email"
    static let userID = "User ID"
}
