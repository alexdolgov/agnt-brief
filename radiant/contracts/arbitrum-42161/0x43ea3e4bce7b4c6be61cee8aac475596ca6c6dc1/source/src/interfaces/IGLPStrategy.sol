// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IGlpStrategy {
    function totalAssets() external view returns (uint256);
    function invest(uint256 amountWeth) external returns (uint256 glpMinted);
    function divest(uint256 amountWeth) external returns (uint256 wethReceived);
}
