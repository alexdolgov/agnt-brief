// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface IRageBuyingProtocol {
    function getRageFromUsdc(uint256 usdcAmount) external view returns (uint256);
    function getAssetsFromRage(uint256 rageAmount) external view returns (uint256 hestia, uint256 circle);
    function getPendingAssets() external view returns (uint256 pendingHestia, uint256 pendingCircle);
    function getActiveAssetsUsdcValue() external view returns (uint256 totalValue);
    function getRawAssets() external view returns (uint256 rawHestia, uint256 rawCircle);
    function getActiveAssets() external view returns (uint256 activePhestia, uint256 activePcircle);
    function getBonusAssets() external view returns (uint256 bonusHestia, uint256 bonusCircle);
    function getRageUnderlying() external view returns (
        uint256 underlyingHestia, 
        uint256 underlyingCircle, 
        uint256 hestiaValue, 
        uint256 circleValue, 
        uint256 totalValue, 
        uint256 hestiaPercent, 
        uint256 circlePercent
    );
    function getPrice(uint256 amount) external view returns (uint256);
    function getFmv() external view returns (uint256);
    function getBackingPerShare() external view returns (uint256);
    function getInvestPercents() external view returns (uint256 percentHestia, uint256 percentCircle);
}
