import Foundation

public protocol CreditKitType: AnyObject {
    func fetchCreditInformation(result: @escaping CreditKit.CreditInformationResult)
}

public class CreditKit: NSObject, CreditKitType {
    
    // MARK: - Properties -
    
    // MARK: - Public -
    
    public static let shared: CreditKitType = CreditKit(session: .shared)
    
    // MARK: - Private -
    
    private let session: URLSession
    private let decoder: JSONDecoder = .init()
    
    // MARK: - Custom Types -
    
    public typealias CreditInformationResult = (Result<CreditInformationRawResponse, Error>) -> Void
    
    public enum Error: LocalizedError {
        case invalidResponse
        case failedToDecodeData
        
        public var errorDescription: String? {
            switch self {
            case .invalidResponse: return "Error Fetching Data: Invalid Response."
            case .failedToDecodeData: return "Error Fetching Data: Failed to decode data."
            }
        }
    }
    
    private enum Endpoint {
        static let baseURL = URL(string: "https://5lfoiyb0b3.execute-api.us-west-2.amazonaws.com/")!
        
        case creditInformation
        
        var url: URL {
            switch self {
            case .creditInformation: return Endpoint.baseURL.appendingPathComponent("prod/mockcredit/values")
            }
        }
    }
    
    // MARK: - Initialiser
    
    init(session: URLSession) {
        self.session = session
    }
    
    // MARK: - Interface -
    
    // MARK: - Public -

    public func fetchCreditInformation(result: @escaping CreditInformationResult) {
        session.dataTask(with: Endpoint.creditInformation.url) { data, response, error in
            guard let data = data else {
                self.finish { result(.failure(.invalidResponse)) }
                return
            }

            self.handleData(data: data, result: result)
        }.resume()
    }
        
    // MARK: - Private -
    
    private func handleData(data: Data?, result: @escaping CreditInformationResult) {
        guard let data = data else {
            finish { result(.failure(.failedToDecodeData)) }
            return
        }
        
        guard let decoded = try? decoder.decode(CreditInformationRawResponse.self, from: data) else {
            finish { result(.failure(.failedToDecodeData)) }
            return
        }
        
        finish { result(.success(decoded)) }
    }
    
    private func finish(callback: @escaping () -> ()) {
        DispatchQueue.main.async {
            callback()
        }
    }
}
