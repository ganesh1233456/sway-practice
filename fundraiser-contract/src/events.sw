library events;

dep data_structures::CampaignInfo;

pub struct CancelledcampaignEvent {
    /// The unique identifier for the campaign
    campaign_id: u64,
}

pub struct ClaimedEvent {
    /// The unique identifier for the campaign
    campaign_id: u64,
}

pub struct CreatedCampaignEvent {
    /// The user who had created the campaign
    author: Identity,
    /// The unique identifier for the campaign
    campaign_id: u64,
    /// The user who has pledge
    user: Identity
}

pub struct UnpledgedEvent {
    /// The amount unpledged
    amount: u64,
    /// The unique identifier for the campaign
    campaign_id: u64,
    /// The user who has unpledged
    user: Identity,
}
