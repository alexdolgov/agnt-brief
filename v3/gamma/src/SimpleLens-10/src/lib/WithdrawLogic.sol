// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.26;

import { IPoolManager } from "v4-core/interfaces/IPoolManager.sol";
import { StateLibrary } from "v4-core/libraries/StateLibrary.sol";
import { PoolKey } from "v4-core/types/PoolKey.sol";
import { PoolIdLibrary } from "v4-core/types/PoolId.sol";
import { Currency } from "v4-core/types/Currency.sol";
import { TickMath } from "v4-core/libraries/TickMath.sol";
import { FullMath } from "v4-core/libraries/FullMath.sol";
import { LiquidityAmounts } from "v4-periphery/lib/v4-core/test/utils/LiquidityAmounts.sol";
import { IERC20 } from "@openzeppelin/contracts/interfaces/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IMultiPositionManager } from "../interfaces/IMultiPositionManager.sol";
import { IMultiPositionFactory } from "../interfaces/IMultiPositionFactory.sol";
import { ILiquidityStrategy } from "../strategies/ILiquidityStrategy.sol";
import { SharedStructs } from "../base/SharedStructs.sol";
import { PoolManagerUtils } from "../PoolManagerUtils.sol";
import { RebalanceLogic } from "./RebalanceLogic.sol";
import { PositionLogic } from "./PositionLogic.sol";

/**
 * @title WithdrawLogic
 * @notice Library containing all withdrawal-related logic for MultiPositionManager
 * @dev Follows Bunni's pattern of external library functions with storage passed as parameter
 */
library WithdrawLogic {
    using PoolIdLibrary for PoolKey;
    using StateLibrary for IPoolManager;
    using SafeERC20 for IERC20;

    uint256 constant PRECISION = 1e36;

    // Struct to reduce stack depth
    struct CustomWithdrawParams {
        uint256 amount0Desired;
        uint256 amount1Desired;
        address to;
        uint256[2][] outMin;
        uint256 totalSupply;
        uint256 senderBalance;
        address sender;
    }


    // Custom errors
    error ZeroValue();
    error ZeroAddress();
    error InvalidRecipient();
    error AmountMustBePositive();
    error InsufficientBalance();
    error NoSharesExist();
    error OutMinLengthMismatch();

    // Events (will be emitted by main contract)
    event Withdraw(address indexed sender, address indexed to, uint256 shares, uint256 amount0, uint256 amount1);
    event Burn(address indexed sender, uint256 shares, uint256 totalSupply, uint256 amount0, uint256 amount1);
    event WithdrawCustom(address indexed sender, address indexed to, uint256 shares, uint256 amount0, uint256 amount1);

    // Withdrawal path enum
    enum WithdrawPath {
        USE_CURRENT_BALANCE,      // Step 1: sufficient idle balance
        USE_BALANCE_PLUS_FEES,    // Step 2: need zeroBurn for fees
        BURN_AND_REBALANCE        // Step 3: burn all + rebalance remaining
    }

    // Withdrawal path info struct
    struct WithdrawPathInfo {
        WithdrawPath path;
        uint256 currentBalance0;
        uint256 currentBalance1;
        uint256 total0;
        uint256 total1;
        uint256 totalFee0;
        uint256 totalFee1;
    }

    /**
     * @notice Determine which withdrawal path to take (shared by processWithdrawCustom and preview)
     * @param s Storage struct
     * @param poolManager Pool manager contract
     * @param amount0Desired Amount of token0 to withdraw
     * @param amount1Desired Amount of token1 to withdraw
     * @return info Withdrawal path information
     */
    function determineWithdrawPath(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        uint256 amount0Desired,
        uint256 amount1Desired
    ) internal view returns (WithdrawPathInfo memory info) {
        // Get totals
        (info.total0, info.total1, info.totalFee0, info.totalFee1) = getTotalAmounts(s, poolManager);

        // Get current balances
        info.currentBalance0 = s.currency0.balanceOfSelf();
        info.currentBalance1 = s.currency1.balanceOfSelf();

        // PATH 1: Current balance sufficient
        if (info.currentBalance0 >= amount0Desired && info.currentBalance1 >= amount1Desired) {
            info.path = WithdrawPath.USE_CURRENT_BALANCE;
            return info;
        }

        // PATH 2: Balance + fees sufficient
        uint256 availableWithFees0 = info.currentBalance0 + info.totalFee0;
        uint256 availableWithFees1 = info.currentBalance1 + info.totalFee1;

        if (availableWithFees0 >= amount0Desired && availableWithFees1 >= amount1Desired) {
            info.path = WithdrawPath.USE_BALANCE_PLUS_FEES;
            return info;
        }

        // PATH 3: Need to burn and rebalance
        info.path = WithdrawPath.BURN_AND_REBALANCE;
    }

    /**
     * @notice Process a standard withdrawal
     * @param s Storage struct
     * @param poolManager Pool manager contract
     * @param shares Number of shares to burn
     * @param to Recipient address
     * @param outMin Minimum output amounts per position
     * @param totalSupply Current total supply
     * @param sender Address of the caller
     * @param withdrawToWallet If true, transfers tokens to 'to'. If false, keeps tokens in contract.
     * @return amount0 Amount of token0 withdrawn
     * @return amount1 Amount of token1 withdrawn
     */
    function processWithdraw(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        uint256 shares,
        address to,
        uint256[2][] memory outMin,
        uint256 totalSupply,
        address sender,
        bool withdrawToWallet
    ) external returns (uint256 amount0, uint256 amount1) {
        if (shares == 0) revert ZeroValue();
        if (withdrawToWallet && to == address(0)) revert ZeroAddress();
        if (outMin.length != s.basePositionsLength + s.limitPositionsLength) revert OutMinLengthMismatch();

        // Execute withdrawal via callback
        {
            bytes memory params = abi.encode(shares, outMin);
            bytes memory result = poolManager.unlock(
                abi.encode(IMultiPositionManager.Action.WITHDRAW, params)
            );
            (amount0, amount1) = abi.decode(result, (uint256, uint256));
        }

        // Calculate and transfer unused amounts only if withdrawing to wallet
        if (withdrawToWallet) {
            // Transfer withdrawn amounts
            if (amount0 > 0) s.currency0.transfer(to, amount0);
            if (amount1 > 0) s.currency1.transfer(to, amount1);

            // Calculate and transfer unused amounts in a scoped block
            {
                uint256 unusedAmount0 = FullMath.mulDiv(s.currency0.balanceOfSelf(), shares, totalSupply);
                uint256 unusedAmount1 = FullMath.mulDiv(s.currency1.balanceOfSelf(), shares, totalSupply);

                if (unusedAmount0 > 0) {
                    amount0 = amount0 + unusedAmount0;
                    s.currency0.transfer(to, unusedAmount0);
                }
                if (unusedAmount1 > 0) {
                    amount1 = amount1 + unusedAmount1;
                    s.currency1.transfer(to, unusedAmount1);
                }
            }

            // Note: Main contract will handle burning shares
            emit Withdraw(sender, to, shares, amount0, amount1);
        } else {
            // For non-wallet withdrawals, just calculate unused amounts for reporting
            {
                uint256 unusedAmount0 = FullMath.mulDiv(s.currency0.balanceOfSelf(), shares, totalSupply);
                uint256 unusedAmount1 = FullMath.mulDiv(s.currency1.balanceOfSelf(), shares, totalSupply);

                amount0 = amount0 + unusedAmount0;
                amount1 = amount1 + unusedAmount1;
            }

            // Tokens stay in contract, emit Burn event
            emit Burn(sender, shares, totalSupply, amount0, amount1);
        }
    }

    /**
     * @notice Helper function to transfer tokens
     */
    function _transferWithdrawCustom(
        SharedStructs.ManagerStorage storage s,
        address to,
        uint256 amount0Out,
        uint256 amount1Out
    ) private {
        if (amount0Out > 0) {
            s.currency0.transfer(to, amount0Out);
        }
        if (amount1Out > 0) {
            s.currency1.transfer(to, amount1Out);
        }
    }

    /**
     * @notice Helper function to transfer tokens and emit event
     */
    function _transferAndEmitWithdrawCustom(
        SharedStructs.ManagerStorage storage s,
        address sender,
        address to,
        uint256 amount0Out,
        uint256 amount1Out,
        uint256 sharesBurned
    ) private {
        _transferWithdrawCustom(s, to, amount0Out, amount1Out);
        emit WithdrawCustom(sender, to, sharesBurned, amount0Out, amount1Out);
    }

    /**
     * @notice Process a custom withdrawal (both tokens)
     * @param s Storage struct
     * @param poolManager Pool manager contract
     * @param params Withdrawal parameters bundled to reduce stack depth
     * @return amount0Out Amount of token0 withdrawn
     * @return amount1Out Amount of token1 withdrawn
     * @return sharesBurned Number of shares to burn
     */
    function processWithdrawCustom(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        CustomWithdrawParams memory params
    ) external returns (uint256 amount0Out, uint256 amount1Out, uint256 sharesBurned) {
        if (params.to == address(0)) revert InvalidRecipient();
        if (params.amount0Desired == 0 && params.amount1Desired == 0) revert AmountMustBePositive();

        // Determine withdrawal path using shared helper
        WithdrawPathInfo memory pathInfo = determineWithdrawPath(s, poolManager, params.amount0Desired, params.amount1Desired);

        // Check if requested amounts exceed total available
        if (params.amount0Desired > pathInfo.total0) revert InsufficientBalance();
        if (params.amount1Desired > pathInfo.total1) revert InsufficientBalance();

        // Calculate shares to burn based on combined withdrawal value
        {
            sharesBurned = calculateSharesToBurn(s, poolManager, params.amount0Desired, params.amount1Desired, params.totalSupply, pathInfo.total0, pathInfo.total1);
            if (sharesBurned > params.senderBalance) revert InsufficientBalance();
        }

        // Execute withdrawal based on path
        if (pathInfo.path == WithdrawPath.USE_CURRENT_BALANCE) {
            // Step 1: Direct transfer from current balance
            amount0Out = params.amount0Desired;
            amount1Out = params.amount1Desired;
            _transferAndEmitWithdrawCustom(s, params.sender, params.to, amount0Out, amount1Out, sharesBurned);
            return (amount0Out, amount1Out, sharesBurned);
        }

        if (pathInfo.path == WithdrawPath.USE_BALANCE_PLUS_FEES) {
            // Step 2: Collect fees then transfer
            zeroBurnAllWithoutUnlock(s, poolManager);
            amount0Out = params.amount0Desired;
            amount1Out = params.amount1Desired;
            _transferAndEmitWithdrawCustom(s, params.sender, params.to, amount0Out, amount1Out, sharesBurned);
            return (amount0Out, amount1Out, sharesBurned);
        }

        // Step 3: Need to burn all positions
        poolManager.unlock(
            abi.encode(IMultiPositionManager.Action.BURN_ALL, abi.encode(params.outMin))
        );

        // Transfer withdrawal amounts
        amount0Out = params.amount0Desired;
        amount1Out = params.amount1Desired;
        _transferWithdrawCustom(s, params.to, amount0Out, amount1Out);

        // Step 4: Rebalance remaining funds if needed
        rebalanceRemaining(s, poolManager);

        emit WithdrawCustom(params.sender, params.to, sharesBurned, amount0Out, amount1Out);
        return (amount0Out, amount1Out, sharesBurned);
    }

    /**
     * @notice Rebalance remaining funds after withdrawal
     */
    function rebalanceRemaining(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager
    ) internal {
        uint256 remaining0 = s.currency0.balanceOfSelf();
        uint256 remaining1 = s.currency1.balanceOfSelf();

        if ((remaining0 > 0 || remaining1 > 0) && s.lastStrategyParams.strategy != address(0)) {
            // Use the stored strategy parameters to rebalance
            IMultiPositionManager.RebalanceParams memory params = IMultiPositionManager.RebalanceParams({
                strategy: s.lastStrategyParams.strategy,
                center: s.lastStrategyParams.centerTick,
                tLeft: s.lastStrategyParams.ticksLeft,
                tRight: s.lastStrategyParams.ticksRight,
                limitWidth: int24(uint24(s.lastStrategyParams.limitWidth)),
                weight0: uint256(s.lastStrategyParams.weight0),
                weight1: uint256(s.lastStrategyParams.weight1),
                useCarpet: s.lastStrategyParams.useCarpet
            });

            // Create empty outMin arrays
            uint256[2][] memory outMinRebalance = new uint256[2][](0);

            // Call RebalanceLogic to get the data
            (
                IMultiPositionManager.Range[] memory baseRanges,
                uint128[] memory liquidities,
                int24 limitWidth
            ) = RebalanceLogic.rebalance(s, poolManager, params, outMinRebalance, new uint256[2][](0));

            // Create empty inMin for internal rebalance
            uint256[2][] memory inMin = new uint256[2][](baseRanges.length);

            // Execute rebalance
            bytes memory encodedParams = abi.encode(baseRanges, liquidities, limitWidth, inMin, outMinRebalance);
            poolManager.unlock(
                abi.encode(IMultiPositionManager.Action.REBALANCE, encodedParams)
            );
        }
    }

    /**
     * @notice Calculate shares to burn for custom withdrawal (both tokens)
     */
    function calculateSharesToBurn(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 totalSupply,
        uint256 pool0,
        uint256 pool1
    ) internal view returns (uint256 shares) {
        if (totalSupply == 0) revert NoSharesExist();

        // Get current price from pool
        (uint160 sqrtPriceX96, , , ) = poolManager.getSlot0(s.poolKey.toId());

        // Calculate price of token0 in terms of token1 with PRECISION
        uint256 price = FullMath.mulDiv(
            FullMath.mulDiv(uint256(sqrtPriceX96), uint256(sqrtPriceX96), 1 << 96),
            PRECISION,
            1 << 96
        );

        // Calculate total withdrawal value in token1 terms (combining both tokens)
        uint256 withdrawalValue0InToken1 = FullMath.mulDiv(amount0Desired, price, PRECISION);
        uint256 withdrawalValueInToken1 = withdrawalValue0InToken1 + amount1Desired;

        // Calculate pool value in token1 terms
        uint256 poolValueInToken1 = pool1 +
            FullMath.mulDiv(pool0, price, PRECISION);


        // Calculate shares to burn
        shares = FullMath.mulDiv(
            withdrawalValueInToken1,
            totalSupply,
            poolValueInToken1
        );
    }

    /**
     * @notice Claim accumulated fees to the fee recipient (internal helper)
     * @param poolManager Pool manager contract
     * @param factory Factory contract address to get fee recipient
     * @param currency Currency to claim fees for
     */
    function _claimFeeCurrency(
        IPoolManager poolManager,
        address factory,
        Currency currency
    ) internal {
        uint256 amount = poolManager.balanceOf(address(this), currency.toId());
        if (amount == 0) return;
        poolManager.burn(address(this), currency.toId(), amount);
        // Get feeRecipient from factory
        address recipient = IMultiPositionFactory(factory).feeRecipient();
        poolManager.take(currency, recipient, amount);
    }

    /**
     * @notice Claim accumulated fees to the fee recipient (external)
     * @param poolManager Pool manager contract
     * @param factory Factory contract address to get fee recipient
     * @param currency Currency to claim fees for
     */
    function claimFee(
        IPoolManager poolManager,
        address factory,
        Currency currency
    ) external {
        _claimFeeCurrency(poolManager, factory, currency);
    }

    /**
     * @notice Process claim fee action - collects fees and distributes to owner and treasury
     * @param s Storage pointer
     * @param poolManager Pool manager contract
     * @param caller Address initiating the claim
     * @param owner Owner address
     */
    function processClaimFee(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        address caller,
        address owner
    ) external {
        // If owner is calling, perform zeroBurn to collect new fees
        if (caller == owner) {
            // Perform zeroBurn and get the exact fee amounts
            (uint256 totalFee0, uint256 totalFee1) = zeroBurnAllWithoutUnlock(s, poolManager);

            // After zeroBurnAll, treasury portion is minted as ERC-6909 to contract
            // The owner's portion creates negative deltas that are settled by close
            PoolManagerUtils.close(poolManager, s.currency1);
            PoolManagerUtils.close(poolManager, s.currency0);

            // If there are fees, transfer owner's portion
            // After close, owner's fees are in contract as ETH or ERC20
            if (s.fee > 0) {
                // Calculate exact splits
                uint256 treasuryFee0 = totalFee0 / s.fee;
                uint256 treasuryFee1 = totalFee1 / s.fee;
                uint256 ownerFee0 = totalFee0 - treasuryFee0;
                uint256 ownerFee1 = totalFee1 - treasuryFee1;

                // Transfer owner's portion (now in contract after close)
                if (ownerFee0 > 0) {
                    if (s.currency0.isAddressZero()) {
                        // Native token - transfer ETH
                        payable(owner).transfer(ownerFee0);
                    } else {
                        // ERC20 token
                        IERC20(Currency.unwrap(s.currency0)).safeTransfer(owner, ownerFee0);
                    }
                }
                if (ownerFee1 > 0) {
                    // Currency1 is never native, always ERC20
                    IERC20(Currency.unwrap(s.currency1)).safeTransfer(owner, ownerFee1);
                }
            }
        }

        // Always transfer treasury portion to fee recipient
        // For protocol fee claims (caller == address(0)), this just transfers existing balance
        // For owner claims, this transfers the freshly collected treasury portion
        _claimFeeCurrency(poolManager, s.factory, s.currency0);
        _claimFeeCurrency(poolManager, s.factory, s.currency1);
    }

    /**
     * @notice Get total amounts including fees
     */
    function getTotalAmounts(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager
    ) internal view returns (
        uint256 total0,
        uint256 total1,
        uint256 totalFee0,
        uint256 totalFee1
    ) {
        // Get amounts from base positions
        for (uint8 i = 0; i < s.basePositionsLength; ) {
            (
                ,
                uint256 amount0,
                uint256 amount1,
                uint256 feesOwed0,
                uint256 feesOwed1
            ) = PoolManagerUtils.getAmountsOf(
                poolManager,
                s.poolKey,
                s.basePositions[i]
            );
            total0 = total0 + amount0;
            total1 = total1 + amount1;
            totalFee0 = totalFee0 + feesOwed0;
            totalFee1 = totalFee1 + feesOwed1;

            unchecked {
                i++;
            }
        }

        // Get amounts from limit positions
        for (uint8 i = 0; i < s.limitPositionsLength; ) {
            (
                ,
                uint256 amount0,
                uint256 amount1,
                uint256 feesOwed0,
                uint256 feesOwed1
            ) = PoolManagerUtils.getAmountsOf(
                poolManager,
                s.poolKey,
                s.limitPositions[i]
            );
            total0 = total0 + amount0;
            total1 = total1 + amount1;
            totalFee0 = totalFee0 + feesOwed0;
            totalFee1 = totalFee1 + feesOwed1;

            unchecked {
                i++;
            }
        }

        // Exclude protocol fee from the total amount
        totalFee0 = totalFee0 - (totalFee0 / s.fee);
        totalFee1 = totalFee1 - (totalFee1 / s.fee);

        // Add fees net of protocol fees to the total amount
        total0 = total0 + totalFee0;
        total1 = total1 + totalFee1;

        // Add unused balances
        total0 = total0 + s.currency0.balanceOfSelf();
        total1 = total1 + s.currency1.balanceOfSelf();
    }

    /**
     * @notice Internal implementation of WITHDRAW_CUSTOM action in callback
     * @dev This is called from processWithdrawCustomComplete wrapper
     * @param s Storage struct
     * @param poolManager Pool manager contract
     * @param amount0Desired Desired amount of token0 to withdraw
     * @param amount1Desired Desired amount of token1 to withdraw
     * @param totalOutMin Minimum output amounts for slippage protection
     * @param totalSupply Current total supply of shares
     * @return amount0Out Amount of token0 withdrawn
     * @return amount1Out Amount of token1 withdrawn
     * @return remainingToken0 Remaining token0 after withdrawal
     * @return remainingToken1 Remaining token1 after withdrawal
     */
    function _processWithdrawCustomInCallback(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256[2] memory totalOutMin,
        uint256 totalSupply
    ) internal returns (uint256 amount0Out, uint256 amount1Out, uint256 remainingToken0, uint256 remainingToken1) {
        // Create outMin array for individual positions (use zeros, total check is sufficient)
        uint256[2][] memory positionOutMin = new uint256[2][](s.basePositionsLength);

        // Burn all liquidities and get the amounts
        (uint256 unusedAmount0, uint256 unusedAmount1) = PositionLogic.burnLiquidities(
            poolManager,
            s,
            totalSupply,
            totalSupply,
            positionOutMin
        );

        // Verify we have enough of both tokens after burn
        if (unusedAmount0 < amount0Desired) {
            revert InsufficientBalance();
        }
        if (unusedAmount1 < amount1Desired) {
            revert InsufficientBalance();
        }

        // Clear all positions
        s.basePositionsLength = 0;
        delete s.limitPositions[0];
        delete s.limitPositions[1];
        s.limitPositionsLength = 0;

        // Set withdrawal amounts and calculate remaining
        amount0Out = amount0Desired;
        amount1Out = amount1Desired;
        remainingToken0 = unusedAmount0 - amount0Out;
        remainingToken1 = unusedAmount1 - amount1Out;

        // Check total slippage protection for both tokens
        if (unusedAmount0 < totalOutMin[0]) {
            revert OutMinLengthMismatch();
        }
        if (unusedAmount1 < totalOutMin[1]) {
            revert OutMinLengthMismatch();
        }

        // Note: The main contract will handle rebalancing if needed
        // Note: _closePair() will be called by the main contract after this returns
        // The withdrawal amounts stay as positive delta to be claimed when closing
    }

    /**
     * @notice External wrapper for processWithdrawCustomInCallback
     * @dev Allows external calls from MultiPositionManager
     * @param s Storage struct
     * @param poolManager Pool manager contract
     * @param amount0Desired Amount of token0 to withdraw
     * @param amount1Desired Amount of token1 to withdraw
     * @param totalOutMin Minimum total amounts out for slippage protection [token0Min, token1Min]
     * @param totalSupply Current total supply of shares
     * @return amount0Out Amount of token0 withdrawn
     * @return amount1Out Amount of token1 withdrawn
     * @return remainingToken0 Remaining token0 after withdrawal
     * @return remainingToken1 Remaining token1 after withdrawal
     */
    function processWithdrawCustomInCallback(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256[2] memory totalOutMin,
        uint256 totalSupply
    ) external returns (uint256 amount0Out, uint256 amount1Out, uint256 remainingToken0, uint256 remainingToken1) {
        return _processWithdrawCustomInCallback(s, poolManager, amount0Desired, amount1Desired, totalOutMin, totalSupply);
    }

    /**
     * @notice Process complete WITHDRAW_CUSTOM action - decode, withdraw, rebalance, encode
     * @param s Storage struct
     * @param poolManager Pool manager contract
     * @param params Encoded parameters
     * @param totalSupply Current total supply
     * @return Encoded result (amount0Out, amount1Out, 0)
     */
    function processWithdrawCustomComplete(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        bytes memory params,
        uint256 totalSupply
    ) external returns (bytes memory) {
        // Decode parameters
        (uint256 amount0Desired, uint256 amount1Desired, uint256[2] memory totalOutMin) =
            abi.decode(params, (uint256, uint256, uint256[2]));

        // Delegate to internal withdrawal logic
        (uint256 amount0Out, uint256 amount1Out, uint256 remainingToken0, uint256 remainingToken1) =
            _processWithdrawCustomInCallback(
                s,
                poolManager,
                amount0Desired,
                amount1Desired,
                totalOutMin,
                totalSupply
            );

        // Delegate rebalance of remaining liquidity to RebalanceLogic
        RebalanceLogic.processRebalanceAfterWithdraw(s, poolManager, remainingToken0, remainingToken1);

        // Return encoded values - deltas will be closed by caller after this returns
        return abi.encode(amount0Out, amount1Out, 0);
    }

    /**
     * @notice Process BURN_ALL action in callback
     * @dev Burns all positions and clears storage
     * @param s Storage struct
     * @param poolManager Pool manager contract
     * @param totalSupply Current total supply
     * @param params Encoded parameters (outMin array)
     * @return Encoded burned amounts (amount0, amount1)
     */
    function processBurnAllInCallback(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        uint256 totalSupply,
        bytes memory params
    ) external returns (bytes memory) {
        // Decode parameters
        uint256[2][] memory outMin = abi.decode(params, (uint256[2][]));

        // Burn all positions
        (uint256 amount0, uint256 amount1) = PositionLogic.burnLiquidities(
            poolManager,
            s,
            totalSupply,
            totalSupply,
            outMin
        );

        // Clear position storage
        s.basePositionsLength = 0;
        delete s.limitPositions[0];
        delete s.limitPositions[1];
        s.limitPositionsLength = 0;

        // Return burned amounts
        return abi.encode(amount0, amount1);
    }

    /**
     * @notice Zero burn all positions without unlock to collect fees
     * @dev Collects fees from all positions without burning liquidity
     * @param s Storage struct
     * @param poolManager Pool manager contract
     * @return totalFee0 Total fees collected in token0
     * @return totalFee1 Total fees collected in token1
     */
    function zeroBurnAllWithoutUnlock(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager
    ) public returns (uint256 totalFee0, uint256 totalFee1) {
        // Get position arrays directly from PositionLogic
        IMultiPositionManager.Range[] memory baseRangesArray = PositionLogic.getBasePositionsArray(s);
        IMultiPositionManager.Range[2] memory limitRangesArray = PositionLogic.getLimitPositionsArray(s);

        // Collect fees from all positions
        (totalFee0, totalFee1) = PoolManagerUtils.zeroBurnAll(
            poolManager,
            s.poolKey,
            baseRangesArray,
            limitRangesArray,
            s.currency0,
            s.currency1,
            s.fee
        );
    }

}