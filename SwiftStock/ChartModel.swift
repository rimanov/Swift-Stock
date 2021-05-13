//
//  ChartModel.swift
//  SwiftStock
//
//  Created by Apple on 12/05/2021.
//

import Foundation


// MARK: - ChartResponse
struct ChartResponse: Codable {
    let chart: ChartModel?
}

// MARK: - Chart
struct ChartModel: Codable {
    let result: [Result]?
    let error: JSONNull?
}

// MARK: - Result
struct Result: Codable {
    let meta: Meta1?
    let timestamp: [Int]?
    let indicators: Indicators?
}

// MARK: - Indicators
struct Indicators: Codable {
    let quote: [Quote]?
}

// MARK: - Quote
struct Quote: Codable {
    let high, close, low: [Double]?
    let volume: [Int]?
    let quoteOpen: [Double]?

    enum CodingKeys: String, CodingKey {
        case high, close, low, volume
        case quoteOpen = "open"
    }
}

// MARK: - Meta
struct Meta1: Codable {
    let currency, symbol, exchangeName, instrumentType: String?
    let firstTradeDate, regularMarketTime, gmtoffset: Int?
    let timezone, exchangeTimezoneName: String?
    let regularMarketPrice, chartPreviousClose, previousClose: Double?
    let scale, priceHint: Int?
    let currentTradingPeriod: CurrentTradingPeriod?
    let tradingPeriods: TradingPeriods?
    let dataGranularity, range: String?
    let validRanges: [String]?
}

// MARK: - CurrentTradingPeriod
struct CurrentTradingPeriod: Codable {
    let pre, regular, post: Post?
}

// MARK: - Post
struct Post: Codable {
    let timezone: String?
    let start, end, gmtoffset: Int?
}

// MARK: - TradingPeriods
struct TradingPeriods: Codable {
    let pre, post, regular: [[Post]]?
}

