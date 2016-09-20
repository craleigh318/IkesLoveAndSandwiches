//
//  Observable.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-14.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

class Observable<T> {
    weak var listener: PObserver?
    
    init(listener: PObserver) {
        self.listener = listener
    }
}
