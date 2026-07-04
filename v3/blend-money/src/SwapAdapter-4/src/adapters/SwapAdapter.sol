// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {IMarketAdapterController} from "../interfaces/controllers/IMarketAdapterController.sol";
import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IOracle} from "morpho-blue/src/interfaces/IOracle.sol";
import {PriceLib} from "../libraries/PriceLib.sol";

/**
 * @title SwapAdapter
 * @notice Generic swap adapter for token-to-token swaps using external routers
 * @dev Handles swaps between loan tokens and collateral tokens, enforcing slippage and price oracle checks.
 * @author Blend Money
 * @custom:security-contact security@blend.money
 */
contract SwapAdapter is IMarketAdapterController {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                                CONSTANTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Maximum slippage allowed in basis points (1e4 = 100%)
     * @dev Constant used to enforce an upper bound on slippage parameters
     *      is valid. In general this is the theoretical upper bound, not
     *      what is available in the max slippage set at the market level.
     */
    uint256 public constant MAX_SLIPPAGE_BPS = 10_000;

    /*//////////////////////////////////////////////////////////////
                                STRUCTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Represents a single swap call to an external target
     * @param target The address of the external router or contract to call
     * @param callData The encoded function call data for the swap
     */
    struct SwapCall {
        address target;
        bytes callData;
    }

    /**
     * @notice Parameters for executing one or more sequential swaps
     * @param slippageBps Maximum slippage allowed in basis points (1e4 = 100%)
     * @param calls Array of swap calls to execute sequentially
     */
    struct SwapParams {
        uint256 slippageBps;
        SwapCall[] calls;
    }

    /**
     * @notice Oracle configuration for price feeds
     * @param oracleCollateralPerLoan Oracle for collateral/loan token price
     * @param maxSlippageBps Maximum slippage allowed in basis points
     */
    struct StoredStrategyData {
        IOracle oracleCollateralPerLoan;
        uint256 maxSlippageBps;
    }

    /// @notice Thrown when a zero amount is provided
    error ZeroAmount();
    /// @notice Thrown when the slippage is exceeded
    error SlippageExceeded();
    /// @notice Thrown when the router execution fails
    error RouterExecutionFailed();
    /// @notice Thrown when slippage in extraData exceeds maxSlippageBps in strategy config
    error SlippageExceedsMaximum();
    /// @notice Thrown when the max slippage itself is invalid
    error MaxSlippageInvalid();
    /// @notice Thrown when recipient is the zero address
    error InvalidRecipient();
    /// @notice Thrown when the adapter retains tokens after swap execution
    error AdapterNotEmpty();
    /// @notice Thrown when attempting to sweep with zero balance
    error NothingToSweep();

    /**
     * @notice Emitted when a swap is executed
     * @param fromToken The token swapped from
     * @param toToken The token swapped to
     * @param amountIn The input amount
     * @param amountOutMin The minimum output amount required
     * @param amountOut The actual output amount
     * @param recipient The recipient of the output tokens
     */
    event SwapExecuted(
        address indexed fromToken,
        address indexed toToken,
        uint256 amountIn,
        uint256 amountOutMin,
        uint256 amountOut,
        address indexed recipient
    );

    /**
     * @notice Emitted when tokens are swept from the adapter
     * @param token The address of the token that was swept
     * @param amount The amount of tokens swept
     * @param recipient The address that received the swept tokens
     */
    event TokenSwept(address indexed token, uint256 amount, address indexed recipient);

    /// @notice Emitted when a swap is executed between the same asset
    /// @param token The token swapped
    /// @param amount The amount swapped
    /// @param recipient The recipient of the swapped tokens
    /// @dev Essentially a no-op swap that transfers the entire balance to the recipient
    event SwapSameAsset(address indexed token, uint256 amount, address indexed recipient);

    /*//////////////////////////////////////////////////////////////
                            MODIFIERS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Enforces pre- and post-swap invariants for token swaps
     * @dev Validates recipient and token balance before swap. Always checks primary token balance (the token being swapped from).
     *      If primary equals secondary (same asset), transfers the full balance to recipient as a no-op swap and emits SwapSameAsset.
     *      Otherwise, executes the modified function body and ensures both primary and secondary tokens are empty afterward.
     *      Prevents dust or retained tokens after swap execution.
     * @param primary The token being swapped from (always checked for balance)
     * @param secondary The token being swapped to
     * @param recipient The recipient of the swapped tokens
     * @custom:reverts InvalidRecipient when recipient is the zero address
     * @custom:reverts ZeroAmount when the adapter's primary token balance is zero
     * @custom:reverts AdapterNotEmpty when the adapter retains primary or secondary token balance after swap completion
     */
    modifier checkSwapInvariants(IERC20 primary, IERC20 secondary, address recipient) {
        require(recipient != address(0), InvalidRecipient());

        // Always check primary token balance (the token we're swapping from)
        uint256 amount = primary.balanceOf(address(this));
        require(amount > 0, ZeroAmount());

        // If primary and secondary are the same, transfer the entire balance to the recipient
        // as this is effectively a no-op swap.
        if (primary == secondary) {
            primary.safeTransfer(recipient, amount);
            emit SwapSameAsset(address(primary), amount, recipient);
        } else {
            _;
            // Adapter should not retain any tokens after swap
            require(primary.balanceOf(address(this)) == 0, AdapterNotEmpty());
            require(secondary.balanceOf(address(this)) == 0, AdapterNotEmpty());
        }
    }

    /**
     * @notice Swaps loan token for collateral token
     * @dev Uses external router and price oracle to enforce slippage
     * @param loanToken The token to swap from
     * @param collateralToken The token to swap to
     * @param recipient The recipient of the swapped tokens
     * @param strategyData Encoded strategy-specific oracle configuration
     * @param extraData Encoded SwapParams struct
     * @custom:reverts InvalidRecipient when recipient is the zero address
     */
    function swapToCollateral(
        IERC20 loanToken,
        IERC20 collateralToken,
        address recipient,
        bytes calldata strategyData,
        bytes calldata extraData
    ) public virtual override checkSwapInvariants(loanToken, collateralToken, recipient) {
        uint256 amount = loanToken.balanceOf(address(this));

        // Decode swap and strategy parameters
        SwapParams memory swapParams = abi.decode(extraData, (SwapParams));
        StoredStrategyData memory strategyConfig = abi.decode(strategyData, (StoredStrategyData));
        // Validate slippage against enhanced strategy data
        require(strategyConfig.maxSlippageBps <= MAX_SLIPPAGE_BPS, MaxSlippageInvalid());
        require(swapParams.slippageBps <= strategyConfig.maxSlippageBps, SlippageExceedsMaximum());

        // Calculate minimum output using oracle and slippage
        uint256 amountOutMin = PriceLib.applySlippage(
            PriceLib.quoteToBase(amount, strategyConfig.oracleCollateralPerLoan), swapParams.slippageBps
        );

        uint256 balanceBefore = collateralToken.balanceOf(address(this));

        // Approve and execute the swap on the router
        _executeSwap(loanToken, amount, swapParams.calls);

        // Grab the new balance
        uint256 collateralBalanceAfterSwap = collateralToken.balanceOf(address(this));

        // Check that the received amount meets slippage requirements
        require(balanceBefore + amountOutMin <= collateralBalanceAfterSwap, SlippageExceeded());

        // Get the actual output amount
        uint256 amountOut = collateralBalanceAfterSwap - balanceBefore;

        // Transfer the entire post-swap balance to the recipient
        collateralToken.safeTransfer(recipient, collateralBalanceAfterSwap);
        emit SwapExecuted(address(loanToken), address(collateralToken), amount, amountOutMin, amountOut, recipient);
    }

    /**
     * @notice Swaps collateral token for loan token
     * @dev Uses external router and price oracle to enforce slippage
     * @param loanToken The token to swap to
     * @param collateralToken The token to swap from
     * @param recipient The recipient of the swapped tokens
     * @param strategyData Encoded strategy-specific oracle configuration
     * @param extraData Encoded SwapParams struct
     * @custom:reverts InvalidRecipient when recipient is the zero address
     */
    function swapToLoanToken(
        IERC20 loanToken,
        IERC20 collateralToken,
        address recipient,
        bytes calldata strategyData,
        bytes calldata extraData
    ) public virtual override checkSwapInvariants(collateralToken, loanToken, recipient) {
        uint256 amount = collateralToken.balanceOf(address(this));

        // Decode swap and strategy parameters
        SwapParams memory swapParams = abi.decode(extraData, (SwapParams));
        StoredStrategyData memory strategyConfig = abi.decode(strategyData, (StoredStrategyData));

        // Validate slippage against enhanced strategy data
        require(strategyConfig.maxSlippageBps <= MAX_SLIPPAGE_BPS, MaxSlippageInvalid());
        require(swapParams.slippageBps <= strategyConfig.maxSlippageBps, SlippageExceedsMaximum());

        // Calculate minimum output using oracle and slippage
        uint256 amountOutMin = PriceLib.applySlippage(
            PriceLib.baseToQuote(amount, strategyConfig.oracleCollateralPerLoan), swapParams.slippageBps
        );

        uint256 balanceBefore = loanToken.balanceOf(address(this));

        // Approve and execute the swap on the target
        _executeSwap(collateralToken, amount, swapParams.calls);

        // Grab the new balance
        uint256 loanBalanceAfterSwap = loanToken.balanceOf(address(this));

        // Check that the received amount meets slippage requirements
        require(balanceBefore + amountOutMin <= loanBalanceAfterSwap, SlippageExceeded());

        // Get the actual output amount
        uint256 amountOut = loanBalanceAfterSwap - balanceBefore;

        // Transfer the entire post-swap balance to the recipient
        loanToken.safeTransfer(recipient, loanBalanceAfterSwap);
        emit SwapExecuted(address(collateralToken), address(loanToken), amount, amountOutMin, amountOut, recipient);
    }

    /**
     * @notice Internal function to execute one or more sequential swaps via external routers
     * @dev Iterates through calls array, approving each target, executing the call, then resetting approval to zero.
     *      Allows complex multi-hop swaps (e.g., token A → token B → token C). No intermediate amount checks are performed;
     *      the final output amount is validated against slippage in the calling function after all calls complete.
     * @param token The token to approve and swap
     * @param amount The amount to approve for each call
     * @param calls Array of swap calls to execute in order
     * @custom:reverts RouterExecutionFailed when any call to a target fails
     */
    function _executeSwap(IERC20 token, uint256 amount, SwapCall[] memory calls) private {
        for (uint256 i = 0; i < calls.length; i++) {
            SwapCall memory call = calls[i];
            token.forceApprove(call.target, amount);
            (bool success,) = call.target.call(call.callData);
            require(success, RouterExecutionFailed());
            token.forceApprove(call.target, 0);
        }
    }

    /*//////////////////////////////////////////////////////////////
                            RECOVERY FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Sweeps ERC20 tokens from the adapter to a recipient address
     * @dev Allows recovery of tokens that were accidentally sent to the contract
     *      or an intermediate token in a multi-hop swap.
     * @param token The ERC20 token address to sweep
     * @param recipient The address to receive the swept tokens
     * @custom:reverts NothingToSweep when the contract has zero balance of the token
     * @custom:reverts InvalidRecipient when recipient is the zero address
     * @custom:events TokenSwept emitted when tokens are successfully swept
     */
    function sweepToken(IERC20 token, address recipient) public virtual {
        require(recipient != address(0), InvalidRecipient());
        uint256 balance = token.balanceOf(address(this));
        require(balance > 0, NothingToSweep());

        token.safeTransfer(recipient, balance);
        emit TokenSwept(address(token), balance, recipient);
    }
}
