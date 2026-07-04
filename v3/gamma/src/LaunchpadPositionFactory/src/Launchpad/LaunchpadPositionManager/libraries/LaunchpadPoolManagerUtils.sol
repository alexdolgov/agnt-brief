// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import {Currency} from "v4-core/types/Currency.sol";
import {BalanceDelta} from "v4-core/types/BalanceDelta.sol";
import {ModifyLiquidityParams} from "v4-core/types/PoolOperation.sol";
import {IMultiPositionManager} from "../interfaces/IMultiPositionManager.sol";
import {ILaunchpadPositionFactory} from "../interfaces/ILaunchpadPositionFactory.sol";

/// @title LimitedPoolManagerUtils
/// @notice Modified version of PoolManagerUtils for LimitedPositionManager
/// @dev Splits fees 75% to owner, 25% to factory.feeRecipient() during zeroBurn
library LaunchpadPoolManagerUtils {
    using PoolIdLibrary for PoolKey;
    using StateLibrary for IPoolManager;

    bytes32 internal constant POSITION_ID = bytes32(0);
    bytes internal constant HOOK_DATA = new bytes(0);

    event ZeroBurn(
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity,
        uint256 fee0,
        uint256 fee1
    );

    /// @notice Perform zeroBurn on all positions with custom fee split
    /// @dev Splits treasury fees: 75% to owner, 25% to factory.feeRecipient()
    /// @param poolManager The pool manager
    /// @param poolKey The pool key
    /// @param baseRanges Base position ranges
    /// @param limitRanges Limit position ranges
    /// @param currency0 Currency 0
    /// @param currency1 Currency 1
    /// @param fee Fee denominator (always 4 for 25%)
    /// @param owner The manager owner (receives 75%)
    /// @param factory The factory address (to get feeRecipient for 25%)
    /// @return totalFee0 Total fee0 collected
    /// @return totalFee1 Total fee1 collected
    function zeroBurnAllWithSplit(
        IPoolManager poolManager,
        PoolKey memory poolKey,
        IMultiPositionManager.Range[] memory baseRanges,
        IMultiPositionManager.Range[2] memory limitRanges,
        Currency currency0,
        Currency currency1,
        uint16 fee,
        address owner,
        address factory
    ) external returns (uint256 totalFee0, uint256 totalFee1) {
        // Collect all fees from positions
        (totalFee0, totalFee1) = _collectAllFees(poolManager, poolKey, baseRanges, limitRanges);

        // Distribute fees with 75/25 split
        _distributeFees(poolManager, currency0, currency1, totalFee0, totalFee1, fee, owner, factory);
    }

    /// @notice Helper to collect fees from all positions
    function _collectAllFees(
        IPoolManager poolManager,
        PoolKey memory poolKey,
        IMultiPositionManager.Range[] memory baseRanges,
        IMultiPositionManager.Range[2] memory limitRanges
    ) private returns (uint256 totalFee0, uint256 totalFee1) {
        uint256 baseRangesLength = baseRanges.length;
        uint256 fee0;
        uint256 fee1;

        for (uint8 i = 0; i < baseRangesLength; ) {
            (fee0, fee1) = _zeroBurnWithoutUnlock(poolManager, poolKey, baseRanges[i]);
            unchecked {
                totalFee0 += fee0;
                totalFee1 += fee1;
                ++i;
            }
        }

        (fee0, fee1) = _zeroBurnWithoutUnlock(poolManager, poolKey, limitRanges[0]);
        unchecked {
            totalFee0 += fee0;
            totalFee1 += fee1;
        }

        (fee0, fee1) = _zeroBurnWithoutUnlock(poolManager, poolKey, limitRanges[1]);
        unchecked {
            totalFee0 += fee0;
            totalFee1 += fee1;
        }
    }

    /// @notice Helper to distribute fees with 75/25 split
    function _distributeFees(
        IPoolManager poolManager,
        Currency currency0,
        Currency currency1,
        uint256 totalFee0,
        uint256 totalFee1,
        uint16 fee,
        address owner,
        address factory
    ) private {
        // Calculate treasury portion (fee=4 means 25% of fees)
        uint256 treasuryFee0 = totalFee0 / fee;
        uint256 treasuryFee1 = totalFee1 / fee;

        // Split treasury fees: 75% to owner, 25% to feeRecipient
        address feeRecipient = ILaunchpadPositionFactory(factory).feeRecipient();

        _mintFeesToRecipients(
            poolManager,
            currency0,
            currency1,
            treasuryFee0,
            treasuryFee1,
            owner,
            feeRecipient
        );
    }

    /// @notice Helper to mint fees to recipients
    function _mintFeesToRecipients(
        IPoolManager poolManager,
        Currency currency0,
        Currency currency1,
        uint256 treasuryFee0,
        uint256 treasuryFee1,
        address owner,
        address feeRecipient
    ) private {
        uint256 ownerFee0 = (treasuryFee0 * 3) / 4; // 75%
        uint256 ownerFee1 = (treasuryFee1 * 3) / 4;

        uint256 recipientFee0 = treasuryFee0 - ownerFee0; // 25%
        uint256 recipientFee1 = treasuryFee1 - ownerFee1;

        // Mint owner fees
        if (ownerFee0 != 0) {
            poolManager.mint(owner, uint256(uint160(Currency.unwrap(currency0))), ownerFee0);
        }
        if (ownerFee1 != 0) {
            poolManager.mint(owner, uint256(uint160(Currency.unwrap(currency1))), ownerFee1);
        }

        // Mint recipient fees
        if (recipientFee0 != 0) {
            poolManager.mint(feeRecipient, uint256(uint160(Currency.unwrap(currency0))), recipientFee0);
        }
        if (recipientFee1 != 0) {
            poolManager.mint(feeRecipient, uint256(uint160(Currency.unwrap(currency1))), recipientFee1);
        }
    }

    /// @notice Internal function to perform zero-liquidity burn
    function _zeroBurnWithoutUnlock(
        IPoolManager poolManager,
        PoolKey memory poolKey,
        IMultiPositionManager.Range memory range
    ) internal returns (uint256 fee0, uint256 fee1) {
        if (range.lowerTick == range.upperTick) {
            return (0, 0);
        }

        (uint128 liquidity, , ) = poolManager.getPositionInfo(
            poolKey.toId(),
            address(this),
            range.lowerTick,
            range.upperTick,
            POSITION_ID
        );

        if (liquidity != 0) {
            // Check fees first
            (uint256 feesOwed0, uint256 feesOwed1) = _getFeesOwed(poolManager, poolKey, range);

            // Only proceed with modifyLiquidity if either fee is non-zero
            if (feesOwed0 != 0 || feesOwed1 != 0) {
                (, BalanceDelta feesAccrued) = poolManager.modifyLiquidity(
                    poolKey,
                    ModifyLiquidityParams({
                        tickLower: range.lowerTick,
                        tickUpper: range.upperTick,
                        liquidityDelta: 0,
                        salt: POSITION_ID
                    }),
                    HOOK_DATA
                );

                fee0 = uint128(feesAccrued.amount0());
                fee1 = uint128(feesAccrued.amount1());

                emit ZeroBurn(
                    range.lowerTick,
                    range.upperTick,
                    liquidity,
                    fee0,
                    fee1
                );
            }
        }
    }

    /// @notice Get fees owed for a position
    function _getFeesOwed(
        IPoolManager poolManager,
        PoolKey memory poolKey,
        IMultiPositionManager.Range memory range
    ) internal view returns (uint256 feesOwed0, uint256 feesOwed1) {
        (, uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128) =
            poolManager.getPositionInfo(
                poolKey.toId(),
                address(this),
                range.lowerTick,
                range.upperTick,
                POSITION_ID
            );

        feesOwed0 = feeGrowthInside0X128;
        feesOwed1 = feeGrowthInside1X128;
    }
}
