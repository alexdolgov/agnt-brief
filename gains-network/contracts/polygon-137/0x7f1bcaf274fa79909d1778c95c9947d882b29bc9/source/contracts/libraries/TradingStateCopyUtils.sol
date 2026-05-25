// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import "../interfaces/libraries/ITradingStateCopyUtils.sol";

import "./TradingStorageUtils.sol";
import "./BorrowingFeesUtils.sol";
import "./TradingCallbacksUtils.sol";
import "./PairsStorageUtils.sol";
import "./TradingInteractionsUtils.sol";

/**
 * @custom:version 8
 *
 * @dev This is a library to help manage state transfer from deprecated v7 contracts to diamond.
 * @dev The process should be called in the following order for each collateral index:
 * 1. copyBorrowingFeesGroups
 * 2. copyBorrowingFeesPairs
 * 3. copyPairOis
 * 4. copyLimits
 *    4.a if gas is a concern, copyLimits can be called with a maxIndex to batch updates, eg. `copyLimits(1, 20)` to copy up to index 20
 * 5. copyTrades
 *    5.a if gas is a concern, copyTrades can be called with a maxPairIndex to batch updates, eg. `copyTrades(1, 20)` to copy up to pairIndex 20
 * 6. copyTraderDelegations
 * 7. transferBalance
 * NB: TRADING MUST BE PAUSED IN NEW AND DEPRECATED CONTRACTS BEFORE CALLING THESE FUNCTIONS
 * First set isPaused = true in previous and trading callbacks contracts, wait 5 minutes for all pending market open orders to execute, and then set isDone = true
 * NB2: COLLATERALS MUST ALREADY BE SETUP IN DIAMOND CONTRACT
 * @dev If gas estimates allow (like with Arbitrum), use `copyAllState` to call all functions in one go.
 */
library TradingStateCopyUtils {
    uint256 internal constant PRICE_PRECISION = 1e10; // 10 decimals
    uint8 internal constant COLLATERAL_COUNT = 3; // 1: DAI, 2: WETH, 3: USDC; 1 - 3; 0 is not used
    uint16 internal constant GROUP_COUNT = 13; // 13 groups; 1 - 13; 0 is not used

    // Pointer to `TradingStateCopyStorage` that can be zero'd out after use
    bytes32 internal constant GLOBAL_TRADING_STATE_COPY_SLOT = keccak256("diamond.storage.slot.StateCopyV7toV8");

    /**
     * @dev Ensures _collateralIndex is valid (within expected values of 1-3)
     */
    modifier _validateCollateral(uint8 _collateralIndex) {
        if (_collateralIndex == 0 || _collateralIndex > COLLATERAL_COUNT) {
            revert ITradingStateCopyUtils.InvalidCollateral();
        }
        _;
    }

    /**
     * @dev Ensures state has not been copied (even partially) for given collateral index. Marks state as in progress before
     * function is executed and marks state as done after execution.
     */
    modifier _trackState(ITradingStateCopy.COPY_STAGE _stage, uint8 _collateralIndex) {
        if (TradingStorageUtils.getTradingActivated() != ITradingStorage.TradingActivated.PAUSED) {
            revert ITradingStateCopyUtils.TradingNotPaused();
        }

        ITradingStateCopy.CollateralCopyState storage state = _getStorage().state[_collateralIndex];
        ITradingStateCopy.COPY_STATE currentState = state.currentState;

        // If stage is `COPY_ALL`, we check that no partial state (or full) copy has been done
        // If stage is marked as done, we revert
        if (
            // COPY_ALL has finished
            currentState == ITradingStateCopy.COPY_STATE.DONE ||
            // or, COPY_ALL is being called and any other stage has been called
            (_stage == ITradingStateCopy.COPY_STAGE.COPY_ALL &&
                currentState != ITradingStateCopy.COPY_STATE.NOT_DONE) ||
            // or, _stage has been marked as done
            state.stages[_stage]
        ) {
            revert ITradingStateCopyUtils.StateAlreadyCopied();
        }

        // Mark state as in progress for collateral index;
        // Ensures we cannot call COPY_ALL if any partial copy function has been called
        state.currentState = ITradingStateCopy.COPY_STATE.IN_PROGRESS;

        // Execute function
        _;

        // Mark stage as completed when stage is not Limits/Trades as those can be partially called
        if (_stage != ITradingStateCopy.COPY_STAGE.COPY_LIMITS && _stage != ITradingStateCopy.COPY_STAGE.COPY_TRADES) {
            state.stages[_stage] = true;
        }

        // If stage is `COPY_ALL`, we mark state as done
        if (_stage == ITradingStateCopy.COPY_STAGE.COPY_ALL) {
            state.currentState = ITradingStateCopy.COPY_STATE.DONE;
        }
    }

    /**
     * @dev Check ITradingStateCopyUtils interface for documentation
     */
    function markAsDone(uint8 _collateralIndex) internal {
        ITradingStateCopy.CollateralCopyState storage state = _getStorage().state[_collateralIndex];

        if (state.currentState == ITradingStateCopy.COPY_STATE.DONE) {
            revert ITradingStateCopyUtils.StateAlreadyCopied();
        }

        // Check all stages are completed
        if (
            state.stages[ITradingStateCopy.COPY_STAGE.COPY_BORROWING_FEES_GROUPS] &&
            state.stages[ITradingStateCopy.COPY_STAGE.COPY_BORROWING_FEES_PAIRS] &&
            state.stages[ITradingStateCopy.COPY_STAGE.COPY_BORROWING_FEES_PAIR_OIS] &&
            state.stages[ITradingStateCopy.COPY_STAGE.COPY_LIMITS] &&
            state.stages[ITradingStateCopy.COPY_STAGE.COPY_TRADES] &&
            state.stages[ITradingStateCopy.COPY_STAGE.COPY_TRADER_DELEGATIONS] &&
            state.stages[ITradingStateCopy.COPY_STAGE.COLLATERAL_TRANSFER]
        ) {
            // Mark state as done
            state.currentState = ITradingStateCopy.COPY_STATE.DONE;

            emit ITradingStateCopyUtils.MarkedAsDone(_collateralIndex);
        } else {
            revert ITradingStateCopyUtils.Incomplete();
        }
    }

    /**
     * @dev Check ITradingStateCopyUtils interface for documentation
     */
    function copyBorrowingFeesGroups(
        uint8 _collateralIndex
    )
        internal
        _validateCollateral(_collateralIndex)
        _trackState(ITradingStateCopy.COPY_STAGE.COPY_BORROWING_FEES_GROUPS, _collateralIndex)
    {
        _copyBorrowingFeesGroups(_getAddresses(_collateralIndex), _collateralIndex);
    }

    /**
     * @dev Check ITradingStateCopyUtils interface for documentation
     */
    function copyBorrowingFeesPairs(
        uint8 _collateralIndex
    )
        internal
        _validateCollateral(_collateralIndex)
        _trackState(ITradingStateCopy.COPY_STAGE.COPY_BORROWING_FEES_PAIRS, _collateralIndex)
    {
        _copyBorrowingFeesPairs(_getAddresses(_collateralIndex), _collateralIndex, _getPairsCount());
    }

    /**
     * @dev Check ITradingStateCopyUtils interface for documentation
     */
    function copyPairOis(
        uint8 _collateralIndex
    )
        internal
        _validateCollateral(_collateralIndex)
        _trackState(ITradingStateCopy.COPY_STAGE.COPY_BORROWING_FEES_PAIR_OIS, _collateralIndex)
    {
        _copyPairOis(_getAddresses(_collateralIndex), _collateralIndex, _getPairsCount());
    }

    /**
     * @dev Check ITradingStateCopyUtils interface for documentation
     */
    function copyLimits(
        uint8 _collateralIndex,
        uint256 _maxIndex
    )
        internal
        _validateCollateral(_collateralIndex)
        _trackState(ITradingStateCopy.COPY_STAGE.COPY_LIMITS, _collateralIndex) // note that completed state is not automatically set
    {
        _copyLimits(_getAddresses(_collateralIndex), _collateralIndex, _maxIndex);
    }

    /**
     * @dev Check ITradingStateCopyUtils interface for documentation
     */
    function copyTrades(
        uint8 _collateralIndex,
        uint16 _maxPairIndex
    )
        internal
        _validateCollateral(_collateralIndex)
        _trackState(ITradingStateCopy.COPY_STAGE.COPY_TRADES, _collateralIndex) // note that completed state is not automatically set
    {
        _copyTrades(_collateralIndex, _maxPairIndex);
    }

    /**
     * @dev Check ITradingStateCopyUtils interface for documentation
     */
    function copyTraderDelegations(
        uint8 _collateralIndex,
        address[] calldata _traders
    )
        internal
        _validateCollateral(_collateralIndex)
        _trackState(ITradingStateCopy.COPY_STAGE.COPY_TRADER_DELEGATIONS, _collateralIndex)
    {
        _copyTraderDelegations(_getAddresses(_collateralIndex), _collateralIndex, _traders);
    }

    /**
     * @dev Check ITradingStateCopyUtils interface for documentation
     */
    function transferBalance(
        uint8 _collateralIndex
    )
        internal
        _validateCollateral(_collateralIndex)
        _trackState(ITradingStateCopy.COPY_STAGE.COLLATERAL_TRANSFER, _collateralIndex)
    {
        _transferBalance(_getAddresses(_collateralIndex), _collateralIndex);
    }

    /**
     * @dev Check ITradingStateCopyUtils interface for documentation
     * @custom:gas Estimating 78m gas for dai collat on ARB (unlimited block limit)
     */
    function copyAllState(
        uint8 _collateralIndex,
        address[] calldata _delegatedTraders
    )
        internal
        _validateCollateral(_collateralIndex)
        _trackState(ITradingStateCopy.COPY_STAGE.COPY_ALL, _collateralIndex)
    {
        // 1. Load addresses and pairsCount
        ITradingStateCopy.DeprecatedAddresses memory addresses = _getAddresses(_collateralIndex);
        uint16 pairsCount = _getPairsCount();

        // 2. Copy state from BorrowingFees
        _copyBorrowingFeesGroups(addresses, _collateralIndex);
        _copyBorrowingFeesPairs(addresses, _collateralIndex, pairsCount);
        _copyPairOis(addresses, _collateralIndex, pairsCount);

        // 3. Copy state from TradingStorage (Trades/Limits)
        _copyLimits(addresses, _collateralIndex, type(uint256).max);
        _copyTrades(_collateralIndex, pairsCount);

        // 4. Copy trading delegates
        _copyTraderDelegations(addresses, _collateralIndex, _delegatedTraders);

        // 5. Transfer collateral balance from old TradingStorage
        _transferBalance(addresses, _collateralIndex);
    }

    /**
     * @dev Check ITradingStateCopyUtils interface for documentation
     */
    function getCollateralState(
        uint8 _collateralIndex
    ) internal view returns (ITradingStateCopy.COPY_STATE, uint256, uint16) {
        ITradingStateCopy.CollateralCopyState storage state = _getStorage().state[_collateralIndex];

        return (state.currentState, state.nextLimitIndex, state.nextPairIndex);
    }

    /**
     * @dev Check ITradingStateCopyUtils interface for documentation
     */
    function getCollateralStageState(
        uint8 _collateralIndex,
        ITradingStateCopy.COPY_STAGE _stage
    ) internal view returns (bool) {
        return _getStorage().state[_collateralIndex].stages[_stage];
    }

    /**
     * @dev Returns storage slot to use when fetching storage relevant to library
     */
    function _getSlot() internal pure returns (bytes32) {
        return GLOBAL_TRADING_STATE_COPY_SLOT;
    }

    /**
     * @dev Returns storage pointer for TradingStateCopyStorage struct in diamond contract, at defined slot
     */
    function _getStorage() internal pure returns (ITradingStateCopy.TradingStateCopyStorage storage s) {
        bytes32 storageSlot = _getSlot();
        assembly {
            s.slot := storageSlot
        }
    }

    /**
     * @dev Copies all non trade related data from borrowing fees for a given collateral index
     * @param _addresses The addresses of deprecated contracts
     * @param _collateralIndex The collateral index
     * @custom:gas currently estimating 757k gas for prod data
     */
    function _copyBorrowingFeesGroups(
        ITradingStateCopy.DeprecatedAddresses memory _addresses,
        uint8 _collateralIndex
    ) internal {
        IBorrowingFees.BorrowingFeesStorage storage s = BorrowingFeesUtils._getStorage();

        // 1. Copy all groups; Values are hardcoded, we know the index of the highest group
        for (uint16 groupIndex = 1; groupIndex <= GROUP_COUNT; ++groupIndex) {
            // 1.1 Fetch group and groupExponent
            (IGNSBorrowingFees_Prev.Group memory group, uint48 groupExponent) = _addresses.oldBorrowingFees.getGroup(
                groupIndex
            );

            // 1.2 Store group and groupExponent in new storage
            s.groups[_collateralIndex][groupIndex] = IBorrowingFees.BorrowingData({
                feePerBlock: group.feePerBlock,
                accFeeLong: group.accFeeLong,
                accFeeShort: group.accFeeShort,
                accLastUpdatedBlock: group.accLastUpdatedBlock,
                feeExponent: groupExponent
            });

            // 1.3 Store group OI
            s.groupOis[_collateralIndex][groupIndex] = IBorrowingFees.OpenInterest({
                long: _safeCastToUint72(group.oiLong),
                short: _safeCastToUint72(group.oiShort),
                max: _safeCastToUint72(group.maxOi),
                __placeholder: 0
            });
        }

        // 2. Emit event
        emit ITradingStateCopyUtils.BorrowingFeesGroupsCopied(_collateralIndex, GROUP_COUNT);
    }

    /**
     * @dev Copies all non trade related data from borrowing fees for a given collateral index
     * @param _addresses The addresses of deprecated contracts
     * @param _collateralIndex The collateral index
     * @param _pairsCount The number of pairs listed (same across all collaterals)
     * @custom:gas currently estimating 24.5m gas for prod data
     */
    function _copyBorrowingFeesPairs(
        ITradingStateCopy.DeprecatedAddresses memory _addresses,
        uint8 _collateralIndex,
        uint16 _pairsCount
    ) internal {
        IBorrowingFees.BorrowingFeesStorage storage s = BorrowingFeesUtils._getStorage();

        // 1. Loop through all pairs
        for (uint16 pairIndex; pairIndex < _pairsCount; ++pairIndex) {
            // 1.1 Fetch `Pair`
            (IGNSBorrowingFees_Prev.Pair memory pair, ) = _addresses.oldBorrowingFees.getPair(pairIndex);

            // 1.2 Store pair
            s.pairs[_collateralIndex][pairIndex] = IBorrowingFees.BorrowingData({
                feePerBlock: pair.feePerBlock,
                accFeeLong: pair.accFeeLong,
                accFeeShort: pair.accFeeShort,
                accLastUpdatedBlock: pair.accLastUpdatedBlock,
                feeExponent: pair.feeExponent
            });

            // 1.3 Reset current pair group array, in case borrowing fees updater has added new groups (edge)
            delete s.pairGroups[_collateralIndex][pairIndex];

            // 1.4 Loop through all PairGroups
            uint256 len = pair.groups.length;

            for (uint256 j; j < len; ++j) {
                // 1.4.1 Store BorrowingPairGroup in new storage
                IGNSBorrowingFees_Prev.PairGroup memory group = pair.groups[j];

                s.pairGroups[_collateralIndex][pairIndex].push(
                    IBorrowingFees.BorrowingPairGroup({
                        groupIndex: group.groupIndex,
                        block: group.block,
                        initialAccFeeLong: group.initialAccFeeLong,
                        initialAccFeeShort: group.initialAccFeeShort,
                        prevGroupAccFeeLong: group.prevGroupAccFeeLong,
                        prevGroupAccFeeShort: group.prevGroupAccFeeShort,
                        pairAccFeeLong: group.pairAccFeeLong,
                        pairAccFeeShort: group.pairAccFeeShort,
                        __placeholder: 0
                    })
                );
            }
        }

        // 2. Emit event
        emit ITradingStateCopyUtils.BorrowingFeesPairsCopied(_collateralIndex, _pairsCount);
    }

    /**
     * @dev Copies PairOi data for a given collateral index from deprecated BorrowingFees contracts
     * @param _addresses The addresses of deprecated contracts
     * @param _collateralIndex The collateral index
     * @param _pairsCount The number of pairs listed (same across all collaterals)
     * @custom:gas currently estimating 6.4m gas for prod data
     */
    function _copyPairOis(
        ITradingStateCopy.DeprecatedAddresses memory _addresses,
        uint8 _collateralIndex,
        uint16 _pairsCount
    ) internal {
        IBorrowingFees.BorrowingFeesStorage storage s = BorrowingFeesUtils._getStorage();
        uint128 collateralPrecision = TradingStorageUtils.getCollateral(_collateralIndex).precision;

        // 1. Loop through all pairs
        for (uint16 pairIndex; pairIndex < _pairsCount; ++pairIndex) {
            // 1.1 Fetch new OpenInterest struct and add it to storage
            s.pairOis[_collateralIndex][pairIndex] = _fetchPairOpenInterest(_addresses, collateralPrecision, pairIndex);
        }

        // 2. Emit events
        emit ITradingStateCopyUtils.BorrowingFeesPairOisCopied(_collateralIndex, _pairsCount);
    }

    /**
     * @dev Copies all open limit orders for a given collateral index
     * @param _addresses The addresses of deprecated contracts
     * @param _collateralIndex The collateral index to copy
     * @param _maxIndex The highest limit index to copy. Used to batch updates. Value is inclusive
     * @custom:gas currently estimating 3.4m gas for prod data (~20 limit orders)
     */
    function _copyLimits(
        ITradingStateCopy.DeprecatedAddresses memory _addresses,
        uint8 _collateralIndex,
        uint256 _maxIndex
    ) internal {
        ITradingStorage.TradingStorage storage s = TradingStorageUtils._getStorage();
        ITradingStateCopy.CollateralCopyState storage state = _getStorage().state[_collateralIndex];

        // 1. Fetch all limit orders
        IGNSTradingStorage_Prev.OpenLimitOrder[] memory limitOrders = _addresses.oldStorage.getOpenLimitOrders();

        // 2. If there are no limit orders, we exit
        if (limitOrders.length == 0) {
            state.stages[ITradingStateCopy.COPY_STAGE.COPY_LIMITS] = true;
            return;
        }

        // 3. Ensure we don't go above actual limit orders count
        if (_maxIndex >= limitOrders.length) {
            _maxIndex = limitOrders.length - 1; // -1 on count because _maxIndex is inclusive
        }

        // 4. Ensure requested limit index is not lower than nextLimitIndex
        if (_maxIndex < state.nextLimitIndex) {
            revert ITradingStateCopyUtils.InvalidMaxIndex();
        }

        // 5. Loop through all limit orders and insert them into new storage
        uint256 fromIndex = state.nextLimitIndex;
        for (uint256 i = fromIndex; i <= _maxIndex; ++i) {
            IGNSTradingStorage_Prev.OpenLimitOrder memory old = limitOrders[i];

            // 5.1 Fetch user's trade counter
            ITradingStorage.Counter storage counter = s.userCounters[old.trader][ITradingStorage.CounterType.TRADE];

            // 5.2 Convert to `Trade` struct
            ITradingStorage.Trade memory newTrade = _fetchAndConvertOpenLimitOrder(
                _addresses,
                _collateralIndex,
                old,
                counter.currentIndex
            );

            // 5.3 If limit is not valid (eg. when it's legacy), we skip it
            if (newTrade.leverage == 0) {
                emit ITradingStateCopyUtils.LegacyLimitOrderSkipped(
                    _collateralIndex,
                    old.trader,
                    old.pairIndex,
                    old.index
                );

                continue;
            }

            // 5.4 Add `Trade` to storage
            s.trades[old.trader][newTrade.index] = newTrade;

            // 5.5 Fetch `TradeInfo` and store it in new storage
            s.tradeInfos[old.trader][newTrade.index] = _fetchNewTradeInfoForLimit(_addresses, old);

            // 5.6 Add trader to active trader array
            _insertTrader(old.trader);

            // 5.7 Increment indexes
            uint32 newIndex = newTrade.index + 1;
            counter.currentIndex = newIndex; // Set trader's current index to newIndex
            counter.openCount = newIndex; // Increase traders open trade count, using newIndex because we know there are 0 closed trades
        }

        // 6. Update limitIndex tracking
        state.nextLimitIndex = _maxIndex + 1;

        // 7. If _maxIndex is the last open limit order , we mark state as done
        if (_maxIndex == limitOrders.length - 1) {
            state.stages[ITradingStateCopy.COPY_STAGE.COPY_LIMITS] = true;
        }

        // 8. Events
        emit ITradingStateCopyUtils.LimitsCopied(_collateralIndex, fromIndex, _maxIndex);
    }

    /**
     * @dev Copies open trades for given pairs and collateral index
     * @param _collateralIndex The collateral index to copy
     * @param _maxPairIndex The highest pair index to copy. Used to batch updates. Value is inclusive
     */
    function _copyTrades(uint8 _collateralIndex, uint16 _maxPairIndex) internal {
        ITradingStateCopy.CollateralCopyState storage state = _getStorage().state[_collateralIndex];

        // 1. Fetch addresses, precisionDelta, and pairsCount
        ITradingStateCopy.DeprecatedAddresses memory addresses = _getAddresses(_collateralIndex);
        uint128 precisionDelta = TradingStorageUtils.getCollateral(_collateralIndex).precisionDelta;
        uint16 pairsCount = _getPairsCount();
        uint16 nextPairIndex = state.nextPairIndex;

        // 2. Ensure we don't go above actual pairCount
        if (_maxPairIndex >= pairsCount) {
            _maxPairIndex = pairsCount - 1; // -1 on count because maxPairIndex is inclusive
        }

        // 3. Ensure requested pair index is not lower than nextPairIndex
        if (_maxPairIndex < nextPairIndex) {
            revert ITradingStateCopyUtils.InvalidMaxIndex();
        }

        // 4. Loop from `state.nextPairIndex` to `_maxPairIndex` and copy trades for each pair
        uint16 fromIndex = nextPairIndex;
        for (uint16 pairIndex = fromIndex; pairIndex <= _maxPairIndex; ++pairIndex) {
            _copyTradesForPair(addresses, _collateralIndex, precisionDelta, pairIndex);
        }

        // 5. Update nextPairIndex tracking
        state.nextPairIndex = _maxPairIndex + 1;

        // 6. If _maxPairIndex is the last pair, we mark state as done
        if (_maxPairIndex == pairsCount - 1) {
            state.stages[ITradingStateCopy.COPY_STAGE.COPY_TRADES] = true;
        }

        // 7. Events
        emit ITradingStateCopyUtils.TradesCopied(_collateralIndex, fromIndex, _maxPairIndex);
    }

    /**
     * @dev Copies trader delegations for a given collateral index and list of traders
     * @param _addresses The addresses of deprecated contracts
     * @param _collateralIndex collateral index
     * @param _traders list of traders to copy delegations for
     */
    function _copyTraderDelegations(
        ITradingStateCopy.DeprecatedAddresses memory _addresses,
        uint8 _collateralIndex,
        address[] calldata _traders
    ) internal {
        ITradingInteractions.TradingInteractionsStorage storage s = TradingInteractionsUtils._getStorage();

        for (uint256 i; i < _traders.length; ++i) {
            address trader = _traders[i];
            address delegate = _addresses.oldTrading.delegations(trader);

            if (delegate != address(0)) {
                s.delegations[trader] = delegate;
            }
        }

        emit ITradingStateCopyUtils.TraderDelegationsCopied(_collateralIndex, _traders.length);
    }

    /**
     * @dev Transfers collateral from `_storage` to this contract (diamond)
     * @param _addresses The addresses of deprecated contracts
     * @param _collateralIndex The collateral index
     */
    function _transferBalance(
        ITradingStateCopy.DeprecatedAddresses memory _addresses,
        uint8 _collateralIndex
    ) internal {
        // 1. Get collateral balance of old storage contract
        uint256 oldStorageBalance = IERC20(TradingStorageUtils.getCollateral(_collateralIndex).collateral).balanceOf(
            address(_addresses.oldStorage)
        );

        // 2. Transfer balance to this contract
        _addresses.oldStorage.transferDai(address(_addresses.oldStorage), address(this), oldStorageBalance);

        // 3. Copy pendingGovFees so they are claimable
        uint256 pendingGovFees = _addresses.oldCallbacks.govFeesDai();
        TradingCallbacksUtils._getStorage().pendingGovFees[_collateralIndex] = pendingGovFees; // `pendingGovFees` are 0 before state copy

        // 4. Event
        emit ITradingStateCopyUtils.CollateralTransferred(_collateralIndex, oldStorageBalance, pendingGovFees);
    }

    /**
     * @dev Copies all open trades for a given collateral index and pair index
     * @param _addresses The addresses of deprecated contracts
     * @param _collateralIndex The collateral index
     * @param _precisionDelta The precision delta for the collateral
     * @param _pairIndex The pair index to fetch trades for
     * @custom:gas currently estimating 7.9m gas for prod data for btc + eth using dai collat
     */
    function _copyTradesForPair(
        ITradingStateCopy.DeprecatedAddresses memory _addresses,
        uint8 _collateralIndex,
        uint128 _precisionDelta,
        uint256 _pairIndex
    ) internal {
        ITradingStorage.TradingStorage storage s = TradingStorageUtils._getStorage();

        // 1. Get all traders per pair
        address[] memory traders = _addresses.oldStorage.pairTradersArray(_pairIndex);

        // 2. Loop through users
        for (uint256 i; i < traders.length; ++i) {
            address trader = traders[i];

            // 2.1 Fetch open trades count for trader
            uint256 openCount = _addresses.oldStorage.openTradesCount(trader, _pairIndex);

            // 2.2 Fetch trade counters to keep track of new indexes
            ITradingStorage.Counter storage counter = s.userCounters[trader][ITradingStorage.CounterType.TRADE];
            uint32 newIndex = counter.currentIndex; // new trade index; saves many reads and writes
            uint256 added;

            // 2.3 We know `openCount` > 0 because trader is returned in pairTradersArray
            // So we can safely add trader to active traders
            _insertTrader(trader);

            // 2.4 Loop through user's trades and copy them
            for (uint256 j; j < 3; ++j) {
                // 2.4.1 Fetch "old" Trade and related data
                IGNSTradingStorage_Prev.Trade memory old = _addresses.oldStorage.openTrades(trader, _pairIndex, j);

                // 2.4.2 Skip trade if leverage is 0 (closed)
                if (old.leverage == 0) continue;

                // 2.4.3 Perform the copy
                _copyTrade(_addresses, _collateralIndex, _precisionDelta, old, newIndex);

                // 2.4.4 Increment indexes
                unchecked {
                    ++newIndex; // Tracks users trade index
                    ++added; // Tracks total trades added
                }

                // 2.4.5 If we've seen all open trades, exit this loop
                if (added == openCount) {
                    break;
                }
            }

            // 2.5 Update trader's counters
            counter.currentIndex = newIndex; // Set trader's current index to new index
            counter.openCount = newIndex; // Increase traders open trade count; newIndex because we know there are 0 closed trades
        }

        // 3. Events
        emit ITradingStateCopyUtils.PairTradesCopied(_collateralIndex, _pairIndex, traders.length);
    }

    /**
     * @dev Transforms and copies deprecated Trade struct to new Trade struct and saves into v8 storage
     * @param _addresses The addresses of deprecated contracts
     * @param _collateralIndex The collateral index
     * @param _precisionDelta The precision delta for the collateral
     * @param _old The old trade to transform and copy
     * @param _newIndex The new index for the trade
     */
    function _copyTrade(
        ITradingStateCopy.DeprecatedAddresses memory _addresses,
        uint8 _collateralIndex,
        uint128 _precisionDelta,
        IGNSTradingStorage_Prev.Trade memory _old,
        uint32 _newIndex
    ) internal {
        ITradingStorage.TradingStorage storage s = TradingStorageUtils._getStorage();
        address trader = _old.trader;

        // 1. Fetch `TradeInfo`
        IGNSTradingStorage_Prev.TradeInfo memory oldInfo = _addresses.oldStorage.openTradesInfo(
            trader,
            _old.pairIndex,
            _old.index
        );

        // 2. Convert data
        uint24 newLeverage = _scaleLeverage(_old.leverage); // Convert leverage from 0 => 1e3 precision
        uint120 collateralAmount = _safeCastToUint120( // Calculate collateral amount
            (_old.initialPosToken * oldInfo.tokenPriceDai) / _precisionDelta / PRICE_PRECISION
        );
        uint64 openPrice = _safeCastToUint64(_old.openPrice); // openPrice to uint64

        // 3. Convert to new `Trade` struct and store it
        s.trades[trader][_newIndex] = ITradingStorage.Trade({
            user: trader,
            index: _newIndex,
            pairIndex: _safeCastToUint16(_old.pairIndex),
            leverage: newLeverage,
            long: _old.buy,
            isOpen: true,
            collateralIndex: _collateralIndex,
            tradeType: ITradingStorage.TradeType.TRADE,
            collateralAmount: collateralAmount,
            openPrice: openPrice,
            tp: TradingStorageUtils._limitTpDistance(openPrice, newLeverage, _safeCastToUint64(_old.tp), _old.buy),
            sl: TradingStorageUtils._limitSlDistance(openPrice, newLeverage, _safeCastToUint64(_old.sl), _old.buy),
            __placeholder: 0
        });

        // 4. Convert to new `TradeInfo` and store it
        s.tradeInfos[trader][_newIndex] = _fetchNewTradeInfoForTrade(_addresses, _old);

        // 5. Convert to new `BorrowingInitialAccFees` and store it
        BorrowingFeesUtils._getStorage().initialAccFees[_collateralIndex][trader][_newIndex] = _fetchNewInitialAccFees(
            _addresses,
            _old
        );

        // 6. Events (so we can map old trades to new trades off-chain)
        emit ITradingStateCopyUtils.TradeCopied(_collateralIndex, trader, _old.pairIndex, _old.index, _newIndex);
    }

    /**
     * @dev Inserts a trader into the active traders array
     * @param _trader The trader to insert
     */
    function _insertTrader(address _trader) internal {
        ITradingStorage.TradingStorage storage s = TradingStorageUtils._getStorage();

        // Check if trader has already been stored
        if (!s.traderStored[_trader]) {
            s.traders.push(_trader);
            s.traderStored[_trader] = true;
        }
    }

    /**
     * @dev Returns all relevant addresses for previous contracts for `collateralIndex` and `chainid`
     * @param _collateralIndex The collateral index
     */
    function _getAddresses(
        uint8 _collateralIndex
    ) internal view returns (ITradingStateCopy.DeprecatedAddresses memory) {
        (address _storage, address _trading) = _getOldContracts(_collateralIndex, block.chainid);

        IGNSTradingStorage_Prev oldStorage = IGNSTradingStorage_Prev(_storage);
        IGNSTradingCallbacksExtended_Prev oldCallbacks = IGNSTradingCallbacksExtended_Prev(oldStorage.callbacks());

        return
            ITradingStateCopy.DeprecatedAddresses({
                oldStorage: oldStorage,
                oldOracleRewards: oldCallbacks.nftRewards(),
                oldCallbacks: oldCallbacks,
                oldTrading: IGNSTrading_Prev(_trading),
                oldBorrowingFees: oldCallbacks.borrowingFees()
            });
    }

    /**
     * @dev Returns the deprecated TradingStorage and Trading contract addresses for `block.chainid` and `_collateralIndex`
     * @param _collateralIndex The collateral index
     */
    function _getOldContracts(uint8 _collateralIndex, uint256 _chainId) internal pure returns (address, address) {
        if (_chainId == ChainUtils.ARBITRUM_MAINNET) {
            if (_collateralIndex == 1)
                return (0xcFa6ebD475d89dB04cAd5A756fff1cb2BC5bE33c, 0x2c7e82641f03Fa077F88833213210A86027f15dc); // DAI
            if (_collateralIndex == 2)
                return (0xFe54a9A1C2C276cf37C56CeeE30737FDc6dA4d27, 0x48B07695c41AaC54CC35F56AF25573dd19235c6f); // WETH
            if (_collateralIndex == 3)
                return (0x3B09fCa4cC6b140fDd364f28db830ccE01Fd60fD, 0x2FE799d81FDfCC441093eaB52Af788d4Cc6Ff650); // USDC

            revert ITradingStateCopyUtils.InvalidCollateral();
        }

        if (_chainId == ChainUtils.POLYGON_MAINNET) {
            if (_collateralIndex == 1)
                return (0xaee4d11a16B2bc65EDD6416Fb626EB404a6D65BD, 0xb0901FEaD3112f6CaF9353ec5c36DC3DdE111F61); // DAI
            if (_collateralIndex == 2)
                return (0xE7712ebcd451919B38Be8fD102800A496C5BeD4E, 0xa3151BF6Eef2dcF2fA1Fdc115C5150167bDfc6b6); // WETH
            if (_collateralIndex == 3)
                return (0xC504C9C30B9d88cBc9704Fc2d06a08A4c7bE9378, 0x79d0521d5cAc0335fFa56b2849466cbB564d7f2D); // USDC

            revert ITradingStateCopyUtils.InvalidCollateral();
        }

        if (_chainId == ChainUtils.ARBITRUM_SEPOLIA) {
            if (_collateralIndex == 1)
                return (0xD6Ccdcf7AB475aA2Ea8BCDC9E540c0eE2d0AfE14, 0x1D29c95Fa9F47987ede5121700881ddaa9116B29); // DAI
            if (_collateralIndex == 2)
                return (0x197bfF032c3A0A738c92628458B777Da525c4888, 0x5eBA7Ba04F78E96929Da1A783D2092899FEb64aF); // WETH
            if (_collateralIndex == 3)
                return (0xbF34a6677D8E8e7e80Ce133A22167Dd7c9AdDB01, 0xb2fA4A00D1eB6866d209569508b92D3D50840cbD); // USDC

            revert ITradingStateCopyUtils.InvalidCollateral();
        }

        if (_chainId == ChainUtils.TESTNET) {
            if (_collateralIndex == 1) return (address(422), address(423)); // DAI
            if (_collateralIndex == 2) return (address(424), address(425)); // WETH
            if (_collateralIndex == 3) return (address(426), address(427)); // USDC

            revert ITradingStateCopyUtils.InvalidCollateral();
        }

        revert ITradingStateCopyUtils.UnknownChain();
    }

    /**
     * @dev Fetches deprecated pair open interest and converts it to new `OpenInterest` struct
     * @param _addresses The addresses of deprecated contracts
     * @param _collateralPrecision The precision of the collateral
     * @param _pairIndex The pair index to fetch data for
     */
    function _fetchPairOpenInterest(
        ITradingStateCopy.DeprecatedAddresses memory _addresses,
        uint128 _collateralPrecision,
        uint256 _pairIndex
    ) internal view returns (IBorrowingFees.OpenInterest memory) {
        uint256 long = _addresses.oldStorage.openInterestDai(_pairIndex, 0);
        uint256 short = _addresses.oldStorage.openInterestDai(_pairIndex, 1);
        uint256 max = _addresses.oldBorrowingFees.getPairMaxOi(_pairIndex);

        return
            IBorrowingFees.OpenInterest({
                long: _scalePairOi(long, _collateralPrecision),
                short: _scalePairOi(short, _collateralPrecision),
                max: _safeCastToUint72(max),
                __placeholder: 0
            });
    }

    /**
     * @dev Fetches deprecated `InitialAccFees` struct for a given trade and converts it to new `BorrowingInitialAccFees`
     * @param _addresses The addresses of deprecated contracts
     * @param _old The old trade to fetch data for
     */
    function _fetchNewInitialAccFees(
        ITradingStateCopy.DeprecatedAddresses memory _addresses,
        IGNSTradingStorage_Prev.Trade memory _old
    ) internal view returns (IBorrowingFees.BorrowingInitialAccFees memory) {
        IGNSBorrowingFees_Prev.InitialAccFees memory oldInitialAccFees = _addresses.oldBorrowingFees.initialAccFees(
            _old.trader,
            _old.pairIndex,
            _old.index
        );

        return
            IBorrowingFees.BorrowingInitialAccFees({
                accPairFee: oldInitialAccFees.accPairFee,
                accGroupFee: oldInitialAccFees.accGroupFee,
                block: oldInitialAccFees.block,
                __placeholder: 0
            });
    }

    /**
     * @dev Fetches OpenLimitOrder details and converts them to new `Trade` struct
     * @param _addresses The addresses of deprecated contracts
     * @param _collateralIndex The collateral index
     * @param _old The old trade to fetch data for
     * @param _newIndex The new index for the trade
     */
    function _fetchAndConvertOpenLimitOrder(
        ITradingStateCopy.DeprecatedAddresses memory _addresses,
        uint8 _collateralIndex,
        IGNSTradingStorage_Prev.OpenLimitOrder memory _old,
        uint32 _newIndex
    ) internal view returns (ITradingStorage.Trade memory) {
        // 1. Convert OpenLimitOrderType to TradeType; Enum values match in uint256
        ITradingStorage.TradeType newTradeType = ITradingStorage.TradeType(
            uint256(_addresses.oldOracleRewards.openLimitOrderTypes(_old.trader, _old.pairIndex, _old.index))
        );

        // 2. Check if OpenLimitOrder order is legacy
        if (newTradeType == ITradingStorage.TradeType.TRADE || _old.minPrice != _old.maxPrice) {
            // Return empty Trade Struct in this case
            ITradingStorage.Trade memory t;
            return t;
        }

        // 3. Convert data
        uint24 newLeverage = _scaleLeverage(_old.leverage); // leverage from 0 => 1e3 precision
        uint64 openPrice = _safeCastToUint64(_old.minPrice); // openPrice to uint64

        // 4. Return new converted `Trade` struct
        return
            ITradingStorage.Trade({
                user: _old.trader,
                index: _newIndex,
                pairIndex: _safeCastToUint16(_old.pairIndex),
                leverage: newLeverage,
                long: _old.buy,
                isOpen: true,
                collateralIndex: _collateralIndex,
                tradeType: newTradeType,
                collateralAmount: _safeCastToUint120(_old.positionSize),
                openPrice: openPrice,
                tp: TradingStorageUtils._limitTpDistance(openPrice, newLeverage, _safeCastToUint64(_old.tp), _old.buy),
                sl: TradingStorageUtils._limitSlDistance(openPrice, newLeverage, _safeCastToUint64(_old.sl), _old.buy),
                __placeholder: 0
            });
    }

    /**
     * @dev Fetches deprecated `TradeInfo` struct for a given `Trade` and converts it to new `TradeInfo`
     * @param _addresses The addresses of deprecated contracts
     * @param _old The trade to fetch data for
     */
    function _fetchNewTradeInfoForTrade(
        ITradingStateCopy.DeprecatedAddresses memory _addresses,
        IGNSTradingStorage_Prev.Trade memory _old
    ) internal view returns (ITradingStorage.TradeInfo memory) {
        IGNSTradingCallbacks_Prev.TradeType tradeType = IGNSTradingCallbacks_Prev.TradeType.MARKET;
        IGNSTradingCallbacks_Prev.TradeData memory tradeData = _addresses.oldCallbacks.tradeData(
            _old.trader,
            _old.pairIndex,
            _old.index,
            tradeType
        );
        IGNSTradingCallbacks_Prev.LastUpdated memory lastUpdated = _addresses.oldCallbacks.getTradeLastUpdated(
            _old.trader,
            _old.pairIndex,
            _old.index,
            tradeType
        );

        return
            ITradingStorage.TradeInfo({
                createdBlock: lastUpdated.created,
                tpLastUpdatedBlock: lastUpdated.tp,
                slLastUpdatedBlock: lastUpdated.sl,
                maxSlippageP: 0,
                lastOiUpdateTs: tradeData.lastOiUpdateTs,
                collateralPriceUsd: tradeData.collateralPriceUsd,
                __placeholder: 0
            });
    }

    /**
     * @dev Fetches deprecated `TradeInfo` struct for a given `OpenLimitOrder` and converts it to new `TradeInfo`
     * @param _addresses The addresses of deprecated contracts
     * @param _old The trade to fetch data for
     */
    function _fetchNewTradeInfoForLimit(
        ITradingStateCopy.DeprecatedAddresses memory _addresses,
        IGNSTradingStorage_Prev.OpenLimitOrder memory _old
    ) internal view returns (ITradingStorage.TradeInfo memory) {
        IGNSTradingCallbacks_Prev.TradeType tradeType = IGNSTradingCallbacks_Prev.TradeType.LIMIT;
        IGNSTradingCallbacks_Prev.TradeData memory tradeData = _addresses.oldCallbacks.tradeData(
            _old.trader,
            _old.pairIndex,
            _old.index,
            tradeType
        );
        IGNSTradingCallbacks_Prev.LastUpdated memory lastUpdated = _addresses.oldCallbacks.getTradeLastUpdated(
            _old.trader,
            _old.pairIndex,
            _old.index,
            tradeType
        );

        tradeData.maxSlippageP = tradeData.maxSlippageP == 0 ? 1e3 : tradeData.maxSlippageP / 1e7;
        uint16 maxSlippageP = tradeData.maxSlippageP > type(uint16).max
            ? type(uint16).max
            : uint16(tradeData.maxSlippageP);

        return
            ITradingStorage.TradeInfo({
                createdBlock: lastUpdated.limit, // v7 uses .limit in lookbacks, v8 uses .createdBlock
                tpLastUpdatedBlock: lastUpdated.tp,
                slLastUpdatedBlock: lastUpdated.sl,
                maxSlippageP: maxSlippageP, // 1e10 => 1e3 (%)
                lastOiUpdateTs: tradeData.lastOiUpdateTs,
                collateralPriceUsd: tradeData.collateralPriceUsd,
                __placeholder: 0
            });
    }

    /**
     * @dev Scales leverage from 0 to 1e3 precision
     * @param _leverage The leverage to scale
     */
    function _scaleLeverage(uint256 _leverage) internal pure returns (uint24) {
        _leverage = _leverage * 1e3;
        if (_leverage > type(uint24).max) revert IGeneralErrors.Overflow();
        return uint24(_leverage);
    }

    /**
     * @dev Scales pair OI from _precision to 1e10 precision
     * @param _oi The OI to scale (in collateralPrecision)
     * @param _precision The precision of the collateral (1e18 or 1e6)
     */
    function _scalePairOi(uint256 _oi, uint128 _precision) internal pure returns (uint72) {
        return _safeCastToUint72((_oi * PRICE_PRECISION) / _precision);
    }

    /**
     * @dev Returns the number of pairs
     */
    function _getPairsCount() internal view returns (uint16) {
        return _safeCastToUint16(PairsStorageUtils.pairsCount());
    }

    /**
     * @dev Converts any number to uint16, reverting if number is too large to prevent overflows
     * @param _value The value to convert
     */
    function _safeCastToUint16(uint256 _value) internal pure returns (uint16) {
        if (_value > type(uint16).max) revert IGeneralErrors.Overflow();
        return uint16(_value);
    }

    /**
     * @dev Converts any number to uint64, reverting if number is too large to prevent overflows
     * @param _value The value to convert
     */
    function _safeCastToUint64(uint256 _value) internal pure returns (uint64) {
        if (_value > type(uint64).max) revert IGeneralErrors.Overflow();
        return uint64(_value);
    }

    /**
     * @dev Converts any number to uint72, reverting if number is too large to prevent overflows
     * @param _value The value to convert
     */
    function _safeCastToUint72(uint256 _value) internal pure returns (uint72) {
        if (_value > type(uint72).max) revert IGeneralErrors.Overflow();
        return uint72(_value);
    }

    /**
     * @dev Converts any number to uint120, reverting if number is too large to prevent overflows
     * @param _value The value to convert
     */
    function _safeCastToUint120(uint256 _value) internal pure returns (uint120) {
        if (_value > type(uint120).max) revert IGeneralErrors.Overflow();
        return uint120(_value);
    }
}
