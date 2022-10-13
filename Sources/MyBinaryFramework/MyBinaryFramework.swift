import Valet

public struct MyBinaryFramework {
    private static let shared = MyBinaryFramework()

    let valet = Valet.valet(with: Identifier(nonEmpty: "MyBinaryFramework")!, accessibility: .whenUnlocked)

    public static func save(_ string: String, forKey key: String) throws {
        try shared.valet.setString(string, forKey: key)
    }

    public static func load(forKey key: String) throws -> String {
        try shared.valet.string(forKey: key)
    }
}
