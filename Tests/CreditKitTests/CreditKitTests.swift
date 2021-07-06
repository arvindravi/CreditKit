import XCTest
@testable import CreditKit


final class CreditKitTests: XCTestCase {
    
    private var stubbedURLConfiguration: URLSessionConfiguration = {
        let configuration = URLSessionConfiguration.ephemeral
        configuration.protocolClasses = [URLProtocolStub.self]
        return configuration
    }()
    
    private lazy var mockURLSession = URLSession(configuration: stubbedURLConfiguration)
    
    private var subject: CreditKit!
    
    override func setUp() {
        super.setUp()
        subject = CreditKit(session: mockURLSession)
    }
    
    func test_fetchCreditInformation() {
        let mockCreditInformationURL = URL(string: "https://5lfoiyb0b3.execute-api.us-west-2.amazonaws.com/prod/mockcredit/values")!
        let mockCreditInformationResponse = CreditInformationRawResponse.mock
        
        URLProtocolStub.testURLs = [
            mockCreditInformationURL: try! mockCreditInformationResponse.jsonData()
        ]
        
        let expectation = expectation(description: "Fetch Credit Score")
        
        subject.fetchCreditScore { result in
            switch result {
            case .success(let creditInformation):
                XCTAssertEqual(creditInformation.creditReportInfo.score, 514)
                expectation.fulfill()
            case .failure(let error):
                print(error)
                XCTFail()
            }
        }
        
        waitForExpectations(timeout: 0.1)
    }
}
