// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/access/Ownable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

pragma solidity ^0.8.20;

import {Context} from "../utils/Context.sol";

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * The initial owner is set to the address provided by the deployer. This can
 * later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    /**
     * @dev The caller account is not authorized to perform an operation.
     */
    error OwnableUnauthorizedAccount(address account);

    /**
     * @dev The owner is not a valid owner account. (eg. `address(0)`)
     */
    error OwnableInvalidOwner(address owner);

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
     */
    constructor(address initialOwner) {
        if (initialOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(initialOwner);
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        if (owner() != _msgSender()) {
            revert OwnableUnauthorizedAccount(_msgSender());
        }
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        if (newOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Permit.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Permit.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 *
 * ==== Security Considerations
 *
 * There are two important considerations concerning the use of `permit`. The first is that a valid permit signature
 * expresses an allowance, and it should not be assumed to convey additional meaning. In particular, it should not be
 * considered as an intention to spend the allowance in any specific way. The second is that because permits have
 * built-in replay protection and can be submitted by anyone, they can be frontrun. A protocol that uses permits should
 * take this into consideration and allow a `permit` call to fail. Combining these two aspects, a pattern that may be
 * generally recommended is:
 *
 * ```solidity
 * function doThingWithPermit(..., uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) public {
 *     try token.permit(msg.sender, address(this), value, deadline, v, r, s) {} catch {}
 *     doThing(..., value);
 * }
 *
 * function doThing(..., uint256 value) public {
 *     token.safeTransferFrom(msg.sender, address(this), value);
 *     ...
 * }
 * ```
 *
 * Observe that: 1) `msg.sender` is used as the owner, leaving no ambiguity as to the signer intent, and 2) the use of
 * `try/catch` allows the permit to fail and makes the code tolerant to frontrunning. (See also
 * {SafeERC20-safeTransferFrom}).
 *
 * Additionally, note that smart contract wallets (such as Argent or Safe) are not able to produce permit signatures, so
 * contracts should have entry points that don't rely on permit.
 */
interface IERC20Permit {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
     * over the EIP712-formatted function arguments.
     * - the signature must use ``owner``'s current nonce (see {nonces}).
     *
     * For more information on the signature format, see the
     * https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
     * section].
     *
     * CAUTION: See Security Considerations above.
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the current nonce for `owner`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``owner``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
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

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";
import {IERC20Permit} from "../extensions/IERC20Permit.sol";
import {Address} from "../../../utils/Address.sol";

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    using Address for address;

    /**
     * @dev An operation with an ERC20 token failed.
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
        _callOptionalReturn(token, abi.encodeCall(token.transfer, (to, value)));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transferFrom, (from, to, value)));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        forceApprove(token, spender, oldAllowance + value);
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `requestedDecrease`. If `token` returns no
     * value, non-reverting calls are assumed to be successful.
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
     */
    function forceApprove(IERC20 token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeCall(token.approve, (spender, value));

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeCall(token.approve, (spender, 0)));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address-functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data);
        if (returndata.length != 0 && !abi.decode(returndata, (bool))) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silents catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20 token, bytes memory data) private returns (bool) {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We cannot use {Address-functionCall} here since this should return false
        // and not revert is the subcall reverts.

        (bool success, bytes memory returndata) = address(token).call(data);
        return success && (returndata.length == 0 || abi.decode(returndata, (bool))) && address(token).code.length > 0;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC721/IERC721.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC721/IERC721.sol)

pragma solidity ^0.8.20;

import {IERC165} from "../../utils/introspection/IERC165.sol";

/**
 * @dev Required interface of an ERC721 compliant contract.
 */
interface IERC721 is IERC165 {
    /**
     * @dev Emitted when `tokenId` token is transferred from `from` to `to`.
     */
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables `approved` to manage the `tokenId` token.
     */
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables or disables (`approved`) `operator` to manage all of its assets.
     */
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    /**
     * @dev Returns the number of tokens in ``owner``'s account.
     */
    function balanceOf(address owner) external view returns (uint256 balance);

    /**
     * @dev Returns the owner of the `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function ownerOf(uint256 tokenId) external view returns (address owner);

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon
     *   a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes calldata data) external;

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
     * are aware of the ERC721 protocol to prevent tokens from being forever locked.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must have been allowed to move this token by either {approve} or
     *   {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon
     *   a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId) external;

    /**
     * @dev Transfers `tokenId` token from `from` to `to`.
     *
     * WARNING: Note that the caller is responsible to confirm that the recipient is capable of receiving ERC721
     * or else they may be permanently lost. Usage of {safeTransferFrom} prevents loss, though the caller must
     * understand this adds an external call which potentially creates a reentrancy vulnerability.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token by either {approve} or {setApprovalForAll}.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 tokenId) external;

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account.
     * The approval is cleared when the token is transferred.
     *
     * Only a single account can be approved at a time, so approving the zero address clears previous approvals.
     *
     * Requirements:
     *
     * - The caller must own the token or be an approved operator.
     * - `tokenId` must exist.
     *
     * Emits an {Approval} event.
     */
    function approve(address to, uint256 tokenId) external;

    /**
     * @dev Approve or remove `operator` as an operator for the caller.
     * Operators can call {transferFrom} or {safeTransferFrom} for any token owned by the caller.
     *
     * Requirements:
     *
     * - The `operator` cannot be the address zero.
     *
     * Emits an {ApprovalForAll} event.
     */
    function setApprovalForAll(address operator, bool approved) external;

    /**
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) external view returns (address operator);

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}
     */
    function isApprovedForAll(address owner, address operator) external view returns (bool);
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC721/IERC721Receiver.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC721/IERC721Receiver.sol)

pragma solidity ^0.8.20;

/**
 * @title ERC721 token receiver interface
 * @dev Interface for any contract that wants to support safeTransfers
 * from ERC721 asset contracts.
 */
interface IERC721Receiver {
    /**
     * @dev Whenever an {IERC721} `tokenId` token is transferred to this contract via {IERC721-safeTransferFrom}
     * by `operator` from `from`, this function is called.
     *
     * It must return its Solidity selector to confirm the token transfer.
     * If any other value is returned or the interface is not implemented by the recipient, the transfer will be
     * reverted.
     *
     * The selector can be obtained in Solidity with `IERC721Receiver.onERC721Received.selector`.
     */
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4);
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Address.sol)

pragma solidity ^0.8.20;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev The ETH balance of the account is not enough to perform the operation.
     */
    error AddressInsufficientBalance(address account);

    /**
     * @dev There's no code at `target` (it is not a contract).
     */
    error AddressEmptyCode(address target);

    /**
     * @dev A call to an address target failed. The target may have reverted.
     */
    error FailedInnerCall();

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.8.20/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        if (address(this).balance < amount) {
            revert AddressInsufficientBalance(address(this));
        }

        (bool success, ) = recipient.call{value: amount}("");
        if (!success) {
            revert FailedInnerCall();
        }
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason or custom error, it is bubbled
     * up by this function (like regular Solidity function calls). However, if
     * the call reverted with no returned reason, this function reverts with a
     * {FailedInnerCall} error.
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        if (address(this).balance < value) {
            revert AddressInsufficientBalance(address(this));
        }
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and reverts if the target
     * was not a contract or bubbling up the revert reason (falling back to {FailedInnerCall}) in case of an
     * unsuccessful call.
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata
    ) internal view returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            // only check if target is a contract if the call was successful and the return data is empty
            // otherwise we already know that it was a contract
            if (returndata.length == 0 && target.code.length == 0) {
                revert AddressEmptyCode(target);
            }
            return returndata;
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and reverts if it wasn't, either by bubbling the
     * revert reason or with a default {FailedInnerCall} error.
     */
    function verifyCallResult(bool success, bytes memory returndata) internal pure returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            return returndata;
        }
    }

    /**
     * @dev Reverts with returndata if present. Otherwise reverts with {FailedInnerCall}.
     */
    function _revert(bytes memory returndata) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert FailedInnerCall();
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/utils/Context.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

pragma solidity ^0.8.20;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/introspection/IERC165.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[EIP].
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
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/utils/Pausable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Pausable.sol)

pragma solidity ^0.8.20;

import {Context} from "../utils/Context.sol";

/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract Pausable is Context {
    bool private _paused;

    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    /**
     * @dev The operation failed because the contract is paused.
     */
    error EnforcedPause();

    /**
     * @dev The operation failed because the contract is not paused.
     */
    error ExpectedPause();

    /**
     * @dev Initializes the contract in unpaused state.
     */
    constructor() {
        _paused = false;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    modifier whenNotPaused() {
        _requireNotPaused();
        _;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is paused.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    modifier whenPaused() {
        _requirePaused();
        _;
    }

    /**
     * @dev Returns true if the contract is paused, and false otherwise.
     */
    function paused() public view virtual returns (bool) {
        return _paused;
    }

    /**
     * @dev Throws if the contract is paused.
     */
    function _requireNotPaused() internal view virtual {
        if (paused()) {
            revert EnforcedPause();
        }
    }

    /**
     * @dev Throws if the contract is not paused.
     */
    function _requirePaused() internal view virtual {
        if (!paused()) {
            revert ExpectedPause();
        }
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        _paused = true;
        emit Paused(_msgSender());
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    function _unpause() internal virtual whenPaused {
        _paused = false;
        emit Unpaused(_msgSender());
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/ReentrancyGuard.sol)

pragma solidity ^0.8.20;

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuard {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant NOT_ENTERED = 1;
    uint256 private constant ENTERED = 2;

    uint256 private _status;

    /**
     * @dev Unauthorized reentrant call.
     */
    error ReentrancyGuardReentrantCall();

    constructor() {
        _status = NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be NOT_ENTERED
        if (_status == ENTERED) {
            revert ReentrancyGuardReentrantCall();
        }

        // Any calls to nonReentrant after this point will fail
        _status = ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == ENTERED;
    }
}

// ============================================================
// FILE: packages/contracts/PermalockVault_V5.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import {IERC721Receiver} from "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";

/* -----------------------------
   External interfaces
------------------------------ */

interface IVotingEscrow {
    struct LockedBalance {
        int128 amount;
        uint256 end;
        bool isPermanent;
    }
    function increaseAmount(uint256 tokenId, uint256 value) external;
    function increaseUnlockTime(uint256 tokenId, uint256 _lockDuration) external;
    function merge(uint256 from, uint256 to) external;
    function locked(uint256 tokenId) external view returns (LockedBalance memory);
    function ownerOf(uint256 tokenId) external view returns (address);
    function safeTransferFrom(address from, address to, uint256 tokenId) external;
    function balanceOfNFT(uint256 tokenId) external view returns (uint256);
    function unlockPermanent(uint256 tokenId) external;
}

interface IiAEROToken { function mint(address to, uint256 amount) external; }

interface ILIQToken {
    function mint(address to, uint256 amount) external;
    function totalSupply() external view returns (uint256);
    function MAX_SUPPLY() external view returns (uint256);
}

/* -----------------------------
            Contract
------------------------------ */

contract PermalockVault_V5 is ReentrancyGuard, Ownable, Pausable, IERC721Receiver {
    using SafeERC20 for IERC20;
    using Address for address;

    // Immutable addresses
    address public immutable AERO;
    address public immutable veAERO;
    address public immutable iAERO;
    address public immutable LIQ;
    address public immutable treasury;

    // Constants
    uint256 public constant PROTOCOL_FEE_BPS = 500;    // 5%
    uint256 public constant BPS_BASE = 10_000;
    uint256 public constant MAX_LOCK_DURATION = 4 * 365 days;
    uint256 public constant WEEK = 7 days;
    uint256 public constant MIN_DEPOSIT = 1e18;
    uint256 public constant MAX_SINGLE_LOCK = 10_000_000 * 1e18;
    uint256 public constant TREASURY_LIQ_BPS = 2_000; // 20% of user LIQ mints go to treasury

    // Emissions halving: every 5,000,000 LIQ minted
    uint256 public constant HALVING_STEP = 5_000_000 * 1e18;

    // Emissions state
    uint256 public baseEmissionRate = 1e18; // 1 LIQ per 1 iAERO initially
    uint256 public totalLIQMinted;

    // Accounting
    uint256 public totalAEROLocked;
    uint256 public totalIAEROMinted;

    // NFT management
    uint256 public primaryNFT;
    uint256[] public additionalNFTs;
    mapping(uint256 => bool) public isManaged;
    mapping(uint256 => uint256) public nftLockedAmount;
    uint256 public lastRebaseTime;

    // Auth
    mapping(address => bool) public authorized;
    mapping(address => bool) public authorizedTargets;
    address public votingManager;
    address public rewardsCollector;
    address public keeper;

    // Options
    bool public emergencyPause;

    // Guarded ERC721 intake
    address private _expectedNftSender;
    uint256 private _expectedNftId;
    bool private _expectingNft;

    // ------- Rescue (break-glass) -------
    uint256 public constant RESCUE_DELAY = 48 hours;
    address public rescueSafe;

    struct RescuePlan {
        address to;
        uint64 eta;
        bool active;
    }
    mapping(uint256 => RescuePlan) public rescuePlan;

    // --------- Function selector gating for veAERO calls ---------
    bytes4 private constant SEL_INCREASE_AMOUNT     = bytes4(keccak256("increaseAmount(uint256,uint256)"));
    bytes4 private constant SEL_INCREASE_UNLOCKTIME = bytes4(keccak256("increaseUnlockTime(uint256,uint256)"));
    bytes4 private constant SEL_UNLOCK_PERMANENT = bytes4(keccak256("unlockPermanent(uint256)"));
    bytes4 private constant SEL_MERGE               = bytes4(keccak256("merge(uint256,uint256)"));
    // ERC721 transfers (must be blocked via executeNFTAction)
    bytes4 private constant SEL_ERC721_TRANSFERFROM = 0x23b872dd; // transferFrom(address,address,uint256)
    bytes4 private constant SEL_ERC721_SAFE_3       = 0x42842e0e; // safeTransferFrom(address,address,uint256)
    bytes4 private constant SEL_ERC721_SAFE_4       = 0xb88d4fde; // safeTransferFrom(address,address,uint256,bytes)

    // Events
    event DepositedAERO(address indexed user, uint256 aeroAmount, uint256 iAeroToUser, uint256 iAeroToTreasury, uint256 liqMinted);
    event DepositedVeNFT(address indexed user, uint256 indexed tokenId, uint256 aeroAmount, uint256 iAeroToUser, uint256 iAeroToTreasury, uint256 liqMinted);
    event NFTIncreased(uint256 indexed tokenId, uint256 amount);
    event NFTsMerged(uint256 indexed fromId, uint256 indexed toId);
    event NFTRebased(uint256 indexed tokenId, uint256 newUnlockTime);
    event HalvingReached(uint256 halvingIndex, uint256 totalMinted);
    event EmissionRateUpdated(uint256 newRate);
    event MaintenancePerformed(bool merged, bool rebased);
    event EmergencyPauseSet(bool paused);
    event AuthorizedSet(address indexed account, bool authorized);
    event AuthorizedTargetSet(address indexed target, bool authorized);
    event KeeperSet(address indexed keeper);
    event VotingManagerSet(address indexed manager);
    event RewardsCollectorSet(address indexed collector);
    event LIQMinted(address indexed user, uint256 toUser, uint256 toTreasury);
    event UnexpectedERC721Received(address indexed token, address indexed operator, address indexed from, uint256 tokenId);
    event StrandedVeNFTRescued(uint256 indexed tokenId, address indexed to);
    event RewardSwept(address indexed token, address indexed to, uint256 amount, address indexed caller);
    event RewardsSweepCompleted(address indexed to, uint256 tokenCount, address indexed caller);

    // Rescue events
    event RescueSafeSet(address indexed safe);
    event ManagedRescueProposed(uint256 indexed tokenId, address indexed to, uint64 eta, string reason);
    event ManagedRescueCancelled(uint256 indexed tokenId);
    event ManagedRescueExecuted(uint256 indexed tokenId, address indexed to);

    // Modifiers
    modifier onlyAuthorized() {
        require(authorized[msg.sender] || msg.sender == owner(), "Not authorized");
        _;
    }
    modifier onlyKeeperOrOwner() {
        require(msg.sender == keeper || msg.sender == owner(), "Not keeper or owner");
        _;
    }
    modifier notEmergencyPaused() {
        require(!emergencyPause, "Emergency pause active");
        _;
    }

    constructor(
        address _iAERO,
        address _LIQ,
        address _AERO,
        address _veAERO,
        address _treasury
    ) Ownable(msg.sender) {
        require(_iAERO != address(0), "Invalid iAERO");
        require(_LIQ != address(0), "Invalid LIQ");
        require(_AERO != address(0), "Invalid AERO");
        require(_veAERO != address(0), "Invalid veAERO");
        require(_treasury != address(0), "Invalid treasury");

        // enforce 18-decimal tokens to match economic constants
        require(IERC20Metadata(_AERO).decimals() == 18, "AERO must be 18d");
        require(IERC20Metadata(_iAERO).decimals() == 18, "iAERO must be 18d");
        require(IERC20Metadata(_LIQ).decimals() == 18, "LIQ must be 18d");

        iAERO = _iAERO;
        LIQ = _LIQ;
        AERO = _AERO;
        veAERO = _veAERO;
        treasury = _treasury;

        // Allow executeNFTAction -> veAERO calls (merge, extend, increase) BUT gated by selector allowlist.
        authorizedTargets[_veAERO] = true;
    }

    /* ------------ Preview helpers ------------ */

    function previewDeposit(uint256 aeroAmount)
        external
        view
        returns (uint256 iAeroToUser, uint256 iAeroToTreasury, uint256 liqToUser)
    {
        require(aeroAmount >= MIN_DEPOSIT && aeroAmount <= MAX_SINGLE_LOCK, "Invalid amount");
        iAeroToTreasury = (aeroAmount * PROTOCOL_FEE_BPS) / BPS_BASE;
        iAeroToUser = aeroAmount - iAeroToTreasury;
        liqToUser = calculateLIQAmount(iAeroToUser);
    }

    function previewDepositVeNFT(uint256 tokenId)
        external
        view
        returns (uint256 iAeroToUser, uint256 iAeroToTreasury, uint256 liqToUser, uint256 lockedAmount)
    {
        IVotingEscrow.LockedBalance memory lb = IVotingEscrow(veAERO).locked(tokenId);
        require(lb.amount > 0, "No locked balance");

        lockedAmount     = uint256(uint128(lb.amount));
        iAeroToTreasury  = (lockedAmount * PROTOCOL_FEE_BPS) / BPS_BASE;
        iAeroToUser      = lockedAmount - iAeroToTreasury;
        liqToUser        = calculateLIQAmount(iAeroToUser);
    }

    function MAXTIME() external pure returns (uint256) { return MAX_LOCK_DURATION; }

    /* ------------ Deposits ------------ */

    /// @notice Deposit AERO to increase the *existing* primary veNFT (no auto-create).
    function deposit(uint256 amount) external nonReentrant whenNotPaused notEmergencyPaused {
        require(amount >= MIN_DEPOSIT, "Below minimum");
        require(amount <= MAX_SINGLE_LOCK, "Exceeds maximum");
        require(primaryNFT != 0, "No primary NFT");
        require(_isNFTValid(primaryNFT), "Primary NFT invalid");

        IERC20(AERO).safeTransferFrom(msg.sender, address(this), amount);

        // Increase existing lock only
        IERC20(AERO).forceApprove(veAERO, amount);
        IVotingEscrow(veAERO).increaseAmount(primaryNFT, amount);
        IERC20(AERO).forceApprove(veAERO, 0);
        nftLockedAmount[primaryNFT] += amount;
        emit NFTIncreased(primaryNFT, amount);

        // Optional auto-merge (no extend here)
        if (additionalNFTs.length > 0) { _mergeAllNFTs(); }

        // Mint iAERO & LIQ
        uint256 iAeroToTreasury = (amount * PROTOCOL_FEE_BPS) / BPS_BASE;
        uint256 iAeroToUser = amount - iAeroToTreasury;

        totalAEROLocked += amount;
        totalIAEROMinted += amount;

        IiAEROToken(iAERO).mint(msg.sender, iAeroToUser);
        IiAEROToken(iAERO).mint(treasury, iAeroToTreasury);
        

        uint256 liqToUser = calculateLIQAmount(iAeroToUser);
        if (liqToUser > 0) {
            _mintLIQWithCapSplit(msg.sender, liqToUser);
        }

        emit DepositedAERO(msg.sender, amount, iAeroToUser, iAeroToTreasury, liqToUser);
    }

    /// @notice Deposit a user’s veAERO NFT to be managed by the vault (no auto-extend).
    function depositVeNFT(uint256 tokenId) external nonReentrant whenNotPaused notEmergencyPaused {
        require(!isManaged[tokenId], "NFT already managed");
        require(IVotingEscrow(veAERO).ownerOf(tokenId) == msg.sender, "Not NFT owner");

        IVotingEscrow.LockedBalance memory lb = IVotingEscrow(veAERO).locked(tokenId);
        require(lb.amount > 0, "No locked balance");
        uint256 lockedAmount = uint256(uint128(lb.amount));
        require(lockedAmount >= MIN_DEPOSIT, "Below minimum");
        require(lb.isPermanent || lb.end > block.timestamp, "NFT expired");

        // Guard intake to prevent stranded transfers
        _expectedNftSender = msg.sender;
        _expectedNftId = tokenId;
        _expectingNft = true;

        IVotingEscrow(veAERO).safeTransferFrom(msg.sender, address(this), tokenId);

        // Clear guard (safety)
        if (_expectingNft) {
            _expectingNft = false;
            _expectedNftSender = address(0);
            _expectedNftId = 0;
        }

        // Mint iAERO & LIQ
        uint256 iAeroToTreasury = (lockedAmount * PROTOCOL_FEE_BPS) / BPS_BASE;
        uint256 iAeroToUser = lockedAmount - iAeroToTreasury;

        totalAEROLocked += lockedAmount;
        totalIAEROMinted += lockedAmount;

        IiAEROToken(iAERO).mint(msg.sender, iAeroToUser);
        IiAEROToken(iAERO).mint(treasury, iAeroToTreasury);

        uint256 liqToUser = calculateLIQAmount(iAeroToUser);
        if (liqToUser > 0) {
            _mintLIQWithCapSplit(msg.sender, liqToUser);
        }

        // Track management
        isManaged[tokenId] = true;
        nftLockedAmount[tokenId] = lockedAmount;

        // Choose primary if empty/invalid; do NOT extend here.
        if (primaryNFT == 0 || !_isNFTValid(primaryNFT)) {
            primaryNFT = tokenId;
            lastRebaseTime = block.timestamp;
        } else {
            additionalNFTs.push(tokenId);
        }

        // Optional: merge (no extend)
        if (additionalNFTs.length > 0) _mergeAllNFTs();

        emit DepositedVeNFT(msg.sender, tokenId, lockedAmount, iAeroToUser, iAeroToTreasury, liqToUser);
    }

    /* ------------ Maintenance ------------ */

    function performMaintenance() external onlyKeeperOrOwner nonReentrant {
        bool merged = false;
        bool rebased = false;

        if (additionalNFTs.length > 0) { _mergeAllNFTs(); merged = true; }
        if (primaryNFT != 0 && _needsRebase()) { _rebasePrimaryNFT(); rebased = true; }

        emit MaintenancePerformed(merged, rebased);
    }

    /* ------------ NFT actions for managers (STRICT) ------------ */

    function _selector(bytes calldata data) private pure returns (bytes4 sel) {
        assembly { sel := calldataload(data.offset) }
    }

    function executeNFTAction(
        uint256 tokenId,
        address target,
        bytes calldata data
    ) external onlyAuthorized nonReentrant returns (bytes memory) {
        require(isManaged[tokenId], "NFT not managed");
        require(authorizedTargets[target], "Target not authorized");
        require(target != address(0) && target.code.length > 0, "Invalid target");

        // If target is veAERO, only allow merge/increaseAmount/increaseUnlockTime/unlockPermanent; block transfers.
        if (target == veAERO) {
            bytes4 s = _selector(data);
            require(
                s == SEL_INCREASE_AMOUNT ||
                s == SEL_INCREASE_UNLOCKTIME ||
                s == SEL_MERGE ||
                s == SEL_UNLOCK_PERMANENT,
                "veAERO call not allowed"
            );
            require(
                s != SEL_ERC721_TRANSFERFROM &&
                s != SEL_ERC721_SAFE_3 &&
                s != SEL_ERC721_SAFE_4,
                "veAERO transfer blocked"
            );
        }
        return target.functionCall(data);
    }

    function unlockPermanentManaged(uint256 tokenId)
        external
        onlyAuthorized
        nonReentrant
    {
        require(isManaged[tokenId], "NFT not managed");
        IVotingEscrow(veAERO).unlockPermanent(tokenId);
    }


    /* ------------ Sweep / Rescue ------------ */

    function sweepERC20(address[] calldata tokens, address to)
        external
        nonReentrant
        returns (uint256[] memory amounts)
    {
        require(to != address(0), "Invalid recipient");
        
        bool isOwner = (msg.sender == owner());
        bool isCollector = (msg.sender == rewardsCollector);
        require(isOwner || isCollector, "Not authorized");
        
        // If the rewardsCollector is calling, force destination to itself
        if (isCollector) {
            require(to == msg.sender, "Collector must sweep to self");
        }
        
        amounts = new uint256[](tokens.length);
        
        for (uint256 i = 0; i < tokens.length; ) {
            address t = tokens[i];
            if (t != address(0) && t != iAERO && t != LIQ) {
                // Owner cannot sweep AERO (safety), but collector can (for rewards)
                if (isCollector || t != AERO) {
                    uint256 bal = IERC20(t).balanceOf(address(this));
                    if (bal > 0) {
                        IERC20(t).safeTransfer(to, bal);
                        amounts[i] = bal;
                    }
                }
            }
            unchecked { ++i; }
        }
    }

    function sweepETH(address to) external nonReentrant returns (uint256 amount) {
        require(to != address(0), "Invalid recipient");
        
        bool isOwner = (msg.sender == owner());
        bool isCollector = (msg.sender == rewardsCollector);
        require(isOwner || isCollector, "Not authorized");
        
        if (isCollector) {
            require(to == msg.sender, "Collector must sweep to self");
        }
        
        amount = address(this).balance;
        if (amount > 0) {
            (bool ok, ) = payable(to).call{value: amount}("");
            require(ok, "ETH transfer failed");
        }
    }


    /// @notice Rescue a stranded veAERO NFT currently owned by the vault but not managed.
    function rescueVeNFT(uint256 tokenId, address to) external onlyOwner nonReentrant {
        require(to != address(0), "Invalid recipient");
        require(IVotingEscrow(veAERO).ownerOf(tokenId) == address(this), "Not owned by vault");
        require(!isManaged[tokenId] && nftLockedAmount[tokenId] == 0, "Managed NFT");
        IVotingEscrow(veAERO).safeTransferFrom(address(this), to, tokenId);
        emit StrandedVeNFTRescued(tokenId, to);
    }

    /// @notice Rescue a non-veAERO ERC721 sent by mistake.
    function rescueERC721(address token, uint256 tokenId, address to) external onlyOwner nonReentrant {
        require(to != address(0), "Invalid recipient");
        require(token != veAERO, "Use rescueVeNFT");
        IERC721(token).safeTransferFrom(address(this), to, tokenId);
    }

    /* ------------ Managed Rescue (break-glass, time-locked) ------------ */

    function setRescueSafe(address _safe) external onlyOwner {
        require(_safe != address(0), "Invalid rescueSafe");
        rescueSafe = _safe;
        emit RescueSafeSet(_safe);
    }

    /// @dev Must be paused + in emergency to propose a rescue.
    function proposeManagedRescue(uint256 tokenId, string calldata reason)
        external
        onlyOwner
    {
        require(paused(), "Pause required");
        require(emergencyPause, "Emergency required");
        require(rescueSafe != address(0), "RescueSafe not set");
        require(isManaged[tokenId], "Not managed");
        require(nftLockedAmount[tokenId] > 0, "Empty lock");

        uint64 eta = uint64(block.timestamp + RESCUE_DELAY);
        rescuePlan[tokenId] = RescuePlan({ to: rescueSafe, eta: eta, active: true });
        emit ManagedRescueProposed(tokenId, rescueSafe, eta, reason);
    }

    function cancelManagedRescue(uint256 tokenId) external onlyOwner {
        require(rescuePlan[tokenId].active, "No plan");
        delete rescuePlan[tokenId];
        emit ManagedRescueCancelled(tokenId);
    }

    function executeManagedRescue(uint256 tokenId)
        external
        onlyOwner
        nonReentrant
    {
        RescuePlan memory p = rescuePlan[tokenId];
        require(p.active, "No plan");
        require(block.timestamp >= p.eta, "Too early");
        require(paused(), "Pause required");
        require(emergencyPause, "Emergency required");
        require(isManaged[tokenId], "Not managed");
        require(IVotingEscrow(veAERO).ownerOf(tokenId) == address(this), "Not owned");

        // Transfer out to the predeclared safe
        IVotingEscrow(veAERO).safeTransferFrom(address(this), p.to, tokenId);

        // Clean up accounting/bookkeeping
        isManaged[tokenId] = false;
        nftLockedAmount[tokenId] = 0;
        if (primaryNFT == tokenId) {
            primaryNFT = 0; // allow a later promotion in _mergeAllNFTs
        }
        // remove from additionalNFTs list if present
        uint256 len = additionalNFTs.length;
        for (uint256 i = 0; i < len; ) {
            if (additionalNFTs[i] == tokenId) {
                additionalNFTs[i] = additionalNFTs[len - 1];
                additionalNFTs.pop();
                break;
            }
            unchecked { ++i; }
        }

        delete rescuePlan[tokenId];
        emit ManagedRescueExecuted(tokenId, p.to);
    }

    /* ------------ LIQ emissions ------------ */

    function calculateLIQAmount(uint256 iAeroAmount) public view returns (uint256) {
        uint256 halvings = totalLIQMinted / HALVING_STEP;
        if (halvings > 100) halvings = 100; 
        uint256 currentRate = baseEmissionRate >> halvings;
        return (iAeroAmount * currentRate) / 1e18;
    }


    function getCurrentEmissionRate() external view returns (uint256) {
        uint256 halvings = totalLIQMinted / HALVING_STEP;
        if (halvings > 100) halvings = 100; // Add this for consistency
        return baseEmissionRate >> halvings;
    }

    /* ------------ Admin ------------ */

    function setKeeper(address _keeper) external onlyOwner {
        require(_keeper != address(0), "Invalid keeper");
        keeper = _keeper; emit KeeperSet(_keeper);
    }

    function setAuthorized(address account, bool authorized_) external onlyOwner {
        authorized[account] = authorized_;
        emit AuthorizedSet(account, authorized_);
    }

    function setAuthorizedTarget(address target, bool authorized_) external onlyOwner {
        authorizedTargets[target] = authorized_;
        emit AuthorizedTargetSet(target, authorized_);
    }

    function setVotingManager(address _votingManager) external onlyOwner {
        require(_votingManager != address(0), "Invalid voting manager");
        votingManager = _votingManager; authorized[_votingManager] = true; emit VotingManagerSet(_votingManager);
    }

    function setRewardsCollector(address _rewardsCollector) external onlyOwner {
        require(_rewardsCollector != address(0), "Invalid rewards collector");
        rewardsCollector = _rewardsCollector; authorized[_rewardsCollector] = true; emit RewardsCollectorSet(_rewardsCollector);
    }

    /// @notice Can only be set before any LIQ is minted (same rule as before).
    function setBaseEmissionRate(uint256 _rate) external onlyOwner {
        require(totalLIQMinted == 0, "LIQ already minted");
        require(_rate > 0 && _rate <= 100 * 1e18, "Invalid rate");
        baseEmissionRate = _rate; emit EmissionRateUpdated(_rate);
    }

    function setEmergencyPause(bool _paused) external onlyOwner {
        emergencyPause = _paused; emit EmergencyPauseSet(_paused);
    }

    function pause() external onlyOwner { _pause(); }
    function unpause() external onlyOwner { _unpause(); }

    /* ------------ Views ------------ */

    function vaultStatus() 
        external 
        view 
        returns (
            uint256 totalUserDeposits,
            uint256 totalProtocolOwned,
            uint256 actualFeesCollected,
            uint256 virtualFeesOwed,
            uint256 primaryNFTId,
            uint256 primaryNFTBalance,
            uint256 primaryNFTVotingPower,
            uint256 primaryNFTUnlockTime,
            uint256 additionalNFTCount,
            bool needsRebase_,
            bool needsMerge_
        ) 
    {
        totalUserDeposits  = totalAEROLocked;
        totalProtocolOwned = (totalIAEROMinted * PROTOCOL_FEE_BPS) / BPS_BASE;
        actualFeesCollected = totalProtocolOwned;
        virtualFeesOwed    = 0;

        primaryNFTId       = primaryNFT;
        additionalNFTCount = additionalNFTs.length;
        needsMerge_        = additionalNFTCount > 0;
        needsRebase_       = _needsRebase();

        if (primaryNFTId != 0 && _isNFTValid(primaryNFTId)) {
            primaryNFTBalance = nftLockedAmount[primaryNFTId];
            // unlock time
            try IVotingEscrow(veAERO).locked(primaryNFTId) returns (IVotingEscrow.LockedBalance memory lb) {
                primaryNFTUnlockTime = lb.end;
            } catch {}
            // voting power
            try IVotingEscrow(veAERO).balanceOfNFT(primaryNFTId) returns (uint256 power) {
                primaryNFTVotingPower = power;
            } catch {}
        }
    }

    function getManagedNFTs() external view returns (uint256[] memory) {
        uint256 validCount = 0;
        if (primaryNFT != 0 && _isNFTValid(primaryNFT)) validCount++;
        for (uint256 i = 0; i < additionalNFTs.length; i++) {
            if (additionalNFTs[i] != 0 && isManaged[additionalNFTs[i]]) validCount++;
        }

        uint256[] memory result = new uint256[](validCount);
        uint256 idx = 0;
        if (primaryNFT != 0 && _isNFTValid(primaryNFT)) result[idx++] = primaryNFT;
        for (uint256 i = 0; i < additionalNFTs.length; i++) {
            if (additionalNFTs[i] != 0 && isManaged[additionalNFTs[i]]) result[idx++] = additionalNFTs[i];
        }
        return result;
    }

    function getNFTInfo(uint256 tokenId) external view returns (
        bool managed,
        uint256 lockedAmount,
        uint256 votingPower,
        uint256 unlockTime,
        bool isPrimary,
        bool isPermanent
    ) {
        managed = isManaged[tokenId];
        lockedAmount = nftLockedAmount[tokenId];
        isPrimary = (tokenId == primaryNFT);

        if (managed && lockedAmount > 0) {
            try IVotingEscrow(veAERO).locked(tokenId) returns (IVotingEscrow.LockedBalance memory lb) {
                unlockTime = lb.end;
                isPermanent = lb.isPermanent;
            } catch {}
            try IVotingEscrow(veAERO).balanceOfNFT(tokenId) returns (uint256 power) {
                votingPower = power;
            } catch {}
        }
    }

    function getTotalValueLocked() external view returns (uint256) { return totalAEROLocked; }
    function getProtocolShareBPS() external pure returns (uint256) { return PROTOCOL_FEE_BPS; }
    function getProtocolEffectiveShare() external pure returns (uint256) { return PROTOCOL_FEE_BPS; }

    /* ------------ Internal helpers ------------ */
    function _mintLIQWithCapSplit(address user, uint256 liqToUser) private {
        uint256 remaining = ILIQToken(LIQ).MAX_SUPPLY() - ILIQToken(LIQ).totalSupply();
        require(remaining > 0, "LIQ cap reached");

        uint256 denom = BPS_BASE + TREASURY_LIQ_BPS;
        uint256 maxUserMint = (remaining * BPS_BASE) / denom;
        if (liqToUser > maxUserMint) { liqToUser = maxUserMint; }
        if (liqToUser == 0) return;

        ILIQToken(LIQ).mint(user, liqToUser);

        uint256 liqToTreasury = (liqToUser * TREASURY_LIQ_BPS) / BPS_BASE;
        if (liqToTreasury > 0) {
            ILIQToken(LIQ).mint(treasury, liqToTreasury);
        }
        _updateLIQSupply(liqToUser + liqToTreasury);
        emit LIQMinted(user, liqToUser, liqToTreasury);
    }

    /// Merge all additional managed NFTs into the current primary (no extend here).
    function _mergeAllNFTs() private {
        uint256 MAX_MERGES = 10;
        uint256 mergeCount = 0;
        
        // If no valid primary, try to promote a valid additional. Do NOT extend.
        if (primaryNFT == 0 || !_isNFTValid(primaryNFT)) {
            uint256 len0 = additionalNFTs.length;
            for (uint256 j = 0; j < len0; ) {
                uint256 cand = additionalNFTs[j];
                if (cand != 0 && isManaged[cand] && _isNFTValid(cand)) {
                    primaryNFT = cand;
                    lastRebaseTime = block.timestamp;
                    additionalNFTs[j] = additionalNFTs[len0 - 1];
                    additionalNFTs.pop();
                    break;
                }
                unchecked { ++j; }
            }
            if (primaryNFT == 0 || !_isNFTValid(primaryNFT)) return;
        }

        uint256 i = 0;
        while (i < additionalNFTs.length && mergeCount < MAX_MERGES) {
            uint256 fromId = additionalNFTs[i];
            if (!isManaged[fromId] || nftLockedAmount[fromId] == 0) {
                additionalNFTs[i] = additionalNFTs[additionalNFTs.length - 1];
                additionalNFTs.pop();
                continue;
            }
            try IVotingEscrow(veAERO).merge(fromId, primaryNFT) {
                uint256 amt = nftLockedAmount[fromId];
                nftLockedAmount[primaryNFT] += amt;
                nftLockedAmount[fromId] = 0;
                isManaged[fromId] = false;
                emit NFTsMerged(fromId, primaryNFT);
                additionalNFTs[i] = additionalNFTs[additionalNFTs.length - 1];
                additionalNFTs.pop();
                mergeCount++; // INCREMENT HERE (inside the successful try block)
            } catch { 
                unchecked { ++i; } 
            }
        }
    }

    function _needsRebase() private view returns (bool) {
        if (primaryNFT == 0) return false;
        try IVotingEscrow(veAERO).locked(primaryNFT) returns (IVotingEscrow.LockedBalance memory lb) {
            if (lb.isPermanent) return false;
            uint256 timeLeft = lb.end > block.timestamp ? lb.end - block.timestamp : 0;
            return timeLeft < MAX_LOCK_DURATION - (12 weeks);
        } catch { return false; }
    }

    /// Only maintenance extends to max
    function _extendToMax(uint256 tokenId) private returns (bool) {
        try IVotingEscrow(veAERO).locked(tokenId) returns (IVotingEscrow.LockedBalance memory lb) {
            if (lb.isPermanent) return false;
            uint256 targetEnd = ((block.timestamp + MAX_LOCK_DURATION) / WEEK) * WEEK;
            if (lb.end < targetEnd) {
                uint256 extension = targetEnd - lb.end;
                IVotingEscrow(veAERO).increaseUnlockTime(tokenId, extension);
                emit NFTRebased(tokenId, targetEnd);
                return true;
            }
        } catch {}
        return false;
    }

    function _rebasePrimaryNFT() private {
        if (primaryNFT == 0 || !_isNFTValid(primaryNFT)) return;
        if (_extendToMax(primaryNFT)) {
            lastRebaseTime = block.timestamp;
        }
    }

    function _isNFTValid(uint256 tokenId) private view returns (bool) {
        if (tokenId == 0) return false;
        try IVotingEscrow(veAERO).ownerOf(tokenId) returns (address owner_) {
            if (owner_ != address(this)) return false;
            try IVotingEscrow(veAERO).locked(tokenId) returns (IVotingEscrow.LockedBalance memory lb) {
                if (!lb.isPermanent && lb.end <= block.timestamp) return false;
                return uint256(uint128(lb.amount)) > 0;
            } catch { return false; }
        } catch { return false; }
    }

    function _updateLIQSupply(uint256 amount) private {
        uint256 prev = totalLIQMinted;
        totalLIQMinted = prev + amount;
        uint256 prevH = prev / HALVING_STEP;
        uint256 newH  = totalLIQMinted / HALVING_STEP;
        if (newH > prevH) {
            emit HalvingReached(newH, totalLIQMinted);
        }
    }

    /* ------------ Receive / ERC721 ------------ */

    receive() external payable {}

    function onERC721Received(address operator, address from, uint256 tokenId, bytes calldata)
        external override returns (bytes4)
    {
        // Only accept veAERO NFTs
        if (msg.sender != veAERO) {
            emit UnexpectedERC721Received(msg.sender, operator, from, tokenId);
            revert("ERC721 not allowed");
        }
        // Only accept when depositVeNFT has set the guard
        if (!_expectingNft || _expectedNftId != tokenId || _expectedNftSender != from) {
            emit UnexpectedERC721Received(msg.sender, operator, from, tokenId);
            revert("Direct veNFT transfer not allowed");
        }
        // Clear guard inside callback
        _expectingNft = false;
        _expectedNftSender = address(0);
        _expectedNftId = 0;
        return IERC721Receiver.onERC721Received.selector;
    }
}
