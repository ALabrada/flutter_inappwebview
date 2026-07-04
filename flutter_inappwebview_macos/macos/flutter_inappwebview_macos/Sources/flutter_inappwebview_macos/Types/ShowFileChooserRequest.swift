import Foundation
import WebKit

public class ShowFileChooserRequest: NSObject {
    var acceptTypes: [String]
    var filenameHint: String?
    var isCaptureEnabled: Bool
    var mode: ShowFileChooserRequestMode
    
    public init(acceptTypes: [String] = [], filenameHint: String? = nil, isCaptureEnabled: Bool = false, mode: ShowFileChooserRequestMode = .open) {
        self.acceptTypes = acceptTypes
        self.filenameHint = filenameHint
        self.isCaptureEnabled = isCaptureEnabled
        self.mode = mode
    }
    
    public func toMap () -> [String:Any?] {
        return [
            "acceptTypes": acceptTypes,
            "filenameHint": filenameHint,
            "isCaptureEnabled": isCaptureEnabled,
            "mode": mode.rawValue
        ]
    }
}

public enum ShowFileChooserRequestMode: Int {
    case open = 0
    case openMultiple = 1
    case openFolder = 2
    case save = 3
}
