// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "../interfaces/IDepository.sol";
import "../interfaces/IRouter.sol";

import "hardhat/console.sol";

/// @title TimedSwapUnlocker
/// @notice Unlocks deposits by executing a swap and validating output against a time-decaying minimum price
/// @dev This unlocker implements a Dutch auction-style price decay to incentivize early settlement.
///
/// How it works:
/// 1. User locks tokens with a starting minimum price and a discount over time
/// 2. As time passes, the required minimum price decreases linearly
/// 3. Solver finds a swap that meets the current minimum price requirement
/// 4. After swap validation, tokens are forwarded to a target contract (e.g., bridge)
///
/// Price interpolation formula:
///   requiredPrice = startMinPrice - (discount * elapsed / duration)
///
/// Example: startMinPrice=1.0, discount=0.1, duration=1 hour
/// - At t=0: required price = 1.0
/// - At t=30min: required price = 0.95
/// - At t=1hr+: required price = 0.9 (capped at duration)
contract TimedSwapUnlocker is IDepositUnlocker {
    /// @notice Condition parameters for time-interpolated swap unlocks
    /// @param outToken The token to receive from the swap
    /// @param startMinPrice Initial minimum price in WAD units (1e18 = 1:1 ratio)
    /// @param duration Time window in seconds over which the price decays
    /// @param discount Total price reduction after full duration (in WAD units)
    /// @param target Contract to forward swapped tokens to (e.g., bridge contract)
    /// @param targetCalldata Calldata to execute on target after swap
    /// @param targetOffset Byte offset in targetCalldata to patch the output amount
    struct Condition {
        IERC20 outToken;
        uint256 startMinPrice;
        uint256 duration;
        uint256 discount;
        address target;
        bytes targetCalldata;
        uint256 targetOffset;
    }

    /// @notice Solution provided by the solver to execute the swap
    /// @param swapper The DEX or aggregator contract to execute the swap
    /// @param swapCalldata The calldata to call on the swapper
    struct Solution {
        address swapper;
        bytes swapCalldata;
    }

    /// @notice Thrown when the swap output doesn't meet the minimum price requirement
    /// @param providedPrice The actual price achieved (outAmount * WAD / inAmount)
    /// @param requiredPrice The minimum price required at this time
    /// @param providedAmount The output amount received from the swap
    error InsufficientPrice(uint256 providedPrice, uint256 requiredPrice, uint256 providedAmount);

    /// @notice Emitted on successful swap unlock
    /// @param outToken The token received from the swap
    /// @param delay Time elapsed since deposit lock
    /// @param providedPrice The price achieved
    /// @param requiredPrice The minimum price that was required
    /// @param outAmount The amount of outToken received
    /// @param swapper The swap contract used
    /// @param target The contract tokens were forwarded to
    event TimedPricedSwap(IERC20 outToken, uint256 delay, uint256 providedPrice, uint256 requiredPrice, uint256 outAmount, address swapper, address target);

    /// @notice Precision unit for price calculations (1e18)
    uint256 public constant WAD = 10 ** 18;

    /// @inheritdoc IDepositUnlocker
    /// @dev Executes swap via provided swapper, validates output price, then forwards to target
    function unlock(
        IRouter router,
        DepositoryTypes.Deposit calldata deposit,
        DepositoryTypes.BlockchainState calldata lockState,
        bytes calldata condition,
        bytes calldata solution
    ) external {
        Condition memory c = decodeCondition(condition);
        uint256 delay = block.timestamp - lockState.timestamp;
        uint256 requiredPrice = interpolatePrice(c, delay);
        console.log("TimedSwapUnlocker.unlock(target, outToken)", c.target, address(c.outToken));
        Solution memory s = abi.decode(solution, (Solution));
        console.log("TimedSwapUnlocker.unlock(swapper, delay, requiredPrice)", s.swapper, delay, requiredPrice);
        router.externalCall(address(deposit.token), deposit.amount, s.swapper, s.swapCalldata, 0);
        // New tokens should appear on the router.
        uint256 outAmount = c.outToken.balanceOf(address(router));
        uint256 providedPrice = outAmount * WAD / deposit.amount;
        console.log("TimedSwapUnlocker.unlock(outAmount, providedPrice)", outAmount, providedPrice);
        require(providedPrice >= requiredPrice, InsufficientPrice(providedPrice, requiredPrice, outAmount));
        emit TimedPricedSwap(c.outToken, delay, providedPrice, requiredPrice, outAmount, s.swapper, c.target);
        // Execute target with calldata. Tokens are already on the router so there is no need to transfer again.
        router.externalCall(address(c.outToken), outAmount, c.target, c.targetCalldata, c.targetOffset);
    }

    /// @dev Calculate the required minimum price based on time elapsed
    /// @param c The condition parameters
    /// @param delay Seconds elapsed since deposit was locked
    /// @return price The minimum acceptable price at this point in time
    function interpolatePrice(Condition memory c, uint256 delay) pure internal returns (uint256 price) {
        console.log("TimedSwapUnlocker.interpolatePrice(startMinPrice, discount)", c.startMinPrice, c.discount);
        console.log("TimedSwapUnlocker.interpolatePrice(delay, duration)", delay, c.duration);
        if (delay > c.duration)
            delay = c.duration;
        price = c.startMinPrice - c.discount * delay / c.duration;
    }

    // ============ Encoding Helpers ============

    /// @notice ABI-encode a Condition struct for use in lock()
    /// @param c The condition to encode
    /// @return The ABI-encoded condition bytes
    function encodeCondition(Condition calldata c) pure external returns (bytes memory) {
        return abi.encode(c);
    }

    /// @notice ABI-encode a Solution struct for use in unlock()
    /// @param s The solution to encode
    /// @return The ABI-encoded solution bytes
    function encodeSolution(Solution calldata s) pure external returns (bytes memory) {
        return abi.encode(s);
    }

    /// @notice Decode condition bytes into a Condition struct
    /// @param condition The ABI-encoded condition
    /// @return The decoded Condition struct
    function decodeCondition(bytes calldata condition) pure public returns (Condition memory) {
        return abi.decode(condition, (Condition));
    }
}