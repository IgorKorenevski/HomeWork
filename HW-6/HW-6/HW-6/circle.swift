//
//  circle.swift
//  HW-6
//
//  Created by siflaim on 5.06.22.
//
//Сделать перемещение кружочка через enum, кружок не касается стен, при невозможности перемещения в label сообщение об ошибке, при перемещении в label направление перемещения.

import Foundation

enum RequestState {
    case initial
    case inProgress
    case completed (result: Bool)
}
class Request {
    var state: RequestState
    
    init() {
        state = RequestState.initial
    }
    
    func sendRequest() {
//        Send request logic
        
        state = .inProgress
    }
    
    func requestDidFinish(result: Bool) {
        state = .completed(result: result)
    }
    
    func processRequestState(request: Request) {
        let requestState = request.state
        switch requestState {
        case .initial:
            print ("Request just created")
        case .inProgress:
            print("Request is in progress")
        case .completed(let result):
            if result {
            print("Request is completed with error")
            } else {
                print("Requst is completed with error")
            }
        }
    }
}
