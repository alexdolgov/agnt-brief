// SPDX-License-Identifier: MIT

pragma solidity =0.6.6;

interface ICommonStakeERC721EarnERC20 {
    event Harvest(address indexed user, address indexed poolAddress, uint256 amount);
    event Stake(address indexed user, address indexed poolAddress, uint256 indexed tokenId, uint256 amount);
    event Unstake(address indexed user, address indexed poolAddress, uint256 indexed tokenId, uint256 amount);
    event EmergencyUnstake(address indexed user, address indexed poolAddress, uint256 indexed tokenId, uint256 amount);
    event SetTokenPerBlock(address indexed user, uint256 tokenPerBlock);
    event AddTotalToBeMintAmount(address indexed user, uint256 pendingTotalToBeMintAmount, uint256 totalToBeMintAmount);

    function poolLength() external view returns (uint256);

    function add(
        uint256 _allocPoint,
        address _pair,
        bool _withUpdate
    ) external;

    function set(address _pair, uint256 _allocPoint) external;

    function setLastRewardBlock(address _pair, uint256 _lastRewardBlock) external;

    function setTokenPerBlock(uint256 _tokenPerBlock) external;

    function addTotalToBeMintAmount(uint256 _pendingTotalToBeMintAmount) external;

    function getTotalReward(uint256 _from, uint256 _to) external view returns (uint256 totalReward);

    function pendingToken(address _pair, address _user) external view returns (uint256);

    function massUpdatePools() external;

    function updatePool(address _pair) external;

    function harvest(address _pair) external;

    function stake(address _pair, uint256 _tokenId) external;

    function batchStake(address _pair, uint256[] calldata _tokenIds) external;

    function unstake(address _pair, uint256 _tokenId) external;

    function batchUnstake(address _pair, uint256[] calldata _tokenIds) external;

    function unstakeAll(address _pair) external;

    function emergencyUnstake(address _pair, uint256 _tokenId) external;

    function emergencyUnstakeAll(address _pair) external;

    function pauseStake() external;

    function unpauseStake() external;
}
