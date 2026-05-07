// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/lib/openzeppelin-contracts/contracts/access/Ownable.sol
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
// FILE: lib/v4-periphery/lib/v4-core/lib/openzeppelin-contracts/contracts/interfaces/IERC1271.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC1271.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC1271 standard signature validation method for
 * contracts as defined in https://eips.ethereum.org/EIPS/eip-1271[ERC-1271].
 */
interface IERC1271 {
    /**
     * @dev Should return whether the signature provided is valid for the provided data
     * @param hash      Hash of the data to be signed
     * @param signature Signature byte array associated with _data
     */
    function isValidSignature(bytes32 hash, bytes memory signature) external view returns (bytes4 magicValue);
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/lib/openzeppelin-contracts/contracts/token/ERC1155/IERC1155.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.1) (token/ERC1155/IERC1155.sol)

pragma solidity ^0.8.20;

import {IERC165} from "../../utils/introspection/IERC165.sol";

/**
 * @dev Required interface of an ERC1155 compliant contract, as defined in the
 * https://eips.ethereum.org/EIPS/eip-1155[EIP].
 */
interface IERC1155 is IERC165 {
    /**
     * @dev Emitted when `value` amount of tokens of type `id` are transferred from `from` to `to` by `operator`.
     */
    event TransferSingle(address indexed operator, address indexed from, address indexed to, uint256 id, uint256 value);

    /**
     * @dev Equivalent to multiple {TransferSingle} events, where `operator`, `from` and `to` are the same for all
     * transfers.
     */
    event TransferBatch(
        address indexed operator,
        address indexed from,
        address indexed to,
        uint256[] ids,
        uint256[] values
    );

    /**
     * @dev Emitted when `account` grants or revokes permission to `operator` to transfer their tokens, according to
     * `approved`.
     */
    event ApprovalForAll(address indexed account, address indexed operator, bool approved);

    /**
     * @dev Emitted when the URI for token type `id` changes to `value`, if it is a non-programmatic URI.
     *
     * If an {URI} event was emitted for `id`, the standard
     * https://eips.ethereum.org/EIPS/eip-1155#metadata-extensions[guarantees] that `value` will equal the value
     * returned by {IERC1155MetadataURI-uri}.
     */
    event URI(string value, uint256 indexed id);

    /**
     * @dev Returns the value of tokens of token type `id` owned by `account`.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function balanceOf(address account, uint256 id) external view returns (uint256);

    /**
     * @dev xref:ROOT:erc1155.adoc#batch-operations[Batched] version of {balanceOf}.
     *
     * Requirements:
     *
     * - `accounts` and `ids` must have the same length.
     */
    function balanceOfBatch(
        address[] calldata accounts,
        uint256[] calldata ids
    ) external view returns (uint256[] memory);

    /**
     * @dev Grants or revokes permission to `operator` to transfer the caller's tokens, according to `approved`,
     *
     * Emits an {ApprovalForAll} event.
     *
     * Requirements:
     *
     * - `operator` cannot be the caller.
     */
    function setApprovalForAll(address operator, bool approved) external;

    /**
     * @dev Returns true if `operator` is approved to transfer ``account``'s tokens.
     *
     * See {setApprovalForAll}.
     */
    function isApprovedForAll(address account, address operator) external view returns (bool);

    /**
     * @dev Transfers a `value` amount of tokens of type `id` from `from` to `to`.
     *
     * WARNING: This function can potentially allow a reentrancy attack when transferring tokens
     * to an untrusted contract, when invoking {onERC1155Received} on the receiver.
     * Ensure to follow the checks-effects-interactions pattern and consider employing
     * reentrancy guards when interacting with untrusted contracts.
     *
     * Emits a {TransferSingle} event.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - If the caller is not `from`, it must have been approved to spend ``from``'s tokens via {setApprovalForAll}.
     * - `from` must have a balance of tokens of type `id` of at least `value` amount.
     * - If `to` refers to a smart contract, it must implement {IERC1155Receiver-onERC1155Received} and return the
     * acceptance magic value.
     */
    function safeTransferFrom(address from, address to, uint256 id, uint256 value, bytes calldata data) external;

    /**
     * @dev xref:ROOT:erc1155.adoc#batch-operations[Batched] version of {safeTransferFrom}.
     *
     * WARNING: This function can potentially allow a reentrancy attack when transferring tokens
     * to an untrusted contract, when invoking {onERC1155BatchReceived} on the receiver.
     * Ensure to follow the checks-effects-interactions pattern and consider employing
     * reentrancy guards when interacting with untrusted contracts.
     *
     * Emits either a {TransferSingle} or a {TransferBatch} event, depending on the length of the array arguments.
     *
     * Requirements:
     *
     * - `ids` and `values` must have the same length.
     * - If `to` refers to a smart contract, it must implement {IERC1155Receiver-onERC1155BatchReceived} and return the
     * acceptance magic value.
     */
    function safeBatchTransferFrom(
        address from,
        address to,
        uint256[] calldata ids,
        uint256[] calldata values,
        bytes calldata data
    ) external;
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Permit.sol
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
// FILE: lib/v4-periphery/lib/v4-core/lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
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
// FILE: lib/v4-periphery/lib/v4-core/lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol
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
// FILE: lib/v4-periphery/lib/v4-core/lib/openzeppelin-contracts/contracts/token/ERC721/IERC721.sol
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
// FILE: lib/v4-periphery/lib/v4-core/lib/openzeppelin-contracts/contracts/utils/Address.sol
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
// FILE: lib/v4-periphery/lib/v4-core/lib/openzeppelin-contracts/contracts/utils/Context.sol
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
// FILE: lib/v4-periphery/lib/v4-core/lib/openzeppelin-contracts/contracts/utils/cryptography/ECDSA.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/cryptography/ECDSA.sol)

pragma solidity ^0.8.20;

/**
 * @dev Elliptic Curve Digital Signature Algorithm (ECDSA) operations.
 *
 * These functions can be used to verify that a message was signed by the holder
 * of the private keys of a given address.
 */
library ECDSA {
    enum RecoverError {
        NoError,
        InvalidSignature,
        InvalidSignatureLength,
        InvalidSignatureS
    }

    /**
     * @dev The signature derives the `address(0)`.
     */
    error ECDSAInvalidSignature();

    /**
     * @dev The signature has an invalid length.
     */
    error ECDSAInvalidSignatureLength(uint256 length);

    /**
     * @dev The signature has an S value that is in the upper half order.
     */
    error ECDSAInvalidSignatureS(bytes32 s);

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with `signature` or an error. This will not
     * return address(0) without also returning an error description. Errors are documented using an enum (error type)
     * and a bytes32 providing additional information about the error.
     *
     * If no error is returned, then the address can be used for verification purposes.
     *
     * The `ecrecover` EVM precompile allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {MessageHashUtils-toEthSignedMessageHash} on it.
     *
     * Documentation for signature generation:
     * - with https://web3js.readthedocs.io/en/v1.3.4/web3-eth-accounts.html#sign[Web3.js]
     * - with https://docs.ethers.io/v5/api/signer/#Signer-signMessage[ethers]
     */
    function tryRecover(bytes32 hash, bytes memory signature) internal pure returns (address, RecoverError, bytes32) {
        if (signature.length == 65) {
            bytes32 r;
            bytes32 s;
            uint8 v;
            // ecrecover takes the signature parameters, and the only way to get them
            // currently is to use assembly.
            /// @solidity memory-safe-assembly
            assembly {
                r := mload(add(signature, 0x20))
                s := mload(add(signature, 0x40))
                v := byte(0, mload(add(signature, 0x60)))
            }
            return tryRecover(hash, v, r, s);
        } else {
            return (address(0), RecoverError.InvalidSignatureLength, bytes32(signature.length));
        }
    }

    /**
     * @dev Returns the address that signed a hashed message (`hash`) with
     * `signature`. This address can then be used for verification purposes.
     *
     * The `ecrecover` EVM precompile allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {MessageHashUtils-toEthSignedMessageHash} on it.
     */
    function recover(bytes32 hash, bytes memory signature) internal pure returns (address) {
        (address recovered, RecoverError error, bytes32 errorArg) = tryRecover(hash, signature);
        _throwError(error, errorArg);
        return recovered;
    }

    /**
     * @dev Overload of {ECDSA-tryRecover} that receives the `r` and `vs` short-signature fields separately.
     *
     * See https://eips.ethereum.org/EIPS/eip-2098[EIP-2098 short signatures]
     */
    function tryRecover(bytes32 hash, bytes32 r, bytes32 vs) internal pure returns (address, RecoverError, bytes32) {
        unchecked {
            bytes32 s = vs & bytes32(0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
            // We do not check for an overflow here since the shift operation results in 0 or 1.
            uint8 v = uint8((uint256(vs) >> 255) + 27);
            return tryRecover(hash, v, r, s);
        }
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `r and `vs` short-signature fields separately.
     */
    function recover(bytes32 hash, bytes32 r, bytes32 vs) internal pure returns (address) {
        (address recovered, RecoverError error, bytes32 errorArg) = tryRecover(hash, r, vs);
        _throwError(error, errorArg);
        return recovered;
    }

    /**
     * @dev Overload of {ECDSA-tryRecover} that receives the `v`,
     * `r` and `s` signature fields separately.
     */
    function tryRecover(
        bytes32 hash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal pure returns (address, RecoverError, bytes32) {
        // EIP-2 still allows signature malleability for ecrecover(). Remove this possibility and make the signature
        // unique. Appendix F in the Ethereum Yellow paper (https://ethereum.github.io/yellowpaper/paper.pdf), defines
        // the valid range for s in (301): 0 < s < secp256k1n ÷ 2 + 1, and for v in (302): v ∈ {27, 28}. Most
        // signatures from current libraries generate a unique signature with an s-value in the lower half order.
        //
        // If your library generates malleable signatures, such as s-values in the upper range, calculate a new s-value
        // with 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141 - s1 and flip v from 27 to 28 or
        // vice versa. If your library also generates signatures with 0/1 for v instead 27/28, add 27 to v to accept
        // these malleable signatures as well.
        if (uint256(s) > 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0) {
            return (address(0), RecoverError.InvalidSignatureS, s);
        }

        // If the signature is valid (and not malleable), return the signer address
        address signer = ecrecover(hash, v, r, s);
        if (signer == address(0)) {
            return (address(0), RecoverError.InvalidSignature, bytes32(0));
        }

        return (signer, RecoverError.NoError, bytes32(0));
    }

    /**
     * @dev Overload of {ECDSA-recover} that receives the `v`,
     * `r` and `s` signature fields separately.
     */
    function recover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) internal pure returns (address) {
        (address recovered, RecoverError error, bytes32 errorArg) = tryRecover(hash, v, r, s);
        _throwError(error, errorArg);
        return recovered;
    }

    /**
     * @dev Optionally reverts with the corresponding custom error according to the `error` argument provided.
     */
    function _throwError(RecoverError error, bytes32 errorArg) private pure {
        if (error == RecoverError.NoError) {
            return; // no error: do nothing
        } else if (error == RecoverError.InvalidSignature) {
            revert ECDSAInvalidSignature();
        } else if (error == RecoverError.InvalidSignatureLength) {
            revert ECDSAInvalidSignatureLength(uint256(errorArg));
        } else if (error == RecoverError.InvalidSignatureS) {
            revert ECDSAInvalidSignatureS(errorArg);
        }
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/lib/openzeppelin-contracts/contracts/utils/cryptography/SignatureChecker.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/cryptography/SignatureChecker.sol)

pragma solidity ^0.8.20;

import {ECDSA} from "./ECDSA.sol";
import {IERC1271} from "../../interfaces/IERC1271.sol";

/**
 * @dev Signature verification helper that can be used instead of `ECDSA.recover` to seamlessly support both ECDSA
 * signatures from externally owned accounts (EOAs) as well as ERC1271 signatures from smart contract wallets like
 * Argent and Safe Wallet (previously Gnosis Safe).
 */
library SignatureChecker {
    /**
     * @dev Checks if a signature is valid for a given signer and data hash. If the signer is a smart contract, the
     * signature is validated against that smart contract using ERC1271, otherwise it's validated using `ECDSA.recover`.
     *
     * NOTE: Unlike ECDSA signatures, contract signatures are revocable, and the outcome of this function can thus
     * change through time. It could return true at block N and false at block N+1 (or the opposite).
     */
    function isValidSignatureNow(address signer, bytes32 hash, bytes memory signature) internal view returns (bool) {
        (address recovered, ECDSA.RecoverError error, ) = ECDSA.tryRecover(hash, signature);
        return
            (error == ECDSA.RecoverError.NoError && recovered == signer) ||
            isValidERC1271SignatureNow(signer, hash, signature);
    }

    /**
     * @dev Checks if a signature is valid for a given signer and data hash. The signature is validated
     * against the signer smart contract using ERC1271.
     *
     * NOTE: Unlike ECDSA signatures, contract signatures are revocable, and the outcome of this function can thus
     * change through time. It could return true at block N and false at block N+1 (or the opposite).
     */
    function isValidERC1271SignatureNow(
        address signer,
        bytes32 hash,
        bytes memory signature
    ) internal view returns (bool) {
        (bool success, bytes memory result) = signer.staticcall(
            abi.encodeCall(IERC1271.isValidSignature, (hash, signature))
        );
        return (success &&
            result.length >= 32 &&
            abi.decode(result, (bytes32)) == bytes32(IERC1271.isValidSignature.selector));
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol
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
// FILE: lib/v4-periphery/lib/v4-core/src/interfaces/callback/IUnlockCallback.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Interface for the callback executed when an address unlocks the pool manager
interface IUnlockCallback {
    /// @notice Called by the pool manager on `msg.sender` when the manager is unlocked
    /// @param data The data that was passed to the call to unlock
    /// @return Any data that you want to be returned from the unlock call
    function unlockCallback(bytes calldata data) external returns (bytes memory);
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/interfaces/external/IERC20Minimal.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Minimal ERC20 interface for Uniswap
/// @notice Contains a subset of the full ERC20 interface that is used in Uniswap V3
interface IERC20Minimal {
    /// @notice Returns an account's balance in the token
    /// @param account The account for which to look up the number of tokens it has, i.e. its balance
    /// @return The number of tokens held by the account
    function balanceOf(address account) external view returns (uint256);

    /// @notice Transfers the amount of token from the `msg.sender` to the recipient
    /// @param recipient The account that will receive the amount transferred
    /// @param amount The number of tokens to send from the sender to the recipient
    /// @return Returns true for a successful transfer, false for an unsuccessful transfer
    function transfer(address recipient, uint256 amount) external returns (bool);

    /// @notice Returns the current allowance given to a spender by an owner
    /// @param owner The account of the token owner
    /// @param spender The account of the token spender
    /// @return The current allowance granted by `owner` to `spender`
    function allowance(address owner, address spender) external view returns (uint256);

    /// @notice Sets the allowance of a spender from the `msg.sender` to the value `amount`
    /// @param spender The account which will be allowed to spend a given amount of the owners tokens
    /// @param amount The amount of tokens allowed to be used by `spender`
    /// @return Returns true for a successful approval, false for unsuccessful
    function approve(address spender, uint256 amount) external returns (bool);

    /// @notice Transfers `amount` tokens from `sender` to `recipient` up to the allowance given to the `msg.sender`
    /// @param sender The account from which the transfer will be initiated
    /// @param recipient The recipient of the transfer
    /// @param amount The amount of the transfer
    /// @return Returns true for a successful transfer, false for unsuccessful
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    /// @notice Event emitted when tokens are transferred from one address to another, either via `#transfer` or `#transferFrom`.
    /// @param from The account from which the tokens were sent, i.e. the balance decreased
    /// @param to The account to which the tokens were sent, i.e. the balance increased
    /// @param value The amount of tokens that were transferred
    event Transfer(address indexed from, address indexed to, uint256 value);

    /// @notice Event emitted when the approval amount for the spender of a given owner's tokens changes.
    /// @param owner The account that approved spending of its tokens
    /// @param spender The account for which the spending allowance was modified
    /// @param value The new allowance from the owner to the spender
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/interfaces/external/IERC6909Claims.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Interface for claims over a contract balance, wrapped as a ERC6909
interface IERC6909Claims {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event OperatorSet(address indexed owner, address indexed operator, bool approved);

    event Approval(address indexed owner, address indexed spender, uint256 indexed id, uint256 amount);

    event Transfer(address caller, address indexed from, address indexed to, uint256 indexed id, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                                 FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Owner balance of an id.
    /// @param owner The address of the owner.
    /// @param id The id of the token.
    /// @return amount The balance of the token.
    function balanceOf(address owner, uint256 id) external view returns (uint256 amount);

    /// @notice Spender allowance of an id.
    /// @param owner The address of the owner.
    /// @param spender The address of the spender.
    /// @param id The id of the token.
    /// @return amount The allowance of the token.
    function allowance(address owner, address spender, uint256 id) external view returns (uint256 amount);

    /// @notice Checks if a spender is approved by an owner as an operator
    /// @param owner The address of the owner.
    /// @param spender The address of the spender.
    /// @return approved The approval status.
    function isOperator(address owner, address spender) external view returns (bool approved);

    /// @notice Transfers an amount of an id from the caller to a receiver.
    /// @param receiver The address of the receiver.
    /// @param id The id of the token.
    /// @param amount The amount of the token.
    /// @return bool True, always, unless the function reverts
    function transfer(address receiver, uint256 id, uint256 amount) external returns (bool);

    /// @notice Transfers an amount of an id from a sender to a receiver.
    /// @param sender The address of the sender.
    /// @param receiver The address of the receiver.
    /// @param id The id of the token.
    /// @param amount The amount of the token.
    /// @return bool True, always, unless the function reverts
    function transferFrom(address sender, address receiver, uint256 id, uint256 amount) external returns (bool);

    /// @notice Approves an amount of an id to a spender.
    /// @param spender The address of the spender.
    /// @param id The id of the token.
    /// @param amount The amount of the token.
    /// @return bool True, always
    function approve(address spender, uint256 id, uint256 amount) external returns (bool);

    /// @notice Sets or removes an operator for the caller.
    /// @param operator The address of the operator.
    /// @param approved The approval status.
    /// @return bool True, always
    function setOperator(address operator, bool approved) external returns (bool);
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/interfaces/IExtsload.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Interface for functions to access any storage slot in a contract
interface IExtsload {
    /// @notice Called by external contracts to access granular pool state
    /// @param slot Key of slot to sload
    /// @return value The value of the slot as bytes32
    function extsload(bytes32 slot) external view returns (bytes32 value);

    /// @notice Called by external contracts to access granular pool state
    /// @param startSlot Key of slot to start sloading from
    /// @param nSlots Number of slots to load into return value
    /// @return values List of loaded values.
    function extsload(bytes32 startSlot, uint256 nSlots) external view returns (bytes32[] memory values);

    /// @notice Called by external contracts to access sparse pool state
    /// @param slots List of slots to SLOAD from.
    /// @return values List of loaded values.
    function extsload(bytes32[] calldata slots) external view returns (bytes32[] memory values);
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/interfaces/IExttload.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @notice Interface for functions to access any transient storage slot in a contract
interface IExttload {
    /// @notice Called by external contracts to access transient storage of the contract
    /// @param slot Key of slot to tload
    /// @return value The value of the slot as bytes32
    function exttload(bytes32 slot) external view returns (bytes32 value);

    /// @notice Called by external contracts to access sparse transient pool state
    /// @param slots List of slots to tload
    /// @return values List of loaded values
    function exttload(bytes32[] calldata slots) external view returns (bytes32[] memory values);
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/interfaces/IHooks.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PoolKey} from "../types/PoolKey.sol";
import {BalanceDelta} from "../types/BalanceDelta.sol";
import {IPoolManager} from "./IPoolManager.sol";
import {BeforeSwapDelta} from "../types/BeforeSwapDelta.sol";

/// @notice V4 decides whether to invoke specific hooks by inspecting the least significant bits
/// of the address that the hooks contract is deployed to.
/// For example, a hooks contract deployed to address: 0x0000000000000000000000000000000000002400
/// has the lowest bits '10 0100 0000 0000' which would cause the 'before initialize' and 'after add liquidity' hooks to be used.
/// See the Hooks library for the full spec.
/// @dev Should only be callable by the v4 PoolManager.
interface IHooks {
    /// @notice The hook called before the state of a pool is initialized
    /// @param sender The initial msg.sender for the initialize call
    /// @param key The key for the pool being initialized
    /// @param sqrtPriceX96 The sqrt(price) of the pool as a Q64.96
    /// @return bytes4 The function selector for the hook
    function beforeInitialize(address sender, PoolKey calldata key, uint160 sqrtPriceX96) external returns (bytes4);

    /// @notice The hook called after the state of a pool is initialized
    /// @param sender The initial msg.sender for the initialize call
    /// @param key The key for the pool being initialized
    /// @param sqrtPriceX96 The sqrt(price) of the pool as a Q64.96
    /// @param tick The current tick after the state of a pool is initialized
    /// @return bytes4 The function selector for the hook
    function afterInitialize(address sender, PoolKey calldata key, uint160 sqrtPriceX96, int24 tick)
        external
        returns (bytes4);

    /// @notice The hook called before liquidity is added
    /// @param sender The initial msg.sender for the add liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for adding liquidity
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function beforeAddLiquidity(
        address sender,
        PoolKey calldata key,
        IPoolManager.ModifyLiquidityParams calldata params,
        bytes calldata hookData
    ) external returns (bytes4);

    /// @notice The hook called after liquidity is added
    /// @param sender The initial msg.sender for the add liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for adding liquidity
    /// @param delta The caller's balance delta after adding liquidity; the sum of principal delta, fees accrued, and hook delta
    /// @param feesAccrued The fees accrued since the last time fees were collected from this position
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return BalanceDelta The hook's delta in token0 and token1. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    function afterAddLiquidity(
        address sender,
        PoolKey calldata key,
        IPoolManager.ModifyLiquidityParams calldata params,
        BalanceDelta delta,
        BalanceDelta feesAccrued,
        bytes calldata hookData
    ) external returns (bytes4, BalanceDelta);

    /// @notice The hook called before liquidity is removed
    /// @param sender The initial msg.sender for the remove liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for removing liquidity
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function beforeRemoveLiquidity(
        address sender,
        PoolKey calldata key,
        IPoolManager.ModifyLiquidityParams calldata params,
        bytes calldata hookData
    ) external returns (bytes4);

    /// @notice The hook called after liquidity is removed
    /// @param sender The initial msg.sender for the remove liquidity call
    /// @param key The key for the pool
    /// @param params The parameters for removing liquidity
    /// @param delta The caller's balance delta after removing liquidity; the sum of principal delta, fees accrued, and hook delta
    /// @param feesAccrued The fees accrued since the last time fees were collected from this position
    /// @param hookData Arbitrary data handed into the PoolManager by the liquidity provider to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return BalanceDelta The hook's delta in token0 and token1. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    function afterRemoveLiquidity(
        address sender,
        PoolKey calldata key,
        IPoolManager.ModifyLiquidityParams calldata params,
        BalanceDelta delta,
        BalanceDelta feesAccrued,
        bytes calldata hookData
    ) external returns (bytes4, BalanceDelta);

    /// @notice The hook called before a swap
    /// @param sender The initial msg.sender for the swap call
    /// @param key The key for the pool
    /// @param params The parameters for the swap
    /// @param hookData Arbitrary data handed into the PoolManager by the swapper to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return BeforeSwapDelta The hook's delta in specified and unspecified currencies. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    /// @return uint24 Optionally override the lp fee, only used if three conditions are met: 1. the Pool has a dynamic fee, 2. the value's 2nd highest bit is set (23rd bit, 0x400000), and 3. the value is less than or equal to the maximum fee (1 million)
    function beforeSwap(
        address sender,
        PoolKey calldata key,
        IPoolManager.SwapParams calldata params,
        bytes calldata hookData
    ) external returns (bytes4, BeforeSwapDelta, uint24);

    /// @notice The hook called after a swap
    /// @param sender The initial msg.sender for the swap call
    /// @param key The key for the pool
    /// @param params The parameters for the swap
    /// @param delta The amount owed to the caller (positive) or owed to the pool (negative)
    /// @param hookData Arbitrary data handed into the PoolManager by the swapper to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    /// @return int128 The hook's delta in unspecified currency. Positive: the hook is owed/took currency, negative: the hook owes/sent currency
    function afterSwap(
        address sender,
        PoolKey calldata key,
        IPoolManager.SwapParams calldata params,
        BalanceDelta delta,
        bytes calldata hookData
    ) external returns (bytes4, int128);

    /// @notice The hook called before donate
    /// @param sender The initial msg.sender for the donate call
    /// @param key The key for the pool
    /// @param amount0 The amount of token0 being donated
    /// @param amount1 The amount of token1 being donated
    /// @param hookData Arbitrary data handed into the PoolManager by the donor to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function beforeDonate(
        address sender,
        PoolKey calldata key,
        uint256 amount0,
        uint256 amount1,
        bytes calldata hookData
    ) external returns (bytes4);

    /// @notice The hook called after donate
    /// @param sender The initial msg.sender for the donate call
    /// @param key The key for the pool
    /// @param amount0 The amount of token0 being donated
    /// @param amount1 The amount of token1 being donated
    /// @param hookData Arbitrary data handed into the PoolManager by the donor to be be passed on to the hook
    /// @return bytes4 The function selector for the hook
    function afterDonate(
        address sender,
        PoolKey calldata key,
        uint256 amount0,
        uint256 amount1,
        bytes calldata hookData
    ) external returns (bytes4);
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/interfaces/IPoolManager.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Currency} from "../types/Currency.sol";
import {PoolKey} from "../types/PoolKey.sol";
import {IHooks} from "./IHooks.sol";
import {IERC6909Claims} from "./external/IERC6909Claims.sol";
import {IProtocolFees} from "./IProtocolFees.sol";
import {BalanceDelta} from "../types/BalanceDelta.sol";
import {PoolId} from "../types/PoolId.sol";
import {IExtsload} from "./IExtsload.sol";
import {IExttload} from "./IExttload.sol";

/// @notice Interface for the PoolManager
interface IPoolManager is IProtocolFees, IERC6909Claims, IExtsload, IExttload {
    /// @notice Thrown when a currency is not netted out after the contract is unlocked
    error CurrencyNotSettled();

    /// @notice Thrown when trying to interact with a non-initialized pool
    error PoolNotInitialized();

    /// @notice Thrown when unlock is called, but the contract is already unlocked
    error AlreadyUnlocked();

    /// @notice Thrown when a function is called that requires the contract to be unlocked, but it is not
    error ManagerLocked();

    /// @notice Pools are limited to type(int16).max tickSpacing in #initialize, to prevent overflow
    error TickSpacingTooLarge(int24 tickSpacing);

    /// @notice Pools must have a positive non-zero tickSpacing passed to #initialize
    error TickSpacingTooSmall(int24 tickSpacing);

    /// @notice PoolKey must have currencies where address(currency0) < address(currency1)
    error CurrenciesOutOfOrderOrEqual(address currency0, address currency1);

    /// @notice Thrown when a call to updateDynamicLPFee is made by an address that is not the hook,
    /// or on a pool that does not have a dynamic swap fee.
    error UnauthorizedDynamicLPFeeUpdate();

    /// @notice Thrown when trying to swap amount of 0
    error SwapAmountCannotBeZero();

    ///@notice Thrown when native currency is passed to a non native settlement
    error NonzeroNativeValue();

    /// @notice Thrown when `clear` is called with an amount that is not exactly equal to the open currency delta.
    error MustClearExactPositiveDelta();

    /// @notice Emitted when a new pool is initialized
    /// @param id The abi encoded hash of the pool key struct for the new pool
    /// @param currency0 The first currency of the pool by address sort order
    /// @param currency1 The second currency of the pool by address sort order
    /// @param fee The fee collected upon every swap in the pool, denominated in hundredths of a bip
    /// @param tickSpacing The minimum number of ticks between initialized ticks
    /// @param hooks The hooks contract address for the pool, or address(0) if none
    /// @param sqrtPriceX96 The price of the pool on initialization
    /// @param tick The initial tick of the pool corresponding to the initialized price
    event Initialize(
        PoolId indexed id,
        Currency indexed currency0,
        Currency indexed currency1,
        uint24 fee,
        int24 tickSpacing,
        IHooks hooks,
        uint160 sqrtPriceX96,
        int24 tick
    );

    /// @notice Emitted when a liquidity position is modified
    /// @param id The abi encoded hash of the pool key struct for the pool that was modified
    /// @param sender The address that modified the pool
    /// @param tickLower The lower tick of the position
    /// @param tickUpper The upper tick of the position
    /// @param liquidityDelta The amount of liquidity that was added or removed
    /// @param salt The extra data to make positions unique
    event ModifyLiquidity(
        PoolId indexed id, address indexed sender, int24 tickLower, int24 tickUpper, int256 liquidityDelta, bytes32 salt
    );

    /// @notice Emitted for swaps between currency0 and currency1
    /// @param id The abi encoded hash of the pool key struct for the pool that was modified
    /// @param sender The address that initiated the swap call, and that received the callback
    /// @param amount0 The delta of the currency0 balance of the pool
    /// @param amount1 The delta of the currency1 balance of the pool
    /// @param sqrtPriceX96 The sqrt(price) of the pool after the swap, as a Q64.96
    /// @param liquidity The liquidity of the pool after the swap
    /// @param tick The log base 1.0001 of the price of the pool after the swap
    /// @param fee The swap fee in hundredths of a bip
    event Swap(
        PoolId indexed id,
        address indexed sender,
        int128 amount0,
        int128 amount1,
        uint160 sqrtPriceX96,
        uint128 liquidity,
        int24 tick,
        uint24 fee
    );

    /// @notice Emitted for donations
    /// @param id The abi encoded hash of the pool key struct for the pool that was donated to
    /// @param sender The address that initiated the donate call
    /// @param amount0 The amount donated in currency0
    /// @param amount1 The amount donated in currency1
    event Donate(PoolId indexed id, address indexed sender, uint256 amount0, uint256 amount1);

    /// @notice All interactions on the contract that account deltas require unlocking. A caller that calls `unlock` must implement
    /// `IUnlockCallback(msg.sender).unlockCallback(data)`, where they interact with the remaining functions on this contract.
    /// @dev The only functions callable without an unlocking are `initialize` and `updateDynamicLPFee`
    /// @param data Any data to pass to the callback, via `IUnlockCallback(msg.sender).unlockCallback(data)`
    /// @return The data returned by the call to `IUnlockCallback(msg.sender).unlockCallback(data)`
    function unlock(bytes calldata data) external returns (bytes memory);

    /// @notice Initialize the state for a given pool ID
    /// @dev A swap fee totaling MAX_SWAP_FEE (100%) makes exact output swaps impossible since the input is entirely consumed by the fee
    /// @param key The pool key for the pool to initialize
    /// @param sqrtPriceX96 The initial square root price
    /// @return tick The initial tick of the pool
    function initialize(PoolKey memory key, uint160 sqrtPriceX96) external returns (int24 tick);

    struct ModifyLiquidityParams {
        // the lower and upper tick of the position
        int24 tickLower;
        int24 tickUpper;
        // how to modify the liquidity
        int256 liquidityDelta;
        // a value to set if you want unique liquidity positions at the same range
        bytes32 salt;
    }

    /// @notice Modify the liquidity for the given pool
    /// @dev Poke by calling with a zero liquidityDelta
    /// @param key The pool to modify liquidity in
    /// @param params The parameters for modifying the liquidity
    /// @param hookData The data to pass through to the add/removeLiquidity hooks
    /// @return callerDelta The balance delta of the caller of modifyLiquidity. This is the total of both principal, fee deltas, and hook deltas if applicable
    /// @return feesAccrued The balance delta of the fees generated in the liquidity range. Returned for informational purposes
    function modifyLiquidity(PoolKey memory key, ModifyLiquidityParams memory params, bytes calldata hookData)
        external
        returns (BalanceDelta callerDelta, BalanceDelta feesAccrued);

    struct SwapParams {
        /// Whether to swap token0 for token1 or vice versa
        bool zeroForOne;
        /// The desired input amount if negative (exactIn), or the desired output amount if positive (exactOut)
        int256 amountSpecified;
        /// The sqrt price at which, if reached, the swap will stop executing
        uint160 sqrtPriceLimitX96;
    }

    /// @notice Swap against the given pool
    /// @param key The pool to swap in
    /// @param params The parameters for swapping
    /// @param hookData The data to pass through to the swap hooks
    /// @return swapDelta The balance delta of the address swapping
    /// @dev Swapping on low liquidity pools may cause unexpected swap amounts when liquidity available is less than amountSpecified.
    /// Additionally note that if interacting with hooks that have the BEFORE_SWAP_RETURNS_DELTA_FLAG or AFTER_SWAP_RETURNS_DELTA_FLAG
    /// the hook may alter the swap input/output. Integrators should perform checks on the returned swapDelta.
    function swap(PoolKey memory key, SwapParams memory params, bytes calldata hookData)
        external
        returns (BalanceDelta swapDelta);

    /// @notice Donate the given currency amounts to the in-range liquidity providers of a pool
    /// @dev Calls to donate can be frontrun adding just-in-time liquidity, with the aim of receiving a portion donated funds.
    /// Donors should keep this in mind when designing donation mechanisms.
    /// @dev This function donates to in-range LPs at slot0.tick. In certain edge-cases of the swap algorithm, the `sqrtPrice` of
    /// a pool can be at the lower boundary of tick `n`, but the `slot0.tick` of the pool is already `n - 1`. In this case a call to
    /// `donate` would donate to tick `n - 1` (slot0.tick) not tick `n` (getTickAtSqrtPrice(slot0.sqrtPriceX96)).
    /// Read the comments in `Pool.swap()` for more information about this.
    /// @param key The key of the pool to donate to
    /// @param amount0 The amount of currency0 to donate
    /// @param amount1 The amount of currency1 to donate
    /// @param hookData The data to pass through to the donate hooks
    /// @return BalanceDelta The delta of the caller after the donate
    function donate(PoolKey memory key, uint256 amount0, uint256 amount1, bytes calldata hookData)
        external
        returns (BalanceDelta);

    /// @notice Writes the current ERC20 balance of the specified currency to transient storage
    /// This is used to checkpoint balances for the manager and derive deltas for the caller.
    /// @dev This MUST be called before any ERC20 tokens are sent into the contract, but can be skipped
    /// for native tokens because the amount to settle is determined by the sent value.
    /// However, if an ERC20 token has been synced and not settled, and the caller instead wants to settle
    /// native funds, this function can be called with the native currency to then be able to settle the native currency
    function sync(Currency currency) external;

    /// @notice Called by the user to net out some value owed to the user
    /// @dev Will revert if the requested amount is not available, consider using `mint` instead
    /// @dev Can also be used as a mechanism for free flash loans
    /// @param currency The currency to withdraw from the pool manager
    /// @param to The address to withdraw to
    /// @param amount The amount of currency to withdraw
    function take(Currency currency, address to, uint256 amount) external;

    /// @notice Called by the user to pay what is owed
    /// @return paid The amount of currency settled
    function settle() external payable returns (uint256 paid);

    /// @notice Called by the user to pay on behalf of another address
    /// @param recipient The address to credit for the payment
    /// @return paid The amount of currency settled
    function settleFor(address recipient) external payable returns (uint256 paid);

    /// @notice WARNING - Any currency that is cleared, will be non-retrievable, and locked in the contract permanently.
    /// A call to clear will zero out a positive balance WITHOUT a corresponding transfer.
    /// @dev This could be used to clear a balance that is considered dust.
    /// Additionally, the amount must be the exact positive balance. This is to enforce that the caller is aware of the amount being cleared.
    function clear(Currency currency, uint256 amount) external;

    /// @notice Called by the user to move value into ERC6909 balance
    /// @param to The address to mint the tokens to
    /// @param id The currency address to mint to ERC6909s, as a uint256
    /// @param amount The amount of currency to mint
    /// @dev The id is converted to a uint160 to correspond to a currency address
    /// If the upper 12 bytes are not 0, they will be 0-ed out
    function mint(address to, uint256 id, uint256 amount) external;

    /// @notice Called by the user to move value from ERC6909 balance
    /// @param from The address to burn the tokens from
    /// @param id The currency address to burn from ERC6909s, as a uint256
    /// @param amount The amount of currency to burn
    /// @dev The id is converted to a uint160 to correspond to a currency address
    /// If the upper 12 bytes are not 0, they will be 0-ed out
    function burn(address from, uint256 id, uint256 amount) external;

    /// @notice Updates the pools lp fees for the a pool that has enabled dynamic lp fees.
    /// @dev A swap fee totaling MAX_SWAP_FEE (100%) makes exact output swaps impossible since the input is entirely consumed by the fee
    /// @param key The key of the pool to update dynamic LP fees for
    /// @param newDynamicLPFee The new dynamic pool LP fee
    function updateDynamicLPFee(PoolKey memory key, uint24 newDynamicLPFee) external;
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/interfaces/IProtocolFees.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Currency} from "../types/Currency.sol";
import {PoolId} from "../types/PoolId.sol";
import {PoolKey} from "../types/PoolKey.sol";

/// @notice Interface for all protocol-fee related functions in the pool manager
interface IProtocolFees {
    /// @notice Thrown when protocol fee is set too high
    error ProtocolFeeTooLarge(uint24 fee);

    /// @notice Thrown when collectProtocolFees or setProtocolFee is not called by the controller.
    error InvalidCaller();

    /// @notice Thrown when collectProtocolFees is attempted on a token that is synced.
    error ProtocolFeeCurrencySynced();

    /// @notice Emitted when the protocol fee controller address is updated in setProtocolFeeController.
    event ProtocolFeeControllerUpdated(address indexed protocolFeeController);

    /// @notice Emitted when the protocol fee is updated for a pool.
    event ProtocolFeeUpdated(PoolId indexed id, uint24 protocolFee);

    /// @notice Given a currency address, returns the protocol fees accrued in that currency
    /// @param currency The currency to check
    /// @return amount The amount of protocol fees accrued in the currency
    function protocolFeesAccrued(Currency currency) external view returns (uint256 amount);

    /// @notice Sets the protocol fee for the given pool
    /// @param key The key of the pool to set a protocol fee for
    /// @param newProtocolFee The fee to set
    function setProtocolFee(PoolKey memory key, uint24 newProtocolFee) external;

    /// @notice Sets the protocol fee controller
    /// @param controller The new protocol fee controller
    function setProtocolFeeController(address controller) external;

    /// @notice Collects the protocol fees for a given recipient and currency, returning the amount collected
    /// @dev This will revert if the contract is unlocked
    /// @param recipient The address to receive the protocol fees
    /// @param currency The currency to withdraw
    /// @param amount The amount of currency to withdraw
    /// @return amountCollected The amount of currency successfully withdrawn
    function collectProtocolFees(address recipient, Currency currency, uint256 amount)
        external
        returns (uint256 amountCollected);

    /// @notice Returns the current protocol fee controller address
    /// @return address The current protocol fee controller address
    function protocolFeeController() external view returns (address);
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/libraries/CustomRevert.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Library for reverting with custom errors efficiently
/// @notice Contains functions for reverting with custom errors with different argument types efficiently
/// @dev To use this library, declare `using CustomRevert for bytes4;` and replace `revert CustomError()` with
/// `CustomError.selector.revertWith()`
/// @dev The functions may tamper with the free memory pointer but it is fine since the call context is exited immediately
library CustomRevert {
    /// @dev ERC-7751 error for wrapping bubbled up reverts
    error WrappedError(address target, bytes4 selector, bytes reason, bytes details);

    /// @dev Reverts with the selector of a custom error in the scratch space
    function revertWith(bytes4 selector) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            revert(0, 0x04)
        }
    }

    /// @dev Reverts with a custom error with an address argument in the scratch space
    function revertWith(bytes4 selector, address addr) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            mstore(0x04, and(addr, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(0, 0x24)
        }
    }

    /// @dev Reverts with a custom error with an int24 argument in the scratch space
    function revertWith(bytes4 selector, int24 value) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            mstore(0x04, signextend(2, value))
            revert(0, 0x24)
        }
    }

    /// @dev Reverts with a custom error with a uint160 argument in the scratch space
    function revertWith(bytes4 selector, uint160 value) internal pure {
        assembly ("memory-safe") {
            mstore(0, selector)
            mstore(0x04, and(value, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(0, 0x24)
        }
    }

    /// @dev Reverts with a custom error with two int24 arguments
    function revertWith(bytes4 selector, int24 value1, int24 value2) internal pure {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(fmp, selector)
            mstore(add(fmp, 0x04), signextend(2, value1))
            mstore(add(fmp, 0x24), signextend(2, value2))
            revert(fmp, 0x44)
        }
    }

    /// @dev Reverts with a custom error with two uint160 arguments
    function revertWith(bytes4 selector, uint160 value1, uint160 value2) internal pure {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(fmp, selector)
            mstore(add(fmp, 0x04), and(value1, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(add(fmp, 0x24), and(value2, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(fmp, 0x44)
        }
    }

    /// @dev Reverts with a custom error with two address arguments
    function revertWith(bytes4 selector, address value1, address value2) internal pure {
        assembly ("memory-safe") {
            let fmp := mload(0x40)
            mstore(fmp, selector)
            mstore(add(fmp, 0x04), and(value1, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(add(fmp, 0x24), and(value2, 0xffffffffffffffffffffffffffffffffffffffff))
            revert(fmp, 0x44)
        }
    }

    /// @notice bubble up the revert message returned by a call and revert with a wrapped ERC-7751 error
    /// @dev this method can be vulnerable to revert data bombs
    function bubbleUpAndRevertWith(
        address revertingContract,
        bytes4 revertingFunctionSelector,
        bytes4 additionalContext
    ) internal pure {
        bytes4 wrappedErrorSelector = WrappedError.selector;
        assembly ("memory-safe") {
            // Ensure the size of the revert data is a multiple of 32 bytes
            let encodedDataSize := mul(div(add(returndatasize(), 31), 32), 32)

            let fmp := mload(0x40)

            // Encode wrapped error selector, address, function selector, offset, additional context, size, revert reason
            mstore(fmp, wrappedErrorSelector)
            mstore(add(fmp, 0x04), and(revertingContract, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(
                add(fmp, 0x24),
                and(revertingFunctionSelector, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            )
            // offset revert reason
            mstore(add(fmp, 0x44), 0x80)
            // offset additional context
            mstore(add(fmp, 0x64), add(0xa0, encodedDataSize))
            // size revert reason
            mstore(add(fmp, 0x84), returndatasize())
            // revert reason
            returndatacopy(add(fmp, 0xa4), 0, returndatasize())
            // size additional context
            mstore(add(fmp, add(0xa4, encodedDataSize)), 0x04)
            // additional context
            mstore(
                add(fmp, add(0xc4, encodedDataSize)),
                and(additionalContext, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            )
            revert(fmp, add(0xe4, encodedDataSize))
        }
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/libraries/Hooks.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PoolKey} from "../types/PoolKey.sol";
import {IHooks} from "../interfaces/IHooks.sol";
import {SafeCast} from "./SafeCast.sol";
import {LPFeeLibrary} from "./LPFeeLibrary.sol";
import {BalanceDelta, toBalanceDelta, BalanceDeltaLibrary} from "../types/BalanceDelta.sol";
import {BeforeSwapDelta, BeforeSwapDeltaLibrary} from "../types/BeforeSwapDelta.sol";
import {IPoolManager} from "../interfaces/IPoolManager.sol";
import {ParseBytes} from "./ParseBytes.sol";
import {CustomRevert} from "./CustomRevert.sol";

/// @notice V4 decides whether to invoke specific hooks by inspecting the least significant bits
/// of the address that the hooks contract is deployed to.
/// For example, a hooks contract deployed to address: 0x0000000000000000000000000000000000002400
/// has the lowest bits '10 0100 0000 0000' which would cause the 'before initialize' and 'after add liquidity' hooks to be used.
library Hooks {
    using LPFeeLibrary for uint24;
    using Hooks for IHooks;
    using SafeCast for int256;
    using BeforeSwapDeltaLibrary for BeforeSwapDelta;
    using ParseBytes for bytes;
    using CustomRevert for bytes4;

    uint160 internal constant ALL_HOOK_MASK = uint160((1 << 14) - 1);

    uint160 internal constant BEFORE_INITIALIZE_FLAG = 1 << 13;
    uint160 internal constant AFTER_INITIALIZE_FLAG = 1 << 12;

    uint160 internal constant BEFORE_ADD_LIQUIDITY_FLAG = 1 << 11;
    uint160 internal constant AFTER_ADD_LIQUIDITY_FLAG = 1 << 10;

    uint160 internal constant BEFORE_REMOVE_LIQUIDITY_FLAG = 1 << 9;
    uint160 internal constant AFTER_REMOVE_LIQUIDITY_FLAG = 1 << 8;

    uint160 internal constant BEFORE_SWAP_FLAG = 1 << 7;
    uint160 internal constant AFTER_SWAP_FLAG = 1 << 6;

    uint160 internal constant BEFORE_DONATE_FLAG = 1 << 5;
    uint160 internal constant AFTER_DONATE_FLAG = 1 << 4;

    uint160 internal constant BEFORE_SWAP_RETURNS_DELTA_FLAG = 1 << 3;
    uint160 internal constant AFTER_SWAP_RETURNS_DELTA_FLAG = 1 << 2;
    uint160 internal constant AFTER_ADD_LIQUIDITY_RETURNS_DELTA_FLAG = 1 << 1;
    uint160 internal constant AFTER_REMOVE_LIQUIDITY_RETURNS_DELTA_FLAG = 1 << 0;

    struct Permissions {
        bool beforeInitialize;
        bool afterInitialize;
        bool beforeAddLiquidity;
        bool afterAddLiquidity;
        bool beforeRemoveLiquidity;
        bool afterRemoveLiquidity;
        bool beforeSwap;
        bool afterSwap;
        bool beforeDonate;
        bool afterDonate;
        bool beforeSwapReturnDelta;
        bool afterSwapReturnDelta;
        bool afterAddLiquidityReturnDelta;
        bool afterRemoveLiquidityReturnDelta;
    }

    /// @notice Thrown if the address will not lead to the specified hook calls being called
    /// @param hooks The address of the hooks contract
    error HookAddressNotValid(address hooks);

    /// @notice Hook did not return its selector
    error InvalidHookResponse();

    /// @notice Additional context for ERC-7751 wrapped error when a hook call fails
    error HookCallFailed();

    /// @notice The hook's delta changed the swap from exactIn to exactOut or vice versa
    error HookDeltaExceedsSwapAmount();

    /// @notice Utility function intended to be used in hook constructors to ensure
    /// the deployed hooks address causes the intended hooks to be called
    /// @param permissions The hooks that are intended to be called
    /// @dev permissions param is memory as the function will be called from constructors
    function validateHookPermissions(IHooks self, Permissions memory permissions) internal pure {
        if (
            permissions.beforeInitialize != self.hasPermission(BEFORE_INITIALIZE_FLAG)
                || permissions.afterInitialize != self.hasPermission(AFTER_INITIALIZE_FLAG)
                || permissions.beforeAddLiquidity != self.hasPermission(BEFORE_ADD_LIQUIDITY_FLAG)
                || permissions.afterAddLiquidity != self.hasPermission(AFTER_ADD_LIQUIDITY_FLAG)
                || permissions.beforeRemoveLiquidity != self.hasPermission(BEFORE_REMOVE_LIQUIDITY_FLAG)
                || permissions.afterRemoveLiquidity != self.hasPermission(AFTER_REMOVE_LIQUIDITY_FLAG)
                || permissions.beforeSwap != self.hasPermission(BEFORE_SWAP_FLAG)
                || permissions.afterSwap != self.hasPermission(AFTER_SWAP_FLAG)
                || permissions.beforeDonate != self.hasPermission(BEFORE_DONATE_FLAG)
                || permissions.afterDonate != self.hasPermission(AFTER_DONATE_FLAG)
                || permissions.beforeSwapReturnDelta != self.hasPermission(BEFORE_SWAP_RETURNS_DELTA_FLAG)
                || permissions.afterSwapReturnDelta != self.hasPermission(AFTER_SWAP_RETURNS_DELTA_FLAG)
                || permissions.afterAddLiquidityReturnDelta != self.hasPermission(AFTER_ADD_LIQUIDITY_RETURNS_DELTA_FLAG)
                || permissions.afterRemoveLiquidityReturnDelta
                    != self.hasPermission(AFTER_REMOVE_LIQUIDITY_RETURNS_DELTA_FLAG)
        ) {
            HookAddressNotValid.selector.revertWith(address(self));
        }
    }

    /// @notice Ensures that the hook address includes at least one hook flag or dynamic fees, or is the 0 address
    /// @param self The hook to verify
    /// @param fee The fee of the pool the hook is used with
    /// @return bool True if the hook address is valid
    function isValidHookAddress(IHooks self, uint24 fee) internal pure returns (bool) {
        // The hook can only have a flag to return a hook delta on an action if it also has the corresponding action flag
        if (!self.hasPermission(BEFORE_SWAP_FLAG) && self.hasPermission(BEFORE_SWAP_RETURNS_DELTA_FLAG)) return false;
        if (!self.hasPermission(AFTER_SWAP_FLAG) && self.hasPermission(AFTER_SWAP_RETURNS_DELTA_FLAG)) return false;
        if (!self.hasPermission(AFTER_ADD_LIQUIDITY_FLAG) && self.hasPermission(AFTER_ADD_LIQUIDITY_RETURNS_DELTA_FLAG))
        {
            return false;
        }
        if (
            !self.hasPermission(AFTER_REMOVE_LIQUIDITY_FLAG)
                && self.hasPermission(AFTER_REMOVE_LIQUIDITY_RETURNS_DELTA_FLAG)
        ) return false;

        // If there is no hook contract set, then fee cannot be dynamic
        // If a hook contract is set, it must have at least 1 flag set, or have a dynamic fee
        return address(self) == address(0)
            ? !fee.isDynamicFee()
            : (uint160(address(self)) & ALL_HOOK_MASK > 0 || fee.isDynamicFee());
    }

    /// @notice performs a hook call using the given calldata on the given hook that doesn't return a delta
    /// @return result The complete data returned by the hook
    function callHook(IHooks self, bytes memory data) internal returns (bytes memory result) {
        bool success;
        assembly ("memory-safe") {
            success := call(gas(), self, 0, add(data, 0x20), mload(data), 0, 0)
        }
        // Revert with FailedHookCall, containing any error message to bubble up
        if (!success) CustomRevert.bubbleUpAndRevertWith(address(self), bytes4(data), HookCallFailed.selector);

        // The call was successful, fetch the returned data
        assembly ("memory-safe") {
            // allocate result byte array from the free memory pointer
            result := mload(0x40)
            // store new free memory pointer at the end of the array padded to 32 bytes
            mstore(0x40, add(result, and(add(returndatasize(), 0x3f), not(0x1f))))
            // store length in memory
            mstore(result, returndatasize())
            // copy return data to result
            returndatacopy(add(result, 0x20), 0, returndatasize())
        }

        // Length must be at least 32 to contain the selector. Check expected selector and returned selector match.
        if (result.length < 32 || result.parseSelector() != data.parseSelector()) {
            InvalidHookResponse.selector.revertWith();
        }
    }

    /// @notice performs a hook call using the given calldata on the given hook
    /// @return int256 The delta returned by the hook
    function callHookWithReturnDelta(IHooks self, bytes memory data, bool parseReturn) internal returns (int256) {
        bytes memory result = callHook(self, data);

        // If this hook wasn't meant to return something, default to 0 delta
        if (!parseReturn) return 0;

        // A length of 64 bytes is required to return a bytes4, and a 32 byte delta
        if (result.length != 64) InvalidHookResponse.selector.revertWith();
        return result.parseReturnDelta();
    }

    /// @notice modifier to prevent calling a hook if they initiated the action
    modifier noSelfCall(IHooks self) {
        if (msg.sender != address(self)) {
            _;
        }
    }

    /// @notice calls beforeInitialize hook if permissioned and validates return value
    function beforeInitialize(IHooks self, PoolKey memory key, uint160 sqrtPriceX96) internal noSelfCall(self) {
        if (self.hasPermission(BEFORE_INITIALIZE_FLAG)) {
            self.callHook(abi.encodeCall(IHooks.beforeInitialize, (msg.sender, key, sqrtPriceX96)));
        }
    }

    /// @notice calls afterInitialize hook if permissioned and validates return value
    function afterInitialize(IHooks self, PoolKey memory key, uint160 sqrtPriceX96, int24 tick)
        internal
        noSelfCall(self)
    {
        if (self.hasPermission(AFTER_INITIALIZE_FLAG)) {
            self.callHook(abi.encodeCall(IHooks.afterInitialize, (msg.sender, key, sqrtPriceX96, tick)));
        }
    }

    /// @notice calls beforeModifyLiquidity hook if permissioned and validates return value
    function beforeModifyLiquidity(
        IHooks self,
        PoolKey memory key,
        IPoolManager.ModifyLiquidityParams memory params,
        bytes calldata hookData
    ) internal noSelfCall(self) {
        if (params.liquidityDelta > 0 && self.hasPermission(BEFORE_ADD_LIQUIDITY_FLAG)) {
            self.callHook(abi.encodeCall(IHooks.beforeAddLiquidity, (msg.sender, key, params, hookData)));
        } else if (params.liquidityDelta <= 0 && self.hasPermission(BEFORE_REMOVE_LIQUIDITY_FLAG)) {
            self.callHook(abi.encodeCall(IHooks.beforeRemoveLiquidity, (msg.sender, key, params, hookData)));
        }
    }

    /// @notice calls afterModifyLiquidity hook if permissioned and validates return value
    function afterModifyLiquidity(
        IHooks self,
        PoolKey memory key,
        IPoolManager.ModifyLiquidityParams memory params,
        BalanceDelta delta,
        BalanceDelta feesAccrued,
        bytes calldata hookData
    ) internal returns (BalanceDelta callerDelta, BalanceDelta hookDelta) {
        if (msg.sender == address(self)) return (delta, BalanceDeltaLibrary.ZERO_DELTA);

        callerDelta = delta;
        if (params.liquidityDelta > 0) {
            if (self.hasPermission(AFTER_ADD_LIQUIDITY_FLAG)) {
                hookDelta = BalanceDelta.wrap(
                    self.callHookWithReturnDelta(
                        abi.encodeCall(
                            IHooks.afterAddLiquidity, (msg.sender, key, params, delta, feesAccrued, hookData)
                        ),
                        self.hasPermission(AFTER_ADD_LIQUIDITY_RETURNS_DELTA_FLAG)
                    )
                );
                callerDelta = callerDelta - hookDelta;
            }
        } else {
            if (self.hasPermission(AFTER_REMOVE_LIQUIDITY_FLAG)) {
                hookDelta = BalanceDelta.wrap(
                    self.callHookWithReturnDelta(
                        abi.encodeCall(
                            IHooks.afterRemoveLiquidity, (msg.sender, key, params, delta, feesAccrued, hookData)
                        ),
                        self.hasPermission(AFTER_REMOVE_LIQUIDITY_RETURNS_DELTA_FLAG)
                    )
                );
                callerDelta = callerDelta - hookDelta;
            }
        }
    }

    /// @notice calls beforeSwap hook if permissioned and validates return value
    function beforeSwap(IHooks self, PoolKey memory key, IPoolManager.SwapParams memory params, bytes calldata hookData)
        internal
        returns (int256 amountToSwap, BeforeSwapDelta hookReturn, uint24 lpFeeOverride)
    {
        amountToSwap = params.amountSpecified;
        if (msg.sender == address(self)) return (amountToSwap, BeforeSwapDeltaLibrary.ZERO_DELTA, lpFeeOverride);

        if (self.hasPermission(BEFORE_SWAP_FLAG)) {
            bytes memory result = callHook(self, abi.encodeCall(IHooks.beforeSwap, (msg.sender, key, params, hookData)));

            // A length of 96 bytes is required to return a bytes4, a 32 byte delta, and an LP fee
            if (result.length != 96) InvalidHookResponse.selector.revertWith();

            // dynamic fee pools that want to override the cache fee, return a valid fee with the override flag. If override flag
            // is set but an invalid fee is returned, the transaction will revert. Otherwise the current LP fee will be used
            if (key.fee.isDynamicFee()) lpFeeOverride = result.parseFee();

            // skip this logic for the case where the hook return is 0
            if (self.hasPermission(BEFORE_SWAP_RETURNS_DELTA_FLAG)) {
                hookReturn = BeforeSwapDelta.wrap(result.parseReturnDelta());

                // any return in unspecified is passed to the afterSwap hook for handling
                int128 hookDeltaSpecified = hookReturn.getSpecifiedDelta();

                // Update the swap amount according to the hook's return, and check that the swap type doesn't change (exact input/output)
                if (hookDeltaSpecified != 0) {
                    bool exactInput = amountToSwap < 0;
                    amountToSwap += hookDeltaSpecified;
                    if (exactInput ? amountToSwap > 0 : amountToSwap < 0) {
                        HookDeltaExceedsSwapAmount.selector.revertWith();
                    }
                }
            }
        }
    }

    /// @notice calls afterSwap hook if permissioned and validates return value
    function afterSwap(
        IHooks self,
        PoolKey memory key,
        IPoolManager.SwapParams memory params,
        BalanceDelta swapDelta,
        bytes calldata hookData,
        BeforeSwapDelta beforeSwapHookReturn
    ) internal returns (BalanceDelta, BalanceDelta) {
        if (msg.sender == address(self)) return (swapDelta, BalanceDeltaLibrary.ZERO_DELTA);

        int128 hookDeltaSpecified = beforeSwapHookReturn.getSpecifiedDelta();
        int128 hookDeltaUnspecified = beforeSwapHookReturn.getUnspecifiedDelta();

        if (self.hasPermission(AFTER_SWAP_FLAG)) {
            hookDeltaUnspecified += self.callHookWithReturnDelta(
                abi.encodeCall(IHooks.afterSwap, (msg.sender, key, params, swapDelta, hookData)),
                self.hasPermission(AFTER_SWAP_RETURNS_DELTA_FLAG)
            ).toInt128();
        }

        BalanceDelta hookDelta;
        if (hookDeltaUnspecified != 0 || hookDeltaSpecified != 0) {
            hookDelta = (params.amountSpecified < 0 == params.zeroForOne)
                ? toBalanceDelta(hookDeltaSpecified, hookDeltaUnspecified)
                : toBalanceDelta(hookDeltaUnspecified, hookDeltaSpecified);

            // the caller has to pay for (or receive) the hook's delta
            swapDelta = swapDelta - hookDelta;
        }
        return (swapDelta, hookDelta);
    }

    /// @notice calls beforeDonate hook if permissioned and validates return value
    function beforeDonate(IHooks self, PoolKey memory key, uint256 amount0, uint256 amount1, bytes calldata hookData)
        internal
        noSelfCall(self)
    {
        if (self.hasPermission(BEFORE_DONATE_FLAG)) {
            self.callHook(abi.encodeCall(IHooks.beforeDonate, (msg.sender, key, amount0, amount1, hookData)));
        }
    }

    /// @notice calls afterDonate hook if permissioned and validates return value
    function afterDonate(IHooks self, PoolKey memory key, uint256 amount0, uint256 amount1, bytes calldata hookData)
        internal
        noSelfCall(self)
    {
        if (self.hasPermission(AFTER_DONATE_FLAG)) {
            self.callHook(abi.encodeCall(IHooks.afterDonate, (msg.sender, key, amount0, amount1, hookData)));
        }
    }

    function hasPermission(IHooks self, uint160 flag) internal pure returns (bool) {
        return uint160(address(self)) & flag != 0;
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/libraries/LPFeeLibrary.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {CustomRevert} from "./CustomRevert.sol";

/// @notice Library of helper functions for a pools LP fee
library LPFeeLibrary {
    using LPFeeLibrary for uint24;
    using CustomRevert for bytes4;

    /// @notice Thrown when the static or dynamic fee on a pool exceeds 100%.
    error LPFeeTooLarge(uint24 fee);

    /// @notice An lp fee of exactly 0b1000000... signals a dynamic fee pool. This isn't a valid static fee as it is > MAX_LP_FEE
    uint24 public constant DYNAMIC_FEE_FLAG = 0x800000;

    /// @notice the second bit of the fee returned by beforeSwap is used to signal if the stored LP fee should be overridden in this swap
    // only dynamic-fee pools can return a fee via the beforeSwap hook
    uint24 public constant OVERRIDE_FEE_FLAG = 0x400000;

    /// @notice mask to remove the override fee flag from a fee returned by the beforeSwaphook
    uint24 public constant REMOVE_OVERRIDE_MASK = 0xBFFFFF;

    /// @notice the lp fee is represented in hundredths of a bip, so the max is 100%
    uint24 public constant MAX_LP_FEE = 1000000;

    /// @notice returns true if a pool's LP fee signals that the pool has a dynamic fee
    /// @param self The fee to check
    /// @return bool True of the fee is dynamic
    function isDynamicFee(uint24 self) internal pure returns (bool) {
        return self == DYNAMIC_FEE_FLAG;
    }

    /// @notice returns true if an LP fee is valid, aka not above the maximum permitted fee
    /// @param self The fee to check
    /// @return bool True of the fee is valid
    function isValid(uint24 self) internal pure returns (bool) {
        return self <= MAX_LP_FEE;
    }

    /// @notice validates whether an LP fee is larger than the maximum, and reverts if invalid
    /// @param self The fee to validate
    function validate(uint24 self) internal pure {
        if (!self.isValid()) LPFeeTooLarge.selector.revertWith(self);
    }

    /// @notice gets and validates the initial LP fee for a pool. Dynamic fee pools have an initial fee of 0.
    /// @dev if a dynamic fee pool wants a non-0 initial fee, it should call `updateDynamicLPFee` in the afterInitialize hook
    /// @param self The fee to get the initial LP from
    /// @return initialFee 0 if the fee is dynamic, otherwise the fee (if valid)
    function getInitialLPFee(uint24 self) internal pure returns (uint24) {
        // the initial fee for a dynamic fee pool is 0
        if (self.isDynamicFee()) return 0;
        self.validate();
        return self;
    }

    /// @notice returns true if the fee has the override flag set (2nd highest bit of the uint24)
    /// @param self The fee to check
    /// @return bool True of the fee has the override flag set
    function isOverride(uint24 self) internal pure returns (bool) {
        return self & OVERRIDE_FEE_FLAG != 0;
    }

    /// @notice returns a fee with the override flag removed
    /// @param self The fee to remove the override flag from
    /// @return fee The fee without the override flag set
    function removeOverrideFlag(uint24 self) internal pure returns (uint24) {
        return self & REMOVE_OVERRIDE_MASK;
    }

    /// @notice Removes the override flag and validates the fee (reverts if the fee is too large)
    /// @param self The fee to remove the override flag from, and then validate
    /// @return fee The fee without the override flag set (if valid)
    function removeOverrideFlagAndValidate(uint24 self) internal pure returns (uint24 fee) {
        fee = self.removeOverrideFlag();
        fee.validate();
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/libraries/ParseBytes.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @notice Parses bytes returned from hooks and the byte selector used to check return selectors from hooks.
/// @dev parseSelector also is used to parse the expected selector
/// For parsing hook returns, note that all hooks return either bytes4 or (bytes4, 32-byte-delta) or (bytes4, 32-byte-delta, uint24).
library ParseBytes {
    function parseSelector(bytes memory result) internal pure returns (bytes4 selector) {
        // equivalent: (selector,) = abi.decode(result, (bytes4, int256));
        assembly ("memory-safe") {
            selector := mload(add(result, 0x20))
        }
    }

    function parseFee(bytes memory result) internal pure returns (uint24 lpFee) {
        // equivalent: (,, lpFee) = abi.decode(result, (bytes4, int256, uint24));
        assembly ("memory-safe") {
            lpFee := mload(add(result, 0x60))
        }
    }

    function parseReturnDelta(bytes memory result) internal pure returns (int256 hookReturn) {
        // equivalent: (, hookReturnDelta) = abi.decode(result, (bytes4, int256));
        assembly ("memory-safe") {
            hookReturn := mload(add(result, 0x40))
        }
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/libraries/SafeCast.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {CustomRevert} from "./CustomRevert.sol";

/// @title Safe casting methods
/// @notice Contains methods for safely casting between types
library SafeCast {
    using CustomRevert for bytes4;

    error SafeCastOverflow();

    /// @notice Cast a uint256 to a uint160, revert on overflow
    /// @param x The uint256 to be downcasted
    /// @return y The downcasted integer, now type uint160
    function toUint160(uint256 x) internal pure returns (uint160 y) {
        y = uint160(x);
        if (y != x) SafeCastOverflow.selector.revertWith();
    }

    /// @notice Cast a uint256 to a uint128, revert on overflow
    /// @param x The uint256 to be downcasted
    /// @return y The downcasted integer, now type uint128
    function toUint128(uint256 x) internal pure returns (uint128 y) {
        y = uint128(x);
        if (x != y) SafeCastOverflow.selector.revertWith();
    }

    /// @notice Cast a int128 to a uint128, revert on overflow or underflow
    /// @param x The int128 to be casted
    /// @return y The casted integer, now type uint128
    function toUint128(int128 x) internal pure returns (uint128 y) {
        if (x < 0) SafeCastOverflow.selector.revertWith();
        y = uint128(x);
    }

    /// @notice Cast a int256 to a int128, revert on overflow or underflow
    /// @param x The int256 to be downcasted
    /// @return y The downcasted integer, now type int128
    function toInt128(int256 x) internal pure returns (int128 y) {
        y = int128(x);
        if (y != x) SafeCastOverflow.selector.revertWith();
    }

    /// @notice Cast a uint256 to a int256, revert on overflow
    /// @param x The uint256 to be casted
    /// @return y The casted integer, now type int256
    function toInt256(uint256 x) internal pure returns (int256 y) {
        y = int256(x);
        if (y < 0) SafeCastOverflow.selector.revertWith();
    }

    /// @notice Cast a uint256 to a int128, revert on overflow
    /// @param x The uint256 to be downcasted
    /// @return The downcasted integer, now type int128
    function toInt128(uint256 x) internal pure returns (int128) {
        if (x >= 1 << 127) SafeCastOverflow.selector.revertWith();
        return int128(int256(x));
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/types/BalanceDelta.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {SafeCast} from "../libraries/SafeCast.sol";

/// @dev Two `int128` values packed into a single `int256` where the upper 128 bits represent the amount0
/// and the lower 128 bits represent the amount1.
type BalanceDelta is int256;

using {add as +, sub as -, eq as ==, neq as !=} for BalanceDelta global;
using BalanceDeltaLibrary for BalanceDelta global;
using SafeCast for int256;

function toBalanceDelta(int128 _amount0, int128 _amount1) pure returns (BalanceDelta balanceDelta) {
    assembly ("memory-safe") {
        balanceDelta := or(shl(128, _amount0), and(sub(shl(128, 1), 1), _amount1))
    }
}

function add(BalanceDelta a, BalanceDelta b) pure returns (BalanceDelta) {
    int256 res0;
    int256 res1;
    assembly ("memory-safe") {
        let a0 := sar(128, a)
        let a1 := signextend(15, a)
        let b0 := sar(128, b)
        let b1 := signextend(15, b)
        res0 := add(a0, b0)
        res1 := add(a1, b1)
    }
    return toBalanceDelta(res0.toInt128(), res1.toInt128());
}

function sub(BalanceDelta a, BalanceDelta b) pure returns (BalanceDelta) {
    int256 res0;
    int256 res1;
    assembly ("memory-safe") {
        let a0 := sar(128, a)
        let a1 := signextend(15, a)
        let b0 := sar(128, b)
        let b1 := signextend(15, b)
        res0 := sub(a0, b0)
        res1 := sub(a1, b1)
    }
    return toBalanceDelta(res0.toInt128(), res1.toInt128());
}

function eq(BalanceDelta a, BalanceDelta b) pure returns (bool) {
    return BalanceDelta.unwrap(a) == BalanceDelta.unwrap(b);
}

function neq(BalanceDelta a, BalanceDelta b) pure returns (bool) {
    return BalanceDelta.unwrap(a) != BalanceDelta.unwrap(b);
}

/// @notice Library for getting the amount0 and amount1 deltas from the BalanceDelta type
library BalanceDeltaLibrary {
    /// @notice A BalanceDelta of 0
    BalanceDelta public constant ZERO_DELTA = BalanceDelta.wrap(0);

    function amount0(BalanceDelta balanceDelta) internal pure returns (int128 _amount0) {
        assembly ("memory-safe") {
            _amount0 := sar(128, balanceDelta)
        }
    }

    function amount1(BalanceDelta balanceDelta) internal pure returns (int128 _amount1) {
        assembly ("memory-safe") {
            _amount1 := signextend(15, balanceDelta)
        }
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/types/BeforeSwapDelta.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Return type of the beforeSwap hook.
// Upper 128 bits is the delta in specified tokens. Lower 128 bits is delta in unspecified tokens (to match the afterSwap hook)
type BeforeSwapDelta is int256;

// Creates a BeforeSwapDelta from specified and unspecified
function toBeforeSwapDelta(int128 deltaSpecified, int128 deltaUnspecified)
    pure
    returns (BeforeSwapDelta beforeSwapDelta)
{
    assembly ("memory-safe") {
        beforeSwapDelta := or(shl(128, deltaSpecified), and(sub(shl(128, 1), 1), deltaUnspecified))
    }
}

/// @notice Library for getting the specified and unspecified deltas from the BeforeSwapDelta type
library BeforeSwapDeltaLibrary {
    /// @notice A BeforeSwapDelta of 0
    BeforeSwapDelta public constant ZERO_DELTA = BeforeSwapDelta.wrap(0);

    /// extracts int128 from the upper 128 bits of the BeforeSwapDelta
    /// returned by beforeSwap
    function getSpecifiedDelta(BeforeSwapDelta delta) internal pure returns (int128 deltaSpecified) {
        assembly ("memory-safe") {
            deltaSpecified := sar(128, delta)
        }
    }

    /// extracts int128 from the lower 128 bits of the BeforeSwapDelta
    /// returned by beforeSwap and afterSwap
    function getUnspecifiedDelta(BeforeSwapDelta delta) internal pure returns (int128 deltaUnspecified) {
        assembly ("memory-safe") {
            deltaUnspecified := signextend(15, delta)
        }
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/types/Currency.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20Minimal} from "../interfaces/external/IERC20Minimal.sol";
import {CustomRevert} from "../libraries/CustomRevert.sol";

type Currency is address;

using {greaterThan as >, lessThan as <, greaterThanOrEqualTo as >=, equals as ==} for Currency global;
using CurrencyLibrary for Currency global;

function equals(Currency currency, Currency other) pure returns (bool) {
    return Currency.unwrap(currency) == Currency.unwrap(other);
}

function greaterThan(Currency currency, Currency other) pure returns (bool) {
    return Currency.unwrap(currency) > Currency.unwrap(other);
}

function lessThan(Currency currency, Currency other) pure returns (bool) {
    return Currency.unwrap(currency) < Currency.unwrap(other);
}

function greaterThanOrEqualTo(Currency currency, Currency other) pure returns (bool) {
    return Currency.unwrap(currency) >= Currency.unwrap(other);
}

/// @title CurrencyLibrary
/// @dev This library allows for transferring and holding native tokens and ERC20 tokens
library CurrencyLibrary {
    /// @notice Additional context for ERC-7751 wrapped error when a native transfer fails
    error NativeTransferFailed();

    /// @notice Additional context for ERC-7751 wrapped error when an ERC20 transfer fails
    error ERC20TransferFailed();

    /// @notice A constant to represent the native currency
    Currency public constant ADDRESS_ZERO = Currency.wrap(address(0));

    function transfer(Currency currency, address to, uint256 amount) internal {
        // altered from https://github.com/transmissions11/solmate/blob/44a9963d4c78111f77caa0e65d677b8b46d6f2e6/src/utils/SafeTransferLib.sol
        // modified custom error selectors

        bool success;
        if (currency.isAddressZero()) {
            assembly ("memory-safe") {
                // Transfer the ETH and revert if it fails.
                success := call(gas(), to, amount, 0, 0, 0, 0)
            }
            // revert with NativeTransferFailed, containing the bubbled up error as an argument
            if (!success) {
                CustomRevert.bubbleUpAndRevertWith(to, bytes4(0), NativeTransferFailed.selector);
            }
        } else {
            assembly ("memory-safe") {
                // Get a pointer to some free memory.
                let fmp := mload(0x40)

                // Write the abi-encoded calldata into memory, beginning with the function selector.
                mstore(fmp, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
                mstore(add(fmp, 4), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
                mstore(add(fmp, 36), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

                success :=
                    and(
                        // Set success to whether the call reverted, if not we check it either
                        // returned exactly 1 (can't just be non-zero data), or had no return data.
                        or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
                        // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
                        // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
                        // Counterintuitively, this call must be positioned second to the or() call in the
                        // surrounding and() call or else returndatasize() will be zero during the computation.
                        call(gas(), currency, 0, fmp, 68, 0, 32)
                    )

                // Now clean the memory we used
                mstore(fmp, 0) // 4 byte `selector` and 28 bytes of `to` were stored here
                mstore(add(fmp, 0x20), 0) // 4 bytes of `to` and 28 bytes of `amount` were stored here
                mstore(add(fmp, 0x40), 0) // 4 bytes of `amount` were stored here
            }
            // revert with ERC20TransferFailed, containing the bubbled up error as an argument
            if (!success) {
                CustomRevert.bubbleUpAndRevertWith(
                    Currency.unwrap(currency), IERC20Minimal.transfer.selector, ERC20TransferFailed.selector
                );
            }
        }
    }

    function balanceOfSelf(Currency currency) internal view returns (uint256) {
        if (currency.isAddressZero()) {
            return address(this).balance;
        } else {
            return IERC20Minimal(Currency.unwrap(currency)).balanceOf(address(this));
        }
    }

    function balanceOf(Currency currency, address owner) internal view returns (uint256) {
        if (currency.isAddressZero()) {
            return owner.balance;
        } else {
            return IERC20Minimal(Currency.unwrap(currency)).balanceOf(owner);
        }
    }

    function isAddressZero(Currency currency) internal pure returns (bool) {
        return Currency.unwrap(currency) == Currency.unwrap(ADDRESS_ZERO);
    }

    function toId(Currency currency) internal pure returns (uint256) {
        return uint160(Currency.unwrap(currency));
    }

    // If the upper 12 bytes are non-zero, they will be zero-ed out
    // Therefore, fromId() and toId() are not inverses of each other
    function fromId(uint256 id) internal pure returns (Currency) {
        return Currency.wrap(address(uint160(id)));
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/types/PoolId.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PoolKey} from "./PoolKey.sol";

type PoolId is bytes32;

/// @notice Library for computing the ID of a pool
library PoolIdLibrary {
    /// @notice Returns value equal to keccak256(abi.encode(poolKey))
    function toId(PoolKey memory poolKey) internal pure returns (PoolId poolId) {
        assembly ("memory-safe") {
            // 0xa0 represents the total size of the poolKey struct (5 slots of 32 bytes)
            poolId := keccak256(poolKey, 0xa0)
        }
    }
}

// ============================================================
// FILE: lib/v4-periphery/lib/v4-core/src/types/PoolKey.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Currency} from "./Currency.sol";
import {IHooks} from "../interfaces/IHooks.sol";
import {PoolIdLibrary} from "./PoolId.sol";

using PoolIdLibrary for PoolKey global;

/// @notice Returns the key for identifying a pool
struct PoolKey {
    /// @notice The lower currency of the pool, sorted numerically
    Currency currency0;
    /// @notice The higher currency of the pool, sorted numerically
    Currency currency1;
    /// @notice The pool LP fee, capped at 1_000_000. If the highest bit is 1, the pool has a dynamic fee and must be exactly equal to 0x800000
    uint24 fee;
    /// @notice Ticks that involve positions must be a multiple of tick spacing
    int24 tickSpacing;
    /// @notice The hooks of the pool
    IHooks hooks;
}

// ============================================================
// FILE: lib/v4-periphery/src/interfaces/IImmutableState.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";

/// @title IImmutableState
/// @notice Interface for the ImmutableState contract
interface IImmutableState {
    /// @notice The Uniswap v4 PoolManager contract
    function poolManager() external view returns (IPoolManager);
}

// ============================================================
// FILE: lib/v4-periphery/src/interfaces/IV4Router.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {PathKey} from "../libraries/PathKey.sol";
import {IImmutableState} from "./IImmutableState.sol";

/// @title IV4Router
/// @notice Interface for the V4Router contract
interface IV4Router is IImmutableState {
    /// @notice Emitted when an exactInput swap does not receive its minAmountOut
    error V4TooLittleReceived(uint256 minAmountOutReceived, uint256 amountReceived);
    /// @notice Emitted when an exactOutput is asked for more than its maxAmountIn
    error V4TooMuchRequested(uint256 maxAmountInRequested, uint256 amountRequested);

    /// @notice Parameters for a single-hop exact-input swap
    struct ExactInputSingleParams {
        PoolKey poolKey;
        bool zeroForOne;
        uint128 amountIn;
        uint128 amountOutMinimum;
        bytes hookData;
    }

    /// @notice Parameters for a multi-hop exact-input swap
    struct ExactInputParams {
        Currency currencyIn;
        PathKey[] path;
        uint128 amountIn;
        uint128 amountOutMinimum;
    }

    /// @notice Parameters for a single-hop exact-output swap
    struct ExactOutputSingleParams {
        PoolKey poolKey;
        bool zeroForOne;
        uint128 amountOut;
        uint128 amountInMaximum;
        bytes hookData;
    }

    /// @notice Parameters for a multi-hop exact-output swap
    struct ExactOutputParams {
        Currency currencyOut;
        PathKey[] path;
        uint128 amountOut;
        uint128 amountInMaximum;
    }
}

// ============================================================
// FILE: lib/v4-periphery/src/libraries/CalldataDecoder.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {IV4Router} from "../interfaces/IV4Router.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";

/// @title Library for abi decoding in calldata
library CalldataDecoder {
    using CalldataDecoder for bytes;

    error SliceOutOfBounds();

    /// @notice mask used for offsets and lengths to ensure no overflow
    /// @dev no sane abi encoding will pass in an offset or length greater than type(uint32).max
    ///      (note that this does deviate from standard solidity behavior and offsets/lengths will
    ///      be interpreted as mod type(uint32).max which will only impact malicious/buggy callers)
    uint256 constant OFFSET_OR_LENGTH_MASK = 0xffffffff;
    uint256 constant OFFSET_OR_LENGTH_MASK_AND_WORD_ALIGN = 0xffffffe0;

    /// @notice equivalent to SliceOutOfBounds.selector, stored in least-significant bits
    uint256 constant SLICE_ERROR_SELECTOR = 0x3b99b53d;

    /// @dev equivalent to: abi.decode(params, (bytes, bytes[])) in calldata (requires strict abi encoding)
    function decodeActionsRouterParams(bytes calldata _bytes)
        internal
        pure
        returns (bytes calldata actions, bytes[] calldata params)
    {
        assembly ("memory-safe") {
            // Strict encoding requires that the data begin with:
            // 0x00: 0x40 (offset to `actions.length`)
            // 0x20: 0x60 + actions.length (offset to `params.length`)
            // 0x40: `actions.length`
            // 0x60: beginning of actions

            // Verify actions offset matches strict encoding
            let invalidData := xor(calldataload(_bytes.offset), 0x40)
            actions.offset := add(_bytes.offset, 0x60)
            actions.length := and(calldataload(add(_bytes.offset, 0x40)), OFFSET_OR_LENGTH_MASK)

            // Round actions length up to be word-aligned, and add 0x60 (for the first 3 words of encoding)
            let paramsLengthOffset := add(and(add(actions.length, 0x1f), OFFSET_OR_LENGTH_MASK_AND_WORD_ALIGN), 0x60)
            // Verify params offset matches strict encoding
            invalidData := or(invalidData, xor(calldataload(add(_bytes.offset, 0x20)), paramsLengthOffset))
            let paramsLengthPointer := add(_bytes.offset, paramsLengthOffset)
            params.length := and(calldataload(paramsLengthPointer), OFFSET_OR_LENGTH_MASK)
            params.offset := add(paramsLengthPointer, 0x20)

            // Expected offset for `params[0]` is params.length * 32
            // As the first `params.length` slots are pointers to each of the array element lengths
            let tailOffset := shl(5, params.length)
            let expectedOffset := tailOffset

            for { let offset := 0 } lt(offset, tailOffset) { offset := add(offset, 32) } {
                let itemLengthOffset := calldataload(add(params.offset, offset))
                // Verify that the offset matches the expected offset from strict encoding
                invalidData := or(invalidData, xor(itemLengthOffset, expectedOffset))
                let itemLengthPointer := add(params.offset, itemLengthOffset)
                let length :=
                    add(and(add(calldataload(itemLengthPointer), 0x1f), OFFSET_OR_LENGTH_MASK_AND_WORD_ALIGN), 0x20)
                expectedOffset := add(expectedOffset, length)
            }

            // if the data encoding was invalid, or the provided bytes string isnt as long as the encoding says, revert
            if or(invalidData, lt(add(_bytes.length, _bytes.offset), add(params.offset, expectedOffset))) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
        }
    }

    /// @dev equivalent to: abi.decode(params, (uint256, uint256, uint128, uint128, bytes)) in calldata
    function decodeModifyLiquidityParams(bytes calldata params)
        internal
        pure
        returns (uint256 tokenId, uint256 liquidity, uint128 amount0, uint128 amount1, bytes calldata hookData)
    {
        // no length check performed, as there is a length check in `toBytes`
        assembly ("memory-safe") {
            tokenId := calldataload(params.offset)
            liquidity := calldataload(add(params.offset, 0x20))
            amount0 := calldataload(add(params.offset, 0x40))
            amount1 := calldataload(add(params.offset, 0x60))
        }

        hookData = params.toBytes(4);
    }

    /// @dev equivalent to: abi.decode(params, (uint256, uint128, uint128, bytes)) in calldata
    function decodeIncreaseLiquidityFromDeltasParams(bytes calldata params)
        internal
        pure
        returns (uint256 tokenId, uint128 amount0Max, uint128 amount1Max, bytes calldata hookData)
    {
        // no length check performed, as there is a length check in `toBytes`
        assembly ("memory-safe") {
            tokenId := calldataload(params.offset)
            amount0Max := calldataload(add(params.offset, 0x20))
            amount1Max := calldataload(add(params.offset, 0x40))
        }

        hookData = params.toBytes(3);
    }

    /// @dev equivalent to: abi.decode(params, (PoolKey, int24, int24, uint256, uint128, uint128, address, bytes)) in calldata
    function decodeMintParams(bytes calldata params)
        internal
        pure
        returns (
            PoolKey calldata poolKey,
            int24 tickLower,
            int24 tickUpper,
            uint256 liquidity,
            uint128 amount0Max,
            uint128 amount1Max,
            address owner,
            bytes calldata hookData
        )
    {
        // no length check performed, as there is a length check in `toBytes`
        assembly ("memory-safe") {
            poolKey := params.offset
            tickLower := calldataload(add(params.offset, 0xa0))
            tickUpper := calldataload(add(params.offset, 0xc0))
            liquidity := calldataload(add(params.offset, 0xe0))
            amount0Max := calldataload(add(params.offset, 0x100))
            amount1Max := calldataload(add(params.offset, 0x120))
            owner := calldataload(add(params.offset, 0x140))
        }
        hookData = params.toBytes(11);
    }

    /// @dev equivalent to: abi.decode(params, (PoolKey, int24, int24, uint128, uint128, address, bytes)) in calldata
    function decodeMintFromDeltasParams(bytes calldata params)
        internal
        pure
        returns (
            PoolKey calldata poolKey,
            int24 tickLower,
            int24 tickUpper,
            uint128 amount0Max,
            uint128 amount1Max,
            address owner,
            bytes calldata hookData
        )
    {
        // no length check performed, as there is a length check in `toBytes`
        assembly ("memory-safe") {
            poolKey := params.offset
            tickLower := calldataload(add(params.offset, 0xa0))
            tickUpper := calldataload(add(params.offset, 0xc0))
            amount0Max := calldataload(add(params.offset, 0xe0))
            amount1Max := calldataload(add(params.offset, 0x100))
            owner := calldataload(add(params.offset, 0x120))
        }

        hookData = params.toBytes(10);
    }

    /// @dev equivalent to: abi.decode(params, (uint256, uint128, uint128, bytes)) in calldata
    function decodeBurnParams(bytes calldata params)
        internal
        pure
        returns (uint256 tokenId, uint128 amount0Min, uint128 amount1Min, bytes calldata hookData)
    {
        // no length check performed, as there is a length check in `toBytes`
        assembly ("memory-safe") {
            tokenId := calldataload(params.offset)
            amount0Min := calldataload(add(params.offset, 0x20))
            amount1Min := calldataload(add(params.offset, 0x40))
        }

        hookData = params.toBytes(3);
    }

    /// @dev equivalent to: abi.decode(params, (IV4Router.ExactInputParams))
    function decodeSwapExactInParams(bytes calldata params)
        internal
        pure
        returns (IV4Router.ExactInputParams calldata swapParams)
    {
        // ExactInputParams is a variable length struct so we just have to look up its location
        assembly ("memory-safe") {
            // only safety checks for the minimum length, where path is empty
            // 0xa0 = 5 * 0x20 -> 3 elements, path offset, and path length 0
            if lt(params.length, 0xa0) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            swapParams := add(params.offset, calldataload(params.offset))
        }
    }

    /// @dev equivalent to: abi.decode(params, (IV4Router.ExactInputSingleParams))
    function decodeSwapExactInSingleParams(bytes calldata params)
        internal
        pure
        returns (IV4Router.ExactInputSingleParams calldata swapParams)
    {
        // ExactInputSingleParams is a variable length struct so we just have to look up its location
        assembly ("memory-safe") {
            // only safety checks for the minimum length, where hookData is empty
            // 0x140 = 10 * 0x20 -> 8 elements, bytes offset, and bytes length 0
            if lt(params.length, 0x140) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            swapParams := add(params.offset, calldataload(params.offset))
        }
    }

    /// @dev equivalent to: abi.decode(params, (IV4Router.ExactOutputParams))
    function decodeSwapExactOutParams(bytes calldata params)
        internal
        pure
        returns (IV4Router.ExactOutputParams calldata swapParams)
    {
        // ExactOutputParams is a variable length struct so we just have to look up its location
        assembly ("memory-safe") {
            // only safety checks for the minimum length, where path is empty
            // 0xa0 = 5 * 0x20 -> 3 elements, path offset, and path length 0
            if lt(params.length, 0xa0) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            swapParams := add(params.offset, calldataload(params.offset))
        }
    }

    /// @dev equivalent to: abi.decode(params, (IV4Router.ExactOutputSingleParams))
    function decodeSwapExactOutSingleParams(bytes calldata params)
        internal
        pure
        returns (IV4Router.ExactOutputSingleParams calldata swapParams)
    {
        // ExactOutputSingleParams is a variable length struct so we just have to look up its location
        assembly ("memory-safe") {
            // only safety checks for the minimum length, where hookData is empty
            // 0x140 = 10 * 0x20 -> 8 elements, bytes offset, and bytes length 0
            if lt(params.length, 0x140) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            swapParams := add(params.offset, calldataload(params.offset))
        }
    }

    /// @dev equivalent to: abi.decode(params, (Currency)) in calldata
    function decodeCurrency(bytes calldata params) internal pure returns (Currency currency) {
        assembly ("memory-safe") {
            if lt(params.length, 0x20) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            currency := calldataload(params.offset)
        }
    }

    /// @dev equivalent to: abi.decode(params, (Currency, Currency)) in calldata
    function decodeCurrencyPair(bytes calldata params) internal pure returns (Currency currency0, Currency currency1) {
        assembly ("memory-safe") {
            if lt(params.length, 0x40) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            currency0 := calldataload(params.offset)
            currency1 := calldataload(add(params.offset, 0x20))
        }
    }

    /// @dev equivalent to: abi.decode(params, (Currency, Currency, address)) in calldata
    function decodeCurrencyPairAndAddress(bytes calldata params)
        internal
        pure
        returns (Currency currency0, Currency currency1, address _address)
    {
        assembly ("memory-safe") {
            if lt(params.length, 0x60) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            currency0 := calldataload(params.offset)
            currency1 := calldataload(add(params.offset, 0x20))
            _address := calldataload(add(params.offset, 0x40))
        }
    }

    /// @dev equivalent to: abi.decode(params, (Currency, address)) in calldata
    function decodeCurrencyAndAddress(bytes calldata params)
        internal
        pure
        returns (Currency currency, address _address)
    {
        assembly ("memory-safe") {
            if lt(params.length, 0x40) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            currency := calldataload(params.offset)
            _address := calldataload(add(params.offset, 0x20))
        }
    }

    /// @dev equivalent to: abi.decode(params, (Currency, address, uint256)) in calldata
    function decodeCurrencyAddressAndUint256(bytes calldata params)
        internal
        pure
        returns (Currency currency, address _address, uint256 amount)
    {
        assembly ("memory-safe") {
            if lt(params.length, 0x60) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            currency := calldataload(params.offset)
            _address := calldataload(add(params.offset, 0x20))
            amount := calldataload(add(params.offset, 0x40))
        }
    }

    /// @dev equivalent to: abi.decode(params, (Currency, uint256)) in calldata
    function decodeCurrencyAndUint256(bytes calldata params)
        internal
        pure
        returns (Currency currency, uint256 amount)
    {
        assembly ("memory-safe") {
            if lt(params.length, 0x40) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            currency := calldataload(params.offset)
            amount := calldataload(add(params.offset, 0x20))
        }
    }

    /// @dev equivalent to: abi.decode(params, (uint256)) in calldata
    function decodeUint256(bytes calldata params) internal pure returns (uint256 amount) {
        assembly ("memory-safe") {
            if lt(params.length, 0x20) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            amount := calldataload(params.offset)
        }
    }

    /// @dev equivalent to: abi.decode(params, (Currency, uint256, bool)) in calldata
    function decodeCurrencyUint256AndBool(bytes calldata params)
        internal
        pure
        returns (Currency currency, uint256 amount, bool boolean)
    {
        assembly ("memory-safe") {
            if lt(params.length, 0x60) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
            currency := calldataload(params.offset)
            amount := calldataload(add(params.offset, 0x20))
            boolean := calldataload(add(params.offset, 0x40))
        }
    }

    /// @notice Decode the `_arg`-th element in `_bytes` as `bytes`
    /// @param _bytes The input bytes string to extract a bytes string from
    /// @param _arg The index of the argument to extract
    function toBytes(bytes calldata _bytes, uint256 _arg) internal pure returns (bytes calldata res) {
        uint256 length;
        assembly ("memory-safe") {
            // The offset of the `_arg`-th element is `32 * arg`, which stores the offset of the length pointer.
            // shl(5, x) is equivalent to mul(32, x)
            let lengthPtr :=
                add(_bytes.offset, and(calldataload(add(_bytes.offset, shl(5, _arg))), OFFSET_OR_LENGTH_MASK))
            // the number of bytes in the bytes string
            length := and(calldataload(lengthPtr), OFFSET_OR_LENGTH_MASK)
            // the offset where the bytes string begins
            let offset := add(lengthPtr, 0x20)
            // assign the return parameters
            res.length := length
            res.offset := offset

            // if the provided bytes string isnt as long as the encoding says, revert
            if lt(add(_bytes.length, _bytes.offset), add(length, offset)) {
                mstore(0, SLICE_ERROR_SELECTOR)
                revert(0x1c, 4)
            }
        }
    }
}

// ============================================================
// FILE: lib/v4-periphery/src/libraries/PathKey.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {IHooks} from "@uniswap/v4-core/src/interfaces/IHooks.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";

struct PathKey {
    Currency intermediateCurrency;
    uint24 fee;
    int24 tickSpacing;
    IHooks hooks;
    bytes hookData;
}

using PathKeyLibrary for PathKey global;

/// @title PathKey Library
/// @notice Functions for working with PathKeys
library PathKeyLibrary {
    /// @notice Get the pool and swap direction for a given PathKey
    /// @param params the given PathKey
    /// @param currencyIn the input currency
    /// @return poolKey the pool key of the swap
    /// @return zeroForOne the direction of the swap, true if currency0 is being swapped for currency1
    function getPoolAndSwapDirection(PathKey calldata params, Currency currencyIn)
        internal
        pure
        returns (PoolKey memory poolKey, bool zeroForOne)
    {
        Currency currencyOut = params.intermediateCurrency;
        (Currency currency0, Currency currency1) =
            currencyIn < currencyOut ? (currencyIn, currencyOut) : (currencyOut, currencyIn);

        zeroForOne = currencyIn == currency0;
        poolKey = PoolKey(currency0, currency1, params.fee, params.tickSpacing, params.hooks);
    }
}

// ============================================================
// FILE: src/base/BaseKEMHook.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IKEMHook} from '../interfaces/IKEMHook.sol';

import {Rescuable} from './Rescuable.sol';
import {UnorderedNonce} from './UnorderedNonce.sol';

import {Ownable} from 'openzeppelin-contracts/contracts/access/Ownable.sol';

/**
 * @title BaseKEMHook
 * @notice Abstract contract containing common implementation for KEMHook contracts
 */
abstract contract BaseKEMHook is IKEMHook, Rescuable, Ownable, UnorderedNonce {
  /// @inheritdoc IKEMHook
  mapping(address account => bool status) public claimable;

  /// @inheritdoc IKEMHook
  address public quoteSigner;

  /// @inheritdoc IKEMHook
  address public egRecipient;

  constructor(
    address initialOwner,
    address[] memory initialClaimableAccounts,
    address initialQuoteSigner,
    address initialEgRecipient
  ) Ownable(initialOwner) {
    _updateClaimable(initialClaimableAccounts, true);
    _updateQuoteSigner(initialQuoteSigner);
    _updateEgRecipient(initialEgRecipient);
  }

  /// @inheritdoc IKEMHook
  function updateClaimable(address[] calldata accounts, bool newStatus) public onlyOwner {
    _updateClaimable(accounts, newStatus);
  }

  /// @inheritdoc IKEMHook
  function updateQuoteSigner(address newSigner) public onlyOwner {
    _updateQuoteSigner(newSigner);
  }

  /// @inheritdoc IKEMHook
  function updateEgRecipient(address newRecipient) public onlyOwner {
    _updateEgRecipient(newRecipient);
  }

  function _updateClaimable(address[] memory accounts, bool newStatus) internal {
    for (uint256 i = 0; i < accounts.length; i++) {
      claimable[accounts[i]] = newStatus;

      emit UpdateClaimable(accounts[i], newStatus);
    }
  }

  function _updateQuoteSigner(address newSigner) internal {
    require(newSigner != address(0), InvalidAddress());
    quoteSigner = newSigner;

    emit UpdateQuoteSigner(newSigner);
  }

  function _updateEgRecipient(address newRecipient) internal {
    require(newRecipient != address(0), InvalidAddress());
    egRecipient = newRecipient;

    emit UpdateEgRecipient(newRecipient);
  }

  function _checkOwner() internal view override(Rescuable, Ownable) {
    Ownable._checkOwner();
  }
}

// ============================================================
// FILE: src/base/Rescuable.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IRescuable} from '../interfaces/IRescuable.sol';

import {IERC1155} from 'openzeppelin-contracts/contracts/token/ERC1155/IERC1155.sol';
import {IERC20, SafeERC20} from 'openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol';
import {IERC721} from 'openzeppelin-contracts/contracts/token/ERC721/IERC721.sol';
import {Address} from 'openzeppelin-contracts/contracts/utils/Address.sol';

abstract contract Rescuable is IRescuable {
  using SafeERC20 for IERC20;

  /// @inheritdoc IRescuable
  function rescueERC20s(
    IERC20[] calldata tokens,
    uint256[] memory amounts,
    address payable recipient
  ) external {
    _checkOwner();
    require(recipient != address(0), InvalidAddress());
    require(tokens.length == amounts.length, MismatchedArrayLengths());

    for (uint256 i = 0; i < tokens.length; i++) {
      amounts[i] = _transfer(tokens[i], amounts[i], recipient);
    }

    emit RescueERC20s(tokens, amounts, recipient);
  }

  /// @inheritdoc IRescuable
  function rescueERC721s(IERC721[] calldata tokens, uint256[] memory tokenIds, address recipient)
    external
  {
    _checkOwner();
    require(recipient != address(0), InvalidAddress());
    require(tokens.length == tokenIds.length, MismatchedArrayLengths());

    for (uint256 i = 0; i < tokens.length; i++) {
      tokens[i].safeTransferFrom(address(this), recipient, tokenIds[i]);
    }

    emit RescueERC721s(tokens, tokenIds, recipient);
  }

  /// @inheritdoc IRescuable
  function rescueERC1155s(
    IERC1155[] calldata tokens,
    uint256[] memory tokenIds,
    uint256[] memory amounts,
    address recipient
  ) external {
    _checkOwner();
    require(recipient != address(0), InvalidAddress());
    require(tokens.length == tokenIds.length, MismatchedArrayLengths());
    require(tokens.length == amounts.length, MismatchedArrayLengths());

    for (uint256 i = 0; i < tokens.length; i++) {
      if (amounts[i] == 0) {
        amounts[i] = tokens[i].balanceOf(address(this), tokenIds[i]);
      }
      if (amounts[i] > 0) {
        tokens[i].safeTransferFrom(address(this), recipient, tokenIds[i], amounts[i], '');
      }
    }

    emit RescueERC1155s(tokens, tokenIds, amounts, recipient);
  }

  function _transfer(IERC20 token, uint256 amount, address payable recipient)
    internal
    returns (uint256)
  {
    if (address(token) == address(0)) {
      if (amount == 0) {
        amount = address(this).balance;
      }
      if (amount > 0) {
        Address.sendValue(recipient, amount);
      }
    } else {
      if (amount == 0) {
        amount = token.balanceOf(address(this));
      }
      if (amount > 0) {
        token.safeTransfer(recipient, amount);
      }
    }

    return amount;
  }

  function _checkOwner() internal view virtual;
}

// ============================================================
// FILE: src/base/UnorderedNonce.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IUnorderedNonce} from '../interfaces/IUnorderedNonce.sol';

/**
 * @title Unordered Nonce
 * @notice Contract state and methods for using unordered nonces in signatures
 */
contract UnorderedNonce is IUnorderedNonce {
  /// @inheritdoc IUnorderedNonce
  mapping(uint256 word => uint256 bitmap) public nonces;

  /// @notice Consume a nonce, reverting if it has already been used
  /// @param nonce uint256, the nonce to consume. The top 248 bits are the word, the bottom 8 bits indicate the bit position
  function _useUnorderedNonce(uint256 nonce) internal {
    // ignore nonce 0 for flexibility
    if (nonce == 0) return;

    uint256 wordPos = nonce >> 8;
    uint256 bitPos = uint8(nonce);

    uint256 bit = 1 << bitPos;
    uint256 flipped = nonces[wordPos] ^= bit;
    if (flipped & bit == 0) revert NonceAlreadyUsed(nonce);

    emit UseNonce(nonce);
  }
}

// ============================================================
// FILE: src/interfaces/ICommon.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title ICommon
 * @notice Common interface for all contracts
 */
interface ICommon {
  /// @notice Thrown when trying to update with zero address
  error InvalidAddress();

  /// @notice Thrown when the lengths of the arrays are mismatched
  error MismatchedArrayLengths();
}

// ============================================================
// FILE: src/interfaces/IKEMHook.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ICommon} from './ICommon.sol';

/**
 * @title IKEMHook
 * @notice Common interface for the KEMHook contracts
 */
interface IKEMHook is ICommon {
  /// @notice Thrown when trying to claim tokens by non-claimable account
  error NonClaimableAccount(address account);

  /// @notice Thrown when trying to swap in exact output mode
  error ExactOutputDisabled();

  /**
   * @notice Thrown when the signature is expired
   * @param expiryTime the expiry time
   * @param currentTime the current time
   */
  error ExpiredSignature(uint256 expiryTime, uint256 currentTime);

  /// @notice Thrown when the signature is invalid
  error InvalidSignature();

  /**
   * @notice Thrown when the input amount exceeds the maximum amount
   * @param maxAmountIn the maximum input amount
   * @param amountIn the actual input amount
   */
  error ExceededMaxAmountIn(int256 maxAmountIn, int256 amountIn);

  /// @notice Emitted when the claimable status of an account is updated
  event UpdateClaimable(address indexed account, bool status);

  /// @notice Emitted when the quote signer is updated
  event UpdateQuoteSigner(address indexed quoteSigner);

  /// @notice Emitted when the equilibrium-gain recipient is updated
  event UpdateEgRecipient(address indexed egRecipient);

  /// @notice Emitted when a equilibrium-gain token is absorbed
  event AbsorbEgToken(bytes32 indexed poolId, address indexed token, int256 amount);

  /// @notice Emitted when some of equilibrium-gain tokens are claimed
  event ClaimEgTokens(address indexed egRecipient, address[] tokens, uint256[] amounts);

  /// @notice Return the claimable status of an account
  function claimable(address) external view returns (bool);

  /// @notice Return the address responsible for signing the quote
  function quoteSigner() external view returns (address);

  /// @notice Return the address of the equilibrium-gain recipient
  function egRecipient() external view returns (address);

  /**
   * @notice Update the claimable status of some accounts
   * @notice Can only be called by the current owner
   * @param accounts the addresses of the accounts to update
   * @param newStatus the new status for the accounts
   */
  function updateClaimable(address[] calldata accounts, bool newStatus) external;

  /**
   * @notice Update the quote signer
   * @notice Can only be called by the current owner
   * @param newSigner the address of the new quote signer
   */
  function updateQuoteSigner(address newSigner) external;

  /**
   * @notice Update the equilibrium-gain recipient
   * @notice Can only be called by the current owner
   * @param newRecipient the address of the new equilibrium-gain recipient
   */
  function updateEgRecipient(address newRecipient) external;

  /**
   * @notice Claim some of equilibrium-gain tokens accrued by the hook
   * @notice Can only be called by the claimable accounts
   * @param tokens the addresses of the tokens to claim
   * @param amounts the amounts of the tokens to claim, set to 0 to claim all
   */
  function claimEgTokens(address[] calldata tokens, uint256[] calldata amounts) external;
}

// ============================================================
// FILE: src/interfaces/IRescuable.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {ICommon} from './ICommon.sol';

import {IERC1155} from 'openzeppelin-contracts/contracts/token/ERC1155/IERC1155.sol';
import {IERC20, SafeERC20} from 'openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol';
import {IERC721} from 'openzeppelin-contracts/contracts/token/ERC721/IERC721.sol';

/**
 * @title IRescuable
 * @notice Interface for the Rescuable contract
 */
interface IRescuable is ICommon {
  /// @notice Emitted when some of ERC20 tokens are rescued
  event RescueERC20s(IERC20[] tokens, uint256[] amounts, address recipient);

  /// @notice Emitted when some of ERC721 tokens are rescued
  event RescueERC721s(IERC721[] tokens, uint256[] tokenIds, address recipient);

  /// @notice Emitted when some of ERC1155 tokens are rescued
  event RescueERC1155s(IERC1155[] tokens, uint256[] tokenIds, uint256[] amounts, address recipient);

  /**
   * @notice Rescue some of ERC20 tokens stuck in the contract
   * @notice Can only be called by the current owner
   * @param tokens the addresses of the tokens to rescue
   * @param amounts the amounts of the tokens to rescue, set to 0 to rescue all
   * @param recipient the address to send the tokens to
   */
  function rescueERC20s(
    IERC20[] calldata tokens,
    uint256[] memory amounts,
    address payable recipient
  ) external;

  /**
   * @notice Rescue some of ERC721 tokens stuck in the contract
   * @notice Can only be called by the current owner
   * @param tokens the addresses of the tokens to rescue
   * @param tokenIds the IDs of the tokens to rescue
   * @param recipient the address to send the tokens to
   */
  function rescueERC721s(IERC721[] calldata tokens, uint256[] calldata tokenIds, address recipient)
    external;

  /**
   * @notice Rescue some of ERC1155 tokens stuck in the contract
   * @notice Can only be called by the current owner
   * @param tokens the addresses of the tokens to rescue
   * @param tokenIds the IDs of the tokens to rescue
   * @param amounts the amounts of the tokens to rescue, set to 0 to rescue all
   * @param recipient the address to send the tokens to
   */
  function rescueERC1155s(
    IERC1155[] calldata tokens,
    uint256[] calldata tokenIds,
    uint256[] memory amounts,
    address recipient
  ) external;
}

// ============================================================
// FILE: src/interfaces/IUnorderedNonce.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title IUnorderedNonce
 * @notice Interface for the UnorderedNonce contract
 */
interface IUnorderedNonce {
  /// @notice Thrown when a nonce has already been used
  error NonceAlreadyUsed(uint256 nonce);

  /// @notice Emitted when a nonce is consumed
  event UseNonce(uint256 nonce);

  /// @notice mapping of nonces consumed by each address, where a nonce is a single bit on the 256-bit bitmap
  /// @dev word is at most type(uint248).max
  function nonces(uint256 word) external view returns (uint256 bitmap);
}

// ============================================================
// FILE: src/libraries/HookDataDecoder.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {CalldataDecoder} from 'uniswap/v4-periphery/src/libraries/CalldataDecoder.sol';

/**
 * @title HookDataDecoder
 * @notice Library for abi decoding hook data
 */
library HookDataDecoder {
  /// @dev equivalent to: abi.decode(hookData, (int256, int256, int256, uint256, uint256, bytes)) in calldata
  function decodeAllHookData(bytes calldata hookData)
    internal
    pure
    returns (
      int256 maxAmountIn,
      int256 maxExchangeRate,
      int256 exchangeRateDenom,
      uint256 nonce,
      uint256 expiryTime,
      bytes memory signature
    )
  {
    // no length check performed, as there is a length check in `toBytes`
    assembly ("memory-safe") {
      maxAmountIn := calldataload(hookData.offset)
      maxExchangeRate := calldataload(add(hookData.offset, 0x20))
      exchangeRateDenom := calldataload(add(hookData.offset, 0x40))
      nonce := calldataload(add(hookData.offset, 0x60))
      expiryTime := calldataload(add(hookData.offset, 0x80))
    }

    signature = CalldataDecoder.toBytes(hookData, 5);
  }

  /// @dev equivalent to: (, int256 maxExchangeRate, int256 exchangeRateDenom,,,) = abi.decode(hookData, (int256, int256, int256, uint256, uint256, bytes)) in calldata
  function decodeExchangeRate(bytes calldata hookData)
    internal
    pure
    returns (int256 maxExchangeRate, int256 exchangeRateDenom)
  {
    assembly ("memory-safe") {
      maxExchangeRate := calldataload(add(hookData.offset, 0x20))
      exchangeRateDenom := calldataload(add(hookData.offset, 0x40))
    }
  }
}

// ============================================================
// FILE: src/UniswapV4KEMHook.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {BaseKEMHook} from './base/BaseKEMHook.sol';
import {IKEMHook} from './interfaces/IKEMHook.sol';
import {HookDataDecoder} from './libraries/HookDataDecoder.sol';

import {IHooks} from 'uniswap/v4-core/src/interfaces/IHooks.sol';
import {IPoolManager} from 'uniswap/v4-core/src/interfaces/IPoolManager.sol';
import {IUnlockCallback} from 'uniswap/v4-core/src/interfaces/callback/IUnlockCallback.sol';
import {Hooks} from 'uniswap/v4-core/src/libraries/Hooks.sol';

import {BalanceDelta, toBalanceDelta} from 'uniswap/v4-core/src/types/BalanceDelta.sol';
import {
  BeforeSwapDelta, BeforeSwapDeltaLibrary
} from 'uniswap/v4-core/src/types/BeforeSwapDelta.sol';
import {Currency} from 'uniswap/v4-core/src/types/Currency.sol';
import {PoolId} from 'uniswap/v4-core/src/types/PoolId.sol';
import {PoolKey} from 'uniswap/v4-core/src/types/PoolKey.sol';

import {SignatureChecker} from
  'openzeppelin-contracts/contracts/utils/cryptography/SignatureChecker.sol';

/// @title UniswapV4KEMHook
contract UniswapV4KEMHook is BaseKEMHook, IUnlockCallback {
  /// @notice Thrown when the caller is not PoolManager
  error NotPoolManager();

  /// @notice The address of the PoolManager contract
  IPoolManager public immutable poolManager;

  constructor(
    IPoolManager _poolManager,
    address initialOwner,
    address[] memory initialClaimableAccounts,
    address initialQuoteSigner,
    address initialEgRecipient
  ) BaseKEMHook(initialOwner, initialClaimableAccounts, initialQuoteSigner, initialEgRecipient) {
    poolManager = _poolManager;
    Hooks.validateHookPermissions(IHooks(address(this)), getHookPermissions());
  }

  /// @notice Only allow calls from the PoolManager contract
  modifier onlyPoolManager() {
    if (msg.sender != address(poolManager)) revert NotPoolManager();
    _;
  }

  /// @inheritdoc IKEMHook
  function claimEgTokens(address[] calldata tokens, uint256[] calldata amounts) public {
    require(claimable[msg.sender], NonClaimableAccount(msg.sender));
    require(tokens.length == amounts.length, MismatchedArrayLengths());

    poolManager.unlock(abi.encode(tokens, amounts));
  }

  function unlockCallback(bytes calldata data) public onlyPoolManager returns (bytes memory) {
    (address[] memory tokens, uint256[] memory amounts) = abi.decode(data, (address[], uint256[]));

    for (uint256 i = 0; i < tokens.length; i++) {
      uint256 id = uint256(uint160(tokens[i]));
      if (amounts[i] == 0) {
        amounts[i] = poolManager.balanceOf(address(this), id);
      }
      if (amounts[i] > 0) {
        poolManager.burn(address(this), id, amounts[i]);
        poolManager.take(Currency.wrap(tokens[i]), egRecipient, amounts[i]);
      }
    }

    emit ClaimEgTokens(egRecipient, tokens, amounts);
  }

  function getHookPermissions() public pure returns (Hooks.Permissions memory) {
    return Hooks.Permissions({
      beforeInitialize: false,
      afterInitialize: false,
      beforeAddLiquidity: false,
      afterAddLiquidity: false,
      beforeRemoveLiquidity: false,
      afterRemoveLiquidity: false,
      beforeSwap: true,
      afterSwap: true,
      beforeDonate: false,
      afterDonate: false,
      beforeSwapReturnDelta: false,
      afterSwapReturnDelta: true,
      afterAddLiquidityReturnDelta: false,
      afterRemoveLiquidityReturnDelta: false
    });
  }

  function beforeSwap(
    address sender,
    PoolKey calldata key,
    IPoolManager.SwapParams calldata params,
    bytes calldata hookData
  ) external onlyPoolManager returns (bytes4, BeforeSwapDelta, uint24) {
    require(params.amountSpecified < 0, ExactOutputDisabled());

    (
      int256 maxAmountIn,
      int256 maxExchangeRate,
      int256 exchangeRateDenom,
      uint256 nonce,
      uint256 expiryTime,
      bytes memory signature
    ) = HookDataDecoder.decodeAllHookData(hookData);

    require(block.timestamp <= expiryTime, ExpiredSignature(expiryTime, block.timestamp));
    require(
      -params.amountSpecified <= maxAmountIn,
      ExceededMaxAmountIn(maxAmountIn, -params.amountSpecified)
    );

    _useUnorderedNonce(nonce);

    bytes32 digest = keccak256(
      abi.encode(
        sender,
        key,
        params.zeroForOne,
        maxAmountIn,
        maxExchangeRate,
        exchangeRateDenom,
        nonce,
        expiryTime
      )
    );
    require(
      SignatureChecker.isValidSignatureNow(quoteSigner, digest, signature), InvalidSignature()
    );

    return (this.beforeSwap.selector, BeforeSwapDeltaLibrary.ZERO_DELTA, 0);
  }

  function afterSwap(
    address,
    PoolKey calldata key,
    IPoolManager.SwapParams calldata params,
    BalanceDelta delta,
    bytes calldata hookData
  ) external onlyPoolManager returns (bytes4, int128) {
    (int256 maxExchangeRate, int256 exchangeRateDenom) =
      HookDataDecoder.decodeExchangeRate(hookData);

    int128 amountIn;
    int128 amountOut;
    Currency currencyOut;
    unchecked {
      if (params.zeroForOne) {
        amountIn = -delta.amount0();
        amountOut = delta.amount1();
        currencyOut = key.currency1;
      } else {
        amountIn = -delta.amount1();
        amountOut = delta.amount0();
        currencyOut = key.currency0;
      }
    }

    int256 maxAmountOut = amountIn * maxExchangeRate / exchangeRateDenom;

    unchecked {
      int256 egAmount = maxAmountOut < amountOut ? amountOut - maxAmountOut : int256(0);
      if (egAmount > 0) {
        poolManager.mint(
          address(this), uint256(uint160(Currency.unwrap(currencyOut))), uint256(egAmount)
        );

        emit AbsorbEgToken(PoolId.unwrap(key.toId()), Currency.unwrap(currencyOut), egAmount);
      }

      return (this.afterSwap.selector, int128(egAmount));
    }
  }
}
