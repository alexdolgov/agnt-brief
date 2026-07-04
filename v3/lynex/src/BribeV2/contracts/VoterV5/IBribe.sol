// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface IBribe {
    function deposit(uint amount, address account) external;

    function withdraw(uint amount, address account) external;

    function getRewardForOwner(uint tokenId, address[] memory tokens) external;

    function getRewardForAddress(address _owner, address[] memory tokens) external;

    function notifyRewardAmount(address token, uint amount) external;

    function addRewardToken(address _rewardsToken) external;

    function addRewardTokens(address[] memory _rewardsToken) external;

    function setVoter(address _Voter) external;

    function setMinter(address _Voter) external;

    function setOwner(address _Voter) external;

    function emergencyRecoverERC20(address tokenAddress, uint256 tokenAmount) external;

    function recoverERC20AndUpdateData(address tokenAddress, uint256 tokenAmount) external;
}
