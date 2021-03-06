import Foundation


// MARK: - WordPress.com Site Info
//
public class WordPressComSiteInfo {

    /// Site's Name!
    ///
    public let name: String

    /// Tagline.
    ///
    public let tagline: String

    /// Public URL.
    ///
    public let url: String

    /// Indicates if Jetpack is available, or not,
    ///
    public let hasJetpack: Bool

    /// URL of the Site's Blavatar.
    ///
    public let icon: String



    /// Initializes the current SiteInfo instance with a raw dictionary.
    ///
    public init(remote: [AnyHashable: Any]) {
        name        = remote["name"] as? String         ?? ""
        tagline     = remote["description"] as? String  ?? ""
        url         = remote["URL"] as? String          ?? ""
        hasJetpack  = remote["jetpack"] as? Bool        ?? false
        icon        = remote["icon.img"] as? String     ?? ""
    }
}
