CREATE TABLE IF NOT EXISTS ledger (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    transaction_id VARCHAR(255) NOT NULL,
    exchange VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    asset_type VARCHAR(255) NOT NULL CHECK (asset_type IN ('CRYPTO', 'STOCK')),
    asset_id INTEGER NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    cost_basis DECIMAL(10, 2) NOT NULL,
    cost_basis_currency VARCHAR(3) NOT NULL,
    fees DECIMAL(10, 2) NOT NULL,
    fees_currency VARCHAR(3) NOT NULL,
    spent BIT NOT NULL DEFAULT 0,
    spent_at DATE,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
