// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.13;

import {WETH} from "solady/tokens/WETH.sol";
import {ERC20} from "solady/tokens/ERC20.sol";
import {Ownable} from "solady/auth/Ownable.sol";
import {SafeCastLib} from "solady/utils/SafeCastLib.sol";
import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";

import {LibMulticaller} from "multicaller/LibMulticaller.sol";

import "@uniswap/v4-core/src/types/Currency.sol";

import "./external/IBunniHub.sol";
import {ReentrancyGuard} from "./lib/ReentrancyGuard.sol";
import {ExcessivelySafeTransfer2Lib} from "./lib/ExcessivelySafeTransfer2Lib.sol";

/// @title BunniZapIn
/// @author zefram.eth
/// @notice Zap contract for providing liquidity to Bunni v2 using a single token. Users should interact with this contract
/// via a Multicaller batch transaction, for example:
/// - Call Permit2 to approve the user's input token to BunniZapIn using a signature
/// - Use Enso to swap part of the user's input token into the other token in the Bunni pool
/// - Call zapIn() to deposit the two tokens into the Bunni pool
contract BunniZapIn is ReentrancyGuard, Ownable {
    /// -----------------------------------------------------------------------
    /// Library usage
    /// -----------------------------------------------------------------------

    using SafeCastLib for *;
    using SafeTransferLib for address;
    using ExcessivelySafeTransfer2Lib for address;

    /// -----------------------------------------------------------------------
    /// Errors
    /// -----------------------------------------------------------------------

    error BunniZapIn__InsufficientOutput();
    error BunniZapIn__MsgValueInsufficient();
    error BunniZapIn__SameToken();
    error BunniZapIn__PastDeadline();
    error BunniZapIn__ZeroExSwapFailed();
    error BunniZapIn__RouterNotWhitelisted();

    /// -----------------------------------------------------------------------
    /// Event
    /// -----------------------------------------------------------------------

    event SetRouterWhitelist(address indexed router, bool indexed isWhitelisted);

    /// -----------------------------------------------------------------------
    /// Immutable parameters
    /// -----------------------------------------------------------------------

    /// @notice The Wrapped Ethereum contract
    WETH public immutable weth;

    /// @notice BunniHub for managing Bunni v2 liquidity
    IBunniHub public immutable bunniHub;

    /// -----------------------------------------------------------------------
    /// Storage
    /// -----------------------------------------------------------------------

    mapping(address => bool) public isWhitelistedRouter;

    /// -----------------------------------------------------------------------
    /// Constructor
    /// -----------------------------------------------------------------------

    constructor(address[] memory routerWhitelist_, WETH weth_, IBunniHub bunniHub_, address owner_) {
        weth = weth_;
        bunniHub = bunniHub_;

        _initializeOwner(owner_);

        for (uint256 i = 0; i < routerWhitelist_.length; ++i) {
            isWhitelistedRouter[routerWhitelist_[i]] = true;

            emit SetRouterWhitelist(routerWhitelist_[i], true);
        }
    }

    /// -----------------------------------------------------------------------
    /// Zaps
    /// -----------------------------------------------------------------------

    /// @notice Deposits tokens into a Bunni LP position. Any leftover tokens
    /// are refunded to the recipient address.
    /// @dev depositParams.recipient will receive the Bunni LP tokens.
    /// depositParams.amount0Desired and depositParams.amount1Desired are overridden to the balances
    /// of address(this) if the corresponding useContractBalance flag is set to true.
    /// @param depositParams The deposit params passed to BunniHub
    /// @param recipient The recipient of the staked gauge position
    /// @param sharesMin The minimum acceptable amount of shares received. Used for controlling slippage.
    /// @param useContractBalance0 Set to true to use the token0 balance of address(this) instead of msg.sender
    /// @param useContractBalance1 Set to true to use the token1 balance of address(this) instead of msg.sender
    /// @return shares The new share tokens minted to the sender
    /// @return amount0 The amount of token0 deposited
    /// @return amount1 The amount of token1 deposited
    function zapIn(
        IBunniHub.DepositParams memory depositParams,
        address recipient,
        uint256 sharesMin,
        bool useContractBalance0,
        bool useContractBalance1
    ) external payable nonReentrant returns (uint256 shares, uint256 amount0, uint256 amount1) {
        address msgSender = LibMulticaller.senderOrSigner();
        Currency token0 = depositParams.poolKey.currency0;
        Currency token1 = depositParams.poolKey.currency1;

        // transfer tokens in and modify deposit params
        if (!useContractBalance0) {
            if (depositParams.amount0Desired != 0) {
                if (token0.isAddressZero()) {
                    if (msg.value != depositParams.amount0Desired) {
                        revert BunniZapIn__MsgValueInsufficient();
                    }
                } else {
                    Currency.unwrap(token0).excessivelySafeTransferFrom2(
                        msgSender, address(this), depositParams.amount0Desired
                    );
                }
            }
        } else {
            depositParams.amount0Desired = token0.balanceOfSelf();
        }
        if (!useContractBalance1) {
            if (depositParams.amount1Desired != 0) {
                if (token1.isAddressZero()) {
                    if (msg.value != depositParams.amount1Desired) {
                        revert BunniZapIn__MsgValueInsufficient();
                    }
                } else {
                    Currency.unwrap(token1).excessivelySafeTransferFrom2(
                        msgSender, address(this), depositParams.amount1Desired
                    );
                }
            }
        } else {
            depositParams.amount1Desired = token1.balanceOfSelf();
        }

        // approve tokens to Bunni
        if (!token0.isAddressZero()) {
            // approve token to Bunni
            Currency.unwrap(token0).safeApproveWithRetry(address(bunniHub), depositParams.amount0Desired);
        }
        if (!token1.isAddressZero()) {
            // approve token to Bunni
            Currency.unwrap(token1).safeApproveWithRetry(address(bunniHub), depositParams.amount1Desired);
        }

        // deposit tokens into Bunni
        uint256 depositValue = token0.isAddressZero()
            ? depositParams.amount0Desired
            : (token1.isAddressZero() ? depositParams.amount1Desired : 0);
        (shares, amount0, amount1) = bunniHub.deposit{value: depositValue}(depositParams);
        if (shares < sharesMin) {
            revert BunniZapIn__InsufficientOutput();
        }

        // reset approvals
        if (!token0.isAddressZero() && ERC20(Currency.unwrap(token0)).allowance(address(this), address(bunniHub)) != 0)
        {
            Currency.unwrap(token0).safeApprove(address(bunniHub), 0);
        }
        if (!token1.isAddressZero() && ERC20(Currency.unwrap(token1)).allowance(address(this), address(bunniHub)) != 0)
        {
            Currency.unwrap(token1).safeApprove(address(bunniHub), 0);
        }

        // refund tokens
        uint256 balance = token0.balanceOfSelf();
        if (balance != 0) {
            token0.transfer(recipient, balance);
        }
        balance = token1.balanceOfSelf();
        if (balance != 0) {
            token1.transfer(recipient, balance);
        }
    }

    /// -----------------------------------------------------------------------
    /// WETH support
    /// -----------------------------------------------------------------------

    /// @notice Wraps the user's ETH input into WETH
    /// @dev Should be used as part of a multicall to convert the user's ETH input into WETH
    /// so that it can be swapped into other tokens.
    function wrapEthInput() external payable nonReentrant {
        weth.deposit{value: msg.value}();
    }

    /// @notice Wraps the contract's ETH balance into WETH
    /// @dev Should be used as part of a multicall to convert the user's ETH input into WETH
    /// so that it can be swapped into other tokens.
    function wrapEthBalance() external nonReentrant {
        weth.deposit{value: address(this).balance}();
    }

    /// @notice Unwraps WETH to ETH
    /// @dev Should be used as part of a multicall to convert WETH to ETH
    /// so that it can be refunded to the user.
    function unwrapEthOutput() external nonReentrant {
        weth.withdraw(weth.balanceOf(address(this)));
    }

    /// @dev Accepts ETH so that WETH can be unwrapped into ETH
    receive() external payable {}

    /// -----------------------------------------------------------------------
    /// Owner functions
    /// -----------------------------------------------------------------------

    function setRouterWhitelist(address router, bool isWhitelisted) external onlyOwner {
        isWhitelistedRouter[router] = isWhitelisted;

        emit SetRouterWhitelist(router, isWhitelisted);
    }

    /// -----------------------------------------------------------------------
    /// Router swap support
    /// -----------------------------------------------------------------------

    /// @notice Swaps between two tokens using a router contract. Leftover input tokens are refunded
    /// to refundRecipient.
    /// @param tokenIn The input token
    /// @param tokenAmountIn The amount of token input
    /// @param tokenOut The output token
    /// @param minAmountOut The minimum acceptable token output amount, used for slippage checking.
    /// @param recipient The recipient of the token output
    /// @param refundRecipient The recipient of refunded input tokens
    /// @param useContractBalance Set to true to use the contract's token balance as token input
    /// @param deadline The Unix timestamp (in seconds) after which the call will be reverted
    /// @param swapData The call data to `router` to execute the swap. Usually obtained from aggregator/router APIs.
    /// @return tokenAmountOut The amount of token output
    function doRouterSwap(
        address payable router,
        Currency tokenIn,
        uint256 tokenAmountIn,
        Currency tokenOut,
        uint256 minAmountOut,
        address recipient,
        address refundRecipient,
        bool useContractBalance,
        uint256 deadline,
        bytes calldata swapData
    ) external payable nonReentrant returns (uint256 tokenAmountOut) {
        // ensure router is whitelisted
        if (!isWhitelistedRouter[router]) {
            revert BunniZapIn__RouterNotWhitelisted();
        }

        // check if input token equals output
        if (tokenIn == tokenOut) {
            revert BunniZapIn__SameToken();
        }

        // check deadline
        if (block.timestamp > deadline) {
            revert BunniZapIn__PastDeadline();
        }

        // transfer in input tokens
        address msgSender = LibMulticaller.senderOrSigner();
        if (!useContractBalance) {
            if (tokenIn.isAddressZero()) {
                if (msg.value != tokenAmountIn) {
                    revert BunniZapIn__MsgValueInsufficient();
                }
            } else {
                Currency.unwrap(tokenIn).excessivelySafeTransferFrom2(msgSender, address(this), tokenAmountIn);
            }
        } else {
            tokenAmountIn = tokenIn.balanceOfSelf();
        }

        // approve router if necessary
        if (!tokenIn.isAddressZero()) {
            Currency.unwrap(tokenIn).safeApproveWithRetry(router, tokenAmountIn);
        }

        // do swap via router
        {
            (bool success,) = router.call{value: tokenIn.isAddressZero() ? tokenAmountIn : 0}(swapData);
            if (!success) {
                revert BunniZapIn__ZeroExSwapFailed();
            }
        }

        // reset approvals
        if (!tokenIn.isAddressZero() && ERC20(Currency.unwrap(tokenIn)).allowance(address(this), address(router)) != 0)
        {
            Currency.unwrap(tokenIn).safeApprove(router, 0);
        }

        // check slippage
        tokenAmountOut = tokenOut.balanceOfSelf();
        if (tokenAmountOut < minAmountOut) {
            revert BunniZapIn__InsufficientOutput();
        }

        // transfer output tokens to recipient
        if (recipient != address(this)) {
            tokenOut.transfer(recipient, tokenAmountOut);
        }

        // refund input tokens
        uint256 balance = tokenIn.balanceOfSelf();
        if (balance != 0) {
            tokenIn.transfer(refundRecipient, balance);
        }
    }
}
