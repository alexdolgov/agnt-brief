// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import "../types/ITradingStateCopy.sol";

/**
 * @custom:version 8
 */
interface ITradingStateCopyUtils is ITradingStateCopy {
    /**
     * @dev Marks the state copy for a collateral as DONE when all stages are complete. Has no impact on state of contract other than to signal completion.
     * @param _collateralIndex collateral index
     */
    function markAsDone(uint8 _collateralIndex) external;

    /**
     * @dev Copies all borrowing fees groups for a given collateral index
     * @param _collateralIndex collateral index
     */
    function copyBorrowingFeesGroups(uint8 _collateralIndex) external;

    /**
     * @dev Copies all borrowing fees pairs for a given collateral index
     * @param _collateralIndex collateral index
     */
    function copyBorrowingFeesPairs(uint8 _collateralIndex) external;

    /**
     * @dev Copies all borrowing fees pair OIs for a given collateral index
     * @param _collateralIndex collateral index
     */
    function copyPairOis(uint8 _collateralIndex) external;

    /**
     * @dev Copies all open limit orders for a given collateral index up to `_maxIndex`
     * @param _collateralIndex collateral index
     * @param _maxIndex highest limit index to copy. Used to batch updates. Value is inclusive
     */
    function copyLimits(uint8 _collateralIndex, uint256 _maxIndex) external;

    /**
     * @dev Copies all trades for a given collateral index up to `_maxPairIndex`
     * @param _collateralIndex collateral index
     * @param _maxPairIndex highest pair index to copy. Used to batch updates. Value is inclusive
     */
    function copyTrades(uint8 _collateralIndex, uint16 _maxPairIndex) external;

    /**
     * @dev Copies all trader delegations (1-CT) for a list of traders and collateral index
     * @param _collateralIndex collateral index
     * @param _traders list of traders to copy delegations for
     */
    function copyTraderDelegations(uint8 _collateralIndex, address[] calldata _traders) external;

    /**
     * @dev Transfers `_collateralIndex` collateral from old TradingStorage to this contract (diamond)
     * @param _collateralIndex collateral index
     */
    function transferBalance(uint8 _collateralIndex) external;

    /**
     * @dev Calls all state copy functions for a given collateral index. Likely unusable for any chain other than Arbitrum.
     * @param _collateralIndex collateral index
     * @param _traders list of traders to copy delegations for
     */
    function copyAllState(uint8 _collateralIndex, address[] calldata _traders) external;

    /**
     * @dev Returns the current status of the state copy for a collateral
     * @param _collateralIndex collateral index
     */
    function getCollateralState(
        uint8 _collateralIndex
    ) external view returns (ITradingStateCopy.COPY_STATE currentState, uint256 nextLimitIndex, uint16 nextPairIndex);

    /**
     * @dev Returns the status of a StateCopy stage for a collateral
     * @param _collateralIndex collateral index
     * @param _stage stage to check
     */
    function getCollateralStageState(
        uint8 _collateralIndex,
        ITradingStateCopy.COPY_STAGE _stage
    ) external view returns (bool status);

    /**
     * @dev Emitted when all state copy of a collateral is marked as done after all steps have been completed
     * @param collateralIndex collateral index
     */
    event MarkedAsDone(uint8 collateralIndex);

    /**
     * @dev Emitted when all BorrowingFees.Group are copied for a collateral
     * @param collateralIndex collateral index
     * @param groupsCount number of `Group` copied
     */
    event BorrowingFeesGroupsCopied(uint8 collateralIndex, uint16 groupsCount);

    /**
     * @dev Emitted when all BorrowingFees.Pair are copied for a collateral
     * @param collateralIndex collateral index
     * @param pairsCount number of `Pair` copied
     */
    event BorrowingFeesPairsCopied(uint8 collateralIndex, uint256 pairsCount);

    /**
     * @dev Emitted when all BorrowingFees.PairOi (including TradingStorage openInterest) are copied for a collateral
     * @param collateralIndex collateral index
     * @param pairsCount number of `PairOi` copied
     */
    event BorrowingFeesPairOisCopied(uint8 collateralIndex, uint256 pairsCount);

    /**
     * @dev Emitted when all trades for a pair
     * @param collateralIndex collateral index
     * @param pairIndex pair index
     * @param tradersCount number of traders copied
     */
    event PairTradesCopied(uint8 collateralIndex, uint256 pairIndex, uint256 tradersCount);

    /**
     * @dev Emitted when a trade is copied. Useful to map old to new indexes.
     * @param collateralIndex collateral index
     * @param trader trader's address
     * @param pairIndex pair index
     * @param prevIndex previous index
     * @param newIndex new index
     */
    event TradeCopied(uint8 collateralIndex, address trader, uint256 pairIndex, uint256 prevIndex, uint256 newIndex);

    /**
     * @dev Emitted when limits for a collateral are copied
     * @param collateralIndex collateral index
     * @param fromIndex starting index of open limit orders copied
     * @param toIndex ending index of open limit orders copied
     */
    event LimitsCopied(uint8 collateralIndex, uint256 fromIndex, uint256 toIndex);

    /**
     * @dev Emitted when trades for a collateral are copied
     * @param collateralIndex collateral index
     * @param fromPairIndex starting pair index of trades copied
     * @param toPairIndex ending pair index of trades copied
     */
    event TradesCopied(uint8 collateralIndex, uint16 fromPairIndex, uint16 toPairIndex);

    /**
     * @dev Emitted when a legacy limit is not copied
     * @param collateralIndex collateral index
     * @param trader trader's address
     * @param pairIndex pair index
     * @param index limit index
     */
    event LegacyLimitOrderSkipped(uint8 collateralIndex, address trader, uint256 pairIndex, uint256 index);

    /**
     * @dev Emitted when all trader delegations are copied
     * @param collateralIndex collateral index
     * @param tradersCount number of traders processes
     */
    event TraderDelegationsCopied(uint8 collateralIndex, uint256 tradersCount);

    /**
     * @dev Emitted when the collateral balance of a token is transferred from a deprecated TradingStorage to this contract
     * @param collateralIndex collateral index
     * @param balance collateral balance transferred
     * @param govFees pending govFees copied
     */
    event CollateralTransferred(uint8 collateralIndex, uint256 balance, uint256 govFees);

    error TradingNotPaused();
    error UnknownChain();
    error InvalidCollateral();
    error InvalidMaxIndex();
    error StateAlreadyCopied();
    error Incomplete();
}
