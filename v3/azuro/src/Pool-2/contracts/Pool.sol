// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.28;

import {
    OwnableUpgradeable
} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {TransferHelper} from "@uniswap/lib/contracts/libraries/TransferHelper.sol";
import {IPool} from "./interfaces/IPool.sol";
import {FixedMath} from "./libraries/FixedMath.sol";

contract Pool is OwnableUpgradeable, IPool {
    using FixedMath for *;

    mapping(address => ReserveData) public reserves;
    mapping(address => mapping(uint256 => mapping(address => Share))) public shares;
    mapping(uint256 => bool) public allowedIndexIds;

    address public positionsManager;
    address public indexManager;
    uint64 public minimumFreeReserveShare;
    uint256 public lockupPeriod;

    modifier onlyIndexManager() {
        if (msg.sender != indexManager) revert OnlyIndexManager(indexManager);
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address positionsManager_) external initializer {
        __Ownable_init(msg.sender);
        positionsManager = positionsManager_;
    }

    /**
     * @notice Owner: Updates the address of the market data manager.
     * @dev Reverts if the new address is the same as the current marketDataManager.
     * @param newIndexManager The new address for the market data manager.
     */
    function changeIndexManager(address newIndexManager) external onlyOwner {
        if (newIndexManager == indexManager) revert NoChanges();

        indexManager = newIndexManager;

        emit IndexManagerChanged(newIndexManager);
    }

    /**
     * @notice Owner: Updates the global lockup period for liquidity withdrawals.
     * @dev Reverts if the new lockup period is the same as the current one.
     * @param newLockupPeriod The new lockup duration in seconds.
     */
    function changeLockupPeriod(uint256 newLockupPeriod) external onlyOwner {
        if (newLockupPeriod == lockupPeriod) revert NoChanges();

        lockupPeriod = newLockupPeriod;

        emit LockupPeriodChanged(newLockupPeriod);
    }

    /**
     * @notice Owner: Updates the minimum collateral requirement for a given token.
     * @param token The address of the collateral token to update.
     * @param minimumCollateral The new minimum collateral amount to set for the token.
     */
    function changeMinimumCollateral(address token, uint256 minimumCollateral) external onlyOwner {
        ReserveData storage reserve = reserves[token];
        if (reserve.minimumCollateral == minimumCollateral) revert NoChanges();

        reserve.minimumCollateral = minimumCollateral;

        emit MinimumCollateralChanged(token, minimumCollateral);
    }

    /**
     * @notice Owner: Updates the minimum reserve buffer share for all tokens.
     * @notice The reserve buffer defines the fraction of pool liquidity that must remain
     *      unencumbered (i.e., cannot be locked or withdrawn).
     * @param newMinimumFreeReserveShare The new minimum reserve buffer share (scaled by 1e18).
     */
    function changeMinimumFreeReserveShare(uint64 newMinimumFreeReserveShare) external onlyOwner {
        if (newMinimumFreeReserveShare == minimumFreeReserveShare) revert NoChanges();
        newMinimumFreeReserveShare.requireLessThanOne();

        minimumFreeReserveShare = newMinimumFreeReserveShare;

        emit MinimumFreeReserveShareChanged(newMinimumFreeReserveShare);
    }

    /**
     * @notice Owner: Changes token permission status.
     * @param token The token address.
     * @param isAllowed Whether the token is allowed for deposits.
     */
    function changeTokenStatus(address token, bool isAllowed) external onlyOwner {
        ReserveData storage reserve = reserves[token];
        if (reserve.isAllowed == isAllowed) revert NoChanges();

        reserve.isAllowed = isAllowed;
        if (reserve.exchangeRate == 0) {
            reserve.exchangeRate = FixedMath.ONE;
        }

        emit TokenStatusChanged(token, isAllowed);
    }

    /**
     * @notice IndexManager: Changes the permission status of an index.
     * @param indexId The ID of the index.
     * @param isAllowed Whether the index is enabled for trading.
     */
    function changeIndexStatus(uint256 indexId, bool isAllowed) external onlyIndexManager {
        if (allowedIndexIds[indexId] == isAllowed) revert NoChanges();

        allowedIndexIds[indexId] = isAllowed;

        emit IndexStatusChanged(indexId, isAllowed);
    }

    /**
     * @notice IndexManager: Emits an event with new index data for the specified index.
     * @param indexId The ID of the index being updated.
     * @param data An array of arbitrary binary data associated with the index.
     */
    function updateIndexData(uint256 indexId, bytes calldata data) external onlyIndexManager {
        emit IndexDataUpdated(indexId, data);
    }

    /**
     * @notice Adds liquidity to the pool.
     * @param token Token to deposit.
     * @param amount Amount to deposit.
     */
    function addLiquidity(address token, uint256 amount) external {
        ReserveData storage reserve = reserves[token];
        if (!reserve.isAllowed) revert TokenNotAllowed(token);

        reserve.totalReserve += amount;

        uint256 shareAmount = amount.div(reserve.exchangeRate);
        uint256 withdrawAfter = block.timestamp + lockupPeriod;

        Share storage share = shares[token][reserve.revision][msg.sender];
        share.amount += shareAmount;
        share.withdrawAfter = withdrawAfter;

        TransferHelper.safeTransferFrom(token, msg.sender, address(this), amount);

        emit LiquidityAdded(token, msg.sender, amount, shareAmount, withdrawAfter);
    }

    /**
     * @notice Withdraws liquidity from the pool.
     * @param token Token to withdraw.
     * @param amount Amount to withdraw (if greater than balance, withdraws max).
     */
    function withdrawLiquidity(address token, uint256 amount) external {
        if (amount == 0) revert ZeroAmount();

        ReserveData storage reserve = reserves[token];
        Share storage share = shares[token][reserve.revision][msg.sender];
        if (block.timestamp < share.withdrawAfter) {
            revert LockupPeriod(share.withdrawAfter - block.timestamp);
        }

        uint256 userBalance = share.amount.mul(reserve.exchangeRate);
        if (userBalance == 0) revert ZeroBalance(token, msg.sender);

        if (amount > userBalance) amount = userBalance;

        share.amount -= amount.div(reserve.exchangeRate);
        reserve.totalReserve -= amount;
        _checkFreeLiquidity(reserve);

        TransferHelper.safeTransfer(token, msg.sender, amount);

        emit LiquidityWithdrawn(token, msg.sender, amount);
    }

    /**
     * @notice PositionsManager: Adjusts the reserve based on trade outcome (profit or loss).
     * @param collateralToken Token used as collateral.
     * @param deltaReserve Profit/loss of the pool.
     * @param deltaLocked Locked/unlocked amount of reserve.
     */
    function adjustReserve(
        address collateralToken,
        int256 deltaReserve,
        int256 deltaLocked
    ) external {
        if (msg.sender != positionsManager) revert OnlyPositionsManager(positionsManager);

        ReserveData storage reserve = reserves[collateralToken];

        if (deltaReserve != 0) {
            uint256 previousReserve = reserve.totalReserve;
            if (deltaReserve > 0) {
                uint256 profit = uint256(deltaReserve);
                reserve.totalReserve += profit;
                TransferHelper.safeTransferFrom(collateralToken, msg.sender, address(this), profit);
            } else {
                uint256 loss = uint256(-deltaReserve);
                if (loss > previousReserve) revert InsufficientLiquidity();
                reserve.totalReserve -= loss;
                TransferHelper.safeTransfer(collateralToken, msg.sender, loss);
            }

            if (previousReserve > 0) {
                uint256 exchangeRate = (reserve.exchangeRate * reserve.totalReserve) /
                    previousReserve;
                if (exchangeRate > 0) {
                    reserve.exchangeRate = exchangeRate;
                } else {
                    reserve.exchangeRate = FixedMath.ONE;
                    ++reserve.revision;
                }
            }

            emit ReserveAdjusted(collateralToken, deltaReserve);
        }

        if (deltaLocked != 0) {
            if (deltaLocked > 0) {
                reserve.lockedReserve += uint256(deltaLocked);
                _checkFreeLiquidity(reserve);
            } else {
                if (uint256(-deltaLocked) > reserve.lockedReserve)
                    revert InsufficientLockedLiquidity();
                reserve.lockedReserve -= uint256(-deltaLocked);
            }

            emit LockedReserveAdjusted(collateralToken, deltaLocked);
        }
    }

    /**
     * @notice Validates if the provided index ID and collateral parameters are permitted.
     * @param indexId The ID of the index to be validated.
     * @param collateralToken The address of the collateral token to be validated.
     * @param collateralAmount The amount of the collateral token to be validated.
     */
    function validateOrder(
        uint256 indexId,
        address collateralToken,
        uint256 collateralAmount
    ) external view {
        ReserveData storage reserve = reserves[collateralToken];
        if (!reserve.isAllowed) revert TokenNotAllowed(collateralToken);
        if (!allowedIndexIds[indexId]) revert IndexNotAllowed(indexId);
        if (collateralAmount < reserve.minimumCollateral)
            revert InsufficientCollateral(collateralToken, reserve.minimumCollateral);
    }

    /**
     * @notice Computes the current balance of a user in a specific token.
     * @param token The token to check.
     * @param account The account to query.
     * @return The token-equivalent value of the user's shares.
     */
    function balanceOf(address token, address account) external view returns (uint256) {
        ReserveData storage reserve = reserves[token];
        return shares[token][reserve.revision][account].amount.mul(reserve.exchangeRate);
    }

    /**
     * @notice Checks that the reserve keeps the minimum free liquidity share.
     * @param reserve Reserve data to validate.
     */
    function _checkFreeLiquidity(ReserveData storage reserve) internal view {
        if (
            reserve.totalReserve.mul(FixedMath.ONE - minimumFreeReserveShare) <
            reserve.lockedReserve
        ) revert InsufficientFreeLiquidity();
    }
}
