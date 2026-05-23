// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.7.6;

import { TickMath } from "@velodrome-finance/concentrated-liquidity/contracts/core/libraries/TickMath.sol";
import { ICLPool } from "@velodrome-finance/concentrated-liquidity/contracts/core/interfaces/ICLPool.sol";

import { LiquidityAmounts } from "@velodrome-finance/concentrated-liquidity/contracts/periphery/libraries/LiquidityAmounts.sol";
import { OracleLibrary } from "@velodrome-finance/concentrated-liquidity/contracts/periphery/libraries/OracleLibrary.sol";

import { ICLFactory } from "@velodrome-finance/concentrated-liquidity/contracts/core/interfaces/ICLFactory.sol";
import { IVoter } from "@velodrome-finance/concentrated-liquidity/contracts/core/interfaces/IVoter.sol";
import { ILeafCLGauge } from "@velodrome-finance/concentrated-liquidity/contracts/gauge/interfaces/ILeafCLGauge.sol";

import {
    INonfungiblePositionManager
} from "@velodrome-finance/concentrated-liquidity/contracts/periphery/interfaces/INonfungiblePositionManager.sol";

import { SafeMath } from "@openzeppelin/contracts/math/SafeMath.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";

import { IICHIVaultFactory } from "../../interfaces/IICHIVaultFactory.sol";

library UV3Math {
    /// @dev The minimum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MIN_TICK)
    uint160 internal constant MIN_SQRT_RATIO = 4295128739;
    /// @dev The maximum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MAX_TICK)
    uint160 internal constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342;

    uint256 public constant PRECISION = 10 ** 18;

    /*******************
     * Tick Math
     *******************/

    function getSqrtRatioAtTick(int24 currentTick) public pure returns (uint160 sqrtPriceX96) {
        sqrtPriceX96 = TickMath.getSqrtRatioAtTick(currentTick);
    }

    /*******************
     * LiquidityAmounts
     *******************/

    function getAmountsForLiquidity(
        uint160 sqrtRatioX96,
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint128 liquidity
    ) public pure returns (uint256 amount0, uint256 amount1) {
        (amount0, amount1) = LiquidityAmounts.getAmountsForLiquidity(
            sqrtRatioX96,
            sqrtRatioAX96,
            sqrtRatioBX96,
            liquidity
        );
    }

    function getLiquidityForAmounts(
        uint160 sqrtRatioX96,
        uint160 sqrtRatioAX96,
        uint160 sqrtRatioBX96,
        uint256 amount0,
        uint256 amount1
    ) public pure returns (uint128 liquidity) {
        liquidity = LiquidityAmounts.getLiquidityForAmounts(
            sqrtRatioX96,
            sqrtRatioAX96,
            sqrtRatioBX96,
            amount0,
            amount1
        );
    }

    /*******************
     * OracleLibrary
     *******************/

    function consult(address _pool, uint32 _twapPeriod) public view returns (int24 timeWeightedAverageTick) {
        (timeWeightedAverageTick,) = OracleLibrary.consult(_pool, _twapPeriod);
    }

    function getQuoteAtTick(
        int24 tick,
        uint128 baseAmount,
        address baseToken,
        address quoteToken
    ) public pure returns (uint256 quoteAmount) {
        quoteAmount = OracleLibrary.getQuoteAtTick(tick, baseAmount, baseToken, quoteToken);
    }

    /**
    * @notice Helper function to check price manipulation
    * @param price Current spot price
    * @param twap TWAP price
    * @param auxTwap Auxiliary TWAP price
    * @param hysteresis Hysteresis threshold
    * @param auxTwapPeriod The auxiliary TWAP period (0 if not used)
    * @param pool The pool address for checking hysteresis
    */
    function checkPriceManipulation(
        uint256 price,
        uint256 twap,
        uint256 auxTwap,
        uint256 hysteresis,
        uint32 auxTwapPeriod,
        address pool
    ) public view {
        uint256 delta = (price > twap)
            ? price.sub(twap).mul(PRECISION).div(price)
            : twap.sub(price).mul(PRECISION).div(twap);

        if (auxTwapPeriod > 0) {
            uint256 auxDelta = (price > auxTwap)
                ? price.sub(auxTwap).mul(PRECISION).div(price)
                : auxTwap.sub(price).mul(PRECISION).div(auxTwap);

            if (delta > hysteresis || auxDelta > hysteresis) {
                require(checkHysteresis(pool), "IV5");
            }
        } else if (delta > hysteresis) {
            require(checkHysteresis(pool), "IV6");
        }
    }

    /**
    * @notice Checks if the last price change happened in the current block
    * @param pool The pool address
    * @return safe Whether the hysteresis check passes (true = safe)
    */
    function checkHysteresis(address pool) private view returns (bool safe) {
        (, , uint16 observationIndex, , , ) = ICLPool(pool).slot0();
        (uint32 blockTimestamp, , , ) = ICLPool(pool).observations(observationIndex);
        return (block.timestamp != blockTimestamp);
    }

    /**
    * @notice Helper function to get the most conservative price
    * @param spot Current spot price
    * @param twap TWAP price
    * @param auxTwap Auxiliary TWAP price
    * @param isPool Flag indicating if the valuation is for the pool or deposit
    * @param auxTwapPeriod The auxiliary TWAP period (0 if not used)
    * @return price Most conservative price
    */
    function getConservativePrice(
        uint256 spot,
        uint256 twap,
        uint256 auxTwap,
        bool isPool,
        uint32 auxTwapPeriod
    ) public pure returns (uint256) {
        if (isPool) {
            // For pool valuation, use highest price to be conservative
            if (auxTwapPeriod > 0) {
                return max(max(spot, twap), auxTwap);
            }
            return max(spot, twap);
        } else {
            // For deposit valuation, use lowest price to be conservative
            if (auxTwapPeriod > 0) {
                return min(min(spot, twap), auxTwap);
            }
            return min(spot, twap);
        }
    }

    function min(uint256 a, uint256 b) private pure returns (uint256) {
        return a < b ? a : b;
    }

    function max(uint256 a, uint256 b) private pure returns (uint256) {
        return a < b ? b : a;
    }

    /*******************
     * SafeUnit128
     *******************/

    /// @notice Cast a uint256 to a uint128, revert on overflow
    /// @param y The uint256 to be downcasted
    /// @return z The downcasted integer, now type uint128
    function toUint128(uint256 y) public pure returns (uint128 z) {
        require((z = uint128(y)) == y, "SafeUint128: overflow");
    }

    /******************************
     * ICHIVault specific functions
     ******************************/

    /**
     @dev Computes a unique vault's symbol for vaults created through Ramses factory.
     @param pool address of the underlying pool
     @param allowToken0 address of the underlying pool
     */
    function computeIVsymbol(address pool, bool allowToken0) public view returns (string memory) {
        ICLPool uniswapPool = ICLPool(pool);
        string memory token0Symbol = ERC20(uniswapPool.token0()).symbol();
        string memory token1Symbol = ERC20(uniswapPool.token1()).symbol();
        // Format: IV-[ammName]-deposit-quote
        return
            string(
                abi.encodePacked(
                    "IV-",
                    IICHIVaultFactory(msg.sender).ammName(),
                    "-",
                    allowToken0 ? token0Symbol : token1Symbol,
                    "-",
                    allowToken0 ? token1Symbol : token0Symbol,
                    "-",
                    Strings.toString(uniswapPool.fee())
                )
            );
    }

    // - - - Velodrome Size Limit Refactor - - -

    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    address constant NULL_ADDRESS = address(0);

    /**
    * @notice Gets position info and calculates token amounts for a given NFT position
    * @param positionId NFT position ID to query
    * @param pool The pool address
    * @param ichiVaultFactory The ICHIVaultFactory address
    * @return liquidity Amount of liquidity in the position
    * @return amount0 Amount of token0 in position (including fees)
    * @return amount1 Amount of token1 in position (including fees)
    */
    function getPositionAmounts(
        uint256 positionId,
        address pool,
        address ichiVaultFactory
    ) public view returns (uint128 liquidity, uint256 amount0, uint256 amount1) {
        if (positionId == 0) {
            return (0, 0, 0);
        }

        // Get NFT manager from factory
        address nftManager = IICHIVaultFactory(ichiVaultFactory).nftManager();

        // Get current position info from NFT manager
        (
            ,
            ,
            ,
            ,
            ,
            int24 tickLower,
            int24 tickUpper,
            uint128 positionLiquidity,
            ,
            ,
            uint128 tokensOwed0,
            uint128 tokensOwed1
        ) = INonfungiblePositionManager(nftManager).positions(positionId);

        // Get current price from pool for amount calculation
        (uint160 sqrtRatioX96, , , , ,) = ICLPool(pool).slot0();

        // Calculate amounts for the current liquidity
        (amount0, amount1) = getAmountsForLiquidity(
            sqrtRatioX96,
            getSqrtRatioAtTick(tickLower),
            getSqrtRatioAtTick(tickUpper),
            positionLiquidity
        );

        // Add any uncollected fees
        amount0 = amount0.add(uint256(tokensOwed0));
        amount1 = amount1.add(uint256(tokensOwed1));
        liquidity = positionLiquidity;
    }

    /**
    * @notice Returns equivalent _tokenOut for _amountIn, _tokenIn using spot price
    * @param _tokenIn token the input amount is in
    * @param _tokenOut token for the output amount
    * @param _tick tick for the spot price
    * @param _amountIn amount in _tokenIn
    * @return amountOut equivalent amount in _tokenOut
    */
    function fetchSpot(
        address _tokenIn,
        address _tokenOut,
        int24 _tick,
        uint256 _amountIn
    ) public pure returns (uint256 amountOut) {
        return getQuoteAtTick(_tick, toUint128(_amountIn), _tokenIn, _tokenOut);
    }

    /**
    * @notice Returns equivalent _tokenOut for _amountIn, _tokenIn using TWAP price
    * @param _pool Uniswap V3 pool address to be used for price checking
    * @param _tokenIn token the input amount is in
    * @param _tokenOut token for the output amount
    * @param _twapPeriod the averaging time period
    * @param _amountIn amount in _tokenIn
    * @return amountOut equivalent amount in _tokenOut
    */
    function fetchTwap(
        address _pool,
        address _tokenIn,
        address _tokenOut,
        uint32 _twapPeriod,
        uint256 _amountIn
    ) public view returns (uint256 amountOut) {
        // Leave twapTick as a int256 to avoid solidity casting
        int256 twapTick = consult(_pool, _twapPeriod);
        return
            getQuoteAtTick(
                int24(twapTick), // can assume safe being result from consult()
                toUint128(_amountIn),
                _tokenIn,
                _tokenOut
            );
    }

    // - - - Velodrome Gauge and Rewards Logic - - -

    /**
    * @notice Collects rewards from staked positions in the Velodrome gauge
    * @param ichiVaultFactory The ICHIVaultFactory address
    * @param pool The pool address
    * @param basePositionId The base position NFT ID
    * @param limitPositionId The limit position NFT ID
    * @param farmingContract The farming contract address to send rewards to
    * @param token0 The pool's token0
    * @param token1 The pool's token1
    * @param lastGauge The stored lastActiveGauge from the vault
    */
    function collectRewards(
        address ichiVaultFactory,
        address pool,
        uint256 basePositionId,
        uint256 limitPositionId,
        address farmingContract,
        address token0,
        address token1,
        address lastGauge
    ) public {
        // we only collect rewards from the last stored gauge
        address gauge = lastGauge;

        if (gauge == NULL_ADDRESS) return; // No gauge, no rewards to collect

        // Get NFT manager from factory
        address nftManager = IICHIVaultFactory(ichiVaultFactory).nftManager();

        // Check if we have positions and if they're staked
        uint256 rewarded = 0;
        address rewardToken = ILeafCLGauge(gauge).rewardToken();

        // Record starting balance to calculate rewards received
        uint256 balanceBefore = 0;
        if (token0 == rewardToken || token1 == rewardToken) {
            // If rewardToken is one of our pool tokens, we need to track balance changes
            balanceBefore = IERC20(rewardToken).balanceOf(address(this));
        }

        // Claim rewards for base position if it exists and is staked
        if (basePositionId != 0) {
            if (!isPositionOwnedByCaller(nftManager, basePositionId)) {
                // NFT is not owned by vault, so it must be staked in the gauge
                try ILeafCLGauge(gauge).getReward(basePositionId) {
                    rewarded = 1; // Rewards were claimed
                } catch {
                    // Silently continue if the claim fails
                }
            }
        }

        // Claim rewards for limit position if it exists and is staked
        if (limitPositionId != 0) {
            if (!isPositionOwnedByCaller(nftManager, limitPositionId)) {
                // NFT is not owned by vault, so it must be staked in the gauge
                try ILeafCLGauge(gauge).getReward(limitPositionId) {
                    rewarded = 1; // Rewards were claimed
                } catch {
                    // Silently continue if the claim fails
                }
            }
        }

        // If we have a farming contract, transfer the rewards there
        if (farmingContract != NULL_ADDRESS && rewarded > 0) {
            if (token0 == rewardToken || token1 == rewardToken) {
                // If reward token is one of our pool tokens, calculate the amount received
                uint256 balanceAfter = IERC20(rewardToken).balanceOf(address(this));
                uint256 rewardAmount = balanceAfter > balanceBefore ? balanceAfter - balanceBefore : 0;

                if (rewardAmount > 0) {
                    IERC20(rewardToken).safeTransfer(farmingContract, rewardAmount);
                    // emit RewardCollected(rewardToken, rewardAmount, farmingContract);
                }
            } else {
                // Otherwise, send the entire balance of reward token
                uint256 rewardBalance = IERC20(rewardToken).balanceOf(address(this));
                if (rewardBalance > 0) {
                    IERC20(rewardToken).safeTransfer(farmingContract, rewardBalance);
                    // emit RewardCollected(rewardToken, rewardBalance, farmingContract);
                }
            }
        }
    }

    /**
    * @notice Performs pre-action tasks before modifying positions
    * @param ichiVaultFactory The ICHIVaultFactory address
    * @param pool The pool address
    * @param basePositionId The base position NFT ID
    * @param limitPositionId The limit position NFT ID
    * @param lastGauge The stored lastActiveGauge from the vault
    */
    function preAction(
        address ichiVaultFactory,
        address pool,
        uint256 basePositionId,
        uint256 limitPositionId,
        address lastGauge
    ) public {
        // Use the stored lastGauge for unstaking operations
        address gaugeToUse = lastGauge;

        // If there's no gauge at all, just return
        if (gaugeToUse == NULL_ADDRESS) return;

        // Get NFT manager from factory
        address nftManager = IICHIVaultFactory(ichiVaultFactory).nftManager();

        // Try to unstake the base position if it exists
        if (basePositionId != 0) {
            if (!isPositionOwnedByCaller(nftManager, basePositionId)) {
                ILeafCLGauge(gaugeToUse).withdraw(basePositionId);
            }
        }

        // Try to unstake the limit position if it exists
        if (limitPositionId != 0) {
            if (!isPositionOwnedByCaller(nftManager, limitPositionId)) {
                ILeafCLGauge(gaugeToUse).withdraw(limitPositionId);
            }
        }
    }

    /**
    * @notice Performs post-action tasks after modifying positions
    * @param ichiVaultFactory The ICHIVaultFactory address
    * @param pool The pool address
    * @param basePositionId The base position NFT ID
    * @param limitPositionId The limit position NFT ID
    * @param lastGauge The stored lastActiveGauge from the vault
    * @return newActiveGauge The gauge that positions are now staked in (to update lastActiveGauge)
    */
    function postAction(
        address ichiVaultFactory,
        address pool,
        uint256 basePositionId,
        uint256 limitPositionId,
        address lastGauge
    ) public returns (address) {
        // Get the latest gauge for this pool
        address latestGauge = getPoolGauge(ichiVaultFactory, pool);
        if (latestGauge == NULL_ADDRESS) return NULL_ADDRESS; // No gauge, nothing to stake

        // Get NFT manager from factory
        address nftManager = IICHIVaultFactory(ichiVaultFactory).nftManager();

        // Check if gauge has changed and needs approval
        if (latestGauge != lastGauge) {
            INonfungiblePositionManager(nftManager).setApprovalForAll(latestGauge, true);
        }

        // Try to stake the base position if it exists
        if (basePositionId != 0) {
            if (isPositionOwnedByCaller(nftManager, basePositionId)) {
                ILeafCLGauge(latestGauge).deposit(basePositionId);
            }
        }

        // Try to stake the limit position if it exists
        if (limitPositionId != 0) {
            if (isPositionOwnedByCaller(nftManager, limitPositionId)) {
                ILeafCLGauge(latestGauge).deposit(limitPositionId);
            }
        }

        return latestGauge;
    }

    // - - - internals for velodrome - - -

    /**
    * @notice Gets the gauge for a pool from the Velodrome factory and voter
    * @param ichiVaultFactory The ICHIVaultFactory address
    * @param pool The pool address
    * @return gauge The address of the gauge for this pool, or NULL_ADDRESS if none exists
    */
    function getPoolGauge(address ichiVaultFactory, address pool) private view returns (address) {
        address factory = IICHIVaultFactory(ichiVaultFactory).uniswapV3Factory();

        try ICLFactory(factory).voter() returns (IVoter voter) {
            if (address(voter) == NULL_ADDRESS) return NULL_ADDRESS;

            try voter.gauges(pool) returns (address gaugeAddress) {
                return gaugeAddress; // May be NULL_ADDRESS if no gauge exists
            } catch {
                return NULL_ADDRESS;
            }
        } catch {
            return NULL_ADDRESS;
        }
    }

    /**
    * @notice Checks if a position NFT is owned by the caller
    * @param nftManager The NFT position manager
    * @param positionId The NFT position ID to check
    * @return bool True if the position is owned by the caller, false otherwise
    */
    function isPositionOwnedByCaller(address nftManager, uint256 positionId) private view returns (bool) {
        try INonfungiblePositionManager(nftManager).ownerOf(positionId) returns (address owner) {
            return owner == address(this);
        } catch {
            return false; // If the query fails, assume we don't own it
        }
    }

}
