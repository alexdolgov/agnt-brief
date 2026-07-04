// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IRewardsDistributor {
    event UserBalanceUpdated(address indexed asset, address indexed user, uint256 balance);
    event Claimed(address indexed user, uint256 amount, uint256 timestamp);
    event PoolAdded(address indexed asset, uint256 totalSupply);
    event PoolInitialized(address indexed asset);
    event PaidRent(address indexed user, address indexed asset, uint256 amount, uint128 startTime, uint128 endTime, uint256 timestamp);
    event RmEmissionPoint(address indexed asset, uint256 indexed _index, EmissionPoint _emissionPoint);

    struct UserInfo {
        uint256 amount; // tokens user own
        uint256 rewardDebt; // needed for a SushiSwap's formula... https://dev.to/heymarkkop/understanding-sushiswaps-masterchef-staking-rewards-1m6f
        uint256 baseClaimable; // on user token balance change - we save amount of money available for a claim at that moment
        uint256 lastEmissionPoint; // an array index
        uint256 claimed;
    }

    struct PoolInfo {
        uint256 totalSupply;
        uint256 decimals;
        uint256 lastRewardTime; // Last second that reward distribution occurs.
        uint256 accRewardPerShare; // Accumulated rewards per share, times 1e12.
        uint256 currentEmissionPoint;
        bool isInitialized;
    }

    struct EmissionPoint {
        uint128 startTime;
        uint128 endTime;
        uint256 rewardsPerSecond;
    }

    function getRewardToken() external view returns (address);

    function getPoolInfo(address asset) external view returns (PoolInfo memory);

    function poolLength() external view returns (uint256);

    function emissionScheduleLength(address _token) external view returns (uint256);

    function getEmissionPoints(address _token, uint256 startIndex) external view returns (EmissionPoint[] memory emissionPoints);

    function calculateActualEmissionPointPerPool(address _token) external view returns (uint256);

    function claim(address user, address[] calldata _tokens) external;

    function onUserBalanceChanged(address _user, uint256 _balance) external;
    function onUserBalanceChangedByOffPlan(address _user, uint256 _balance) external;

    function addPool(address _token, uint256 _decimals, uint256 _totalSupply) external;
    function addPoolForOffPlan(address _token, uint256 _decimals, uint256 _totalSupply) external;

    function initializePool(address _token) external;

    function payForRent(address _asset, uint256 _amount, uint128 _startTime, uint128 _endTime) external;

    function claimableRewards(address _user, address[] calldata _tokens) external view returns (uint256[] memory);

    function getUserRewards(address _user) external view returns (address[] memory);

    function getUserInfo(address _token, address _user) external view returns (UserInfo memory);

    function setPoolTotalSupply(uint _totalSupply) external;
}
