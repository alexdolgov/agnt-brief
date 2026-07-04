// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

interface IKIPStakingSimple {
    function totalCredit() external view returns (uint256);
    function calculateCredit(address holder) external view returns (uint256);

    // View getters for the mappings
    function lockEndTime(address user) external view returns (uint256);
    function lockStartTime(address user) external view returns (uint256);
    function lockedTokens(address user) external view returns (uint256);
    function userCredits(address user) external view returns (uint256);
    function userTotalCredits(address user) external view returns (uint256);

}