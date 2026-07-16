// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Clones } from "@openzeppelin/contracts/proxy/Clones.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// Minimal veFIVE interface for gating public creators
interface IMasterFarmer {
    function getVeFive(address user, uint256 timestamp) external view returns (uint256);
    function getVeFivePower(address user, uint256 timestamp) external view returns (uint256);
}

/// Campaign clone initializer interface (must match the clone's initializer)
interface IBurnToFunCampaignClone {
    struct Tier {
        uint256 veFiveThreshold; // required veFIVE
        uint256 maxBurnAmount; // absolute FIVE limit for this tier (wei)
        uint256 bonusMultiplier; // 1e18 = 1.0x
    }

    function initialize(
        address factory,
        address creator,
        address fiveToken,
        address masterFarmer,
        address deFiveRouter,
        uint256 baseBurnRatio,
        uint256 startTime,
        uint256 endTime,
        uint256 softCap,
        uint256 hardCap,
        uint256 creatorTokenPercent,
        uint256 lpTokenPercent,
        uint256 lpFivePercent,
        string calldata tokenName,
        string calldata tokenSymbol,
        Tier[] calldata tiers,
        uint256 campaignId,
        uint256 vestingCliff,
        uint256 vestingEnd
    ) external;
}

/// Token/Vesting factories (admin-gated `setAuthorizedCampaign`)
interface IBurnToFunTokenFactory {
    function setAuthorizedCampaign(address campaign, bool authorized) external;
    function predictTokenAddress(address campaign) external view returns (address);
}

interface IBurnToFunVestingFactory {
    function setAuthorizedCampaign(address campaign, bool authorized) external;
    function predictVestingAddress(address campaign) external view returns (address);
}

/// @title BurnToFunCampaignFactory (Clone-based)
/// @notice Deploys deterministic campaign clones (CREATE2), validates params/names,
///         converts tier percents to absolute burn caps, and authorizes the new
///         campaign in the Token/Vesting factories.
contract BurnToFunCampaignFactory is ReentrancyGuard {
    using Clones for address;

    // ----------------- Errors -----------------
    error InvalidParams();
    error NotAdmin();
    error NotAuthorized();
    error InvalidTierConfig();
    error InvalidName();
    error InvalidSymbol();
    error SymbolAlreadyUsed();
    error InvalidAddress();
    error InvalidRecipient();
    error Paused();
    error ImplementationNotSet();
    error FactoriesNotSet();
    error CloneAddressMismatch();
    error TransferFailed();

    // ----------------- Events -----------------
    event CampaignCreated(
        uint256 indexed id,
        address indexed campaign,
        address indexed owner,
        string tokenSymbol,
        string tokenName
    );
    event ConfigUpdated(Config newConfig);
    event AdminChanged(address newAdmin);
    event CreatorAccessChanged(address indexed user, bool isApproved);
    event PublicCreationToggled(bool enabled);
    event FactoryPaused(bool status);
    event CoreContractsUpdated(address fiveToken, address masterFarmer, address deFiveRouter);
    event AuxFactoriesUpdated(address tokenFactory, address vestingFactory);
    event CampaignImplementationUpdated(address campaignImplementation);
    event TiersUpdated();

    // ----------------- Structs -----------------
    struct Config {
        uint256 minStartDelay;
        uint256 maxStartDelay;
        uint256 minDuration;
        uint256 maxDuration;
        uint256 lpTokenPercent; // 1e18 = 100%
        uint256 lpRatio; // 1e18 = 1.0x (token:five)
        uint256 maxCreatorPercent; // 1e18 = 100%
        uint256 goal; // default target used in tier cap calc
        uint256 requiredVeBalance; // gate for public creation
        uint256 requiredVePower; // gate for public creation
        uint256 vestingCliff; // relative seconds
        uint256 vestingEnd; // relative seconds
    }

    /// Factory tier config (percentages)
    struct TierConfig {
        uint256 veFiveThreshold; // e18
        uint256 maxPercent; // e18 of base (softCap vs goal)
        uint256 bonusMultiplier; // e18
    }

    // ----------------- State -----------------
    address public admin;

    // core external contracts
    address public fiveToken;
    address public masterFarmer;
    address public deFiveRouter;

    // aux factories (must grant this factory admin on both)
    IBurnToFunTokenFactory public tokenFactory;
    IBurnToFunVestingFactory public vestingFactory;

    // campaign clone implementation
    address public campaignImplementation;

    // config & tiers
    Config public config;
    TierConfig[] public tiers;

    // creator gating
    bool public publicCreationEnabled = false;
    mapping(address => bool) public approvedCreators;

    // status & registry
    bool public paused;
    uint256 public campaignNonce;
    address[] public allCampaigns;
    mapping(uint256 => address) public campaigns;
    mapping(address => address[]) public campaignsByCreator;
    mapping(string => bool) public usedSymbols;

    // ----------------- Constructor -----------------
    constructor(address _fiveToken, address _masterFarmer, address _deFiveRouter) {
        if (_fiveToken == address(0) || _masterFarmer == address(0) || _deFiveRouter == address(0)) {
            revert InvalidAddress();
        }
        admin = msg.sender;
        fiveToken = _fiveToken;
        masterFarmer = _masterFarmer;
        deFiveRouter = _deFiveRouter;
    }

    // ----------------- Modifiers -----------------
    modifier onlyAdmin() {
        if (msg.sender != admin) revert NotAdmin();
        _;
    }

    modifier onlyAuthorizedCreator() {
        if (!publicCreationEnabled) {
            if (!approvedCreators[msg.sender]) revert NotAuthorized();
        } else {
            if (!approvedCreators[msg.sender]) {
                uint256 veBalance = IMasterFarmer(masterFarmer).getVeFive(msg.sender, block.timestamp);
                uint256 vePower = IMasterFarmer(masterFarmer).getVeFivePower(msg.sender, block.timestamp);
                if (veBalance < config.requiredVeBalance || vePower < config.requiredVePower) revert NotAuthorized();
            }
        }
        _;
    }

    modifier notPaused() {
        if (paused) revert Paused();
        _;
    }

    // ----------------- Admin: core & aux -----------------
    function setAdmin(address newAdmin) external onlyAdmin {
        if (newAdmin == address(0)) revert InvalidAddress();
        admin = newAdmin;
        emit AdminChanged(newAdmin);
    }

    function setCoreContracts(address _fiveToken, address _masterFarmer, address _deFiveRouter) external onlyAdmin {
        if (_fiveToken == address(0) || _masterFarmer == address(0) || _deFiveRouter == address(0)) {
            revert InvalidAddress();
        }
        fiveToken = _fiveToken;
        masterFarmer = _masterFarmer;
        deFiveRouter = _deFiveRouter;
        emit CoreContractsUpdated(_fiveToken, _masterFarmer, _deFiveRouter);
    }

    function setAuxFactories(address _tokenFactory, address _vestingFactory) external onlyAdmin {
        if (_tokenFactory == address(0) || _vestingFactory == address(0)) revert InvalidAddress();
        tokenFactory = IBurnToFunTokenFactory(_tokenFactory);
        vestingFactory = IBurnToFunVestingFactory(_vestingFactory);
        emit AuxFactoriesUpdated(_tokenFactory, _vestingFactory);
    }

    function setCampaignImplementation(address _campaignImplementation) external onlyAdmin {
        if (_campaignImplementation == address(0)) revert InvalidAddress();
        campaignImplementation = _campaignImplementation;
        emit CampaignImplementationUpdated(_campaignImplementation);
    }

    // ----------------- Admin: ops toggles -----------------
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

    // ----------------- Admin: config & tiers -----------------
    function updateConfig(Config calldata newConfig) external onlyAdmin {
        if (keccak256(abi.encode(config)) == keccak256(abi.encode(newConfig))) return;
        config = newConfig;
        emit ConfigUpdated(newConfig);
    }

    function setTiers(TierConfig[] calldata newTiers) external onlyAdmin {
        uint256 len = newTiers.length;
        delete tiers;
        tiers = new TierConfig[](len);
        for (uint256 i; i < len; ) {
            if (i > 0 && newTiers[i].veFiveThreshold <= newTiers[i - 1].veFiveThreshold) {
                revert InvalidTierConfig();
            }
            tiers[i] = newTiers[i];
            unchecked {
                ++i;
            }
        }
        emit TiersUpdated();
    }

    // ----------------- Campaign creation -----------------
    /// @notice Create a new deterministic campaign clone for the caller (creator).
    function createCampaign(
        // creator params
        uint256 startTime,
        uint256 endTime,
        uint256 softCap,
        uint256 hardCap,
        uint256 creatorTokenPercent, // 1e18
        uint256 baseBurnRatio, // tokens per FIVE, scaled 1e18
        string calldata tokenName,
        string calldata tokenSymbol
    ) external nonReentrant onlyAuthorizedCreator notPaused returns (address campaign) {
        if (tiers.length == 0) revert InvalidTierConfig();
        if (campaignImplementation == address(0)) revert ImplementationNotSet();
        if (address(tokenFactory) == address(0) || address(vestingFactory) == address(0)) revert FactoriesNotSet();

        // ---- param validation (your semantics) ----
        if (
            startTime < block.timestamp + config.minStartDelay ||
            startTime > block.timestamp + config.maxStartDelay ||
            endTime <= startTime + config.minDuration ||
            endTime > startTime + config.maxDuration ||
            softCap < config.goal / 5 ||
            hardCap < softCap * 2 ||
            hardCap < config.goal ||
            creatorTokenPercent > config.maxCreatorPercent ||
            baseBurnRatio == 0
        ) revert InvalidParams();

        // name/symbol checks + symbol uniqueness
        {
            string memory lower = _toLower(tokenSymbol);
            if (usedSymbols[lower]) revert SymbolAlreadyUsed();
            if (!_isValidTokenName(tokenName)) revert InvalidName();
            if (!_isValidTokenSymbol(tokenSymbol)) revert InvalidSymbol();
            usedSymbols[lower] = true;
        }

        // ---- compute LP params ----
        uint256 lpFivePercent = (config.lpTokenPercent * config.lpRatio) / 1e18;

        // ---- convert factory tiers to absolute caps ----
        IBurnToFunCampaignClone.Tier[] memory t = _convertTiersToCampaignFormat(softCap);

        // ---- deterministic salt & address ----
        uint256 id = campaignNonce;
        bytes32 salt = _campaignSalt(msg.sender, id);

        address predicted = Clones.predictDeterministicAddress(campaignImplementation, salt, address(this));
        address clone = campaignImplementation.cloneDeterministic(salt);
        if (clone != predicted) revert CloneAddressMismatch();

        // initialize on the actual clone address
        IBurnToFunCampaignClone(clone).initialize(
            address(this),
            msg.sender,
            fiveToken,
            masterFarmer,
            deFiveRouter,
            baseBurnRatio,
            startTime,
            endTime,
            softCap,
            hardCap,
            creatorTokenPercent,
            config.lpTokenPercent,
            lpFivePercent,
            tokenName,
            tokenSymbol,
            t,
            id,
            config.vestingCliff,
            config.vestingEnd
        );

        // ---- registry ----
        campaign = clone;
        campaigns[id] = clone;
        allCampaigns.push(clone);
        campaignsByCreator[msg.sender].push(clone);
        unchecked {
            campaignNonce = id + 1;
        }

        // ---- authorize in aux factories ----
        tokenFactory.setAuthorizedCampaign(clone, true);
        vestingFactory.setAuthorizedCampaign(clone, true);

        emit CampaignCreated(id, clone, msg.sender, tokenSymbol, tokenName);
    }

    /// @notice Predict the campaign address for a given (creator, nonce).
    function predictCampaignAddress(address creator, uint256 nonce_) external view returns (address) {
        return
            Clones.predictDeterministicAddress(campaignImplementation, _campaignSalt(creator, nonce_), address(this));
    }

    // ----------------- Views -----------------
    function totalCampaigns() external view returns (uint256) {
        return allCampaigns.length;
    }

    function getAllCampaigns() external view returns (address[] memory) {
        return allCampaigns;
    }

    function getCampaign(uint256 id) external view returns (address) {
        return campaigns[id];
    }

    function getCampaignsByCreator(address user) external view returns (address[] memory) {
        return campaignsByCreator[user];
    }

    function getTiers() external view returns (TierConfig[] memory) {
        return tiers;
    }

    // ----------------- Internals -----------------
    function _convertTiersToCampaignFormat(
        uint256 softCap
    ) internal view returns (IBurnToFunCampaignClone.Tier[] memory result) {
        uint256 len = tiers.length;
        result = new IBurnToFunCampaignClone.Tier[](len);

        // base for absolute cap = max(softCap, config.goal)
        uint256 maxBase = softCap > config.goal ? softCap : config.goal;

        for (uint256 i; i < len; ) {
            TierConfig memory src = tiers[i];
            result[i] = IBurnToFunCampaignClone.Tier({
                veFiveThreshold: src.veFiveThreshold,
                maxBurnAmount: (maxBase * src.maxPercent) / 1e18,
                bonusMultiplier: src.bonusMultiplier
            });
            unchecked {
                ++i;
            }
        }
    }

    function _campaignSalt(address creator, uint256 nonce_) internal view returns (bytes32) {
        return keccak256(abi.encodePacked("B2F:CAMPAIGN", creator, nonce_, block.chainid));
    }

    // --- local utils (kept here to avoid extra libs) ---
    function _isValidTokenName(string calldata name) internal pure returns (bool) {
        bytes calldata b = bytes(name);
        if (b.length == 0 || b.length > 32) return false;
        bool hasNonSpace;
        for (uint256 i; i < b.length; ) {
            uint8 c = uint8(b[i]);
            if (c < 32 || c > 126) return false; // printable ASCII only
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
            bytes1 char = b[i];
            if (
                !(char >= 0x41 && char <= 0x5A) && // A-Z
                !(char >= 0x61 && char <= 0x7A) && // a-z
                !(char >= 0x30 && char <= 0x39) // 0-9
            ) return false;
            unchecked {
                ++i;
            }
        }
        return true;
    }

    function _toLower(string memory str) internal pure returns (string memory) {
        bytes memory s = bytes(str);
        bytes memory out = new bytes(s.length);
        for (uint256 i; i < s.length; ) {
            bytes1 ch = s[i];
            out[i] = (ch >= 0x41 && ch <= 0x5A) ? bytes1(uint8(ch) + 32) : ch;
            unchecked {
                ++i;
            }
        }
        return string(out);
    }
}
