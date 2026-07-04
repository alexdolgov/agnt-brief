// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@chainlink/contracts/src/v0.8/vrf/dev/VRFConsumerBaseV2Plus.sol";
import "@chainlink/contracts/src/v0.8/vrf/dev/libraries/VRFV2PlusClient.sol";
import "./interfaces/IOrbs.sol";

contract OrbMerger is Pausable, VRFConsumerBaseV2Plus {
    struct TierConfig {
        uint256 orbsRequired; // Number of orbs needed to merge (e.g. 3)
        uint256 ketCost; // Cost in KET tokens (e.g. 56 ether)
        uint256 cooldownDuration; // Duration in seconds (e.g. 60)
        bool isConfigured; // Whether this tier has been configured (should be true for every entry)
    }

    struct MergeRequest {
        address user;
        uint256 sourceTier;
    }

    struct SkipConfig {
        uint256 normalRate; // Base rate (e.g., 9500 for 95%)
        uint256 rareSkipRate; // Rate for first skip (e.g., 500 for 5%)
        uint256 epicSkipRate; // Rate for second skip (e.g., 100 for 1%)
    }

    // Only used for fetching the full active config for the UI.
    struct TierFullConfig {
        TierConfig tierConfig;
        SkipConfig skipConfig;
        uint256 hardCap;
    }

    event MergeInitiated(address indexed user, uint256 indexed requestId, uint256 indexed sourceTier);
    event MergeCompleted(
        address indexed user, uint256 indexed requestId, uint256 indexed sourceTier, uint256 resultTier
    );
    event TierConfigured(uint256 indexed tier, uint256 orbsRequired, uint256 ketCost, uint256 cooldownDuration);
    event HardCapConfigured(uint256 indexed tier, uint256 hardCap);
    event SkipRatesConfigured(uint256 indexed tier, uint256 normalRate, uint256 rareSkipRate, uint256 epicSkipRate);

    IERC20 public immutable ketToken;
    IOrbs public immutable orbsContract;

    bytes32 public immutable vrfKeyHash;
    uint256 public immutable vrfSubscriptionId;
    uint32 public constant VRF_CALLBACK_GAS_LIMIT = 300_000;
    uint16 public constant VRF_REQUEST_CONFIRMATIONS = 1;
    uint32 public constant VRF_NUM_WORDS = 1;

    uint256 public constant MIN_MERGE_TIER = 1;
    uint256 public constant MAX_MERGE_TIER = 5;
    uint256 public constant MAX_TIER = 6; // Holy tier

    mapping(uint256 => TierConfig) public tierConfigs;
    mapping(uint256 => SkipConfig) public skipConfigs;
    mapping(uint256 => MergeRequest) public mergeRequests;
    mapping(uint256 => uint256) public tierHardCaps;
    address public treasury;

    constructor(
        address _ketToken,
        address _orbsContract,
        address _vrfCoordinator,
        bytes32 _vrfKeyHash,
        uint256 _vrfSubscriptionId,
        address _treasury
    ) VRFConsumerBaseV2Plus(_vrfCoordinator) {
        require(_ketToken != address(0), "Invalid KET token address");
        require(_orbsContract != address(0), "Invalid Orbs contract address");
        require(_vrfCoordinator != address(0), "Invalid VRF Coordinator address");
        require(_treasury != address(0), "Invalid treasury address");

        ketToken = IERC20(_ketToken);
        orbsContract = IOrbs(_orbsContract);
        vrfKeyHash = _vrfKeyHash;
        vrfSubscriptionId = _vrfSubscriptionId;
        treasury = _treasury;
    }

    function configureTier(uint256 tier, uint256 orbsRequired, uint256 ketCost, uint256 cooldownDuration)
        external
        onlyOwner
    {
        require(orbsRequired > 0, "Invalid orbs required");
        require(tier >= MIN_MERGE_TIER && tier <= MAX_MERGE_TIER, "Invalid orb tier");

        tierConfigs[tier] = TierConfig({
            orbsRequired: orbsRequired,
            ketCost: ketCost,
            cooldownDuration: cooldownDuration,
            isConfigured: true
        });

        emit TierConfigured(tier, orbsRequired, ketCost, cooldownDuration);
    }

    function setTierHardCap(uint256 tier, uint256 hardCap) external onlyOwner {
        require(tier >= MIN_MERGE_TIER + 1 && tier <= MAX_TIER, "Invalid tier for hard cap");
        tierHardCaps[tier] = hardCap;
        emit HardCapConfigured(tier, hardCap);
    }

    function configureSkipRates(uint256 tier, uint256 normalRate, uint256 rareSkipRate, uint256 epicSkipRate)
        external
        onlyOwner
    {
        require(tier >= MIN_MERGE_TIER && tier <= MAX_MERGE_TIER, "Invalid orb tier");
        require(normalRate + rareSkipRate + epicSkipRate == 10000, "Rates must sum to 10000");

        skipConfigs[tier] = SkipConfig({normalRate: normalRate, rareSkipRate: rareSkipRate, epicSkipRate: epicSkipRate});

        emit SkipRatesConfigured(tier, normalRate, rareSkipRate, epicSkipRate);
    }

    function setTreasury(address _treasury) external onlyOwner {
        require(_treasury != address(0), "Invalid treasury address");
        treasury = _treasury;
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function mergeOrbs(uint256 tier) external whenNotPaused {
        TierConfig memory config = tierConfigs[tier];
        require(config.isConfigured, "Tier not configured");
        require(tier >= MIN_MERGE_TIER && tier <= MAX_MERGE_TIER, "Invalid orb tier");

        // Validate that we can do the merge.
        require(block.timestamp >= orbsContract.tierCooldowns(msg.sender, tier), "Orb type on cooldown");

        // Check if next tier has reached hard cap (if a cap is set)
        uint256 nextTier = tier + 1;
        uint256 hardCap = tierHardCaps[nextTier];
        if (hardCap > 0) {
            require(orbsContract.totalSupply(nextTier) < hardCap, "Next orb type at capacity");
        }

        // Check if user has enough orbs
        require(orbsContract.balanceOf(msg.sender, tier) >= config.orbsRequired, "Insufficient orbs");

        // Collect the inputs.
        require(ketToken.transferFrom(msg.sender, treasury, config.ketCost), "KET transfer failed");
        orbsContract.burn(msg.sender, tier, config.orbsRequired);
        orbsContract.setUserTierCooldown(msg.sender, tier, block.timestamp + config.cooldownDuration);

        // Request VRF callback to calculate result.
        uint256 requestId = s_vrfCoordinator.requestRandomWords(
            VRFV2PlusClient.RandomWordsRequest({
                keyHash: vrfKeyHash,
                subId: vrfSubscriptionId,
                requestConfirmations: VRF_REQUEST_CONFIRMATIONS,
                callbackGasLimit: VRF_CALLBACK_GAS_LIMIT,
                numWords: VRF_NUM_WORDS,
                extraArgs: VRFV2PlusClient._argsToBytes(VRFV2PlusClient.ExtraArgsV1({nativePayment: true}))
            })
        );

        // Store merge request details.
        mergeRequests[requestId] = MergeRequest({user: msg.sender, sourceTier: tier});
        emit MergeInitiated(msg.sender, requestId, tier);
    }

    function fulfillRandomWords(uint256 requestId, uint256[] calldata randomWords) internal override {
        MergeRequest memory request = mergeRequests[requestId];
        require(request.user != address(0), "Invalid request ID");

        // Clean up request
        delete mergeRequests[requestId];

        // Calculate result tier based on skip rates
        uint256 rand = (randomWords[0] % 10000); // 0-9999
        SkipConfig memory skipConfig = skipConfigs[request.sourceTier];

        uint256 resultTier;
        bool isRareSkip = false;
        bool isEpicSkip = false;

        if (rand < skipConfig.normalRate) {
            resultTier = request.sourceTier + 1;
        } else if (rand < skipConfig.normalRate + skipConfig.rareSkipRate) {
            resultTier = request.sourceTier + 2;
            isRareSkip = true;
        } else {
            resultTier = request.sourceTier + 3;
            isEpicSkip = true;
        }

        // Cap at maximum tier
        if (resultTier > MAX_TIER) {
            resultTier = MAX_TIER;
        }

        // Mint the new orb
        orbsContract.mint(request.user, resultTier, 1, "");
        emit MergeCompleted(request.user, requestId, request.sourceTier, resultTier);
    }

    function getAllTierConfigurations() external view returns (TierFullConfig[] memory) {
        TierFullConfig[] memory allConfigs = new TierFullConfig[](MAX_TIER - MIN_MERGE_TIER + 1);

        for (uint256 i = 0; i < allConfigs.length; i++) {
            uint256 tier = i + MIN_MERGE_TIER;
            allConfigs[i] = TierFullConfig({
                tierConfig: tierConfigs[tier],
                skipConfig: skipConfigs[tier],
                hardCap: tierHardCaps[tier + 1] // Hard cap applies to the next tier
            });
        }

        return allConfigs;
    }
}
