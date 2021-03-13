//
//  Server.swift
//  FilaLED-Controller
//
//  Created by Wangyiwei on 2021/3/13.
//

import Foundation

class Server: NSObject {
    static let shared = Server()
    private var netLock = false
    private var address = "http://192.168.1.32:80"
    
    public var locked: Bool {netLock}
    
    enum NetworkProtocal {
        case http
        case https
        case ignored
    }
    
    func setAddress(_ add: String, protocal: NetworkProtocal = .ignored, port: Int = 80) {
        var p: String = ""
        if protocal == .http {p = "http://"}
        else if protocal == .https {p = "https://"}
        address = "\(p)\(add):\(port)"
    }
    
    func get(_ cmd: String, parameters: [String: Any]) {
        //
    }
    
    func post(_ cmd: String, data: Any) {
        //
    }
}
