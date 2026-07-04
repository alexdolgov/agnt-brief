// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

interface ISmartRewardsDistributor {

    struct RewardCampaignParams {
        address owner;
        address liquidityPool;
        address rewardToken;
        uint256 escrowAmount;
        uint256 startBlock;
        uint256 endBlock;
        string campaignParamsIPFSHash;
    }

    struct RewardCampaign {
        address owner;
        address liquidityPool;
        address rewardToken;
        uint256 amount;
        uint256 startBlock;
        uint256 endBlock;
        string campaignParamsIPFSHash;
        uint256 abandonmentDeadlineBlock;
        uint256 cancelBlock;
        uint256 credit;
        bool paused;
        bool halted;
    }

    // Events
    event UserClaim(
        address indexed user,
        address indexed token,
        uint256 amount,
        uint256 indexed campaign,
        uint256 totalCampaignClaimed
    );

    event Swept(address indexed token, address to, uint256 amount);

    event RewardTokenChanged(address indexed token, uint256 valid);

    event UserClaimPermissionToggled(address indexed user, address indexed claimee, bool valid);

    event SteerClaimedFees(address indexed token, uint256 amount);

    event RewardCampaignCreated(
        uint256 indexed campaignId,
        address owner,
        uint256 startDistribution,
        uint256 endDistribution,
        address indexed liquidityPool,
        address indexed rewardToken,
        uint256 amount,
        string campaignParamsIPFSHash,
        uint256 abandonDeadline
    );

    event CampaignOwnershipTransfer(
        uint256 indexed campaignId,
        address indexed newOwner
    );

    // Event from orchestratorUpdateRootHash(bytes32, unint) 
    event MerkleRootHashUpdated(
        bytes32 newMerkleRoot, uint blockUpdated
    );

    // Event from setFeeDiscount(address,uint256)
    event FeeDiscountChanged(
        address campaignCreator,
        uint256 discount
    );

    event CampaignPaused(uint indexed campaignId, address sender, bool paused);

    event CampaignCanceled(uint indexed campaignId, bool halted, uint cancelBlock, uint outbound, address owner);

    // Event from setSteerFee(uint256)
    event SteerFeesChanged(uint256 newSteerFee);

    // Event from setAbandonmentBlockTimeframe(uint256)
    event AbandonmentBlockTimeframeChanged(uint256 newBlockTimeframe);

    // Event from setFeeCollectionAddress(address)
    event FeeCollectionAddressChanged(address newFeeCollectionAddress);

    // Functions
    function initialize(
        address _orchestratorRelay,
        uint256 _steerFee,
        address _feeCollectionAddress,
        uint256 _abandonmentBlockTimeframe
    ) external;

    function orchestratorUpdateRootHash(bytes32 newMerkleRoot, uint blockUpdated) external;

    function claim(
        address[] calldata users,
        uint256[] calldata campaignIds,
        uint256[] calldata amounts,
        bytes32[][] calldata proofs
    ) external;

    function createRewardCampaign(
        RewardCampaignParams memory newRewardCampaign
    ) external returns (uint256);

    function setFeeDiscount(
        address campaignCreator,
        uint256 discount
    ) external;

    function setAbandonmentBlockTimeframe(uint256 newBlockTimeframe) external;

    function cancelCampaign(uint256 campaignId, bool halt) external returns (uint256);

    function setMinimumRewardToken(
        address token,
        uint256 minAmount
    ) external;

    function transferCampaignOwnership(
        uint256 campaignId,
        address newOwner
    ) external;

    function setSteerFee(uint256 newSteerFee) external;

    function getAvailableFundsUpToBlock(RewardCampaign memory campaign, uint256 lastBlock) external view returns (uint256);

    function setFeeCollectionAddress(address newFeeCollectionAddress) external;

    function toggleCampaignPause(uint campaignId) external returns (bool);
}