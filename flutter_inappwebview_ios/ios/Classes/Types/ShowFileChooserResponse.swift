import Foundation

public class ShowFileChooserResponse: NSObject {
    var filePaths: [String]?
    var handledByClient: Bool
    
    public init(filePaths: [String]? = nil, handledByClient: Bool = false) {
        self.filePaths = filePaths
        self.handledByClient = handledByClient
    }
    
    public static func fromMap(map: [String:Any?]?) -> ShowFileChooserResponse? {
        guard let map = map else {
            return nil
        }
        let filePaths = map["filePaths"] as? [String]
        let handled = map["handledByClient"] as? Bool
        return ShowFileChooserResponse(filePaths: filePaths, handledByClient: handled ?? false)
    }
}
