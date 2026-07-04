// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface IRageBuyingProtocol {
    function getActiveAssetsUsdcValue() external view returns (uint256 totalValue);
    function getFmv() external view returns (uint256);
    function getInvestPercents() external view returns (uint256 percentHestia, uint256 percentCircle);
}
