//
//  StockApiModel.swift
//  SwiftStock
//
//  Created by Apple on 11/05/2021.
//

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let stockResponse = try? newJSONDecoder().decode(StockResponse.self, from: jsonData)

import Foundation

// MARK: - StockResponse
class StockResponse: Codable {
//    let financialsTemplate: FinancialsTemplate?
//    let cashflowStatementHistory: CashflowStatementHistory?
//    let balanceSheetHistoryQuarterly: BalanceSheetHistory?
//    let earnings: Earnings?
    let price: Price?
//    let incomeStatementHistoryQuarterly, incomeStatementHistory: IncomeStatementHistory?
//    let balanceSheetHistory: BalanceSheetHistory?
//    let cashflowStatementHistoryQuarterly: CashflowStatementHistory?
//    let quoteType: QuoteType?
//    let summaryDetail: SummaryDetail?
//    let symbol: String?
//    let pageViews: PageViews?
//    let timeSeries: TimeSeries?
//    let meta: Meta?
//    let loading: Bool?
//    let errorList: [JSONAny]?
    
    
    init(price: Price?) {
        self.price = price
    }

//    init(financialsTemplate: FinancialsTemplate?, cashflowStatementHistory: CashflowStatementHistory?, balanceSheetHistoryQuarterly: BalanceSheetHistory?, earnings: Earnings?, price: Price?, incomeStatementHistoryQuarterly: IncomeStatementHistory?, incomeStatementHistory: IncomeStatementHistory?, balanceSheetHistory: BalanceSheetHistory?, cashflowStatementHistoryQuarterly: CashflowStatementHistory?, quoteType: QuoteType?, summaryDetail: SummaryDetail?, symbol: String?, pageViews: PageViews?, timeSeries: TimeSeries?, meta: Meta?, loading: Bool?, errorList: [JSONAny]?) {
//        self.financialsTemplate = financialsTemplate
//        self.cashflowStatementHistory = cashflowStatementHistory
//        self.balanceSheetHistoryQuarterly = balanceSheetHistoryQuarterly
//        self.earnings = earnings
//        self.price = price
//        self.incomeStatementHistoryQuarterly = incomeStatementHistoryQuarterly
//        self.incomeStatementHistory = incomeStatementHistory
//        self.balanceSheetHistory = balanceSheetHistory
//        self.cashflowStatementHistoryQuarterly = cashflowStatementHistoryQuarterly
//        self.quoteType = quoteType
//        self.summaryDetail = summaryDetail
//        self.symbol = symbol
//        self.pageViews = pageViews
//        self.timeSeries = timeSeries
//        self.meta = meta
//        self.loading = loading
//        self.errorList = errorList
//    }
}

// MARK: - BalanceSheetHistory
class BalanceSheetHistory: Codable {
    let balanceSheetStatements: [BalanceSheetStatement]?
    let maxAge: Int?

    init(balanceSheetStatements: [BalanceSheetStatement]?, maxAge: Int?) {
        self.balanceSheetStatements = balanceSheetStatements
        self.maxAge = maxAge
    }
}

// MARK: - BalanceSheetStatement
class BalanceSheetStatement: Codable {
    let intangibleAssets, capitalSurplus, totalLiab, totalStockholderEquity: AverageDailyVolume10Day?
    let minorityInterest, otherCurrentLiab, totalAssets: AverageDailyVolume10Day?
    let endDate: PostMarketChange?
    let commonStock, otherCurrentAssets, retainedEarnings, otherLiab: AverageDailyVolume10Day?
    let goodWill, treasuryStock, otherAssets, cash: AverageDailyVolume10Day?
    let totalCurrentLiabilities, shortLongTermDebt, otherStockholderEquity, propertyPlantEquipment: AverageDailyVolume10Day?
    let totalCurrentAssets, netTangibleAssets, netReceivables: AverageDailyVolume10Day?
    let maxAge: Int?
    let longTermDebt, inventory, accountsPayable, longTermInvestments: AverageDailyVolume10Day?

    init(intangibleAssets: AverageDailyVolume10Day?, capitalSurplus: AverageDailyVolume10Day?, totalLiab: AverageDailyVolume10Day?, totalStockholderEquity: AverageDailyVolume10Day?, minorityInterest: AverageDailyVolume10Day?, otherCurrentLiab: AverageDailyVolume10Day?, totalAssets: AverageDailyVolume10Day?, endDate: PostMarketChange?, commonStock: AverageDailyVolume10Day?, otherCurrentAssets: AverageDailyVolume10Day?, retainedEarnings: AverageDailyVolume10Day?, otherLiab: AverageDailyVolume10Day?, goodWill: AverageDailyVolume10Day?, treasuryStock: AverageDailyVolume10Day?, otherAssets: AverageDailyVolume10Day?, cash: AverageDailyVolume10Day?, totalCurrentLiabilities: AverageDailyVolume10Day?, shortLongTermDebt: AverageDailyVolume10Day?, otherStockholderEquity: AverageDailyVolume10Day?, propertyPlantEquipment: AverageDailyVolume10Day?, totalCurrentAssets: AverageDailyVolume10Day?, netTangibleAssets: AverageDailyVolume10Day?, netReceivables: AverageDailyVolume10Day?, maxAge: Int?, longTermDebt: AverageDailyVolume10Day?, inventory: AverageDailyVolume10Day?, accountsPayable: AverageDailyVolume10Day?, longTermInvestments: AverageDailyVolume10Day?) {
        self.intangibleAssets = intangibleAssets
        self.capitalSurplus = capitalSurplus
        self.totalLiab = totalLiab
        self.totalStockholderEquity = totalStockholderEquity
        self.minorityInterest = minorityInterest
        self.otherCurrentLiab = otherCurrentLiab
        self.totalAssets = totalAssets
        self.endDate = endDate
        self.commonStock = commonStock
        self.otherCurrentAssets = otherCurrentAssets
        self.retainedEarnings = retainedEarnings
        self.otherLiab = otherLiab
        self.goodWill = goodWill
        self.treasuryStock = treasuryStock
        self.otherAssets = otherAssets
        self.cash = cash
        self.totalCurrentLiabilities = totalCurrentLiabilities
        self.shortLongTermDebt = shortLongTermDebt
        self.otherStockholderEquity = otherStockholderEquity
        self.propertyPlantEquipment = propertyPlantEquipment
        self.totalCurrentAssets = totalCurrentAssets
        self.netTangibleAssets = netTangibleAssets
        self.netReceivables = netReceivables
        self.maxAge = maxAge
        self.longTermDebt = longTermDebt
        self.inventory = inventory
        self.accountsPayable = accountsPayable
        self.longTermInvestments = longTermInvestments
    }
}

// MARK: - AverageDailyVolume10Day
class AverageDailyVolume10Day: Codable {
    let raw: Int?
    let fmt, longFmt: String?

    init(raw: Int?, fmt: String?, longFmt: String?) {
        self.raw = raw
        self.fmt = fmt
        self.longFmt = longFmt
    }
}

// MARK: - PostMarketChange
class PostMarketChange: Codable {
    let raw: Double?
    let fmt: String?

    init(raw: Double?, fmt: String?) {
        self.raw = raw
        self.fmt = fmt
    }
}

// MARK: - CashflowStatementHistory
class CashflowStatementHistory: Codable {
    let cashflowStatements: [CashflowStatement]?
    let maxAge: Int?

    init(cashflowStatements: [CashflowStatement]?, maxAge: Int?) {
        self.cashflowStatements = cashflowStatements
        self.maxAge = maxAge
    }
}

// MARK: - CashflowStatement
class CashflowStatement: Codable {
    let changeToLiabilities, totalCashflowsFromInvestingActivities, netBorrowings, totalCashFromFinancingActivities: AverageDailyVolume10Day?
    let changeToOperatingActivities, issuanceOfStock, netIncome, changeInCash: AverageDailyVolume10Day?
    let endDate: PostMarketChange?
    let effectOfExchangeRate, totalCashFromOperatingActivities, depreciation, otherCashflowsFromInvestingActivities: AverageDailyVolume10Day?
    let changeToInventory, changeToAccountReceivables, otherCashflowsFromFinancingActivities: AverageDailyVolume10Day?
    let maxAge: Int?
    let changeToNetincome, capitalExpenditures: AverageDailyVolume10Day?

    init(changeToLiabilities: AverageDailyVolume10Day?, totalCashflowsFromInvestingActivities: AverageDailyVolume10Day?, netBorrowings: AverageDailyVolume10Day?, totalCashFromFinancingActivities: AverageDailyVolume10Day?, changeToOperatingActivities: AverageDailyVolume10Day?, issuanceOfStock: AverageDailyVolume10Day?, netIncome: AverageDailyVolume10Day?, changeInCash: AverageDailyVolume10Day?, endDate: PostMarketChange?, effectOfExchangeRate: AverageDailyVolume10Day?, totalCashFromOperatingActivities: AverageDailyVolume10Day?, depreciation: AverageDailyVolume10Day?, otherCashflowsFromInvestingActivities: AverageDailyVolume10Day?, changeToInventory: AverageDailyVolume10Day?, changeToAccountReceivables: AverageDailyVolume10Day?, otherCashflowsFromFinancingActivities: AverageDailyVolume10Day?, maxAge: Int?, changeToNetincome: AverageDailyVolume10Day?, capitalExpenditures: AverageDailyVolume10Day?) {
        self.changeToLiabilities = changeToLiabilities
        self.totalCashflowsFromInvestingActivities = totalCashflowsFromInvestingActivities
        self.netBorrowings = netBorrowings
        self.totalCashFromFinancingActivities = totalCashFromFinancingActivities
        self.changeToOperatingActivities = changeToOperatingActivities
        self.issuanceOfStock = issuanceOfStock
        self.netIncome = netIncome
        self.changeInCash = changeInCash
        self.endDate = endDate
        self.effectOfExchangeRate = effectOfExchangeRate
        self.totalCashFromOperatingActivities = totalCashFromOperatingActivities
        self.depreciation = depreciation
        self.otherCashflowsFromInvestingActivities = otherCashflowsFromInvestingActivities
        self.changeToInventory = changeToInventory
        self.changeToAccountReceivables = changeToAccountReceivables
        self.otherCashflowsFromFinancingActivities = otherCashflowsFromFinancingActivities
        self.maxAge = maxAge
        self.changeToNetincome = changeToNetincome
        self.capitalExpenditures = capitalExpenditures
    }
}

// MARK: - Earnings
class Earnings: Codable {
    let maxAge: Int?
    let earningsChart: EarningsChart?
    let financialsChart: FinancialsChart?
    let financialCurrency: FinancialCurrency?

    init(maxAge: Int?, earningsChart: EarningsChart?, financialsChart: FinancialsChart?, financialCurrency: FinancialCurrency?) {
        self.maxAge = maxAge
        self.earningsChart = earningsChart
        self.financialsChart = financialsChart
        self.financialCurrency = financialCurrency
    }
}

// MARK: - EarningsChart
class EarningsChart: Codable {
    let quarterly: [EarningsChartQuarterly]?
    let currentQuarterEstimate: PostMarketChange?
    let currentQuarterEstimateDate: String?
    let currentQuarterEstimateYear: Int?
    let earningsDate: [PostMarketChange]?

    init(quarterly: [EarningsChartQuarterly]?, currentQuarterEstimate: PostMarketChange?, currentQuarterEstimateDate: String?, currentQuarterEstimateYear: Int?, earningsDate: [PostMarketChange]?) {
        self.quarterly = quarterly
        self.currentQuarterEstimate = currentQuarterEstimate
        self.currentQuarterEstimateDate = currentQuarterEstimateDate
        self.currentQuarterEstimateYear = currentQuarterEstimateYear
        self.earningsDate = earningsDate
    }
}

// MARK: - EarningsChartQuarterly
class EarningsChartQuarterly: Codable {
    let date: String?
    let actual, estimate: PostMarketChange?

    init(date: String?, actual: PostMarketChange?, estimate: PostMarketChange?) {
        self.date = date
        self.actual = actual
        self.estimate = estimate
    }
}

enum FinancialCurrency: String, Codable {
    case usd = "USD"
}

// MARK: - FinancialsChart
class FinancialsChart: Codable {
    let yearly: [Yearly]?
    let quarterly: [FinancialsChartQuarterly]?

    init(yearly: [Yearly]?, quarterly: [FinancialsChartQuarterly]?) {
        self.yearly = yearly
        self.quarterly = quarterly
    }
}

// MARK: - FinancialsChartQuarterly
class FinancialsChartQuarterly: Codable {
    let date: String?
    let revenue, earnings: AverageDailyVolume10Day?

    init(date: String?, revenue: AverageDailyVolume10Day?, earnings: AverageDailyVolume10Day?) {
        self.date = date
        self.revenue = revenue
        self.earnings = earnings
    }
}

// MARK: - Yearly
class Yearly: Codable {
    let date: Int?
    let revenue, earnings: AverageDailyVolume10Day?

    init(date: Int?, revenue: AverageDailyVolume10Day?, earnings: AverageDailyVolume10Day?) {
        self.date = date
        self.revenue = revenue
        self.earnings = earnings
    }
}

// MARK: - FinancialsTemplate
class FinancialsTemplate: Codable {
    let code: String?
    let maxAge: Int?

    init(code: String?, maxAge: Int?) {
        self.code = code
        self.maxAge = maxAge
    }
}

// MARK: - IncomeStatementHistory
class IncomeStatementHistory: Codable {
    let incomeStatementHistory: [IncomeStatementHistoryElement]?
    let maxAge: Int?

    init(incomeStatementHistory: [IncomeStatementHistoryElement]?, maxAge: Int?) {
        self.incomeStatementHistory = incomeStatementHistory
        self.maxAge = maxAge
    }
}

// MARK: - IncomeStatementHistoryElement
class IncomeStatementHistoryElement: Codable {
    let researchDevelopment: AverageDailyVolume10Day?
    let effectOfAccountingCharges: CirculatingSupply?
    let incomeBeforeTax, minorityInterest, netIncome, sellingGeneralAdministrative: AverageDailyVolume10Day?
    let grossProfit, ebit: AverageDailyVolume10Day?
    let endDate: PostMarketChange?
    let operatingIncome: AverageDailyVolume10Day?
    let otherOperatingExpenses: CirculatingSupply?
    let interestExpense: AverageDailyVolume10Day?
    let extraordinaryItems, nonRecurring, otherItems: CirculatingSupply?
    let incomeTaxExpense, totalRevenue, totalOperatingExpenses, costOfRevenue: AverageDailyVolume10Day?
    let totalOtherIncomeExpenseNet: AverageDailyVolume10Day?
    let maxAge: Int?
    let discontinuedOperations: CirculatingSupply?
    let netIncomeFromContinuingOps, netIncomeApplicableToCommonShares: AverageDailyVolume10Day?

    init(researchDevelopment: AverageDailyVolume10Day?, effectOfAccountingCharges: CirculatingSupply?, incomeBeforeTax: AverageDailyVolume10Day?, minorityInterest: AverageDailyVolume10Day?, netIncome: AverageDailyVolume10Day?, sellingGeneralAdministrative: AverageDailyVolume10Day?, grossProfit: AverageDailyVolume10Day?, ebit: AverageDailyVolume10Day?, endDate: PostMarketChange?, operatingIncome: AverageDailyVolume10Day?, otherOperatingExpenses: CirculatingSupply?, interestExpense: AverageDailyVolume10Day?, extraordinaryItems: CirculatingSupply?, nonRecurring: CirculatingSupply?, otherItems: CirculatingSupply?, incomeTaxExpense: AverageDailyVolume10Day?, totalRevenue: AverageDailyVolume10Day?, totalOperatingExpenses: AverageDailyVolume10Day?, costOfRevenue: AverageDailyVolume10Day?, totalOtherIncomeExpenseNet: AverageDailyVolume10Day?, maxAge: Int?, discontinuedOperations: CirculatingSupply?, netIncomeFromContinuingOps: AverageDailyVolume10Day?, netIncomeApplicableToCommonShares: AverageDailyVolume10Day?) {
        self.researchDevelopment = researchDevelopment
        self.effectOfAccountingCharges = effectOfAccountingCharges
        self.incomeBeforeTax = incomeBeforeTax
        self.minorityInterest = minorityInterest
        self.netIncome = netIncome
        self.sellingGeneralAdministrative = sellingGeneralAdministrative
        self.grossProfit = grossProfit
        self.ebit = ebit
        self.endDate = endDate
        self.operatingIncome = operatingIncome
        self.otherOperatingExpenses = otherOperatingExpenses
        self.interestExpense = interestExpense
        self.extraordinaryItems = extraordinaryItems
        self.nonRecurring = nonRecurring
        self.otherItems = otherItems
        self.incomeTaxExpense = incomeTaxExpense
        self.totalRevenue = totalRevenue
        self.totalOperatingExpenses = totalOperatingExpenses
        self.costOfRevenue = costOfRevenue
        self.totalOtherIncomeExpenseNet = totalOtherIncomeExpenseNet
        self.maxAge = maxAge
        self.discontinuedOperations = discontinuedOperations
        self.netIncomeFromContinuingOps = netIncomeFromContinuingOps
        self.netIncomeApplicableToCommonShares = netIncomeApplicableToCommonShares
    }
}

// MARK: - CirculatingSupply
class CirculatingSupply: Codable {

    init() {
    }
}

// MARK: - Meta
class Meta: Codable {
    let symbol: String?
    let start, end: Int?
    let timeUnit: String?

    init(symbol: String?, start: Int?, end: Int?, timeUnit: String?) {
        self.symbol = symbol
        self.start = start
        self.end = end
        self.timeUnit = timeUnit
    }
}

// MARK: - PageViews
class PageViews: Codable {
    let shortTermTrend, midTermTrend, longTermTrend: String?
    let maxAge: Int?

    init(shortTermTrend: String?, midTermTrend: String?, longTermTrend: String?, maxAge: Int?) {
        self.shortTermTrend = shortTermTrend
        self.midTermTrend = midTermTrend
        self.longTermTrend = longTermTrend
        self.maxAge = maxAge
    }
}

// MARK: - Price
class Price: Codable {
    let regularMarketOpen: PostMarketChange?
    let shortName: String?
    let regularMarketVolume: AverageDailyVolume10Day?
    let marketCap: AverageDailyVolume10Day?


    init(regularMarketOpen: PostMarketChange?, shortName: String?, regularMarketVolume: AverageDailyVolume10Day?, marketCap: AverageDailyVolume10Day?) {
        
        self.regularMarketOpen = regularMarketOpen
        self.shortName = shortName
        self.regularMarketVolume = regularMarketVolume
        self.marketCap = marketCap
        
    }
}

// MARK: - QuoteType
class QuoteType: Codable {
    let exchange, shortName, longName, exchangeTimezoneName: String?
    let exchangeTimezoneShortName: String?
    let isEsgPopulated: Bool?
    let gmtOffSetMilliseconds, quoteType, symbol, messageBoardID: String?
    let market: String?

    enum CodingKeys: String, CodingKey {
        case exchange, shortName, longName, exchangeTimezoneName, exchangeTimezoneShortName, isEsgPopulated, gmtOffSetMilliseconds, quoteType, symbol
        case messageBoardID = "messageBoardId"
        case market
    }

    init(exchange: String?, shortName: String?, longName: String?, exchangeTimezoneName: String?, exchangeTimezoneShortName: String?, isEsgPopulated: Bool?, gmtOffSetMilliseconds: String?, quoteType: String?, symbol: String?, messageBoardID: String?, market: String?) {
        self.exchange = exchange
        self.shortName = shortName
        self.longName = longName
        self.exchangeTimezoneName = exchangeTimezoneName
        self.exchangeTimezoneShortName = exchangeTimezoneShortName
        self.isEsgPopulated = isEsgPopulated
        self.gmtOffSetMilliseconds = gmtOffSetMilliseconds
        self.quoteType = quoteType
        self.symbol = symbol
        self.messageBoardID = messageBoardID
        self.market = market
    }
}

// MARK: - SummaryDetail
class SummaryDetail: Codable {
    let previousClose, regularMarketOpen, twoHundredDayAverage: PostMarketChange?
    let trailingAnnualDividendYield: CirculatingSupply?
    let payoutRatio: PostMarketChange?
    let volume24Hr: CirculatingSupply?
    let regularMarketDayHigh: PostMarketChange?
    let navPrice: CirculatingSupply?
    let averageDailyVolume10Day: AverageDailyVolume10Day?
    let totalAssets: CirculatingSupply?
    let regularMarketPreviousClose, fiftyDayAverage: PostMarketChange?
    let trailingAnnualDividendRate: CirculatingSupply?
    let summaryDetailOpen: PostMarketChange?
    let toCurrency: JSONNull?
    let averageVolume10Days: AverageDailyVolume10Day?
    let expireDate, yield: CirculatingSupply?
    let algorithm: JSONNull?
    let dividendRate, exDividendDate: CirculatingSupply?
    let beta: PostMarketChange?
    let circulatingSupply, startDate: CirculatingSupply?
    let regularMarketDayLow: PostMarketChange?
    let priceHint: AverageDailyVolume10Day?
    let currency: FinancialCurrency?
    let trailingPE: PostMarketChange?
    let regularMarketVolume: AverageDailyVolume10Day?
    let lastMarket: JSONNull?
    let maxSupply, openInterest: CirculatingSupply?
    let marketCap: AverageDailyVolume10Day?
    let volumeAllCurrencies, strikePrice: CirculatingSupply?
    let averageVolume: AverageDailyVolume10Day?
    let priceToSalesTrailing12Months, dayLow, ask: PostMarketChange?
    let ytdReturn: CirculatingSupply?
    let askSize, volume: AverageDailyVolume10Day?
    let fiftyTwoWeekHigh, forwardPE: PostMarketChange?
    let maxAge: Int?
    let fromCurrency: JSONNull?
    let fiveYearAvgDividendYield: CirculatingSupply?
    let fiftyTwoWeekLow, bid: PostMarketChange?
    let tradeable: Bool?
    let dividendYield: CirculatingSupply?
    let bidSize: AverageDailyVolume10Day?
    let dayHigh: PostMarketChange?

    enum CodingKeys: String, CodingKey {
        case previousClose, regularMarketOpen, twoHundredDayAverage, trailingAnnualDividendYield, payoutRatio, volume24Hr, regularMarketDayHigh, navPrice, averageDailyVolume10Day, totalAssets, regularMarketPreviousClose, fiftyDayAverage, trailingAnnualDividendRate
        case summaryDetailOpen = "open"
        case toCurrency
        case averageVolume10Days = "averageVolume10days"
        case expireDate, yield, algorithm, dividendRate, exDividendDate, beta, circulatingSupply, startDate, regularMarketDayLow, priceHint, currency, trailingPE, regularMarketVolume, lastMarket, maxSupply, openInterest, marketCap, volumeAllCurrencies, strikePrice, averageVolume, priceToSalesTrailing12Months, dayLow, ask, ytdReturn, askSize, volume, fiftyTwoWeekHigh, forwardPE, maxAge, fromCurrency, fiveYearAvgDividendYield, fiftyTwoWeekLow, bid, tradeable, dividendYield, bidSize, dayHigh
    }

    init(previousClose: PostMarketChange?, regularMarketOpen: PostMarketChange?, twoHundredDayAverage: PostMarketChange?, trailingAnnualDividendYield: CirculatingSupply?, payoutRatio: PostMarketChange?, volume24Hr: CirculatingSupply?, regularMarketDayHigh: PostMarketChange?, navPrice: CirculatingSupply?, averageDailyVolume10Day: AverageDailyVolume10Day?, totalAssets: CirculatingSupply?, regularMarketPreviousClose: PostMarketChange?, fiftyDayAverage: PostMarketChange?, trailingAnnualDividendRate: CirculatingSupply?, summaryDetailOpen: PostMarketChange?, toCurrency: JSONNull?, averageVolume10Days: AverageDailyVolume10Day?, expireDate: CirculatingSupply?, yield: CirculatingSupply?, algorithm: JSONNull?, dividendRate: CirculatingSupply?, exDividendDate: CirculatingSupply?, beta: PostMarketChange?, circulatingSupply: CirculatingSupply?, startDate: CirculatingSupply?, regularMarketDayLow: PostMarketChange?, priceHint: AverageDailyVolume10Day?, currency: FinancialCurrency?, trailingPE: PostMarketChange?, regularMarketVolume: AverageDailyVolume10Day?, lastMarket: JSONNull?, maxSupply: CirculatingSupply?, openInterest: CirculatingSupply?, marketCap: AverageDailyVolume10Day?, volumeAllCurrencies: CirculatingSupply?, strikePrice: CirculatingSupply?, averageVolume: AverageDailyVolume10Day?, priceToSalesTrailing12Months: PostMarketChange?, dayLow: PostMarketChange?, ask: PostMarketChange?, ytdReturn: CirculatingSupply?, askSize: AverageDailyVolume10Day?, volume: AverageDailyVolume10Day?, fiftyTwoWeekHigh: PostMarketChange?, forwardPE: PostMarketChange?, maxAge: Int?, fromCurrency: JSONNull?, fiveYearAvgDividendYield: CirculatingSupply?, fiftyTwoWeekLow: PostMarketChange?, bid: PostMarketChange?, tradeable: Bool?, dividendYield: CirculatingSupply?, bidSize: AverageDailyVolume10Day?, dayHigh: PostMarketChange?) {
        self.previousClose = previousClose
        self.regularMarketOpen = regularMarketOpen
        self.twoHundredDayAverage = twoHundredDayAverage
        self.trailingAnnualDividendYield = trailingAnnualDividendYield
        self.payoutRatio = payoutRatio
        self.volume24Hr = volume24Hr
        self.regularMarketDayHigh = regularMarketDayHigh
        self.navPrice = navPrice
        self.averageDailyVolume10Day = averageDailyVolume10Day
        self.totalAssets = totalAssets
        self.regularMarketPreviousClose = regularMarketPreviousClose
        self.fiftyDayAverage = fiftyDayAverage
        self.trailingAnnualDividendRate = trailingAnnualDividendRate
        self.summaryDetailOpen = summaryDetailOpen
        self.toCurrency = toCurrency
        self.averageVolume10Days = averageVolume10Days
        self.expireDate = expireDate
        self.yield = yield
        self.algorithm = algorithm
        self.dividendRate = dividendRate
        self.exDividendDate = exDividendDate
        self.beta = beta
        self.circulatingSupply = circulatingSupply
        self.startDate = startDate
        self.regularMarketDayLow = regularMarketDayLow
        self.priceHint = priceHint
        self.currency = currency
        self.trailingPE = trailingPE
        self.regularMarketVolume = regularMarketVolume
        self.lastMarket = lastMarket
        self.maxSupply = maxSupply
        self.openInterest = openInterest
        self.marketCap = marketCap
        self.volumeAllCurrencies = volumeAllCurrencies
        self.strikePrice = strikePrice
        self.averageVolume = averageVolume
        self.priceToSalesTrailing12Months = priceToSalesTrailing12Months
        self.dayLow = dayLow
        self.ask = ask
        self.ytdReturn = ytdReturn
        self.askSize = askSize
        self.volume = volume
        self.fiftyTwoWeekHigh = fiftyTwoWeekHigh
        self.forwardPE = forwardPE
        self.maxAge = maxAge
        self.fromCurrency = fromCurrency
        self.fiveYearAvgDividendYield = fiveYearAvgDividendYield
        self.fiftyTwoWeekLow = fiftyTwoWeekLow
        self.bid = bid
        self.tradeable = tradeable
        self.dividendYield = dividendYield
        self.bidSize = bidSize
        self.dayHigh = dayHigh
    }
}

// MARK: - TimeSeries
class TimeSeries: Codable {
    let annualDilutedEPS, annualResearchAndDevelopment, annualNetIncomeContinuousOperations, trailingNetIncomeContinuousOperations: [AnnualBasicAverageShare]?
    let annualEbitda, annualBasicEPS, annualCostOfRevenue, annualTotalRevenue: [AnnualBasicAverageShare]?
    let trailingResearchAndDevelopment, trailingOperatingExpense, annualOperatingIncome, annualPretaxIncome: [AnnualBasicAverageShare]?
    let trailingOtherIncomeExpense, annualNetIncome, trailingOperatingIncome, trailingTotalRevenue: [AnnualBasicAverageShare]?
    let annualInterestExpense, trailingCostOfRevenue, trailingTaxProvision, trailingNetIncome: [AnnualBasicAverageShare]?
    let annualBasicAverageShares, annualOperatingExpense, annualTaxProvision, trailingPretaxIncome: [AnnualBasicAverageShare]?
    let annualDilutedAverageShares, trailingInterestExpense, annualOtherIncomeExpense, trailingGrossProfit: [AnnualBasicAverageShare]?
    let trailingSellingGeneralAndAdministration, annualNetIncomeCommonStockholders, annualGrossProfit, trailingNetIncomeCommonStockholders: [AnnualBasicAverageShare]?
    let annualSellingGeneralAndAdministration: [AnnualBasicAverageShare]?
    let trailingBasicAverageShares, trailingDilutedEPS, trailingBasicEPS, trailingDilutedAverageShares: [JSONAny]?
    let timestamp: [Int]?

    init(annualDilutedEPS: [AnnualBasicAverageShare]?, annualResearchAndDevelopment: [AnnualBasicAverageShare]?, annualNetIncomeContinuousOperations: [AnnualBasicAverageShare]?, trailingNetIncomeContinuousOperations: [AnnualBasicAverageShare]?, annualEbitda: [AnnualBasicAverageShare]?, annualBasicEPS: [AnnualBasicAverageShare]?, annualCostOfRevenue: [AnnualBasicAverageShare]?, annualTotalRevenue: [AnnualBasicAverageShare]?, trailingResearchAndDevelopment: [AnnualBasicAverageShare]?, trailingOperatingExpense: [AnnualBasicAverageShare]?, annualOperatingIncome: [AnnualBasicAverageShare]?, annualPretaxIncome: [AnnualBasicAverageShare]?, trailingOtherIncomeExpense: [AnnualBasicAverageShare]?, annualNetIncome: [AnnualBasicAverageShare]?, trailingOperatingIncome: [AnnualBasicAverageShare]?, trailingTotalRevenue: [AnnualBasicAverageShare]?, annualInterestExpense: [AnnualBasicAverageShare]?, trailingCostOfRevenue: [AnnualBasicAverageShare]?, trailingTaxProvision: [AnnualBasicAverageShare]?, trailingNetIncome: [AnnualBasicAverageShare]?, annualBasicAverageShares: [AnnualBasicAverageShare]?, annualOperatingExpense: [AnnualBasicAverageShare]?, annualTaxProvision: [AnnualBasicAverageShare]?, trailingPretaxIncome: [AnnualBasicAverageShare]?, annualDilutedAverageShares: [AnnualBasicAverageShare]?, trailingInterestExpense: [AnnualBasicAverageShare]?, annualOtherIncomeExpense: [AnnualBasicAverageShare]?, trailingGrossProfit: [AnnualBasicAverageShare]?, trailingSellingGeneralAndAdministration: [AnnualBasicAverageShare]?, annualNetIncomeCommonStockholders: [AnnualBasicAverageShare]?, annualGrossProfit: [AnnualBasicAverageShare]?, trailingNetIncomeCommonStockholders: [AnnualBasicAverageShare]?, annualSellingGeneralAndAdministration: [AnnualBasicAverageShare]?, trailingBasicAverageShares: [JSONAny]?, trailingDilutedEPS: [JSONAny]?, trailingBasicEPS: [JSONAny]?, trailingDilutedAverageShares: [JSONAny]?, timestamp: [Int]?) {
        self.annualDilutedEPS = annualDilutedEPS
        self.annualResearchAndDevelopment = annualResearchAndDevelopment
        self.annualNetIncomeContinuousOperations = annualNetIncomeContinuousOperations
        self.trailingNetIncomeContinuousOperations = trailingNetIncomeContinuousOperations
        self.annualEbitda = annualEbitda
        self.annualBasicEPS = annualBasicEPS
        self.annualCostOfRevenue = annualCostOfRevenue
        self.annualTotalRevenue = annualTotalRevenue
        self.trailingResearchAndDevelopment = trailingResearchAndDevelopment
        self.trailingOperatingExpense = trailingOperatingExpense
        self.annualOperatingIncome = annualOperatingIncome
        self.annualPretaxIncome = annualPretaxIncome
        self.trailingOtherIncomeExpense = trailingOtherIncomeExpense
        self.annualNetIncome = annualNetIncome
        self.trailingOperatingIncome = trailingOperatingIncome
        self.trailingTotalRevenue = trailingTotalRevenue
        self.annualInterestExpense = annualInterestExpense
        self.trailingCostOfRevenue = trailingCostOfRevenue
        self.trailingTaxProvision = trailingTaxProvision
        self.trailingNetIncome = trailingNetIncome
        self.annualBasicAverageShares = annualBasicAverageShares
        self.annualOperatingExpense = annualOperatingExpense
        self.annualTaxProvision = annualTaxProvision
        self.trailingPretaxIncome = trailingPretaxIncome
        self.annualDilutedAverageShares = annualDilutedAverageShares
        self.trailingInterestExpense = trailingInterestExpense
        self.annualOtherIncomeExpense = annualOtherIncomeExpense
        self.trailingGrossProfit = trailingGrossProfit
        self.trailingSellingGeneralAndAdministration = trailingSellingGeneralAndAdministration
        self.annualNetIncomeCommonStockholders = annualNetIncomeCommonStockholders
        self.annualGrossProfit = annualGrossProfit
        self.trailingNetIncomeCommonStockholders = trailingNetIncomeCommonStockholders
        self.annualSellingGeneralAndAdministration = annualSellingGeneralAndAdministration
        self.trailingBasicAverageShares = trailingBasicAverageShares
        self.trailingDilutedEPS = trailingDilutedEPS
        self.trailingBasicEPS = trailingBasicEPS
        self.trailingDilutedAverageShares = trailingDilutedAverageShares
        self.timestamp = timestamp
    }
}

// MARK: - AnnualBasicAverageShare
class AnnualBasicAverageShare: Codable {
    let dataID: Int?
    let asOfDate: String?
    let periodType: PeriodType?
    let currencyCode: FinancialCurrency?
    let reportedValue: PostMarketChange?

    enum CodingKeys: String, CodingKey {
        case dataID = "dataId"
        case asOfDate, periodType, currencyCode, reportedValue
    }

    init(dataID: Int?, asOfDate: String?, periodType: PeriodType?, currencyCode: FinancialCurrency?, reportedValue: PostMarketChange?) {
        self.dataID = dataID
        self.asOfDate = asOfDate
        self.periodType = periodType
        self.currencyCode = currencyCode
        self.reportedValue = reportedValue
    }
}

enum PeriodType: String, Codable {
    case the12M = "12M"
    case ttm = "TTM"
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
