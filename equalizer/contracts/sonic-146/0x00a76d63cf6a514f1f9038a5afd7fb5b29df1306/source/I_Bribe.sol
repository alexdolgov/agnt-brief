// Liquidity Market Bribes

pragma solidity 0.8.9;
// SPDX-License-Identifier: UNLICENSED

interface IBribe {
    function notifyRewardAmount(address token, uint amount) external;
    function left(address token) external view returns (uint);
    function rewardsListLength() external view returns (uint);
    function rewards(uint) external view returns (address);
}