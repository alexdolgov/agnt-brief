// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.24;

import {IMarketAdapterController} from "../interfaces/controllers/IMarketAdapterController.sol";
import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IOracle} from "morpho-blue/src/interfaces/IOracle.sol";
import {PriceLib} from "../libraries/PriceLib.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {BytesLib} from "bundler3/src/libraries/BytesLib.sol";

/**
 * @title SwapAdapter
 * @author Variable Logic Labs, Corp (hello@blend.money)
 * @notice Generic swap adapter for token-to-token swaps using external routers
 * @dev Handles swaps between loan tokens and collateral tokens, enforcing slippage and price oracle checks
 */
contract SwapAdapter is IMarketAdapterController {
    using Math for uint256;
    using SafeERC20 for IERC20;
    using BytesLib for bytes;

    /*//////////////////////////////////////////////////////////////
                                STRUCTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Parameters for executing a swap
     * @param slippageBps Maximum slippage allowed in basis points (1e4 = 100%)
     * @param callData Encoded calldata for the router swap
     * @param router Address of the external router to execute the swap
     */
    struct SwapParams {
        uint256 slippageBps;
        bytes callData;
        address target;
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

    /**
     * @notice Emitted when a swap is executed
     * @param fromToken The token swapped from
     * @param toToken The token swapped to
     * @param amountIn The input amount
     * @param amountOutMin The minimum output amount required
     * @param recipient The recipient of the output tokens
     */
    event SwapExecuted(
        address indexed fromToken,
        address indexed toToken,
        uint256 amountIn,
        uint256 amountOutMin,
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
        require(loanToken.balanceOf(address(this)) == 0, ZeroAmount());
        require(collateralToken.balanceOf(address(this)) == 0, ZeroAmount());
    }

    /**
     * @notice Swaps loan token for collateral token
     * @dev Uses external router and price oracle to enforce slippage
     * @param loanToken The token to swap from
     * @param collateralToken The token to swap to
     * @param recipient The recipient of the swapped tokens
     * @param strategyData Encoded strategy-specific oracle configuration
     * @param extraData Encoded SwapParams struct
     */
    function swapToCollateral(
        IERC20 loanToken,
        IERC20 collateralToken,
        address recipient,
        bytes memory strategyData,
        bytes calldata extraData
    ) external override emptyAdapterBalances(loanToken, collateralToken) {
        uint256 amount = loanToken.balanceOf(address(this));
        require(amount > 0, ZeroAmount());

        // Decode swap and strategy parameters
        SwapParams memory swapParams = abi.decode(extraData, (SwapParams));
        StoredStrategyData memory strategyConfig = abi.decode(strategyData, (StoredStrategyData));

        // Validate slippage against enhanced strategy data
        require(swapParams.slippageBps <= strategyConfig.maxSlippageBps, SlippageExceedsMaximum());

        // Calculate minimum output using oracle and slippage
        uint256 amountOutMin = PriceLib.applySlippage(
            PriceLib.quoteToBase(amount, strategyConfig.oracleCollateralPerLoan), swapParams.slippageBps
        );

        uint256 balanceBefore = collateralToken.balanceOf(address(this));

        // Approve and execute the swap on the router
        _executeSwap(loanToken, swapParams.target, amount, swapParams.callData);

        // Check that the received amount meets slippage requirements
        require(balanceBefore + amountOutMin <= collateralToken.balanceOf(address(this)), SlippageExceeded());

        // Transfer only the swapped amount to the recipient
        collateralToken.safeTransfer(recipient, collateralToken.balanceOf(address(this)));
        emit SwapExecuted(address(loanToken), address(collateralToken), amount, amountOutMin, recipient);
    }

    /**
     * @notice Swaps collateral token for loan token
     * @dev Uses external router and price oracle to enforce slippage
     * @param loanToken The token to swap to
     * @param collateralToken The token to swap from
     * @param recipient The recipient of the swapped tokens
     * @param strategyData Encoded strategy-specific oracle configuration
     * @param extraData Encoded SwapParams struct
     */
    function swapToLoanToken(
        IERC20 loanToken,
        IERC20 collateralToken,
        address recipient,
        bytes memory strategyData,
        bytes calldata extraData
    ) external override emptyAdapterBalances(loanToken, collateralToken) {
        uint256 amount = collateralToken.balanceOf(address(this));
        require(amount > 0, ZeroAmount());

        // Decode swap and strategy parameters
        SwapParams memory swapParams = abi.decode(extraData, (SwapParams));
        StoredStrategyData memory strategyConfig = abi.decode(strategyData, (StoredStrategyData));

        // Validate slippage against enhanced strategy data
        require(swapParams.slippageBps <= strategyConfig.maxSlippageBps, SlippageExceedsMaximum());

        // Calculate minimum output using oracle and slippage
        uint256 amountOutMin = PriceLib.applySlippage(
            PriceLib.baseToQuote(amount, strategyConfig.oracleCollateralPerLoan), swapParams.slippageBps
        );

        uint256 balanceBefore = loanToken.balanceOf(address(this));

        // Approve and execute the swap on the target
        _executeSwap(collateralToken, swapParams.target, amount, swapParams.callData);

        // Check that the received amount meets slippage requirements
        require(balanceBefore + amountOutMin <= loanToken.balanceOf(address(this)), SlippageExceeded());

        // Transfer only the swapped amount to the recipient
        loanToken.safeTransfer(recipient, loanToken.balanceOf(address(this)));
        emit SwapExecuted(address(collateralToken), address(loanToken), amount, amountOutMin, recipient);
    }

    /**
     * @notice Internal function to execute swap via external router
     * @dev Approves the router, calls it, and resets approval to zero
     * @param token The token to approve and swap
     * @param target The target address
     * @param amount The amount to approve
     * @param callData The calldata for the router
     */
    function _executeSwap(IERC20 token, address target, uint256 amount, bytes memory callData) private {
        // Approve router to spend token
        token.forceApprove(target, amount);
        (bool success,) = target.call(callData);
        require(success, RouterExecutionFailed());
        // Reset approval to zero for safety
        token.forceApprove(target, 0);
    }
}
