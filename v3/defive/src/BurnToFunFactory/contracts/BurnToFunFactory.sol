// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Clones } from "@openzeppelin/contracts/proxy/Clones.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/* ══════════════════════════════════════
   Minimal interfaces
   ══════════════════════════════════════ */
interface IMasterFarmer {
    function getVeFive(address user, uint256 timestamp) external view returns (uint256);
    function getVeFivePower(address user, uint256 timestamp) external view returns (uint256);
}

interface IBurnToFunCampaign {
    struct Tier {
        uint256 veFiveThreshold; // gate
        uint256 maxBurnAmount; // FIVE cap (wei)
        uint256 bonusMultiplier; // > 0
    }

    function initialize(
        address factory,
        address creator,
        address fiveToken,
        address masterFarmer,
        address deFiveRouter,
        address permit2, // optional
        uint256 baseBurnRatio,
        uint256 startTime,
        uint256 endTime,
        uint256 softCap,
        uint256 hardCap,
        uint256 creatorTokenPercent,
        uint256 devPercent,
        uint256 lpTokenPercent,
        uint256 lpFivePercent,
        string calldata tokenName,
        string calldata tokenSymbol,
        string calldata metadataURI,
        Tier[] calldata tiers,
        uint256 campaignId,
        uint256 vestingCliff,
        uint256 vestingEnd,
        bytes calldata extraInitData
    ) external;
}

interface IBurnToFunTokenFactory {
    function setAuthorizedCampaign(address campaign, bool authorized) external;
    function predictTokenAddress(address campaign) external view returns (address);
}

interface IBurnToFunVestingFactory {
    function setAuthorizedCampaign(address campaign, bool authorized) external;
    function predictVestingAddress(address campaign) external view returns (address);
}

/* ══════════════════════════════════════
   BurnToFunFactory
   - CREATE2 deterministic clones
   - Param/name guards
   - Tier% → absolute caps
   - Token/Vesting factory auth
   - Anti-spam: per-level cooldown (approved bypass)
   - Premium: community-funded tiers in FIVE
   ══════════════════════════════════════ */
contract BurnToFunFactory is ReentrancyGuard {
    using Clones for address;

    /* ---------- Errors ---------- */
    error InvalidParams();
    error NotAdmin();
    error NotDev();
    error NotAuthorized();
    error InvalidTierConfig();
    error InvalidCreatorCapLevelConfig();
    error NoCreatorCapLevelConfigured();
    error InvalidName();
    error InvalidSymbol();
    error InvalidMetadataURI();
    error InvalidTokenomics();
    error SymbolAlreadyUsed();
    error InvalidAddress();
    error Paused();
    error ImplementationNotSet();
    error FactoriesNotSet();
    error CloneAddressMismatch();
    error TransferFailed();
    error NotCampaign();
    error InvalidCreator();
    error AlreadyRecorded();
    error CreationTooSoon(uint256 nextEligible);
    error InvalidPremiumTier();
    error ZeroAmount();
    error PremiumFullyFunded();

    /* ---------- Events ---------- */
    event FactoryBootstrapped(
        address admin,
        address devTreasury,
        uint256 devPercent,
        bool publicCreationEnabled,
        bool paused,
        address fiveToken,
        address masterFarmer,
        address deFiveRouter,
        address permit2,
        address tokenFactory,
        address vestingFactory,
        uint256 campaignNonce,
        uint256 successfulCampaignNonce
    );

    event CampaignCreated(
        uint256 id,
        uint8 indexed kind,
        address indexed campaign,
        address indexed creator,
        address deFiveRouter,
        uint256 startTime,
        uint256 endTime,
        uint256 vestingCliff,
        uint256 vestingEnd,
        uint256 softCap,
        uint256 hardCap,
        uint256 baseBurnRatio,
        uint256 creatorTokenPercent,
        uint256 devPercent,
        uint256 lpTokenPercent,
        uint256 lpFivePercent,
        string tokenName,
        string tokenSymbol,
        string metadataURI,
        address predictedToken,
        address predictedVesting,
        bytes extraInitData
    );

    event TiersConfiguredSnapshot(
        uint256[] veFiveThresholds,
        uint256[] maxPercents,
        uint256[] bonusMultipliers,
        uint256 tiersLength,
        bytes32 tiersHash
    );

    event CreatorCapLevelsConfiguredSnapshot(
        uint256[] minSuccesses,
        uint256[] maxCreatorPercents,
        uint256[] creationDelays,
        uint256 levelsLength,
        bytes32 levelsHash
    );

    event CampaignTiersSnapshot(
        uint256 indexed id,
        address indexed campaign,
        uint256[] veFiveThresholds,
        uint256[] maxBurnAmounts,
        uint256[] bonusMultipliers,
        uint256 tiersLength
    );

    event ConfigUpdated(Config newConfig);
    event AdminChanged(address newAdmin);
    event CreatorAccessChanged(address indexed user, bool isApproved);
    event PublicCreationToggled(bool enabled);
    event FactoryPaused(bool status);
    event CoreContractsUpdated(address fiveToken, address masterFarmer, address deFiveRouter, address permit2);
    event AuxFactoriesUpdated(address tokenFactory, address vestingFactory);
    event CampaignImplementationUpdated(uint8 indexed kind, address implementation);
    event CreatorContributionRecorded(address indexed campaign, address indexed creator, uint256 amount);
    event DevTreasuryUpdated(address indexed treasury, uint256 percent);
    event DevTokensClaimed(address indexed token, uint256 amount, address indexed to);
    event NativeSwept(address indexed to, uint256 amount);
    event NativeReceived(address indexed from, uint256 amount);

    // Premium pricing + contributions (ascending, index-based)
    event PremiumPricesSet(uint256[] prices);
    event PremiumContributed(address indexed campaign, address indexed payer, uint256 amount, uint256 totalPaid);
    event PremiumSponsored(address indexed campaign, address indexed sponsor, uint256 amount, uint256 totalPaid);
    event PremiumTierUpdated(address indexed campaign, uint256 oldTier, uint256 newTier);

    // Donation
    event CreatorDonated(address indexed campaign, address indexed creator, address indexed donor, uint256 amount);

    /* ---------- Types ---------- */
    struct Config {
        uint256 minStartDelay;
        uint256 maxStartDelay;
        uint256 minDuration;
        uint256 maxDuration;
        uint256 lpTokenPercent; // token side (1e18=100%)
        uint256 lpRatio; // token:five (1e18)
        uint256 goal; // cap baseline
        uint256 requiredVeBalance; // public gate
        uint256 requiredVePower; // public gate
        uint256 vestingCliff; // secs
        uint256 vestingEnd; // secs
    }

    struct TierConfig {
        uint256 veFiveThreshold;
        uint256 maxPercent; // 1e18=100%
        uint256 bonusMultiplier; // > 0
    }

    struct CreatorCapLevel {
        uint256 minSuccesses; // ascending
        uint256 maxCreatorPercent; // ≤ MAX_CREATOR_PCT
        uint256 creationDelay; // cooldown secs
    }

    /* ---------- Constants ---------- */
    uint256 private constant ONE = 1e18;
    uint256 private constant MAX_DEV_PCT = 1e16; // 1%
    uint256 private constant MAX_OTHER_PCT = 8e17; // 80%
    uint256 private constant MAX_CREATOR_PCT = 1e17; // 10%

    /* ---------- Storage ---------- */
    address public admin;
    address public devTreasury;
    uint256 public devPercent;

    address public fiveToken;
    address public masterFarmer;
    address public deFiveRouter;
    address public permit2; // optional

    IBurnToFunTokenFactory public tokenFactory;
    IBurnToFunVestingFactory public vestingFactory;

    mapping(uint8 => address) public implementationOfKind; // kind → impl

    Config public config;
    TierConfig[] public tiers;
    CreatorCapLevel[] public creatorCapLevels;

    bool public publicCreationEnabled;
    mapping(address => bool) public approvedCreators;

    bool public paused;
    uint256 public campaignNonce;
    uint256 public successfulCampaignNonce;

    mapping(uint256 => address) public campaigns;
    mapping(address => bool) public isCampaign;
    mapping(address => address) public campaignCreator; // campaign → creator

    mapping(address => address[]) private creatorCampaigns;
    mapping(address => mapping(address => uint256)) private creatorCampaignAmount; // creator → (campaign → amount)
    mapping(address => uint256) private creatorSuccessfulCampaignsCount;

    mapping(bytes32 => bool) private usedSymbolHashes; // keccak(lower(symbol)) → used
    mapping(address => uint256) public lastCreationAt; // anti-spam cooldown

    // Premium: ascending indexed prices and per-campaign total paid
    uint256[] public premiumPrices; // e.g., [0, 100e18, 200e18, 300e18]
    mapping(address => uint256) public premiumPaid; // campaign → total FIVE contributed

    /* ---------- Init ---------- */
    constructor(address _fiveToken, address _masterFarmer, address _deFiveRouter, address _permit2) {
        if (_fiveToken == address(0) || _masterFarmer == address(0) || _deFiveRouter == address(0))
            revert InvalidAddress();
        admin = msg.sender;
        devTreasury = msg.sender;
        devPercent = MAX_DEV_PCT;
        fiveToken = _fiveToken;
        masterFarmer = _masterFarmer;
        deFiveRouter = _deFiveRouter;
        permit2 = _permit2; // may be zero / EOA

        emit FactoryBootstrapped(
            admin,
            devTreasury,
            devPercent,
            publicCreationEnabled,
            paused,
            fiveToken,
            masterFarmer,
            deFiveRouter,
            permit2,
            address(tokenFactory),
            address(vestingFactory),
            campaignNonce,
            successfulCampaignNonce
        );
    }

    /* ---------- Modifiers ---------- */
    modifier onlyAdmin() {
        if (msg.sender != admin) revert NotAdmin();
        _;
    }
    modifier onlyDev() {
        if (msg.sender != devTreasury) revert NotDev();
        _;
    }
    modifier onlyAuthorizedCreator() {
        if (!publicCreationEnabled) {
            if (!approvedCreators[msg.sender]) revert NotAuthorized();
        } else {
            if (!approvedCreators[msg.sender]) {
                uint256 veBal = IMasterFarmer(masterFarmer).getVeFive(msg.sender, block.timestamp);
                uint256 vePow = IMasterFarmer(masterFarmer).getVeFivePower(msg.sender, block.timestamp);
                if (veBal < config.requiredVeBalance || vePow < config.requiredVePower) revert NotAuthorized();
            }
        }
        _;
    }
    modifier notPaused() {
        if (paused) revert Paused();
        _;
    }

    /* ---------- Admin: roles & wiring ---------- */
    function setAdmin(address newAdmin) external onlyAdmin {
        if (newAdmin == address(0)) revert InvalidAddress();
        admin = newAdmin;
        emit AdminChanged(newAdmin);
    }

    function setCoreContracts(
        address _fiveToken,
        address _masterFarmer,
        address _deFiveRouter,
        address _permit2
    ) external onlyAdmin {
        if (_fiveToken == address(0) || _masterFarmer == address(0) || _deFiveRouter == address(0))
            revert InvalidAddress();
        if (_fiveToken.code.length == 0 || _masterFarmer.code.length == 0 || _deFiveRouter.code.length == 0)
            revert InvalidAddress();
        fiveToken = _fiveToken;
        masterFarmer = _masterFarmer;
        deFiveRouter = _deFiveRouter;
        permit2 = _permit2;
        emit CoreContractsUpdated(_fiveToken, _masterFarmer, _deFiveRouter, _permit2);
    }

    function setAuxFactories(address _tokenFactory, address _vestingFactory) external onlyAdmin {
        if (_tokenFactory == address(0) || _vestingFactory == address(0)) revert InvalidAddress();
        if (_tokenFactory.code.length == 0 || _vestingFactory.code.length == 0) revert InvalidAddress();
        tokenFactory = IBurnToFunTokenFactory(_tokenFactory);
        vestingFactory = IBurnToFunVestingFactory(_vestingFactory);
        emit AuxFactoriesUpdated(_tokenFactory, _vestingFactory);
    }

    function setCampaignImplementationByKind(uint8 kind, address impl) external onlyAdmin {
        if (impl == address(0) || impl.code.length == 0) revert InvalidAddress();
        implementationOfKind[kind] = impl;
        emit CampaignImplementationUpdated(kind, impl);
    }

    /* ---------- Admin: ops ---------- */
    function togglePublicCreation() external onlyAdmin {
        publicCreationEnabled = !publicCreationEnabled;
        emit PublicCreationToggled(publicCreationEnabled);
    }

    function setCreatorApproval(address user, bool approved) external onlyAdmin {
        approvedCreators[user] = approved;
        emit CreatorAccessChanged(user, approved);
    }

    function pause() external onlyAdmin {
        paused = true;
        emit FactoryPaused(true);
    }
    function unpause() external onlyAdmin {
        paused = false;
        emit FactoryPaused(false);
    }

    /* ---------- Admin: config ---------- */
    function updateConfig(Config calldata c) external onlyAdmin {
        // time windows
        if (c.minStartDelay == 0 || c.maxStartDelay == 0 || c.minStartDelay > c.maxStartDelay) revert InvalidParams();
        if (c.minDuration == 0 || c.maxDuration == 0 || c.minDuration > c.maxDuration) revert InvalidParams();
        // tokenomics
        if (c.lpTokenPercent == 0) revert InvalidParams();
        if (c.lpRatio == 0) revert InvalidParams();
        // vesting
        if (c.vestingCliff > c.vestingEnd) revert InvalidParams();
        // baseline
        if (c.goal == 0) revert InvalidParams();
        // hard caps
        if (c.lpTokenPercent > MAX_OTHER_PCT) revert InvalidParams();

        // dev + FIVE-side LP ≤ 80%
        uint256 lpFivePercent = _lpFivePercent(c.lpTokenPercent, c.lpRatio);
        if (devPercent + lpFivePercent > MAX_OTHER_PCT) revert InvalidParams();

        if (keccak256(abi.encode(config)) == keccak256(abi.encode(c))) return;
        config = c;
        emit ConfigUpdated(c);
    }

    function setTiers(TierConfig[] calldata newTiers) external onlyAdmin {
        uint256 len = newTiers.length;
        if (len == 0) revert InvalidTierConfig();

        // base tier sanity
        if (newTiers[0].veFiveThreshold != 0) revert InvalidTierConfig();
        if (newTiers[0].bonusMultiplier == 0) revert InvalidTierConfig();
        if (newTiers[0].maxPercent == 0 || newTiers[0].maxPercent > ONE) revert InvalidTierConfig();

        // ascending thresholds, bounded caps/bonus
        for (uint256 i = 1; i < len; ) {
            TierConfig calldata prev = newTiers[i - 1];
            TierConfig calldata cur = newTiers[i];
            if (cur.veFiveThreshold <= prev.veFiveThreshold) revert InvalidTierConfig();
            if (cur.bonusMultiplier == 0) revert InvalidTierConfig();
            if (cur.maxPercent == 0 || cur.maxPercent > ONE) revert InvalidTierConfig();
            unchecked {
                ++i;
            }
        }

        delete tiers;
        tiers = new TierConfig[](len);
        for (uint256 i; i < len; ) {
            tiers[i] = newTiers[i];
            unchecked {
                ++i;
            }
        }

        // snapshot
        uint256[] memory v = new uint256[](len);
        uint256[] memory p = new uint256[](len);
        uint256[] memory m = new uint256[](len);
        for (uint256 i; i < len; ) {
            TierConfig memory t = newTiers[i];
            v[i] = t.veFiveThreshold;
            p[i] = t.maxPercent;
            m[i] = t.bonusMultiplier;
            unchecked {
                ++i;
            }
        }
        emit TiersConfiguredSnapshot(v, p, m, len, keccak256(abi.encode(v, p, m)));
    }

    function setCreatorCapLevels(CreatorCapLevel[] calldata newLv) external onlyAdmin {
        uint256 len = newLv.length;
        if (len == 0) revert InvalidCreatorCapLevelConfig();

        // level[0] bounded & starts at 0
        if (newLv[0].minSuccesses != 0) revert InvalidCreatorCapLevelConfig();
        if (newLv[0].maxCreatorPercent > MAX_CREATOR_PCT) revert InvalidCreatorCapLevelConfig();

        // ascending & bounded
        for (uint256 i = 1; i < len; ) {
            if (newLv[i].minSuccesses <= newLv[i - 1].minSuccesses) revert InvalidCreatorCapLevelConfig();
            if (newLv[i].maxCreatorPercent > MAX_CREATOR_PCT) revert InvalidCreatorCapLevelConfig();
            unchecked {
                ++i;
            }
        }

        delete creatorCapLevels;
        creatorCapLevels = new CreatorCapLevel[](len);
        for (uint256 i; i < len; ) {
            creatorCapLevels[i] = newLv[i];
            unchecked {
                ++i;
            }
        }

        uint256[] memory ms = new uint256[](len);
        uint256[] memory mp = new uint256[](len);
        uint256[] memory cd = new uint256[](len);
        for (uint256 i; i < len; ) {
            ms[i] = newLv[i].minSuccesses;
            mp[i] = newLv[i].maxCreatorPercent;
            cd[i] = newLv[i].creationDelay;
            unchecked {
                ++i;
            }
        }
        emit CreatorCapLevelsConfiguredSnapshot(ms, mp, cd, len, keccak256(abi.encode(ms, mp, cd)));
    }

    /* ---------- Admin: premium pricing (ascending, index-based) ---------- */
    /// Example: setPremiumPrices([0, 100e18, 200e18, 300e18])
    function setPremiumPrices(uint256[] calldata prices) external onlyAdmin {
        uint256 n = prices.length;
        if (n == 0) revert InvalidPremiumTier();
        if (prices[0] != 0) revert InvalidPremiumTier();
        for (uint256 i = 1; i < n; ) {
            if (prices[i] <= prices[i - 1]) revert InvalidPremiumTier(); // strictly ascending
            unchecked {
                ++i;
            }
        }

        delete premiumPrices;
        premiumPrices = prices;
        emit PremiumPricesSet(prices);
    }

    /* ---------- Dev flows ---------- */
    function setDevTreasuryAndShare(address treasury, uint256 percent) external onlyDev {
        if (treasury == address(0)) revert InvalidAddress();
        if (percent > MAX_DEV_PCT) revert InvalidParams();
        devTreasury = treasury;
        devPercent = percent;
        emit DevTreasuryUpdated(treasury, percent);
    }

    function claimDevTokens(address token) external nonReentrant onlyDev {
        uint256 bal = IERC20(token).balanceOf(address(this));
        if (bal > 0) {
            bool ok = IERC20(token).transfer(devTreasury, bal);
            if (!ok) revert TransferFailed();
            emit DevTokensClaimed(token, bal, devTreasury);
        }
    }

    /* ---------- Creation ---------- */
    /// Deterministic clone for msg.sender (creator).
    function createCampaign(
        uint8 kind,
        uint256 startTime,
        uint256 endTime,
        uint256 softCap,
        uint256 hardCap,
        uint256 creatorTokenPercent,
        uint256 baseBurnRatio,
        string calldata tokenName,
        string calldata tokenSymbol,
        string calldata metadataURI,
        bytes calldata extraInitData
    ) external nonReentrant onlyAuthorizedCreator notPaused returns (address campaign) {
        if (tiers.length == 0) revert InvalidTierConfig();
        if (creatorCapLevels.length == 0) revert InvalidCreatorCapLevelConfig();
        if (address(tokenFactory) == address(0) || address(vestingFactory) == address(0)) revert FactoriesNotSet();

        address impl = implementationOfKind[kind];
        if (impl == address(0)) revert ImplementationNotSet();

        // level info (cap + cooldown); cooldown bypass if admin-approved
        (uint256 maxCreatorPercent, , , , uint256 nextEligible) = getCreatorLevelInfo(msg.sender);
        if (!approvedCreators[msg.sender]) {
            if (nextEligible != 0 && block.timestamp < nextEligible) revert CreationTooSoon(nextEligible);
        }

        // time & bounds
        uint256 nowTs = block.timestamp;
        if (startTime < nowTs + config.minStartDelay || startTime > nowTs + config.maxStartDelay)
            revert InvalidParams();
        if (endTime <= startTime) revert InvalidParams();
        uint256 duration = endTime - startTime;
        if (duration < config.minDuration || duration > config.maxDuration) revert InvalidParams();

        // caps
        if (softCap == 0 || hardCap == 0) revert InvalidParams();
        if (softCap >= hardCap) revert InvalidParams();
        if (hardCap < config.goal) revert InvalidParams();

        // tokenomics
        if (creatorTokenPercent > maxCreatorPercent) revert InvalidParams();
        if (baseBurnRatio == 0) revert InvalidParams();

        // names
        if (usedSymbolHashes[_symbolHash(tokenSymbol)]) revert SymbolAlreadyUsed();
        if (!_isValidTokenName(tokenName)) revert InvalidName();
        if (!_isValidTokenSymbol(tokenSymbol)) revert InvalidSymbol();

        // metadata
        if (bytes(metadataURI).length == 0 || bytes(metadataURI).length > 512) revert InvalidMetadataURI();

        // leave room for users
        if (creatorTokenPercent > MAX_OTHER_PCT - config.lpTokenPercent - devPercent) revert InvalidTokenomics();

        // LP sanity
        uint256 lpFivePercent = _lpFivePercent(config.lpTokenPercent, config.lpRatio);
        if (devPercent + lpFivePercent > MAX_OTHER_PCT) revert InvalidTokenomics();

        // tiers → absolute caps
        IBurnToFunCampaign.Tier[] memory t = _convertTiersToCampaignFormat(softCap);

        // snapshot arrays
        uint256 len = t.length;
        uint256[] memory th = new uint256[](len);
        uint256[] memory caps = new uint256[](len);
        uint256[] memory mult = new uint256[](len);
        for (uint256 i; i < len; ) {
            th[i] = t[i].veFiveThreshold;
            caps[i] = t[i].maxBurnAmount;
            mult[i] = t[i].bonusMultiplier;
            unchecked {
                ++i;
            }
        }

        // CREATE2 clone
        uint256 id = campaignNonce + 1;
        bytes32 salt = _campaignSalt(msg.sender, id, kind);
        address predicted = Clones.predictDeterministicAddress(impl, salt, address(this));
        address clone = impl.cloneDeterministic(salt);
        if (clone != predicted) revert CloneAddressMismatch();

        // init clone
        IBurnToFunCampaign(clone).initialize(
            address(this),
            msg.sender,
            fiveToken,
            masterFarmer,
            deFiveRouter,
            permit2,
            baseBurnRatio,
            startTime,
            endTime,
            softCap,
            hardCap,
            creatorTokenPercent,
            devPercent,
            config.lpTokenPercent,
            lpFivePercent,
            tokenName,
            tokenSymbol,
            metadataURI,
            t,
            id,
            config.vestingCliff,
            config.vestingEnd,
            extraInitData
        );

        // authorize aux factories
        tokenFactory.setAuthorizedCampaign(clone, true);
        vestingFactory.setAuthorizedCampaign(clone, true);

        // registry
        campaign = clone;
        campaigns[id] = clone;
        creatorCampaigns[msg.sender].push(clone);
        isCampaign[clone] = true;
        campaignCreator[clone] = msg.sender;
        usedSymbolHashes[_symbolHash(tokenSymbol)] = true;

        // cooldown stamp
        lastCreationAt[msg.sender] = block.timestamp;

        address predictedToken = tokenFactory.predictTokenAddress(clone);
        address predictedVesting = vestingFactory.predictVestingAddress(clone);

        unchecked {
            campaignNonce++;
        }

        emit CampaignCreated(
            id,
            kind,
            clone,
            msg.sender,
            deFiveRouter,
            startTime,
            endTime,
            config.vestingCliff,
            config.vestingEnd,
            softCap,
            hardCap,
            baseBurnRatio,
            creatorTokenPercent,
            devPercent,
            config.lpTokenPercent,
            _lpFivePercent(config.lpTokenPercent, config.lpRatio),
            tokenName,
            tokenSymbol,
            metadataURI,
            predictedToken,
            predictedVesting,
            extraInitData
        );
        emit CampaignTiersSnapshot(id, clone, th, caps, mult, len);
    }

    /* ---------- Premium (community-funded) ---------- */
    /// Contribute any positive amount of FIVE toward a campaign's premium status.
    /// Funds flow to devTreasury. If last tier is already reached, contributions are blocked.
    function contributePremium(address campaign, uint256 amount) external nonReentrant {
        if (!isCampaign[campaign]) revert NotCampaign();
        if (amount == 0) revert ZeroAmount();

        uint256 n = premiumPrices.length;
        if (n == 0) revert InvalidPremiumTier();
        uint256 lastPrice = premiumPrices[n - 1];
        if (lastPrice == 0) revert InvalidPremiumTier();

        uint256 oldPaid = premiumPaid[campaign];
        if (oldPaid >= lastPrice) revert PremiumFullyFunded();

        bool sponsored = (msg.sender == devTreasury);
        if (!sponsored) {
            bool ok = IERC20(fiveToken).transferFrom(msg.sender, devTreasury, amount);
            if (!ok) revert TransferFailed();
        }

        uint256 newPaid = oldPaid + amount;
        premiumPaid[campaign] = newPaid;

        if (sponsored) {
            emit PremiumSponsored(campaign, msg.sender, amount, newPaid);
        } else {
            emit PremiumContributed(campaign, msg.sender, amount, newPaid);
        }

        uint256 oldTier = _currentPremiumTierIndex(oldPaid);
        uint256 newTier = _currentPremiumTierIndex(newPaid);
        if (newTier > oldTier) {
            emit PremiumTierUpdated(campaign, oldTier, newTier);
        }
    }

    /// Info for UIs: (currentTierIndex, totalPaid)
    function getPremiumInfo(address campaign) external view returns (uint256 tierIndex, uint256 totalPaid) {
        totalPaid = premiumPaid[campaign];
        tierIndex = _currentPremiumTierIndex(totalPaid);
    }

    /* ---------- Donation  ---------- */
    /// Donate FIVE to the creator of a campaign (not the campaign contract).
    function donateToCreator(address campaign, uint256 amount) external nonReentrant {
        if (!isCampaign[campaign]) revert NotCampaign();
        if (amount == 0) revert ZeroAmount();

        address creator = campaignCreator[campaign];
        if (creator == address(0)) revert InvalidCreator();

        bool ok = IERC20(fiveToken).transferFrom(msg.sender, creator, amount);
        if (!ok) revert TransferFailed();

        emit CreatorDonated(campaign, creator, msg.sender, amount);
    }

    /* ---------- Creator accounting ---------- */
    /// Called once by campaign.finalize() on success (amount > 0).
    function recordCreatorContribution(address creator, uint256 amount) external {
        if (!isCampaign[msg.sender]) revert NotCampaign();
        if (creator != campaignCreator[msg.sender]) revert InvalidCreator();
        if (amount == 0) revert InvalidParams();
        if (creatorCampaignAmount[creator][msg.sender] != 0) revert AlreadyRecorded();

        creatorCampaignAmount[creator][msg.sender] = amount;

        unchecked {
            creatorSuccessfulCampaignsCount[creator]++;
            successfulCampaignNonce++;
        }

        emit CreatorContributionRecorded(msg.sender, creator, amount);
    }

    /* ---------- Views ---------- */
    function creatorCampaignCount(address creator) external view returns (uint256) {
        return creatorCampaigns[creator].length;
    }

    function creatorSuccessfulCampaignCount(address creator) external view returns (uint256) {
        return creatorSuccessfulCampaignsCount[creator];
    }

    /// Paged read: campaigns & amounts for a creator (amount>0 only if successful).
    function getCreatorCampaigns(
        address creator,
        uint256 offset,
        uint256 limit
    ) external view returns (address[] memory campaigns_, uint256[] memory amounts_) {
        address[] storage all = creatorCampaigns[creator];
        uint256 n = all.length;
        if (offset > n) offset = n;
        uint256 end = offset + limit;
        if (end > n) end = n;

        uint256 len = end > offset ? end - offset : 0;
        campaigns_ = new address[](len);
        amounts_ = new uint256[](len);

        for (uint256 i; i < len; ) {
            address c = all[offset + i];
            campaigns_[i] = c;
            amounts_[i] = creatorCampaignAmount[creator][c];
            unchecked {
                ++i;
            }
        }
    }

    function tiersLength() external view returns (uint256) {
        return tiers.length;
    }
    function getTiers() external view returns (TierConfig[] memory) {
        return tiers;
    }
    function creatorCapLevelsLength() external view returns (uint256) {
        return creatorCapLevels.length;
    }
    function getCreatorCapLevels() external view returns (CreatorCapLevel[] memory) {
        return creatorCapLevels;
    }

    /// Full creator level info: (maxCreatorPercent, levelIdx, creationDelay, lastCreation, nextEligible)
    function getCreatorLevelInfo(
        address creator
    )
        public
        view
        returns (uint256 maxCreatorPercent, uint256 idx, uint256 creationDelay, uint256 last, uint256 nextEligible)
    {
        uint256 n = creatorCapLevels.length;
        if (n == 0) revert NoCreatorCapLevelConfigured();

        uint256 successes = creatorSuccessfulCampaignsCount[creator];
        for (uint256 i = n; i > 0; ) {
            if (successes >= creatorCapLevels[i - 1].minSuccesses) {
                idx = i - 1;
                break;
            }
            unchecked {
                --i;
            }
        }

        CreatorCapLevel storage lv = creatorCapLevels[idx];
        maxCreatorPercent = lv.maxCreatorPercent;
        creationDelay = lv.creationDelay;

        last = lastCreationAt[creator];
        nextEligible = (creationDelay == 0 || last == 0) ? 0 : last + creationDelay;
    }

    function predictCampaignAddress(address creator, uint256 nonce_, uint8 kind) external view returns (address) {
        address impl = implementationOfKind[kind];
        if (impl == address(0)) revert ImplementationNotSet();
        return Clones.predictDeterministicAddress(impl, _campaignSalt(creator, nonce_, kind), address(this));
    }

    /// Case-insensitive symbol check.
    function isSymbolUsed(string calldata symbol) external view returns (bool) {
        return usedSymbolHashes[_symbolHash(symbol)];
    }

    /* ---------- Funds ---------- */
    function sweepNative(address to) external onlyAdmin nonReentrant {
        if (to == address(0)) revert InvalidAddress();
        uint256 bal = address(this).balance;
        (bool ok, ) = to.call{ value: bal }("");
        if (!ok) revert TransferFailed();
        emit NativeSwept(to, bal);
    }

    /* ---------- Internals ---------- */
    function _convertTiersToCampaignFormat(
        uint256 softCap
    ) internal view returns (IBurnToFunCampaign.Tier[] memory result) {
        uint256 len = tiers.length;
        result = new IBurnToFunCampaign.Tier[](len);

        // absolute cap base = max(softCap, goal)
        uint256 maxBase = softCap > config.goal ? softCap : config.goal;

        for (uint256 i; i < len; ) {
            TierConfig memory src = tiers[i];
            result[i] = IBurnToFunCampaign.Tier({
                veFiveThreshold: src.veFiveThreshold,
                maxBurnAmount: (maxBase * src.maxPercent) / ONE,
                bonusMultiplier: src.bonusMultiplier
            });
            unchecked {
                ++i;
            }
        }
    }

    function _lpFivePercent(uint256 lpTokenPercent, uint256 lpRatio) internal pure returns (uint256) {
        return (lpTokenPercent * lpRatio) / ONE;
    }

    function _campaignSalt(address creator, uint256 nonce_, uint8 kind) internal view returns (bytes32) {
        return keccak256(abi.encodePacked("B2F:CAMPAIGN", creator, nonce_, kind, block.chainid));
    }

    /// Compute current tier index from total paid using ascending premiumPrices.
    /// Example: prices [0,100,200,300] → paid 0..99: tier 0; 100..199: tier 1; etc.
    function _currentPremiumTierIndex(uint256 paid) internal view returns (uint256 idx) {
        uint256 n = premiumPrices.length;
        if (n == 0) return 0;
        // linear scan (arrays are small; simple & gas-predictable)
        // Invariant: premiumPrices is strictly ascending.
        while (idx + 1 < n && paid >= premiumPrices[idx + 1]) {
            unchecked {
                ++idx;
            }
        }
    }

    // small utils
    function _isValidTokenName(string calldata name) internal pure returns (bool) {
        bytes calldata b = bytes(name);
        if (b.length == 0 || b.length > 32) return false;
        bool hasNonSpace;
        for (uint256 i; i < b.length; ) {
            uint8 c = uint8(b[i]);
            if (c < 32 || c > 126) return false; // printable ASCII
            if (c != 32) hasNonSpace = true;
            unchecked {
                ++i;
            }
        }
        return hasNonSpace;
    }

    function _isValidTokenSymbol(string calldata symbol) internal pure returns (bool) {
        bytes calldata b = bytes(symbol);
        if (b.length == 0 || b.length > 11) return false;
        for (uint256 i; i < b.length; ) {
            bytes1 ch = b[i];
            bool az = (ch >= 0x41 && ch <= 0x5A) || (ch >= 0x61 && ch <= 0x7A);
            bool n0 = (ch >= 0x30 && ch <= 0x39);
            if (!(az || n0)) return false;
            unchecked {
                ++i;
            }
        }
        return true;
    }

    function _toLower(string memory s) internal pure returns (string memory) {
        bytes memory a = bytes(s);
        bytes memory o = new bytes(a.length);
        for (uint256 i; i < a.length; ) {
            bytes1 ch = a[i];
            o[i] = (ch >= 0x41 && ch <= 0x5A) ? bytes1(uint8(ch) + 32) : ch;
            unchecked {
                ++i;
            }
        }
        return string(o);
    }

    function _symbolHash(string memory s) internal pure returns (bytes32) {
        return keccak256(bytes(_toLower(s)));
    }

    /* ---------- Native handling ---------- */
    receive() external payable {
        if (msg.value > 0) emit NativeReceived(msg.sender, msg.value);
    }
    fallback() external payable {
        if (msg.value > 0) emit NativeReceived(msg.sender, msg.value);
    }
}
