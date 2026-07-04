// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

interface AggregatorV3Interface {
    function latestAnswer() external view returns (int256);
}

contract PriceOracle is Initializable, AccessControlUpgradeable, PausableUpgradeable, UUPSUpgradeable {
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant PRICE_UPDATER_ROLE = keccak256("PRICE_UPDATER_ROLE");

    struct PriceSnapshot {
        uint256 priceUSD; // Price in USD with 8 decimals (like Chainlink)
        uint256 blockNumber;
        uint256 timestamp;
        bool exists;
    }

    // token => snapshotId => PriceSnapshot
    mapping(address => mapping(bytes32 => PriceSnapshot)) public tokenPrices;

    // token => array of snapshot IDs for enumeration
    mapping(address => bytes32[]) public tokenSnapshots;

    // token => decimals
    mapping(address => uint8) public tokenDecimals;

    // whitelisted tokens for rewards
    mapping(address => bool) public whitelistedTokens;

    // chainlink price feed for each token
    mapping(address => address) public chainlinkFeeds;

    // Special snapshot IDs
    bytes32 public constant PRE_HACK_SNAPSHOT = keccak256("PRE_HACK");
    bytes32 public constant CURRENT_SNAPSHOT = keccak256("CURRENT");

    event PriceUpdated(
        address indexed token,
        bytes32 indexed snapshotId,
        uint256 priceUSD,
        uint256 blockNumber,
        uint256 timestamp
    );

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address admin) public initializer {
        require(admin != address(0), "PriceOracle: Invalid admin address");

        __AccessControl_init();
        __Pausable_init();
        __UUPSUpgradeable_init();

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(ADMIN_ROLE, admin);
        _grantRole(PRICE_UPDATER_ROLE, admin);
    }

    function setTokenPrice(
        address token,
        bytes32 snapshotId,
        uint256 priceUSD,
        uint256 blockNumber,
        uint8 decimals
    ) external onlyRole(PRICE_UPDATER_ROLE) whenNotPaused {
        _setTokenPrice(token, snapshotId, priceUSD, blockNumber, decimals);
    }

    function setChainlinkFeed(address token, address feed) external onlyRole(ADMIN_ROLE) {
        require(token != address(0), "PriceOracle: Invalid token address");
        require(feed != address(0), "PriceOracle: Invalid feed address");
        chainlinkFeeds[token] = feed;
    }

    function _setTokenPrice(
        address token,
        bytes32 snapshotId,
        uint256 priceUSD,
        uint256 blockNumber,
        uint8 decimals
    ) internal {
        require(token != address(0), "PriceOracle: Invalid token address");
        require(priceUSD > 0, "PriceOracle: Price must be positive");
        require(snapshotId != bytes32(0), "PriceOracle: Invalid snapshot ID");

        // If this is a new snapshot for this token, add to enumeration
        if (!tokenPrices[token][snapshotId].exists) {
            tokenSnapshots[token].push(snapshotId);
        }

        // Store token decimals
        tokenDecimals[token] = decimals;

        tokenPrices[token][snapshotId] = PriceSnapshot({
            priceUSD: priceUSD,
            blockNumber: blockNumber,
            timestamp: block.timestamp,
            exists: true
        });

        emit PriceUpdated(token, snapshotId, priceUSD, blockNumber, block.timestamp);
    }

    function getTokenPrice(
        address token,
        bytes32 snapshotId
    ) external view returns (uint256 priceUSD, uint256 blockNumber, uint256 timestamp) {
        // If requesting current price and Chainlink feed is configured, use it
        if (snapshotId == CURRENT_SNAPSHOT && chainlinkFeeds[token] != address(0)) {
            int256 answer = AggregatorV3Interface(chainlinkFeeds[token]).latestAnswer();
            require(answer > 0, "PriceOracle: Invalid Chainlink price");

            return (uint256(answer), block.number, block.timestamp);
        }

        // Otherwise, use stored snapshot
        PriceSnapshot memory snapshot = tokenPrices[token][snapshotId];
        require(snapshot.exists, "PriceOracle: Price snapshot does not exist");

        return (snapshot.priceUSD, snapshot.blockNumber, snapshot.timestamp);
    }

    function calculateUSDValue(
        address token,
        bytes32 snapshotId,
        uint256 tokenAmount
    ) external view returns (uint256 usdValue) {
        uint8 decimals = tokenDecimals[token];
        require(decimals > 0, "PriceOracle: Token decimals not set");

        uint256 priceUSD;

        // If requesting current price and Chainlink feed is configured, use it
        if (snapshotId == CURRENT_SNAPSHOT && chainlinkFeeds[token] != address(0)) {
            int256 answer = AggregatorV3Interface(chainlinkFeeds[token]).latestAnswer();
            priceUSD = uint256(answer);
        } else {
            // Otherwise, use stored snapshot
            PriceSnapshot memory snapshot = tokenPrices[token][snapshotId];
            require(snapshot.exists, "PriceOracle: Price snapshot does not exist");
            priceUSD = snapshot.priceUSD;
        }

        // Calculate USD value: (tokenAmount * priceUSD) / (10^tokenDecimals)
        // Result will be in USD with 8 decimals
        usdValue = (tokenAmount * priceUSD) / (10 ** decimals);
    }

    function getTokenSnapshots(address token) external view returns (bytes32[] memory) {
        return tokenSnapshots[token];
    }

    function hasPrice(address token, bytes32 snapshotId) external view returns (bool) {
        return tokenPrices[token][snapshotId].exists;
    }

    function getPreHackPrice(address token) external view returns (uint256 priceUSD, uint256 blockNumber, uint256 timestamp) {
        return this.getTokenPrice(token, PRE_HACK_SNAPSHOT);
    }

    function setPreHackPrice(
        address token,
        uint256 priceUSD,
        uint256 blockNumber,
        uint8 decimals
    ) external onlyRole(PRICE_UPDATER_ROLE) whenNotPaused {
        _setTokenPrice(token, PRE_HACK_SNAPSHOT, priceUSD, blockNumber, decimals);
    }

    function addToWhitelist(address token) external onlyRole(ADMIN_ROLE) {
        require(token != address(0), "PriceOracle: Invalid token address");
        require(tokenDecimals[token] > 0, "PriceOracle: Token not configured");
        whitelistedTokens[token] = true;
    }

    function removeFromWhitelist(address token) external onlyRole(ADMIN_ROLE) {
        whitelistedTokens[token] = false;
    }

    function isWhitelisted(address token) external view returns (bool) {
        return whitelistedTokens[token];
    }

    function pause() external onlyRole(ADMIN_ROLE) {
        _pause();
    }

    function unpause() external onlyRole(ADMIN_ROLE) {
        _unpause();
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(ADMIN_ROLE) {}
}