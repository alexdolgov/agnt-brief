// SPDX-License-Identifier: MIT
pragma solidity >=0.8.28;

interface IFalconPosition {

    struct DurationInfo {
        bool isSupported;
        bool mintEnabled;
        uint256 totalLiquidity; // Track total active liquidity per duration
        uint256 feeGrowthX128; // Accumulator for fees per duration
    }

    // Position info
    struct Position {
        uint256 principal;
        uint40 duration;
        uint40 startTime;
        uint40 maturityTime;
        uint256 feeGrowthInsideLastX128;
        uint256 tokensOwed;
    }

    // Errors
    error OperationNotAllowed();
    error InvalidAddress();
    error InvalidDuration();
    error InvalidAmount();
    error ImmaturePosition();

    // Events
    event PositionMinted(uint256 indexed tokenId, address indexed owner, uint256 principal, uint256 duration);
    event PositionClosed(uint256 indexed tokenId, address indexed owner, uint256 principal, uint256 duration);
    event FeesCollected(uint256 indexed tokenId, uint256 amount);
    event RewardsDeposited(uint256 duration, uint256 amount);
    event YieldCollectionChanged(bool oldEnabled, bool newEnabled);
    event MaturityProcessed(uint256 duration, uint256 timestamp, uint256 totalLiquidity, uint256 feeGrowthX128);
    event DurationUpdated(uint256 duration, bool isSupported, bool mintEnabled);

    // State changing functions
    function mint(uint256 principal, uint256 duration) external returns (uint256 tokenId);
    function mature(uint256 duration, uint256 timestamp) external;
    function depositRewards(uint256 duration, uint256 amount) external;
    function collect(uint256 tokenId) external returns (uint256);
    function unrealizedRewards(uint256 tokenId) external view returns (uint256);
    function withdraw(uint256 tokenId) external;

    // View functions
    function getPosition(uint256 tokenId) external view returns (Position memory);
    function isDurationSupported(uint256 duration) external view returns (bool);
    function isMintEnabled(uint256 duration) external view returns (bool);
    function getDurationInfo(uint256 duration) external view returns (DurationInfo memory);

}
