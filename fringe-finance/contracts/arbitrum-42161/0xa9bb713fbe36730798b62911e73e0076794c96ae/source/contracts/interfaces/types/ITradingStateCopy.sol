// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import "../prev/IGNSTradingStorage_Prev.sol";
import "../prev/IGNSTradingCallbacksExtended_Prev.sol";
import "../prev/IGNSTrading_Prev.sol";
import "../prev/IGNSBorrowingFeesExtended_Prev.sol";
import "../prev/IGNSOracleRewards_Prev.sol";

/**
 * @custom:version 8
 * @dev Contains the types for the GNSTradingStateCopy facet
 */
interface ITradingStateCopy {
    struct TradingStateCopyStorage {
        mapping(uint8 => CollateralCopyState) state;
    }

    struct CollateralCopyState {
        COPY_STATE currentState;
        uint16 nextPairIndex; // Next pair index to copy
        uint256 nextLimitIndex; // Next limit index to copy
        mapping(COPY_STAGE => bool) stages; // Tracks which stages have been copied
    }

    enum COPY_STATE {
        NOT_DONE,
        IN_PROGRESS,
        DONE
    }

    enum COPY_STAGE {
        COPY_ALL,
        COPY_BORROWING_FEES_GROUPS,
        COPY_BORROWING_FEES_PAIRS,
        COPY_BORROWING_FEES_PAIR_OIS,
        COPY_LIMITS,
        COPY_TRADES,
        COPY_TRADER_DELEGATIONS,
        COLLATERAL_TRANSFER
    }

    struct DeprecatedAddresses {
        IGNSTradingStorage_Prev oldStorage;
        IGNSTradingCallbacksExtended_Prev oldCallbacks;
        IGNSTrading_Prev oldTrading;
        IGNSBorrowingFeesExtended_Prev oldBorrowingFees;
        IGNSOracleRewards_Prev oldOracleRewards;
    }
}
