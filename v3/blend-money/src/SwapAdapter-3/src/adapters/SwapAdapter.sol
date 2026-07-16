// SPDX-License-Identifier: BSL-1.1
pragma solidity 0.8.28;

import {IMarketAdapterController} from "../interfaces/controllers/IMarketAdapterController.sol";
import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IOracle} from "morpho-blue/src/interfaces/IOracle.sol";
import {PriceLib} from "../libraries/PriceLib.sol";
import {Call} from "bundler3/src/interfaces/IBundler3.sol";
import {ErrorsLib} from "bundler3/src/libraries/ErrorsLib.sol";
import {UtilsLib} from "bundler3/src/libraries/UtilsLib.sol";

/**
 * @title SwapAdapter
 * @notice Bundler3-compatible swap adapter that orchestrates child adapters via multicall while maintaining slippage protection
 * @dev Handles swaps between loan tokens and collateral tokens, enforcing slippage and price oracle checks.
 *      Uses Bundler3's ErrorsLib and UtilsLib for multicall-related errors and utilities.
 *      Implements swap logic with Call[] to support Bundler3's reenterHash callback mechanism.
 * @dev The strict zero-balance check in checkSwapInvariants is an intentional safety invariant and known token compatibility limitation.
 *      Share-based rebasing tokens like stETH that exhibit rounding behavior (1-2 wei dust) are not compatible with this adapter.
 *      This is a documented design tradeoff: the worst case is a reverted transaction, not loss of funds.
 *      Supported token lists are controlled by governance behind a timelock, and incompatible tokens can be excluded.
 *
 *      **SECURITY WARNING**: This contract executes arbitrary calls through the Bundler3 multicall mechanism
 *      (_executeSwapCalls). Users must NEVER approve tokens, grant allowances, or provide any privilege access
 *      to this contract. Any approvals granted to this contract can be exploited through malicious swap call data
 *      (e.g., transferFrom calls) to drain approved tokens, leading to fund loss.
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
                            TRANSIENT STORAGE
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice The initiator of the current swap transaction
     * @dev Transient storage - reset to address(0) after each entry point completes.
     *      Child adapters deployed with this contract as their BUNDLER3 can read this value via the initiator() function.
     */
    address public transient initiator;

    /**
     * @notice Hash of the concatenation of the sender and the hash of the calldata of the next call to reenter
     * @dev Used for callback verification during flashloans or other reentrant patterns
     */
    bytes32 public transient reenterHash;

    /*//////////////////////////////////////////////////////////////
                                STRUCTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Parameters for executing one or more sequential swap calls via Bundler3-style multicall
     * @param slippageBps Maximum slippage allowed in basis points (1e4 = 100%)
     * @param calls Array of Bundler3 Call structs to execute sequentially
     */
    struct SwapParams {
        uint256 slippageBps;
        Call[] calls;
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

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Thrown when a zero amount is provided
     */
    error ZeroAmount();

    /**
     * @notice Thrown when the slippage is exceeded
     */
    error SlippageExceeded();

    /**
     * @notice Thrown when slippage in extraData exceeds maxSlippageBps in strategy config
     */
    error SlippageExceedsMaximum();

    /**
     * @notice Thrown when the max slippage itself is invalid
     */
    error MaxSlippageInvalid();

    /**
     * @notice Thrown when recipient is the zero address
     */
    error InvalidRecipient();

    /**
     * @notice Thrown when the adapter retains tokens after swap execution
     */
    error AdapterNotEmpty();

    /**
     * @notice Thrown when attempting to sweep with zero balance
     */
    error NothingToSweep();

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Emitted when a swap is executed
     * @param fromToken The token swapped from
     * @param toToken The token swapped to
     * @param amountIn The input amount
     * @param amountOutMin The minimum output amount required
     * @param amountOut The actual output amount
     * @param recipient The recipient of the output tokens
     * @param actualSlippageWad The actual slippage in WAD (1e18 = 100%). Positive = gain (got more), Negative = loss (got less)
     */
    event SwapExecuted(
        address indexed fromToken,
        address indexed toToken,
        uint256 amountIn,
        uint256 amountOutMin,
        uint256 amountOut,
        address indexed recipient,
        int256 actualSlippageWad
    );

    /**
     * @notice Emitted when tokens are swept from the adapter
     * @param token The address of the token that was swept
     * @param amount The amount of tokens swept
     * @param recipient The address that received the swept tokens
     */
    event TokenSwept(address indexed token, uint256 amount, address indexed recipient);

    /**
     * @notice Emitted when a swap is executed between the same asset
     * @param token The token swapped
     * @param amount The amount swapped
     * @param recipient The recipient of the swapped tokens
     * @dev Essentially a no-op swap that transfers the entire balance to the recipient
     */
    event SwapSameAsset(address indexed token, uint256 amount, address indexed recipient);

    /*//////////////////////////////////////////////////////////////
                            MODIFIERS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Tracks the initiator of a swap transaction
     * @dev Sets initiator to msg.sender at the start and resets to address(0) at the end.
     *      Ensures only one entry point is active at a time.
     * @custom:reverts ErrorsLib.AlreadyInitiated when initiator is not address(0)
     */
    modifier trackInitiator() {
        require(initiator == address(0), ErrorsLib.AlreadyInitiated());
        initiator = msg.sender;
        _;
        initiator = address(0);
    }

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

    /*//////////////////////////////////////////////////////////////
                        BUNDLER3 MULTICALL
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Executes a sequence of calls during a callback
     * @dev Can only be called by the last unreturned callee with known data.
     *      Used for flashloan callbacks from child adapters.
     * @param bundle The ordered array of calls to execute
     * @custom:reverts ErrorsLib.IncorrectReenterHash when the hash doesn't match the expected value
     */
    function reenter(Call[] calldata bundle) external {
        require(
            reenterHash == keccak256(bytes.concat(bytes20(msg.sender), keccak256(msg.data[4:]))),
            ErrorsLib.IncorrectReenterHash()
        );
        _multicall(bundle);
    }

    /**
     * @notice Internal function to execute a sequence of Bundler3-style calls
     * @dev Iterates through the bundle and executes each call, managing reenterHash for callbacks.
     *      Logic mirrors Bundler3._multicall from the audited bundler3 contract.
     * @param bundle The ordered array of calls to execute
     * @custom:reverts ErrorsLib.EmptyBundle when bundle is empty
     * @custom:reverts ErrorsLib.MissingExpectedReenter when a reenter was expected but did not happen
     */
    function _multicall(Call[] calldata bundle) private {
        require(bundle.length > 0, ErrorsLib.EmptyBundle());

        for (uint256 i; i < bundle.length; ++i) {
            address to = bundle[i].to;
            bytes32 callbackHash = bundle[i].callbackHash;
            if (callbackHash == bytes32(0)) reenterHash = bytes32(0);
            else reenterHash = keccak256(bytes.concat(bytes20(to), callbackHash));

            (bool success, bytes memory returnData) = to.call{value: bundle[i].value}(bundle[i].data);
            if (!bundle[i].skipRevert && !success) UtilsLib.lowLevelRevert(returnData);

            require(reenterHash == bytes32(0), ErrorsLib.MissingExpectedReenter());
        }
    }

    /*//////////////////////////////////////////////////////////////
                        SWAP ENTRY POINTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Swaps loan token for collateral token via Bundler3-style multicall
     * @dev Executes swap calls through _executeSwapCalls, enabling child adapter orchestration with full reenter support.
     *      Child adapters deployed with this contract as BUNDLER3 can call initiator() during execution.
     * @param loanToken The token to swap from
     * @param collateralToken The token to swap to
     * @param recipient The recipient of the swapped tokens
     * @param strategyData Encoded StoredStrategyData (oracle + max slippage)
     * @param extraData Encoded SwapParams (slippage + Call[] bundle)
     * @custom:reverts InvalidRecipient when recipient is the zero address
     * @custom:reverts ZeroAmount when the adapter's loan token balance is zero or when expected collateral output is zero
     * @custom:reverts MaxSlippageInvalid when maxSlippageBps in strategyData exceeds MAX_SLIPPAGE_BPS
     * @custom:reverts SlippageExceedsMaximum when slippageBps in extraData exceeds maxSlippageBps in strategyData
     * @custom:reverts SlippageExceeded when the actual swap output is less than the minimum required amount (amountOutMin)
     * @custom:reverts AdapterNotEmpty when the adapter retains loan or collateral tokens after swap completion
     */
    function swapToCollateral(
        IERC20 loanToken,
        IERC20 collateralToken,
        address recipient,
        bytes calldata strategyData,
        bytes calldata extraData
    ) public virtual override trackInitiator checkSwapInvariants(loanToken, collateralToken, recipient) {
        uint256 amount = loanToken.balanceOf(address(this));

        // Decode swap and strategy parameters
        SwapParams memory swapParams = abi.decode(extraData, (SwapParams));
        StoredStrategyData memory strategyConfig = abi.decode(strategyData, (StoredStrategyData));

        // Validate slippage
        require(strategyConfig.maxSlippageBps <= MAX_SLIPPAGE_BPS, MaxSlippageInvalid());
        require(swapParams.slippageBps <= strategyConfig.maxSlippageBps, SlippageExceedsMaximum());

        // Calculate minimum output using oracle and slippage
        // Note: Both quoteToBase (via mulDiv) and applySlippage use integer division which rounds down.
        // This double rounding results in amountOutMin being slightly smaller than the mathematically
        // exact value, making the slippage check marginally more permissive. This is an intentional
        // trade-off favoring swap execution over strict mathematical precision, as the difference
        // is negligible for practical amounts and prevents unnecessary reverts from rounding errors.
        uint256 expectedCollateral = PriceLib.quoteToBase(amount, strategyConfig.oracleCollateralPerLoan);
        require(expectedCollateral > 0, ZeroAmount());
        uint256 amountOutMin = PriceLib.applySlippage(expectedCollateral, swapParams.slippageBps);

        uint256 balanceBefore = collateralToken.balanceOf(address(this));

        // Execute swap calls via Bundler3-style multicall
        _executeSwapCalls(swapParams.calls);

        uint256 collateralBalanceAfterSwap = collateralToken.balanceOf(address(this));
        require(balanceBefore + amountOutMin <= collateralBalanceAfterSwap, SlippageExceeded());

        uint256 amountOut = collateralBalanceAfterSwap - balanceBefore;

        // Calculate actual slippage in WAD (1e18 = 100%)
        // Positive = got more than expected (gain), Negative = got less than expected (loss)
        int256 actualSlippageWad = amountOut > expectedCollateral
            ? int256(((amountOut - expectedCollateral) * 1e18) / expectedCollateral)
            : -int256(((expectedCollateral - amountOut) * 1e18) / expectedCollateral);

        collateralToken.safeTransfer(recipient, collateralBalanceAfterSwap);
        emit SwapExecuted(
            address(loanToken), address(collateralToken), amount, amountOutMin, amountOut, recipient, actualSlippageWad
        );
    }

    /**
     * @notice Swaps collateral token for loan token via Bundler3-style multicall
     * @dev Executes swap calls through _executeSwapCalls, enabling child adapter orchestration with full reenter support.
     *      Child adapters deployed with this contract as BUNDLER3 can call initiator() during execution.
     * @param loanToken The token to swap to
     * @param collateralToken The token to swap from
     * @param recipient The recipient of the swapped tokens
     * @param strategyData Encoded StoredStrategyData (oracle + max slippage)
     * @param extraData Encoded SwapParams (slippage + Call[] bundle)
     * @custom:reverts InvalidRecipient when recipient is the zero address
     * @custom:reverts ZeroAmount when the adapter's collateral token balance is zero or when expected loan output is zero
     * @custom:reverts MaxSlippageInvalid when maxSlippageBps in strategyData exceeds MAX_SLIPPAGE_BPS
     * @custom:reverts SlippageExceedsMaximum when slippageBps in extraData exceeds maxSlippageBps in strategyData
     * @custom:reverts SlippageExceeded when the actual swap output is less than the minimum required amount (amountOutMin)
     * @custom:reverts AdapterNotEmpty when the adapter retains collateral or loan tokens after swap completion
     */
    function swapToLoanToken(
        IERC20 loanToken,
        IERC20 collateralToken,
        address recipient,
        bytes calldata strategyData,
        bytes calldata extraData
    ) public virtual override trackInitiator checkSwapInvariants(collateralToken, loanToken, recipient) {
        uint256 amount = collateralToken.balanceOf(address(this));

        // Decode swap and strategy parameters
        SwapParams memory swapParams = abi.decode(extraData, (SwapParams));
        StoredStrategyData memory strategyConfig = abi.decode(strategyData, (StoredStrategyData));

        // Validate slippage
        require(strategyConfig.maxSlippageBps <= MAX_SLIPPAGE_BPS, MaxSlippageInvalid());
        require(swapParams.slippageBps <= strategyConfig.maxSlippageBps, SlippageExceedsMaximum());

        // Calculate minimum output using oracle and slippage
        // Note: Both baseToQuote (via mulDiv) and applySlippage use integer division which rounds down.
        // This double rounding results in amountOutMin being slightly smaller than the mathematically
        // exact value, making the slippage check marginally more permissive. This is an intentional
        // trade-off favoring swap execution over strict mathematical precision, as the difference
        // is negligible for practical amounts and prevents unnecessary reverts from rounding errors.
        uint256 expectedLoan = PriceLib.baseToQuote(amount, strategyConfig.oracleCollateralPerLoan);
        require(expectedLoan > 0, ZeroAmount());
        uint256 amountOutMin = PriceLib.applySlippage(expectedLoan, swapParams.slippageBps);

        uint256 balanceBefore = loanToken.balanceOf(address(this));

        // Execute swap calls via Bundler3-style multicall
        _executeSwapCalls(swapParams.calls);

        uint256 loanBalanceAfterSwap = loanToken.balanceOf(address(this));
        require(balanceBefore + amountOutMin <= loanBalanceAfterSwap, SlippageExceeded());

        uint256 amountOut = loanBalanceAfterSwap - balanceBefore;

        // Calculate actual slippage in WAD (1e18 = 100%)
        // Positive = got more than expected (gain), Negative = got less than expected (loss)
        int256 actualSlippageWad = amountOut > expectedLoan
            ? int256(((amountOut - expectedLoan) * 1e18) / expectedLoan)
            : -int256(((expectedLoan - amountOut) * 1e18) / expectedLoan);

        loanToken.safeTransfer(recipient, loanBalanceAfterSwap);
        emit SwapExecuted(
            address(collateralToken), address(loanToken), amount, amountOutMin, amountOut, recipient, actualSlippageWad
        );
    }

    /**
     * @notice Executes swap calls via Bundler3-style multicall
     * @dev Handles memory Call[] array. Allows empty bundles (no-op) for same-asset swaps.
     *      Logic mirrors Bundler3._multicall but operates on memory arrays.
     * @param calls Array of Call structs to execute
     * @custom:reverts ErrorsLib.MissingExpectedReenter when a reenter was expected but did not happen
     */
    function _executeSwapCalls(Call[] memory calls) private {
        if (calls.length == 0) return;

        for (uint256 i; i < calls.length; ++i) {
            address to = calls[i].to;
            bytes32 callbackHash = calls[i].callbackHash;
            if (callbackHash == bytes32(0)) reenterHash = bytes32(0);
            else reenterHash = keccak256(bytes.concat(bytes20(to), callbackHash));

            (bool success, bytes memory returnData) = to.call{value: calls[i].value}(calls[i].data);
            if (!calls[i].skipRevert && !success) UtilsLib.lowLevelRevert(returnData);

            require(reenterHash == bytes32(0), ErrorsLib.MissingExpectedReenter());
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
