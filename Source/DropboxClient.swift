
/* Autogenerated. Do not edit. */

import Foundation
import Alamofire

public class DropboxClient: DropboxTransportClient {
    /// Shared instance for convenience
    public static var sharedClient: DropboxClient!
    /// Routes within the files namespace. See FilesRoutes for details.
    public var files: FilesRoutes!
    /// Routes within the sharing namespace. See SharingRoutes for details.
    public var sharing: SharingRoutes!
    /// Routes within the users namespace. See UsersRoutes for details.
    public var users: UsersRoutes!

    public override init(accessToken: DropboxAccessToken, selectUser: String? = nil, baseHosts: [String: String]? = nil, userAgent: String? = nil) {
        super.init(accessToken: accessToken, selectUser: selectUser, baseHosts: baseHosts, userAgent: userAgent)
        self.files = FilesRoutes(client: self)
        self.sharing = SharingRoutes(client: self)
        self.users = UsersRoutes(client: self)
    }
}
