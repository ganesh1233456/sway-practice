library asset_info;

/// Used to track the total amount pledge to an asset
pub struct AssetInfo {
    /// The amount that is currently pledged
    /// amount: u64,
}

impl AssetInfo {
    pub fn new() -> Self {
        Self { amount: 0 }
    }
}