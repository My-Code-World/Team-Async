create database stock;
use stock;
CREATE TABLE portfolio_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    stock_ticker VARCHAR(10) NOT NULL,
    quantity INT NOT NULL,
    avg_buy_price DECIMAL(10,2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    stock_ticker VARCHAR(10) NOT NULL,
    type ENUM('BUY', 'SELL') NOT NULL,
    quantity INT NOT NULL,
    price_per_share DECIMAL(10,2) NOT NULL,
    transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE stock_prices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    stock_ticker VARCHAR(10) NOT NULL,
    price_date DATE NOT NULL,
    open_price DECIMAL(10,2),
    high_price DECIMAL(10,2),
    low_price DECIMAL(10,2),
    close_price DECIMAL(10,2),
    current_prices int NOT NULL,
    volume BIGINT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE stocks (
    stock_ticker VARCHAR(10) PRIMARY KEY,
    company_name VARCHAR(100),
    sector VARCHAR(50),
    industry VARCHAR(50)
);
INSERT INTO stock_prices (stock_ticker, open_price, high_price, low_price, close_price, volume, price_date)
VALUES
  ('TSLA', 269.19, 271.20, 264.70, 268.65, 90362345, '2025-07-29'),
  ('AAPL', 148.30, 150.10, 147.60, 149.90, 75410321, '2025-07-29'),
  ('GOOGL', 2771.00, 2784.50, 2745.00, 2770.60, 4023492, '2025-07-29'),
  ('MSFT', 310.25, 314.00, 308.50, 312.70, 38200560, '2025-07-29'),
  ('AMZN', 123.45, 125.00, 122.10, 124.30, 61834401, '2025-07-29'),
  ('META', 328.50, 330.10, 325.60, 327.75, 25411345, '2025-07-29'),
  ('NFLX', 418.00, 423.25, 415.10, 419.80, 17893312, '2025-07-29'),
  ('NVDA', 895.10, 905.00, 887.50, 900.20, 31245671, '2025-07-29'),
  ('DIS', 91.30, 92.15, 90.20, 91.75, 18762345, '2025-07-29'),
  ('BABA', 87.25, 88.70, 86.40, 87.95, 24400122, '2025-07-29');
  INSERT INTO stocks (stock_ticker, company_name, sector, industry) VALUES
('AAPL', 'Apple Inc.', 'Technology', 'Consumer Electronics'),
('MSFT', 'Microsoft Corporation', 'Technology', 'Software—Infrastructure'),
('GOOGL', 'Alphabet Inc.', 'Communication Services', 'Internet Content & Information'),
('AMZN', 'Amazon.com Inc.', 'Consumer Cyclical', 'Internet Retail'),
('TSLA', 'Tesla Inc.', 'Consumer Cyclical', 'Auto Manufacturers'),
('META', 'Meta Platforms Inc.', 'Communication Services', 'Internet Content & Information'),
('NFLX', 'Netflix Inc.', 'Communication Services', 'Entertainment'),
('NVDA', 'NVIDIA Corporation', 'Technology', 'Semiconductors'),
('DIS', 'The Walt Disney Company', 'Communication Services', 'Entertainment'),
('BABA', 'Alibaba Group Holding Limited', 'Consumer Cyclical', 'Internet Retail'),
('JPM', 'JPMorgan Chase & Co.', 'Financial Services', 'Banks—Diversified'),
('WMT', 'Walmart Inc.', 'Consumer Defensive', 'Discount Stores'),
('V', 'Visa Inc.', 'Financial Services', 'Credit Services'),
('KO', 'The Coca-Cola Company', 'Consumer Defensive', 'Beverages—Non-Alcoholic'),
('PFE', 'Pfizer Inc.', 'Healthcare', 'Drug Manufacturers—General');
-- INSERT INTO stocks (stock_ticker, company_name, sector, industry) VALUES
('RELIANCE', 'Reliance Industries Ltd.', 'Energy', 'Oil & Gas'),
('HDFCBANK', 'HDFC Bank Ltd.', 'Financial Services', 'Banks'),
('BHARTIARTL', 'Bharti Airtel Ltd.', 'Telecom', 'Telecommunication Services'),
('TCS', 'Tata Consultancy Services Ltd.', 'IT', 'IT Services'),
('ICICIBANK', 'ICICI Bank Ltd.', 'Financial Services', 'Banks'),
('SBIN', 'State Bank of India', 'Financial Services', 'Banks'),
('INFY', 'Infosys Ltd.', 'IT', 'IT Services'),
('HINDUNILVR', 'Hindustan Unilever Ltd.', 'Consumer Defensive', 'FMCG'),
('BAJFINANCE', 'Bajaj Finance Ltd.', 'Financial Services', 'Finance'),
('ITC', 'ITC Ltd.', 'Consumer Defensive', 'FMCG'),
('LT', 'Larsen & Toubro Ltd.', 'Industrials', 'Construction'),
('SUNPHARMA', 'Sun Pharmaceutical Industries Ltd.', 'Healthcare', 'Pharmaceuticals'),
('HCLTECH', 'HCL Technologies Ltd.', 'IT', 'IT Services'),
('AXISBANK', 'Axis Bank Ltd.', 'Financial Services', 'Banks'),
('MARUTI', 'Maruti Suzuki India Ltd.', 'Consumer Cyclical', 'Auto Manufacturers'),
('TATAMOTORS', 'Tata Motors Ltd.', 'Consumer Cyclical', 'Auto Manufacturers'),
('TATASTEEL', 'Tata Steel Ltd.', 'Materials', 'Metals'),
('M&M', 'Mahindra & Mahindra Ltd.', 'Consumer Cyclical', 'Auto Manufacturers'),
('ADANIPORTS', 'Adani Ports & SEZ Ltd.', 'Industrials', 'Ports & Logistics'),
('BEL', 'Bharat Electronics Ltd.', 'Aerospace & Defence', 'Defence'),
('TRENT', 'Trent Ltd.', 'Consumer Cyclical', 'Retailing'),
('BAJAJFINSV', 'Bajaj Finserv Ltd.', 'Financial Services', 'Finance'),
('ULTRACEMCO', 'UltraTech Cement Ltd.', 'Materials', 'Cement'),
('NTPC', 'NTPC Ltd.', 'Utilities', 'Power Generation'),
('JSWSTEEL', 'JSW Steel Ltd.', 'Materials', 'Metals'),
('NESTLEIND', 'Nestle India Ltd.', 'Consumer Defensive', 'FMCG'),
('POWERGRID', 'Power Grid Corporation of India Ltd.', 'Utilities', 'Power Transmission'),
('TITAN', 'Titan Company Ltd.', 'Consumer Cyclical', 'Jewellery & Accessories'),
('WIPRO', 'Wipro Ltd.', 'IT', 'IT Services'),
('COALINDIA', 'Coal India Ltd.', 'Energy', 'Mining'),
('GRASIM', 'Grasim Industries Ltd.', 'Materials', 'Textiles & Chemicals'),
('HDFCLIFE', 'HDFC Life Insurance Company Ltd.', 'Financial Services', 'Insurance');
ALTER TABLE stocks
ADD COLUMN current_price DECIMAL(10, 2);

UPDATE stocks
SET current_price = CASE stock_ticker
  WHEN 'AAPL' THEN 195.24
  WHEN 'ADANIPORTS' THEN 1200.75
  WHEN 'AMZN' THEN 136.87
  WHEN 'AXISBANK' THEN 1065.40
  WHEN 'BABA' THEN 86.25
  WHEN 'BAJAJFINSV' THEN 1620.55
  WHEN 'BAJFINANCE' THEN 7300.00
  WHEN 'BEL' THEN 252.60
  WHEN 'BHARTIARTL' THEN 1028.20
  WHEN 'COALINDIA' THEN 437.95
  WHEN 'DIS' THEN 89.35
  WHEN 'GOOGL' THEN 134.72
  WHEN 'GRASIM' THEN 1945.80
  WHEN 'HCLTECH' THEN 1602.15
  WHEN 'HDFCBANK' THEN 1520.90
  WHEN 'HDFCLIFE' THEN 620.10
  WHEN 'HINDUNILVR' THEN 2475.00
  WHEN 'ICICIBANK' THEN 1095.25
  WHEN 'idea' THEN 14.85
  WHEN 'INFY' THEN 1435.25
  WHEN 'ITC' THEN 440.15
  WHEN 'JPM' THEN 161.10
  WHEN 'JSW' THEN 850.00
  WHEN 'JSWSTEEL' THEN 889.65
  WHEN 'KO' THEN 61.70
  WHEN 'LT' THEN 3578.95
  WHEN 'M&M' THEN 2860.30
  WHEN 'MARUTI' THEN 12055.40
  WHEN 'META' THEN 318.40
  WHEN 'MSFT' THEN 421.56
  WHEN 'NESTLEIND' THEN 25300.90
  WHEN 'NFLX' THEN 562.40
  WHEN 'NTPC' THEN 362.80
  WHEN 'NVDA' THEN 1285.30
  WHEN 'PFE' THEN 29.40
  WHEN 'POWERGRID' THEN 318.70
  WHEN 'RELIANCE' THEN 2720.00
  WHEN 'SBIN' THEN 860.60
  WHEN 'SUNPHARMA' THEN 1260.25
  WHEN 'TATAMOTORS' THEN 985.10
  WHEN 'TATASTEEL' THEN 165.55
  WHEN 'TCS' THEN 3885.75
  WHEN 'TITAN' THEN 3850.00
  WHEN 'TRENT' THEN 4520.35
  WHEN 'TSLA' THEN 265.32
  WHEN 'ULTRACEMCO' THEN 10845.20
  WHEN 'V' THEN 275.40
  WHEN 'WIPRO' THEN 520.90
  WHEN 'WMT' THEN 164.15
  ELSE current_price
END
WHERE stock_ticker IN (
  'AAPL','ADANIPORTS','AMZN','AXISBANK','BABA','BAJAJFINSV','BAJFINANCE','BEL','BHARTIARTL',
  'COALINDIA','DIS','GOOGL','GRASIM','HCLTECH','HDFCBANK','HDFCLIFE','HINDUNILVR','ICICIBANK',
  'idea','INFY','ITC','JPM','JSW','JSWSTEEL','KO','LT','M&M','MARUTI','META','MSFT','NESTLEIND',
  'NFLX','NTPC','NVDA','PFE','POWERGRID','RELIANCE','SBIN','SUNPHARMA','TATAMOTORS','TATASTEEL',
  'TCS','TITAN','TRENT','TSLA','ULTRACEMCO','V','WIPRO','WMT'
);


CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    stock_ticker VARCHAR(10) NOT NULL,
    transaction_type ENUM('BUY', 'SELL') NOT NULL,
    quantity INT CHECK (quantity > 0),
    price DECIMAL(10, 2), -- price at transaction time
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


