// File: @openzeppelin/contracts/token/ERC20/IERC20.sol


// OpenZeppelin Contracts (last updated v5.4.0) (token/ERC20/IERC20.sol)

pragma solidity >=0.4.16;

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// File: @openzeppelin/contracts/interfaces/IERC20.sol


// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC20.sol)

pragma solidity >=0.4.16;


// File: @openzeppelin/contracts/utils/introspection/IERC165.sol


// OpenZeppelin Contracts (last updated v5.4.0) (utils/introspection/IERC165.sol)

pragma solidity >=0.4.16;

/**
 * @dev Interface of the ERC-165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[ERC].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[ERC section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// File: @openzeppelin/contracts/interfaces/IERC165.sol


// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC165.sol)

pragma solidity >=0.4.16;


// File: @openzeppelin/contracts/interfaces/IERC1363.sol


// OpenZeppelin Contracts (last updated v5.4.0) (interfaces/IERC1363.sol)

pragma solidity >=0.6.2;



/**
 * @title IERC1363
 * @dev Interface of the ERC-1363 standard as defined in the https://eips.ethereum.org/EIPS/eip-1363[ERC-1363].
 *
 * Defines an extension interface for ERC-20 tokens that supports executing code on a recipient contract
 * after `transfer` or `transferFrom`, or code on a spender contract after `approve`, in a single transaction.
 */
interface IERC1363 is IERC20, IERC165 {
    /*
     * Note: the ERC-165 identifier for this interface is 0xb0202a11.
     * 0xb0202a11 ===
     *   bytes4(keccak256('transferAndCall(address,uint256)')) ^
     *   bytes4(keccak256('transferAndCall(address,uint256,bytes)')) ^
     *   bytes4(keccak256('transferFromAndCall(address,address,uint256)')) ^
     *   bytes4(keccak256('transferFromAndCall(address,address,uint256,bytes)')) ^
     *   bytes4(keccak256('approveAndCall(address,uint256)')) ^
     *   bytes4(keccak256('approveAndCall(address,uint256,bytes)'))
     */

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferAndCall(address to, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @param data Additional data with no specified format, sent in call to `to`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferAndCall(address to, uint256 value, bytes calldata data) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the allowance mechanism
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param from The address which you want to send tokens from.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferFromAndCall(address from, address to, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the allowance mechanism
     * and then calls {IERC1363Receiver-onTransferReceived} on `to`.
     * @param from The address which you want to send tokens from.
     * @param to The address which you want to transfer to.
     * @param value The amount of tokens to be transferred.
     * @param data Additional data with no specified format, sent in call to `to`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function transferFromAndCall(address from, address to, uint256 value, bytes calldata data) external returns (bool);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens and then calls {IERC1363Spender-onApprovalReceived} on `spender`.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function approveAndCall(address spender, uint256 value) external returns (bool);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens and then calls {IERC1363Spender-onApprovalReceived} on `spender`.
     * @param spender The address which will spend the funds.
     * @param value The amount of tokens to be spent.
     * @param data Additional data with no specified format, sent in call to `spender`.
     * @return A boolean value indicating whether the operation succeeded unless throwing.
     */
    function approveAndCall(address spender, uint256 value, bytes calldata data) external returns (bool);
}

// File: @openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol


// OpenZeppelin Contracts (last updated v5.5.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.20;



/**
 * @title SafeERC20
 * @dev Wrappers around ERC-20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    /**
     * @dev An operation with an ERC-20 token failed.
     */
    error SafeERC20FailedOperation(address token);

    /**
     * @dev Indicates a failed `decreaseAllowance` request.
     */
    error SafeERC20FailedDecreaseAllowance(address spender, uint256 currentAllowance, uint256 requestedDecrease);

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        if (!_safeTransfer(token, to, value, true)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        if (!_safeTransferFrom(token, from, to, value, true)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Variant of {safeTransfer} that returns a bool instead of reverting if the operation is not successful.
     */
    function trySafeTransfer(IERC20 token, address to, uint256 value) internal returns (bool) {
        return _safeTransfer(token, to, value, false);
    }

    /**
     * @dev Variant of {safeTransferFrom} that returns a bool instead of reverting if the operation is not successful.
     */
    function trySafeTransferFrom(IERC20 token, address from, address to, uint256 value) internal returns (bool) {
        return _safeTransferFrom(token, from, to, value, false);
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     *
     * IMPORTANT: If the token implements ERC-7674 (ERC-20 with temporary allowance), and if the "client"
     * smart contract uses ERC-7674 to set temporary allowances, then the "client" smart contract should avoid using
     * this function. Performing a {safeIncreaseAllowance} or {safeDecreaseAllowance} operation on a token contract
     * that has a non-zero temporary allowance (for that particular owner-spender) will result in unexpected behavior.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        forceApprove(token, spender, oldAllowance + value);
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `requestedDecrease`. If `token` returns no
     * value, non-reverting calls are assumed to be successful.
     *
     * IMPORTANT: If the token implements ERC-7674 (ERC-20 with temporary allowance), and if the "client"
     * smart contract uses ERC-7674 to set temporary allowances, then the "client" smart contract should avoid using
     * this function. Performing a {safeIncreaseAllowance} or {safeDecreaseAllowance} operation on a token contract
     * that has a non-zero temporary allowance (for that particular owner-spender) will result in unexpected behavior.
     */
    function safeDecreaseAllowance(IERC20 token, address spender, uint256 requestedDecrease) internal {
        unchecked {
            uint256 currentAllowance = token.allowance(address(this), spender);
            if (currentAllowance < requestedDecrease) {
                revert SafeERC20FailedDecreaseAllowance(spender, currentAllowance, requestedDecrease);
            }
            forceApprove(token, spender, currentAllowance - requestedDecrease);
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     *
     * NOTE: If the token implements ERC-7674, this function will not modify any temporary allowance. This function
     * only sets the "standard" allowance. Any temporary allowance will remain active, in addition to the value being
     * set here.
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        if (!_safeApprove(token, spender, value, false)) {
            if (!_safeApprove(token, spender, 0, true)) revert SafeERC20FailedOperation(address(token));
            if (!_safeApprove(token, spender, value, true)) revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} transferAndCall, with a fallback to the simple {ERC20} transfer if the target has no
     * code. This can be used to implement an {ERC721}-like safe transfer that relies on {ERC1363} checks when
     * targeting contracts.
     *
     * Reverts if the returned value is other than `true`.
     */
    function transferAndCallRelaxed(IERC1363 token, address to, uint256 value, bytes memory data) internal {
        if (to.code.length == 0) {
            safeTransfer(token, to, value);
        } else if (!token.transferAndCall(to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} transferFromAndCall, with a fallback to the simple {ERC20} transferFrom if the target
     * has no code. This can be used to implement an {ERC721}-like safe transfer that relies on {ERC1363} checks when
     * targeting contracts.
     *
     * Reverts if the returned value is other than `true`.
     */
    function transferFromAndCallRelaxed(
        IERC1363 token,
        address from,
        address to,
        uint256 value,
        bytes memory data
    ) internal {
        if (to.code.length == 0) {
            safeTransferFrom(token, from, to, value);
        } else if (!token.transferFromAndCall(from, to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Performs an {ERC1363} approveAndCall, with a fallback to the simple {ERC20} approve if the target has no
     * code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
     * targeting contracts.
     *
     * NOTE: When the recipient address (`to`) has no code (i.e. is an EOA), this function behaves as {forceApprove}.
     * Oppositely, when the recipient address (`to`) has code, this function only attempts to call {ERC1363-approveAndCall}
     * once without retrying, and relies on the returned value to be true.
     *
     * Reverts if the returned value is other than `true`.
     */
    function approveAndCallRelaxed(IERC1363 token, address to, uint256 value, bytes memory data) internal {
        if (to.code.length == 0) {
            forceApprove(token, to, value);
        } else if (!token.approveAndCall(to, value, data)) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity `token.transfer(to, value)` call, relaxing the requirement on the return value: the
     * return value is optional (but if data is returned, it must not be false).
     *
     * @param token The token targeted by the call.
     * @param to The recipient of the tokens
     * @param value The amount of token to transfer
     * @param bubble Behavior switch if the transfer call reverts: bubble the revert reason or return a false boolean.
     */
    function _safeTransfer(IERC20 token, address to, uint256 value, bool bubble) private returns (bool success) {
        bytes4 selector = IERC20.transfer.selector;

        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(0x00, selector)
            mstore(0x04, and(to, shr(96, not(0))))
            mstore(0x24, value)
            success := call(gas(), token, 0, 0x00, 0x44, 0x00, 0x20)
            // if call success and return is true, all is good.
            // otherwise (not success or return is not true), we need to perform further checks
            if iszero(and(success, eq(mload(0x00), 1))) {
                // if the call was a failure and bubble is enabled, bubble the error
                if and(iszero(success), bubble) {
                    returndatacopy(fmp, 0x00, returndatasize())
                    revert(fmp, returndatasize())
                }
                // if the return value is not true, then the call is only successful if:
                // - the token address has code
                // - the returndata is empty
                success := and(success, and(iszero(returndatasize()), gt(extcodesize(token), 0)))
            }
            mstore(0x40, fmp)
        }
    }

    /**
     * @dev Imitates a Solidity `token.transferFrom(from, to, value)` call, relaxing the requirement on the return
     * value: the return value is optional (but if data is returned, it must not be false).
     *
     * @param token The token targeted by the call.
     * @param from The sender of the tokens
     * @param to The recipient of the tokens
     * @param value The amount of token to transfer
     * @param bubble Behavior switch if the transfer call reverts: bubble the revert reason or return a false boolean.
     */
    function _safeTransferFrom(
        IERC20 token,
        address from,
        address to,
        uint256 value,
        bool bubble
    ) private returns (bool success) {
        bytes4 selector = IERC20.transferFrom.selector;

        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(0x00, selector)
            mstore(0x04, and(from, shr(96, not(0))))
            mstore(0x24, and(to, shr(96, not(0))))
            mstore(0x44, value)
            success := call(gas(), token, 0, 0x00, 0x64, 0x00, 0x20)
            // if call success and return is true, all is good.
            // otherwise (not success or return is not true), we need to perform further checks
            if iszero(and(success, eq(mload(0x00), 1))) {
                // if the call was a failure and bubble is enabled, bubble the error
                if and(iszero(success), bubble) {
                    returndatacopy(fmp, 0x00, returndatasize())
                    revert(fmp, returndatasize())
                }
                // if the return value is not true, then the call is only successful if:
                // - the token address has code
                // - the returndata is empty
                success := and(success, and(iszero(returndatasize()), gt(extcodesize(token), 0)))
            }
            mstore(0x40, fmp)
            mstore(0x60, 0)
        }
    }

    /**
     * @dev Imitates a Solidity `token.approve(spender, value)` call, relaxing the requirement on the return value:
     * the return value is optional (but if data is returned, it must not be false).
     *
     * @param token The token targeted by the call.
     * @param spender The spender of the tokens
     * @param value The amount of token to transfer
     * @param bubble Behavior switch if the transfer call reverts: bubble the revert reason or return a false boolean.
     */
    function _safeApprove(IERC20 token, address spender, uint256 value, bool bubble) private returns (bool success) {
        bytes4 selector = IERC20.approve.selector;

        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(0x00, selector)
            mstore(0x04, and(spender, shr(96, not(0))))
            mstore(0x24, value)
            success := call(gas(), token, 0, 0x00, 0x44, 0x00, 0x20)
            // if call success and return is true, all is good.
            // otherwise (not success or return is not true), we need to perform further checks
            if iszero(and(success, eq(mload(0x00), 1))) {
                // if the call was a failure and bubble is enabled, bubble the error
                if and(iszero(success), bubble) {
                    returndatacopy(fmp, 0x00, returndatasize())
                    revert(fmp, returndatasize())
                }
                // if the return value is not true, then the call is only successful if:
                // - the token address has code
                // - the returndata is empty
                success := and(success, and(iszero(returndatasize()), gt(extcodesize(token), 0)))
            }
            mstore(0x40, fmp)
        }
    }
}

// File: PyromancyHelper.sol


pragma solidity 0.8.35;

/*
  ____                                          _   _      _
 |  _ \ _   _ _ __ ___  _ __ ___   __ _ _ __   | | | | ___| |_ __   ___ _ __
 | |_) | | | | '__/ _ \| '_ ` _ \ / _` | '_ \  | |_| |/ _ \ | '_ \ / _ \ '__|
 |  __/| |_| | | | (_) | | | | | | (_| | | | | |  _  |  __/ | |_) |  __/ |
 |_|    \__, |_|  \___/|_| |_| |_|\__,_|_| |_| |_| |_|\___|_| .__/ \___|_|
        |___/                                               |_|

 PyromancyHelper — one-signature "play with EMBER, earn FBX".

 A thin, stateless, ownerless periphery for the (immutable, already-deployed)
 Pyromancy pool. It fuses two flows the pool exposes separately:

   1. BATCH SETTLE (the old PyromancyBatcher): loop the canonical round proofs
      the frontend located off-chain and finalize many omens in one tx. Each
      payout always goes to the omen's own pyromancer — finalizeForecast is
      permissionless — so this is purely altruistic/keeper plumbing and moves no
      EMBER through this contract. Winners keep their winnings as EMBER.

   2. SETTLE + CASH TO FBX: finalize the CALLER's winning omens and, in the same
      tx, redeem the freshly-won EMBER for FBX and forward it to the caller — so a
      win lands as real FBX in one click. Because finalizeForecast pays the
      pyromancer's own wallet (never the caller), the helper cannot receive the
      EMBER directly; it pulls EXACTLY the amount just won via transferFrom (the
      caller grants a one-time EMBER approval), redeems it on the pool's curve, and
      sends the resulting FBX on. "Keep as EMBER" is just flow #1.

 ── UNLIMITED-APPROVAL SAFETY (read before approving) ─────────────────────────
 The UI asks the user for an unlimited EMBER allowance so a single approval
 covers every future cash-out. That allowance is safe because this contract has
 NO code path that can abuse it:
   • It is immutable, ownerless and stateless — no admin, no upgrade, no setter,
     and it holds no funds between transactions.
   • Its ONLY transferFrom pulls from `msg.sender` (never an arbitrary `from`),
     and only the EXACT EMBER measured as won inside the same call (the balance
     delta produced by the caller's own finalizations).
   • That pulled EMBER is immediately redeemed and 100% of the resulting FBX is
     forwarded back to `msg.sender` in the same call.
 So even with an infinite allowance, the worst this contract can ever do is
 redeem a caller's just-won EMBER to FBX and hand it back. (Same trust basis as
 Pyromancy's own max FBX approval to EP.)

 ── ATOMICITY ─────────────────────────────────────────────────────────────────
 The cash path is all-or-nothing: if the redeem can't be filled (slippage below
 minFbxOut, or the pool momentarily holds no claimable FBX), the whole tx reverts
 — finalizations included. To settle now and keep the winnings as EMBER instead,
 use `finalizeMany`. The UI should set `minFbxOut` from `quoteRedeem` so a revert
 is informative, not a surprise.

 Fault-tolerant settling: each finalize is wrapped in try/catch, so an omen that
 was front-run (already finalized) or isn't resolvable yet is skipped rather than
 reverting the whole batch.
*/



interface IPyromancy {
    function finalizeForecast(
        uint256 forecastId,
        uint80 startRoundId,
        uint80 startPrevRoundId,
        uint80 resolveRoundId,
        uint80 resolvePrevRoundId,
        uint80 startNextGenesis,
        uint80 resolveNextGenesis
    ) external;

    /// @notice Burns `amount` EMBER from the caller and pays it FBX on the pool's
    ///         curve (net of the 5% recycle). Returns GROSS fbxOut; the net amount
    ///         is what actually arrives, so callers measure their FBX balance delta.
    function redeemEmber(uint256 amount, uint256 minFbxOut) external returns (uint256 fbxOut);
}

contract PyromancyHelper {
    using SafeERC20 for IERC20;

    /// @notice The Pyromancy pool this helper settles and redeems against.
    ///         Immutable — set once at construction, never changeable.
    IPyromancy public immutable pyromancy;

    /// @notice The EMBER token — Pyromancy is itself the ERC-20, so this is just
    ///         the pool address typed as IERC20 (used for the transferFrom pull).
    IERC20 public immutable EMBER;

    /// @notice FBX reward token on Polygon — hardcoded, matches Pyromancy's own
    ///         constant, so there is no setter to ever point the helper elsewhere.
    IERC20 public constant FBX = IERC20(0xD125443F38A69d776177c2B9c041f462936F8218);

    /// @dev One omen's canonical Chainlink round proof, exactly as
    ///      `finalizeForecast` expects it. The frontend locates these off-chain
    ///      (binary-searching the BTC/USD feed) before submitting.
    struct Settlement {
        uint256 forecastId;
        uint80 startRoundId;
        uint80 startPrevRoundId;
        uint80 resolveRoundId;
        uint80 resolvePrevRoundId;
        uint80 startNextGenesis;
        uint80 resolveNextGenesis;
    }

    event Settled(address indexed caller, uint256 settled);
    event CashedToFbx(address indexed user, uint256 emberRedeemed, uint256 fbxOut);

    // --- reentrancy guard (the cash paths move funds; settle-only does not) ---
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;
    uint256 private _status = _NOT_ENTERED;

    modifier nonReentrant() {
        require(_status != _ENTERED, "reentrant");
        _status = _ENTERED;
        _;
        _status = _NOT_ENTERED;
    }

    /// @param pyromancy_ The deployed Pyromancy pool address (also the EMBER ERC-20).
    constructor(IPyromancy pyromancy_) {
        pyromancy = pyromancy_;
        EMBER = IERC20(address(pyromancy_));
    }

    // ───────────────────────────── settle only ─────────────────────────────

    /// @notice Settle a batch of omens in one transaction; each payout goes to the
    ///         omen's own pyromancer (winners keep EMBER). A settle that reverts
    ///         (already finalized, not yet resolvable, bad proof) is skipped — it
    ///         never aborts the batch. No EMBER moves through this contract, so no
    ///         approval is needed and no reentrancy guard applies.
    /// @return settled How many omens were finalized successfully.
    function finalizeMany(Settlement[] calldata items) public returns (uint256 settled) {
        uint256 n = items.length;
        for (uint256 i; i < n; ) {
            if (_tryFinalize(items[i])) {
                unchecked { ++settled; }
            }
            unchecked { ++i; }
        }
        emit Settled(msg.sender, settled);
    }

    // ──────────────────────────── settle + cash ────────────────────────────

    /// @notice Finalize the caller's winning omens and cash ALL EMBER won in this
    ///         tx straight to FBX (one click: "play with EMBER, earn FBX").
    ///         Requires a prior EMBER approval to this contract.
    ///
    ///         Only the CALLER's freshly-finalized winnings are cashed: the EMBER
    ///         cashed is exactly the caller's balance delta across the finalize
    ///         loop, so finalizing someone else's omen in the same batch merely
    ///         pays that person (and costs the caller gas) — it can never pull
    ///         their funds. Atomic: if the redeem can't be filled the whole tx
    ///         reverts (use `finalizeMany` to settle and keep EMBER instead).
    /// @param items     Canonical round proofs for the caller's omens to settle.
    /// @param minFbxOut Minimum NET FBX the caller will accept (slippage floor);
    ///                  set from `quoteRedeem`. Pass 0 to disable (the pool still
    ///                  reverts a zero-FBX redeem).
    /// @return settled  How many omens were finalized.
    /// @return emberWon EMBER won across them (the amount redeemed).
    /// @return fbxOut   NET FBX sent to the caller.
    function finalizeAllAndCash(Settlement[] calldata items, uint256 minFbxOut)
        external
        nonReentrant
        returns (uint256 settled, uint256 emberWon, uint256 fbxOut)
    {
        uint256 emberBefore = EMBER.balanceOf(msg.sender);
        settled = finalizeMany(items); // internal call — msg.sender preserved
        emberWon = EMBER.balanceOf(msg.sender) - emberBefore;
        if (emberWon > 0) {
            fbxOut = _cash(msg.sender, emberWon, minFbxOut);
        }
    }

    /// @notice Finalize a single winning omen and cash it to FBX. Reverts if the
    ///         omen didn't pay the caller anything (already finalized, not yet
    ///         resolvable, or a losing call). Requires a prior EMBER approval.
    /// @return emberWon EMBER won (redeemed).
    /// @return fbxOut   NET FBX sent to the caller.
    function finalizeAndCash(Settlement calldata item, uint256 minFbxOut)
        external
        nonReentrant
        returns (uint256 emberWon, uint256 fbxOut)
    {
        uint256 emberBefore = EMBER.balanceOf(msg.sender);
        _tryFinalize(item);
        emberWon = EMBER.balanceOf(msg.sender) - emberBefore;
        require(emberWon > 0, "nothing won");
        fbxOut = _cash(msg.sender, emberWon, minFbxOut);
    }

    // ─────────────────────────────── internals ──────────────────────────────

    /// @dev Forward one omen's proof to the pool, swallowing a revert (front-run,
    ///      not yet resolvable, stale proof) so a batch never aborts on one item.
    function _tryFinalize(Settlement calldata s) internal returns (bool ok) {
        try
            pyromancy.finalizeForecast(
                s.forecastId,
                s.startRoundId,
                s.startPrevRoundId,
                s.resolveRoundId,
                s.resolvePrevRoundId,
                s.startNextGenesis,
                s.resolveNextGenesis
            )
        {
            ok = true;
        } catch {
            // skip — see contract header
        }
    }

    /// @dev Pull `emberAmount` of just-won EMBER from `user` (needs approval),
    ///      redeem it on the pool's curve, and forward 100% of the resulting FBX.
    ///      FBX is measured as a balance delta (redeemEmber returns GROSS but pays
    ///      NET), so the caller receives exactly what the redemption produced and
    ///      no FBX is ever stranded here. The full pulled EMBER is burned by the
    ///      redeem, so no EMBER is stranded either.
    function _cash(address user, uint256 emberAmount, uint256 minFbxOut) internal returns (uint256 fbxOut) {
        EMBER.safeTransferFrom(user, address(this), emberAmount);

        uint256 fbxBefore = FBX.balanceOf(address(this));
        pyromancy.redeemEmber(emberAmount, minFbxOut); // burns helper's EMBER, FBX -> helper
        fbxOut = FBX.balanceOf(address(this)) - fbxBefore;

        if (fbxOut > 0) {
            FBX.safeTransfer(user, fbxOut);
        }
        emit CashedToFbx(user, emberAmount, fbxOut);
    }
}