// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import "./IGNSTradingCallbacks_Prev.sol";
import "./IGNSOracleRewards_Prev.sol";
import "./IGNSBorrowingFeesExtended_Prev.sol";

/**
 * @custom:version 7
 * @dev Extended version of the deprecated GNSTradingCallbacks contract interface, used for state copy
 */
interface IGNSTradingCallbacksExtended_Prev is IGNSTradingCallbacks_Prev {
    function tradeData(address, uint256, uint256, TradeType) external view returns (TradeData memory);

    function nftRewards() external view returns (IGNSOracleRewards_Prev);

    function borrowingFees() external view returns (IGNSBorrowingFeesExtended_Prev);

    function govFeesDai() external view returns (uint256);
}
