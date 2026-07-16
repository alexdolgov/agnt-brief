// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import { IDispute } from "../interfaces/IDispute.sol";

import { Types } from "../shared/Types.sol";

import { _revert } from "../../utils/Globals.sol";

import { LibDiamond } from "../libraries/LibDiamond.sol";

import { LibUtils } from "../libraries/LibUtils.sol";

import { IRainPool } from "../../interfaces/IRainPool.sol";
import { IRainDeployer } from "../../interfaces/IRainDeployer.sol";

import { IPoolManager } from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";

import { SwapParams } from "@uniswap/v4-core/src/types/PoolOperation.sol";

import { PoolKey } from "@uniswap/v4-core/src/types/PoolKey.sol";

import { CurrencyLibrary, Currency } from "@uniswap/v4-core/src/types/Currency.sol";

import { BalanceDelta, BalanceDeltaLibrary } from "@uniswap/v4-core/src/types/BalanceDelta.sol";

import { MIN_SQRT_PRICE, MAX_SQRT_PRICE, WETH, POOL_MANAGER } from "../../shared/Constants.sol";

import { IWETH9 } from "@uniswap/v4-periphery/src/interfaces/external/IWETH9.sol";

import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import { PathKey, PathKeyLibrary } from "../libraries/PathKey.sol";

/**
 * @title DisputeFacet
 * @author Rain Team
 * @notice External interface for the rain pool `Dispute` facet.
 */
contract DisputeFacet is IDispute {
    using SafeERC20 for IERC20;
    using BalanceDeltaLibrary for BalanceDelta;
    using SafeCast for int128;
    using SafeCast for uint128;
    using SafeCast for uint256;
    using CurrencyLibrary for address;
    using PathKeyLibrary for PathKey;

    /**
     * @inheritdoc IDispute
     */
    function openDispute() external {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        if (!ds.poolFinalized || ds.winner == 0) {
            _revert(IRainPool.PoolNotClosed.selector);
        }
        if (ds.endTime + ds.DISPUTE_WINDOW < block.timestamp) {
            _revert(IRainPool.DisputeWindowEnded.selector);
        }

        if (ds.poolState == Types.PoolState.NotDisputed) {
            ds.poolState = Types.PoolState.Disputed;
            ds.isDisputed = true;
        } else if (ds.poolState == Types.PoolState.Disputed && ds.winner != 0) {
            ds.poolState = Types.PoolState.Appealed;
            ds.isAppealed = true;
        } else {
            _revert(IRainPool.DisputeAlreadyOpened.selector);
        }

        if (ds.poolState == Types.PoolState.Disputed) {
            ds.dispute.disputeFee = _calculateDisputeFee(ds.DISPUTE_FEE_MAX, ds.DISPUTE_FEE_MIN);

            IERC20(ds.baseToken).safeTransferFrom(msg.sender, address(this), ds.dispute.disputeFee);

            ds.dispute.resolver = ds.resolver;
            ds.resolver = ds.disputeResolver;

            emit IRainPool.OpenDispute({
                caller: msg.sender,
                currentWinner: ds.winner,
                disputeFee: ds.dispute.disputeFee
            });

            ds.dispute.disputedWinner = ds.winner;
            ds.dispute.disputer = msg.sender;
            ds.winner = 0;
        } else if (ds.poolState == Types.PoolState.Appealed) {
            ds.appeal.disputeFee = _calculateDisputeFee(ds.DISPUTE_FEE_MAX, ds.APPEAL_FEE_MIN);

            IERC20(ds.baseToken).safeTransferFrom(msg.sender, address(this), ds.appeal.disputeFee);

            ds.appeal.resolver = ds.resolver;

            ds.resolverShare = (ds.allFunds * ds.resultResolverFee) / ds.FEE_MAGNIFICATION;

            uint256 resolverShare;

            if (ds.baseToken != ds.usdt) {
                ds.resolverShareUSDT = LibUtils.swapTokensForUSDT(ds.baseToken, ds.resolverShare, ds.tokenData);
                resolverShare = ds.resolverShareUSDT;
            } else {
                resolverShare = ds.resolverShare;
            }

            IERC20(ds.usdt).approve(ds.FACTORY, resolverShare + ds.oracleFixedFee);

            ds.resolver = IRainDeployer(ds.FACTORY).createOracle(
                _calculateNumberOfOracles(resolverShare),
                resolverShare,
                ds.oracleFixedFee,
                address(this),
                block.timestamp + ds.oracleEndTime,
                ds.numberOfOptions,
                ds.ipfsUri
            );

            emit IRainPool.CreateOracle({ creatorContract: address(this), createdContract: ds.resolver });

            emit IRainPool.ResolverClaim(ds.resolver, resolverShare + ds.oracleFixedFee);

            emit IRainPool.OpenAppeal({
                caller: msg.sender,
                currentWinner: ds.winner,
                appealFee: ds.appeal.disputeFee
            });

            ds.appeal.disputedWinner = ds.winner;
            ds.appeal.disputer = msg.sender;
            ds.winner = 0;
        }

        if (ds.poolState != Types.PoolState.NotDisputed) {
            emit IRainPool.ResolverSet({ resolver: ds.resolver });
        }
    }

    /**
     * @notice Calculates the number of oracles based on the allocated amount.
     * @dev Ensures the number of oracles remains within a defined range.
     *      The base number of oracles is 3, and additional oracles are determined
     *      by dividing the amount by 20 times the base token's decimal factor.
     *      The maximum number of oracles allowed is 100.
     * @param amount The amount allocated for oracle services.
     * @return The calculated number of oracles, constrained within the min-max range.
     */
    function _calculateNumberOfOracles(uint256 amount) internal view returns (uint256) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        uint256 baseOracles = ds.numberOfOptions + 1; // Minimum number of oracles
        uint256 maxOracles = 100; // Maximum number of oracles

        // Calculate additional oracles based on the amount
        uint256 additionalOracles = (amount) / (1000 * (10 ** ERC20(ds.usdt).decimals()));

        // Calculate the total number of oracles
        uint256 totalOracles = baseOracles + additionalOracles;

        // Ensure the total oracles do not exceed the maximum
        if (totalOracles > maxOracles) {
            totalOracles = maxOracles;
        }

        return totalOracles;
    }

    /**
     * @notice Calculates the dispute fee required to open a dispute.
     *
     * @dev The fee is 0.1% of total pool funds, bounded by minimum and maximum
     * values defined in USDT. If the base token is not USDT, the fee is converted
     * to USDT for clamping and then converted back to the base token.
     *
     * @param disputeFeeMaxUSDT Maximum dispute fee in USDT.
     * @param disputeFeeMinUSDT Minimum dispute fee in USDT.
     *
     * @return disputeFee Dispute fee denominated in the base token.
     */
    function _calculateDisputeFee(
        uint256 disputeFeeMaxUSDT,
        uint256 disputeFeeMinUSDT
    ) internal returns (uint256 disputeFee) {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        disputeFee = (ds.allFunds * 1) / 1_000; // 0.1% of total pool volume is the dispute fee collateral.

        if (ds.baseToken != ds.usdt) {
            uint256 disputeFeeInUSDT = LibUtils.getQuoteOut(ds.baseToken, disputeFee, ds.tokenData);

            if (disputeFeeInUSDT > disputeFeeMaxUSDT) {
                disputeFee = LibUtils.getQuoteIn(ds.baseToken, disputeFeeMaxUSDT, ds.tokenData);
            } else if (disputeFeeInUSDT < disputeFeeMinUSDT) {
                disputeFee = LibUtils.getQuoteIn(ds.baseToken, disputeFeeMinUSDT, ds.tokenData);
            }
        } else {
            if (disputeFee > disputeFeeMaxUSDT) {
                disputeFee = disputeFeeMaxUSDT;
            } else if (disputeFee < disputeFeeMinUSDT) {
                disputeFee = disputeFeeMinUSDT;
            }
        }
    }

    function unlockCallback(bytes calldata data) external returns (bytes memory) {
        if (msg.sender != POOL_MANAGER) {
            _revert(IRainPool.NotPoolManager.selector);
        }

        IPoolManager poolManager = IPoolManager(POOL_MANAGER);

        (PathKey[] memory route, Currency currencyIn, uint256 amountIn, uint256 expectedAmountOut) = abi.decode(
            data,
            (PathKey[], Currency, uint256, uint256)
        );

        Currency current = currencyIn;
        uint256 currentAmount = amountIn;

        for (uint256 i = 0; i < route.length; i++) {
            PathKey memory hop = route[i];

            // derive poolKey + direction
            (PoolKey memory poolKey, bool zeroForOne) = PathKeyLibrary.getPoolAndSwapDirection(hop, current);

            BalanceDelta delta = poolManager.swap({
                key: poolKey,
                params: SwapParams({
                    zeroForOne: zeroForOne,
                    amountSpecified: -int256(currentAmount),
                    sqrtPriceLimitX96: zeroForOne ? MIN_SQRT_PRICE + 1 : MAX_SQRT_PRICE - 1
                }),
                hookData: hop.hookData
            });

            // settle input
            poolManager.sync(current);
            if (CurrencyLibrary.isAddressZero(current)) {
                poolManager.settle{ value: currentAmount }();
            } else {
                IERC20(Currency.unwrap(current)).safeTransfer(address(poolManager), currentAmount);
                poolManager.settle();
            }

            currentAmount = zeroForOne ? delta.amount1().toUint256() : delta.amount0().toUint256();

            current = hop.intermediateCurrency;

            poolManager.take({ currency: current, to: address(this), amount: currentAmount });
        }

        if (expectedAmountOut < currentAmount) {
            revert("Less Amount");
        }

        // wrap ETH if final output is native
        if (CurrencyLibrary.isAddressZero(current)) {
            IWETH9(WETH).deposit{ value: currentAmount }();
        }

        return abi.encode(currentAmount);
    }
}
