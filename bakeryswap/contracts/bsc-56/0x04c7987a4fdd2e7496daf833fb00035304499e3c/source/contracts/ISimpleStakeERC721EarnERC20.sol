// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0;

interface ISimpleStakeERC721EarnERC20 {
    event Harvest(address indexed user, uint256 amount);
    event Stake(address indexed user, uint256 indexed tokenId, uint256 amount);
    event Unstake(address indexed user, uint256 indexed tokenId, uint256 amount);
    event EmergencyUnstake(address indexed user, uint256 indexed tokenId, uint256 amount);

    event SetTokenPerBlock(address indexed user, uint256 tokenPerBlock);
    event SetTotalToBeMintAmount(address indexed user, uint256 oldTotalToBeMintAmount, uint256 newTotalToBeMintAmount);

    function initialize(
        address _erc721,
        address _erc20token,
        uint256 _startBlock,
        uint256 _tokenPerBlock,
        uint256 _totalToBeMintAmount
    ) external;

    function getTotalReward(uint256 _from, uint256 _to) external view returns (uint256 totalReward);

    function pendingToken(address _user) external view returns (uint256);

    function updateStaking() external;

    function harvest() external;

    function stake(uint256 _tokenId) external;

    function batchStake(uint256[] calldata _tokenIds) external;

    function unstake(uint256 _tokenId) external;

    function batchUnstake(uint256[] calldata _tokenIds) external;

    function unstakeAll() external;

    function emergencyUnstake(uint256 _tokenId) external;

    function emergencyUnstakeAll() external;

    function pauseStake() external;

    function unpauseStake() external;

    function setTokenPerBlock(uint256 _tokenPerBlock) external;

    function setTotalToBeMintAmount(uint256 _totalToBeMintAmount) external;
}
