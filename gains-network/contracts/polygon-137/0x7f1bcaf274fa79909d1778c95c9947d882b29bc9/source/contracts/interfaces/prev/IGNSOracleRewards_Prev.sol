// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import "./IGNSTradingStorage_Prev.sol";

/**
 * @custom:version 6.4.1
 * @dev Interface of deprecated GNSOracleRewards contract, used for state copy
 * @dev All types are the same but only functions relevant to state copy were kept
 */
interface IGNSOracleRewards_Prev {
    struct TriggeredLimitId {
        address trader;
        uint256 pairIndex;
        uint256 index;
        IGNSTradingStorage_Prev.LimitOrder order;
    }

    enum OpenLimitOrderType {
        LEGACY,
        REVERSAL,
        MOMENTUM
    }

    function openLimitOrderTypes(address, uint256, uint256) external view returns (OpenLimitOrderType);
}
