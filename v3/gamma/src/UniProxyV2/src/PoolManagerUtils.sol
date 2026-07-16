// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.26;

import { IPoolManager } from "v4-core/interfaces/IPoolManager.sol";
import { PoolKey } from "v4-core/types/PoolKey.sol";
import { BalanceDelta } from "v4-core/types/BalanceDelta.sol";
import { StateLibrary } from "v4-core/libraries/StateLibrary.sol";
import { TransientStateLibrary } from "v4-core/libraries/TransientStateLibrary.sol";
import { Currency } from "v4-core/types/Currency.sol";
import { CurrencySettler } from "v4-periphery/lib/v4-core/test/utils/CurrencySettler.sol";
import { FullMath } from "v4-core/libraries/FullMath.sol";
import { FixedPoint128 } from "v4-core/libraries/FixedPoint128.sol";
import { LiquidityAmounts } from "v4-periphery/lib/v4-core/test/utils/LiquidityAmounts.sol";
import { TickMath } from "v4-core/libraries/TickMath.sol";
import { SafeCast } from "v4-core/libraries/SafeCast.sol";
import { SignedMath } from "@openzeppelin/contracts/utils/math/SignedMath.sol";
import { IMultiPositionManager } from "./interfaces/IMultiPositionManager.sol";

library PoolManagerUtils {
  using StateLibrary for IPoolManager;
  using TransientStateLibrary for IPoolManager;
  using CurrencySettler for Currency;
  using SignedMath for int256;
  using SafeCast for *;

  bytes32 constant POSITION_ID = bytes32(uint256(1));
  bytes constant HOOK_DATA = "";

  event ZeroBurn(
    int24 tickLower,
    int24 tickUpper,
    uint256 amount0,
    uint256 amount1
  );
  event LiquidityMinted(
    IMultiPositionManager.Position position,
    uint128 liquidity
  );
  event LiquidityBurnt(
    IMultiPositionManager.Position position,
    uint256 liquidity
  );
  
  error PSC();
  error InvalidPositionData(
    IMultiPositionManager.Position position
  );
  error PoolNotInitialized(
    PoolKey poolKey
  );
  error DuplicatedPosition(
    IMultiPositionManager.Position position
  );
  error ZeroLiquidityAmount(
    IMultiPositionManager.Position position
  );

  function mintLiquidities(
    IPoolManager poolManager,
    IMultiPositionManager.Position[] memory basePositions,
    IMultiPositionManager.Position[2] memory limitPositions,
    uint128[] memory liquidities,
    uint256[2][] memory inMin
  ) external {
    for (uint8 i = 0; i < basePositions.length; ) {
      (
        uint256 currencyDelta0,
        uint256 currencyDelta1
      ) = _getCurrencyDeltas(
        poolManager,
        basePositions[i].poolKey.currency0,
        basePositions[i].poolKey.currency1
      );
      (uint256 amount0, uint256 amount1) = getAmountsForLiquidity(
        poolManager,
        basePositions[i],
        liquidities[i]
      );
      if (amount0 > currencyDelta0) {
        amount0 = currencyDelta0;
      }
      if (amount1 > currencyDelta1) {
        amount1 = currencyDelta1;
      }
      
      _mintLiquidityForAmounts(
        poolManager,
        basePositions[i],
        amount0,
        amount1,
        inMin[i]
      );

      unchecked {
        i = i + 1;
      }
    }

    // mint limit positions
    _mintLimitPositions(
      poolManager,
      limitPositions
    );
  }

  // if there's still remaining tokens, create a limit position(single-sided position)
  function _mintLimitPositions(
    IPoolManager poolManager,
    IMultiPositionManager.Position[2] memory limitPositions
  ) internal {
    if (limitPositions[0].lowerTick != limitPositions[0].upperTick) {
      uint256 currencyDelta1 = _getCurrencyDelta(
        poolManager,
        limitPositions[0].poolKey.currency1
      );
      
      if (currencyDelta1 > 0) {
        _mintLiquidityForAmounts(
          poolManager,
          limitPositions[0],
          0,
          currencyDelta1,
          [uint256(0), uint256(0)]
        );
      }
    }

    if (limitPositions[1].lowerTick != limitPositions[1].upperTick) {
      uint256 currencyDelta0 = _getCurrencyDelta(
        poolManager,
        limitPositions[1].poolKey.currency0
      );

      if (currencyDelta0 > 0) {
        _mintLiquidityForAmounts(
          poolManager,
          limitPositions[1],
          currencyDelta0,
          0,
          [uint256(0), uint256(0)]
        );
      }
    }
  }

  function _mintLiquidityForAmounts(
    IPoolManager poolManager,
    IMultiPositionManager.Position memory position,
    uint256 amount0,
    uint256 amount1,
    uint256[2] memory inMin
  ) internal {
    (uint160 sqrtPriceX96, , , ) = poolManager.getSlot0(position.poolKey.toId());
    if (sqrtPriceX96 == 0) {
      revert PoolNotInitialized(position.poolKey);
    }

    if (
      position.lowerTick >= position.upperTick ||
      position.lowerTick % position.poolKey.tickSpacing != 0 ||
      position.upperTick % position.poolKey.tickSpacing != 0
    ) {
      revert InvalidPositionData(position);
    }

    uint128 liquidity = LiquidityAmounts.getLiquidityForAmounts(
      sqrtPriceX96,
      TickMath.getSqrtPriceAtTick(position.lowerTick),
      TickMath.getSqrtPriceAtTick(position.upperTick),
      amount0,
      amount1
    );

    if (liquidity > 0) {
      (BalanceDelta callerDelta, ) = poolManager.modifyLiquidity(
        position.poolKey,
        IPoolManager.ModifyLiquidityParams({
          tickLower: position.lowerTick,
          tickUpper: position.upperTick,
          liquidityDelta: liquidity.toInt128(),
          salt: POSITION_ID
        }),
        HOOK_DATA
      );

      /// callerDelta.amount0() and callerDelta.amount0() are all negative
      if (
        int256(callerDelta.amount0()).abs() < inMin[0] ||
        int256(callerDelta.amount1()).abs() < inMin[1]
      ) {
        revert PSC();
      }
      emit LiquidityMinted(position, liquidity);
    }
  }

  function burnLiquidities(
    IPoolManager poolManager,
    IMultiPositionManager.Position[] memory basePositions,
    IMultiPositionManager.Position[2] memory limitPositions,
    uint256 shares,
    uint256 totalSupply,
    uint256[2][] memory outMin
  ) external returns (uint256 amount0, uint256 amount1) {
    if (shares == 0) return (amount0, amount1);

    uint256 amountOut0;
    uint256 amountOut1;
    for (uint8 i = 0; i < basePositions.length; ) {
      (amountOut0, amountOut1) = burnLiquidityForShare(
        poolManager,
        basePositions[i],
        shares,
        totalSupply,
        outMin[i]
      );

      amount0 = amount0 + amountOut0;
      amount1 = amount1 + amountOut1;

      unchecked {
        i = i + 1;
      }
    }

    (amountOut0, amountOut1) = _burnLimitPositions(
      poolManager,
      limitPositions,
      shares,
      totalSupply
    );
    amount0 = amount0 + amountOut0;
    amount1 = amount1 + amountOut1;
  }

  function _burnLimitPositions(
    IPoolManager poolManager,
    IMultiPositionManager.Position[2] memory limitPositions,
    uint256 shares,
    uint256 totalSupply
  ) internal returns (uint256 amount0, uint256 amount1) {
    if (shares == 0) return (0, 0);

    for (uint8 i = 0; i < 2; ) {
      (uint256 amountOut0, uint256 amountOut1) = burnLiquidityForShare(
        poolManager,
        limitPositions[i],
        shares,
        totalSupply,
        [uint256(0), uint256(0)]
      );
      
      amount0 = amount0 + amountOut0;
      amount1 = amount1 + amountOut1;

      unchecked {
        i = i + 1;
      }
    }
  }

  function burnLiquidityForShare(
    IPoolManager poolManager,
    IMultiPositionManager.Position memory position,
    uint256 shares,
    uint256 totalSupply,
    uint256[2] memory outMin
  ) public returns (uint256 amountOut0, uint256 amountOut1) {
    if (position.lowerTick == position.upperTick) {
      return (0, 0);
    }
    (uint128 liquidity, , ) = poolManager.getPositionInfo(
      position.poolKey.toId(),
      address(this),
      position.lowerTick,
      position.upperTick,
      POSITION_ID
    );
    
    uint256 liquidityForShares = FullMath.mulDiv(liquidity, shares, totalSupply);

    if (liquidityForShares > 0) {
      (BalanceDelta callerDelta, ) = poolManager.modifyLiquidity(
        position.poolKey,
        IPoolManager.ModifyLiquidityParams({
          tickLower: position.lowerTick,
          tickUpper: position.upperTick,
          liquidityDelta: -(liquidityForShares).toInt128(),
          salt: POSITION_ID
        }),
        HOOK_DATA
      );

      // when withdrawing liquidity or collecting fee (collecting fee is same as withdrawing liquidity 0 ), 
      // callerDelta is always positive
      // when adding liquidity, most of time callerDelta is negative but could be positive 
      //  when fee is larger than liquidity itself (but fee already settled in `zeroBurn`)
      amountOut0 = callerDelta.amount0().toUint128();
      amountOut1 = callerDelta.amount1().toUint128();
      
      if (
        amountOut0 < outMin[0] ||
        amountOut1 < outMin[1]
      ) {
        revert PSC();
      }
      
      emit LiquidityBurnt(position, liquidityForShares);
    }
  }

  function zeroBurnAll(
    IPoolManager poolManager,
    IMultiPositionManager.Position[] memory basePositions,
    IMultiPositionManager.Position[2] memory limitPositions,
    Currency currency0,
    Currency currency1,
    uint16 fee
  ) external returns (uint256 totalFee0, uint256 totalFee1) {
    uint256 fee0;
    uint256 fee1;
    for (uint8 i = 0; i < basePositions.length; ) {
      (fee0, fee1) = _zeroBurnWithoutUnlock(
        poolManager,
        basePositions[i]
      );
      totalFee0 = totalFee0 + fee0;
      totalFee1 = totalFee1 + fee1;
      
      unchecked {
        i++;
      }
    }

    (fee0, fee1) = _zeroBurnWithoutUnlock(
      poolManager,
      limitPositions[0]
    );
    totalFee0 = totalFee0 + fee0;
    totalFee1 = totalFee1 + fee1;
    (fee0, fee1) = _zeroBurnWithoutUnlock(
      poolManager,
      limitPositions[1]
    );
    totalFee0 = totalFee0 + fee0;
    totalFee1 = totalFee1 + fee1;

    // Calculate fees by dividing by fee denominator
    uint256 treasuryFee0 = totalFee0 / fee;
    uint256 treasuryFee1 = totalFee1 / fee;

    if (treasuryFee0 > 0) {
      poolManager.mint(
        address(this),
        uint256(uint160(Currency.unwrap(currency0))),
        treasuryFee0
      );
    }
    if (treasuryFee1 > 0) {
      poolManager.mint(
        address(this),
        uint256(uint160(Currency.unwrap(currency1))),
        treasuryFee1
      );
    }
  }

  function _zeroBurnWithoutUnlock(
    IPoolManager poolManager,
    IMultiPositionManager.Position memory position
  ) internal returns (uint256 fee0, uint256 fee1) {
    if (position.lowerTick == position.upperTick) {
      return (0, 0);
    }
    (uint128 liquidity, , ) = poolManager.getPositionInfo(
      position.poolKey.toId(),
      address(this),
      position.lowerTick,
      position.upperTick,
      POSITION_ID
    );
    
    if (liquidity > 0) {
      // Check fees first
      (uint256 feesOwed0, uint256 feesOwed1) = _getFeesOwed(poolManager, position);
      // Only proceed with modifyLiquidity if either fee is non-zero
      if (feesOwed0 != 0 || feesOwed1 != 0) {
        (, BalanceDelta feesAccrued) = poolManager.modifyLiquidity(
          position.poolKey,
          IPoolManager.ModifyLiquidityParams({
              tickLower: position.lowerTick,
              tickUpper: position.upperTick,
              liquidityDelta: 0,
              salt: POSITION_ID
          }),
          HOOK_DATA
        );

        fee0 = uint128(feesAccrued.amount0());
        fee1 = uint128(feesAccrued.amount1());
        emit ZeroBurn(
            position.lowerTick,
            position.upperTick,
            fee0,
            fee1
        );
      }
    }
  }

  function close(
    IPoolManager poolManager,
    Currency currency
  ) external {
    int256 currencyDelta = poolManager.currencyDelta(
      address(this),
      currency
    );
    if (currencyDelta == 0) return;
    else if (currencyDelta < 0) {
      currency.settle(poolManager, address(this), uint256(-currencyDelta), false);
    } else {
      currency.take(poolManager, address(this), uint256(currencyDelta), false);
    }
  }

  function _getCurrencyDelta(
    IPoolManager poolManager,
    Currency currency
  ) internal view returns (
    uint256 delta
  ) {
    int256 currencyDelta = poolManager.currencyDelta(
      address(this),
      currency
    );

    if (currencyDelta > 0) {
      delta = currency.balanceOfSelf() + uint256(currencyDelta);
    } else {
      delta = currency.balanceOfSelf() - uint256(-currencyDelta);
    }

    return delta;
  }

  function _getCurrencyDeltas(
    IPoolManager poolManager,
    Currency currency0,
    Currency currency1
  ) internal view returns (uint256 delta0, uint256 delta1) {
    int256 currencyDelta0 = poolManager.currencyDelta(
      address(this),
      currency0
    );
    int256 currencyDelta1 = poolManager.currencyDelta(
      address(this),
      currency1
    );
    
    if (currencyDelta0 > 0) {
      delta0 = currency0.balanceOfSelf() + uint256(currencyDelta0);
    } else {
      delta0 = currency0.balanceOfSelf() - uint256(-currencyDelta0);
    }
    if (currencyDelta1 > 0) {
      delta1 = currency1.balanceOfSelf() + uint256(currencyDelta1);
    } else {
      delta1 = currency1.balanceOfSelf() - uint256(-currencyDelta1);
    }
    
    return (delta0, delta1);
  }

  function getAmountsForLiquidity(
    IPoolManager poolManager,
    IMultiPositionManager.Position memory position,
    uint128 liquidity
  ) internal view returns (
    uint256 amount0,
    uint256 amount1
  ) {
    (uint160 sqrtPriceX96, , , ) = poolManager.getSlot0(position.poolKey.toId());
    (amount0, amount1) = LiquidityAmounts.getAmountsForLiquidity(
      sqrtPriceX96,
      TickMath.getSqrtPriceAtTick(position.lowerTick),
      TickMath.getSqrtPriceAtTick(position.upperTick),
      liquidity
    );
  }

  function getAmountsOf(
    IPoolManager poolManager,
    IMultiPositionManager.Position memory position
  ) external view returns (
    uint128 liquidity,
    uint256 amount0,
    uint256 amount1,
    uint256 feesOwed0,
    uint256 feesOwed1
  ) {
    if (position.lowerTick == position.upperTick) {
      return (0, 0, 0, 0, 0);
    }
    (liquidity, , ) = poolManager.getPositionInfo(
      position.poolKey.toId(),
      address(this),
      position.lowerTick,
      position.upperTick,
      POSITION_ID
    );
    
    (uint160 sqrtPriceX96, , , ) = poolManager.getSlot0(position.poolKey.toId());
    
    (amount0, amount1) = LiquidityAmounts.getAmountsForLiquidity(
      sqrtPriceX96,
      TickMath.getSqrtPriceAtTick(position.lowerTick),
      TickMath.getSqrtPriceAtTick(position.upperTick),
      liquidity
    );

    (feesOwed0, feesOwed1) = _getFeesOwed(
      poolManager,
      position
    );
  }

  function _getFeesOwed(
    IPoolManager poolManager,
    IMultiPositionManager.Position memory position
  ) internal view returns (
    uint256 feesOwed0,
    uint256 feesOwed1
  ) {
    (uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128) =
      poolManager.getFeeGrowthInside(
        position.poolKey.toId(),
        position.lowerTick,
        position.upperTick
      );

    (
      uint128 liquidity, 
      uint256 feeGrowthInside0LastX128,
      uint256 feeGrowthInside1LastX128
    ) = poolManager.getPositionInfo(
      position.poolKey.toId(),
      address(this),
      position.lowerTick,
      position.upperTick,
      POSITION_ID
    );

    unchecked {
      feesOwed0 =
        FullMath.mulDiv(feeGrowthInside0X128 - feeGrowthInside0LastX128, liquidity, FixedPoint128.Q128);
      feesOwed1 =
        FullMath.mulDiv(feeGrowthInside1X128 - feeGrowthInside1LastX128, liquidity, FixedPoint128.Q128);
    }
  }
}
