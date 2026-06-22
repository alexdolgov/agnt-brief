// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

interface IGovSBL {
    function stake(address user, uint256 amount) external;

    function getBoostMultiplier(address user) external view returns (uint256);

    function maxBoostMultiplier() external view returns (uint256);

    function getBalanceTierAndBoost(
        address user
    ) external view returns (uint256);
    function getNftBoost(address user) external view returns (uint256);
}
