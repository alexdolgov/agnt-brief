// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

interface IBoardroomV2 {
    function balanceOf(address _member) external view returns (uint256);

    function earned(address _member) external view returns (uint256);

    function canWithdraw(address _member) external view returns (bool);

    function canClaimReward(address _member) external view returns (bool);

    function epoch() external view returns (uint256);

    function nextEpochPoint() external view returns (uint256);

    function getMainTokenPrice() external view returns (uint256);

    function setOperator(address _operator) external;

    function setRewardLockupEpoch(uint256 _value) external;

    function setWithdrawLockupEpoch(uint256 _value) external;

    function stake(uint256 _amount) external;

    function withdraw(uint256 _amount) external;

    function exit() external;

    function claimReward() external;

    function allocateSeigniorage(uint256 _amount) external;
    
    function totalSupply() external view returns (uint256);

    function calculateEstimateReward(uint256 _tokenPrice) external view returns (uint256);

    function calculateReward(uint256 _tokenPrice) external view returns (uint256);

    function countEpoch(uint256 _tokenPrice) external;
}
