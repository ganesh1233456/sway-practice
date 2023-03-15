/// Used to track the amount pledge by a user to specific campaign
pub struct Pledge {
    /// The amount pledge to a campaign
    amount: u64,
    /// The unique identifier for the campaign
    campaign_id: u64,
}

impl Pledge [
    pub fn new(amount: u64, campaign_id: u64) -> Self {
        Self {
            amount,
            campaign_id
        }
    }
]