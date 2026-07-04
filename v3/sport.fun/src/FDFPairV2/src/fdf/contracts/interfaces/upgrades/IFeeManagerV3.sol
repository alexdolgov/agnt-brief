// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

import {IFeeManager} from "../IFeeManager.sol";

/**
 * @title IFeeManagerV3
 * @notice Extended interface for FeeManagerV3 with split buy/sell fees
 * @dev Extends IFeeManager with V3-specific functions and events
 */
interface IFeeManagerV3 is IFeeManager {
    
    // V3-specific events
    event BuyFeeUpdated(uint256 newFee);
    event FeeTierCleared(uint256 indexed tokenId, uint256 previousTier);
    event SwapBuyFeeUpdated(uint256 newFee);
    
    // V3-specific getters
    function getBuyFee() external view returns (uint256);
    function getSwapBuyFee() external view returns (uint256);
    function getBuyFeeAndUpdateEMA(uint256 _playerId, uint256 _currentPrice, bool _isSwapFee) external returns (uint256);
    function getBuyFeeSimulated(bool _isSwapFee) external view returns (uint256, uint8);
    
    // V3-specific admin functions
    function setBuyFee(uint256 newFee) external;
    function setSwapBuyFee(uint256 newFee) external;
    function initializeV3() external;
}
