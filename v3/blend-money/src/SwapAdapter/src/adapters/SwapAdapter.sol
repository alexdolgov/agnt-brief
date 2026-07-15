// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {IMarketAdapterController} from "../interfaces/controllers/IMarketAdapterController.sol";
import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IOracle} from "morpho-blue/src/interfaces/IOracle.sol";
import {PriceLib} from "../libraries/PriceLib.sol";

/**
 * @title SwapAdapter
 * @author Variable Logic Labs, Corp (hello@blend.money)
 * @notice Generic swap adapter for token-to-token swaps using external routers
 * @dev Handles swaps between loan tokens and collateral tokens, enforcing slippage and price oracle checks
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
     * @notice Ensures adapter holds no tokens after swap
     * @dev Checks both loan and collateral token balances are zero after execution
     * @param loanToken The loan token
     * @param collateralToken The collateral token
     */
    modifier emptyAdapterBalances(IERC20 loanToken, IERC20 collateralToken) {
        _;
        // Adapter should not retain any tokens after swap
        require(loanToken.balanceOf(address(this)) == 0, AdapterNotEmpty());
        require(collateralToken.balanceOf(address(this)) == 0, AdapterNotEmpty());
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
    ) public virtual override emptyAdapterBalances(loanToken, collateralToken) {
        require(recipient != address(0), InvalidRecipient());
        uint256 amount = loanToken.balanceOf(address(this));
        require(amount > 0, ZeroAmount());

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

        // Transfer only the swapped amount to the recipient
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
    ) public virtual override emptyAdapterBalances(loanToken, collateralToken) {
        require(recipient != address(0), InvalidRecipient());
        uint256 amount = collateralToken.balanceOf(address(this));
        require(amount > 0, ZeroAmount());

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

        // Transfer only the swapped amount to the recipient
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
}
