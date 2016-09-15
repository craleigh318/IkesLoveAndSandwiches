//
//  PObserver.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-14.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

protocol PObserver: class {
    associatedtype T
    func observableChanged(observable: Observable<T>)
}