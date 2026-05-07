// ============================================================
// FILE: @openzeppelin/contracts/token/ERC1155/IERC1155.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC1155/IERC1155.sol)

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
     *
     * WARNING: This function can potentially allow a reentrancy attack when transferring tokens
     * to an untrusted contract, when invoking {onERC1155BatchReceived} on the receiver.
     * Ensure to follow the checks-effects-interactions pattern and consider employing
     * reentrancy guards when interacting with untrusted contracts.
     *
     * Emits a {TransferBatch} event.
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
// FILE: @openzeppelin/contracts/token/ERC1155/IERC1155Receiver.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC1155/IERC1155Receiver.sol)

pragma solidity ^0.8.20;

import {IERC165} from "../../utils/introspection/IERC165.sol";

/**
 * @dev Interface that must be implemented by smart contracts in order to receive
 * ERC-1155 token transfers.
 */
interface IERC1155Receiver is IERC165 {
    /**
     * @dev Handles the receipt of a single ERC1155 token type. This function is
     * called at the end of a `safeTransferFrom` after the balance has been updated.
     *
     * NOTE: To accept the transfer, this must return
     * `bytes4(keccak256("onERC1155Received(address,address,uint256,uint256,bytes)"))`
     * (i.e. 0xf23a6e61, or its own function selector).
     *
     * @param operator The address which initiated the transfer (i.e. msg.sender)
     * @param from The address which previously owned the token
     * @param id The ID of the token being transferred
     * @param value The amount of tokens being transferred
     * @param data Additional data with no specified format
     * @return `bytes4(keccak256("onERC1155Received(address,address,uint256,uint256,bytes)"))` if transfer is allowed
     */
    function onERC1155Received(
        address operator,
        address from,
        uint256 id,
        uint256 value,
        bytes calldata data
    ) external returns (bytes4);

    /**
     * @dev Handles the receipt of a multiple ERC1155 token types. This function
     * is called at the end of a `safeBatchTransferFrom` after the balances have
     * been updated.
     *
     * NOTE: To accept the transfer(s), this must return
     * `bytes4(keccak256("onERC1155BatchReceived(address,address,uint256[],uint256[],bytes)"))`
     * (i.e. 0xbc197c81, or its own function selector).
     *
     * @param operator The address which initiated the batch transfer (i.e. msg.sender)
     * @param from The address which previously owned the token
     * @param ids An array containing ids of each token being transferred (order and length must match values array)
     * @param values An array containing amounts of each token being transferred (order and length must match ids array)
     * @param data Additional data with no specified format
     * @return `bytes4(keccak256("onERC1155BatchReceived(address,address,uint256[],uint256[],bytes)"))` if transfer is allowed
     */
    function onERC1155BatchReceived(
        address operator,
        address from,
        uint256[] calldata ids,
        uint256[] calldata values,
        bytes calldata data
    ) external returns (bytes4);
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC1155/utils/ERC1155Holder.sol)

pragma solidity ^0.8.20;

import {IERC165, ERC165} from "../../../utils/introspection/ERC165.sol";
import {IERC1155Receiver} from "../IERC1155Receiver.sol";

/**
 * @dev Simple implementation of `IERC1155Receiver` that will allow a contract to hold ERC1155 tokens.
 *
 * IMPORTANT: When inheriting this contract, you must include a way to use the received tokens, otherwise they will be
 * stuck.
 */
abstract contract ERC1155Holder is ERC165, IERC1155Receiver {
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC165, IERC165) returns (bool) {
        return interfaceId == type(IERC1155Receiver).interfaceId || super.supportsInterface(interfaceId);
    }

    function onERC1155Received(
        address,
        address,
        uint256,
        uint256,
        bytes memory
    ) public virtual override returns (bytes4) {
        return this.onERC1155Received.selector;
    }

    function onERC1155BatchReceived(
        address,
        address,
        uint256[] memory,
        uint256[] memory,
        bytes memory
    ) public virtual override returns (bytes4) {
        return this.onERC1155BatchReceived.selector;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/token/ERC721/IERC721.sol
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
// FILE: @openzeppelin/contracts/token/ERC721/IERC721Receiver.sol
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
// FILE: @openzeppelin/contracts/utils/Address.sol
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
// FILE: @openzeppelin/contracts/utils/introspection/ERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/introspection/ERC165.sol)

pragma solidity ^0.8.20;

import {IERC165} from "./IERC165.sol";

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 */
abstract contract ERC165 is IERC165 {
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/introspection/IERC165.sol
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
// FILE: @openzeppelin/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/Math.sol)

pragma solidity ^0.8.20;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    /**
     * @dev Muldiv operation overflow.
     */
    error MathOverflowedMulDiv();

    enum Rounding {
        Floor, // Toward negative infinity
        Ceil, // Toward positive infinity
        Trunc, // Toward zero
        Expand // Away from zero
    }

    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with an overflow flag.
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds towards infinity instead
     * of rounding towards zero.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        if (b == 0) {
            // Guarantee the same behavior as in a regular Solidity division.
            return a / b;
        }

        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or
     * denominator == 0.
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv) with further edits by
     * Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0 = x * y; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            if (denominator <= prod1) {
                revert MathOverflowedMulDiv();
            }

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0].
            uint256 remainder;
            assembly {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator.
            // Always >= 1. See https://cs.stackexchange.com/q/138556/92363.

            uint256 twos = denominator & (0 - denominator);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also
            // works in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if (unsignedRoundsUp(rounding) && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded
     * towards zero.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        //
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`. This value can be written `msb(a)=2**k` with `k=log2(a)`.
        //
        // This can be rewritten `2**log2(a) <= a < 2**(log2(a) + 1)`
        // → `sqrt(2**k) <= sqrt(a) < sqrt(2**(k+1))`
        // → `2**(k/2) <= sqrt(a) < 2**((k+1)/2) <= 2**(k/2 + 1)`
        //
        // Consequently, `2**(log2(a) / 2)` is a good first approximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1 << (log2(a) >> 1);

        // At this point `result` is an estimation with one bit of precision. We know the true value is a uint128,
        // since it is the square root of a uint256. Newton's method converges quadratically (precision doubles at
        // every iteration). We thus need at most 7 iteration to turn our partial result with one bit of precision
        // into the expected uint128 result.
        unchecked {
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            return min(result, a / result);
        }
    }

    /**
     * @notice Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (unsignedRoundsUp(rounding) && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 128;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 64;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 32;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 16;
            }
            if (value >> 8 > 0) {
                value >>= 8;
                result += 8;
            }
            if (value >> 4 > 0) {
                value >>= 4;
                result += 4;
            }
            if (value >> 2 > 0) {
                value >>= 2;
                result += 2;
            }
            if (value >> 1 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (unsignedRoundsUp(rounding) && 1 << result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 10 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10 ** 64) {
                value /= 10 ** 64;
                result += 64;
            }
            if (value >= 10 ** 32) {
                value /= 10 ** 32;
                result += 32;
            }
            if (value >= 10 ** 16) {
                value /= 10 ** 16;
                result += 16;
            }
            if (value >= 10 ** 8) {
                value /= 10 ** 8;
                result += 8;
            }
            if (value >= 10 ** 4) {
                value /= 10 ** 4;
                result += 4;
            }
            if (value >= 10 ** 2) {
                value /= 10 ** 2;
                result += 2;
            }
            if (value >= 10 ** 1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + (unsignedRoundsUp(rounding) && 10 ** result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 16;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 8;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 4;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 2;
            }
            if (value >> 8 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (unsignedRoundsUp(rounding) && 1 << (result << 3) < value ? 1 : 0);
        }
    }

    /**
     * @dev Returns whether a provided rounding mode is considered rounding up for unsigned integers.
     */
    function unsignedRoundsUp(Rounding rounding) internal pure returns (bool) {
        return uint8(rounding) % 2 == 1;
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/math/SignedMath.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/SignedMath.sol)

pragma solidity ^0.8.20;

/**
 * @dev Standard signed math utilities missing in the Solidity language.
 */
library SignedMath {
    /**
     * @dev Returns the largest of two signed numbers.
     */
    function max(int256 a, int256 b) internal pure returns (int256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two signed numbers.
     */
    function min(int256 a, int256 b) internal pure returns (int256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two signed numbers without overflow.
     * The result is rounded towards zero.
     */
    function average(int256 a, int256 b) internal pure returns (int256) {
        // Formula from the book "Hacker's Delight"
        int256 x = (a & b) + ((a ^ b) >> 1);
        return x + (int256(uint256(x) >> 255) & (a ^ b));
    }

    /**
     * @dev Returns the absolute unsigned value of a signed value.
     */
    function abs(int256 n) internal pure returns (uint256) {
        unchecked {
            // must be unchecked in order to support `n = type(int256).min`
            return uint256(n >= 0 ? n : -n);
        }
    }
}

// ============================================================
// FILE: @openzeppelin/contracts/utils/Strings.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Strings.sol)

pragma solidity ^0.8.20;

import {Math} from "./math/Math.sol";
import {SignedMath} from "./math/SignedMath.sol";

/**
 * @dev String operations.
 */
library Strings {
    bytes16 private constant HEX_DIGITS = "0123456789abcdef";
    uint8 private constant ADDRESS_LENGTH = 20;

    /**
     * @dev The `value` string doesn't fit in the specified `length`.
     */
    error StringsInsufficientHexLength(uint256 value, uint256 length);

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = Math.log10(value) + 1;
            string memory buffer = new string(length);
            uint256 ptr;
            /// @solidity memory-safe-assembly
            assembly {
                ptr := add(buffer, add(32, length))
            }
            while (true) {
                ptr--;
                /// @solidity memory-safe-assembly
                assembly {
                    mstore8(ptr, byte(mod(value, 10), HEX_DIGITS))
                }
                value /= 10;
                if (value == 0) break;
            }
            return buffer;
        }
    }

    /**
     * @dev Converts a `int256` to its ASCII `string` decimal representation.
     */
    function toStringSigned(int256 value) internal pure returns (string memory) {
        return string.concat(value < 0 ? "-" : "", toString(SignedMath.abs(value)));
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        unchecked {
            return toHexString(value, Math.log256(value) + 1);
        }
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        uint256 localValue = value;
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = HEX_DIGITS[localValue & 0xf];
            localValue >>= 4;
        }
        if (localValue != 0) {
            revert StringsInsufficientHexLength(value, length);
        }
        return string(buffer);
    }

    /**
     * @dev Converts an `address` with fixed length of 20 bytes to its not checksummed ASCII `string` hexadecimal
     * representation.
     */
    function toHexString(address addr) internal pure returns (string memory) {
        return toHexString(uint256(uint160(addr)), ADDRESS_LENGTH);
    }

    /**
     * @dev Returns true if the two strings are equal.
     */
    function equal(string memory a, string memory b) internal pure returns (bool) {
        return bytes(a).length == bytes(b).length && keccak256(bytes(a)) == keccak256(bytes(b));
    }
}

// ============================================================
// FILE: contracts/coins/ArbethWalletSimple.sol
// ============================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.20;
import '../Forwarder.sol';
import '../ERC20Interface.sol';
import '../WalletSimple.sol';

/**
 *
 * WalletSimple
 * ============
 *
 * Basic multi-signer wallet designed for use in a co-signing environment where 2 signatures are required to move funds.
 * Typically used in a 2-of-3 signing configuration. Uses ecrecover to allow for 2 signatures in a single transaction.
 *
 * The first signature is created on the operation hash (see Data Formats) and passed to sendMultiSig/sendMultiSigToken
 * The signer is determined by verifyMultiSig().
 *
 * The second signature is created by the submitter of the transaction and determined by msg.signer.
 *
 * Data Formats
 * ============
 *
 * The signature is created with ethereumjs-util.ecsign(operationHash).
 * Like the eth_sign RPC call, it packs the values as a 65-byte array of [r, s, v].
 * Unlike eth_sign, the message is not prefixed.
 *
 * The operationHash the result of keccak256(prefix, toAddress, value, data, expireTime).
 * For ether transactions, `prefix` is chain id of the coin i.e. for arbitrum mainnet it is "42161"
 * For token transaction, `prefix` is "42161-ERC20" and `data` is the tokenContractAddress.
 *
 *
 */
contract ArbethWalletSimple is WalletSimple {
  /**
   * Get the network identifier that signers must sign over
   * This provides protection signatures being replayed on other chains
   */
  function getNetworkId() internal override view returns (string memory) {
    return Strings.toString(block.chainid);
  }

  /**
   * Get the network identifier that signers must sign over for token transfers
   * This provides protection signatures being replayed on other chains
   */
  function getTokenNetworkId() internal override view returns (string memory) {
    return string.concat(Strings.toString(block.chainid), '-ERC20');
  }

  /**
   * Get the network identifier that signers must sign over for batch transfers
   * This provides protection signatures being replayed on other chains
   */
  function getBatchNetworkId() internal override view returns (string memory) {
    return string.concat(Strings.toString(block.chainid), '-Batch');
  }
}

// ============================================================
// FILE: contracts/ERC20Interface.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

/**
 * Contract that exposes the needed erc20 token functions
 */

abstract contract ERC20Interface {
  // Send _value amount of tokens to address _to
  function transfer(address _to, uint256 _value)
    public
    virtual
    returns (bool success);

  // Get the account balance of another account with address _owner
  function balanceOf(address _owner)
    public
    view
    virtual
    returns (uint256 balance);
}

// ============================================================
// FILE: contracts/Forwarder.sol
// ============================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.20;
import '@openzeppelin/contracts/token/ERC1155/IERC1155.sol';
import '@openzeppelin/contracts/token/ERC721/IERC721.sol';
import '@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol';
import '@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol';
import './ERC20Interface.sol';
import './TransferHelper.sol';
import './IForwarder.sol';

/**
 * Contract that will forward any incoming Ether to the creator of the contract
 *
 */
contract Forwarder is IERC721Receiver, ERC1155Holder, IForwarder {
  // Address to which any funds sent to this contract will be forwarded
  address public parentAddress;
  bool public autoFlush721 = true;
  bool public autoFlush1155 = true;

  event ForwarderDeposited(address from, uint256 value, bytes data);

  /**
   * Initialize the contract, and sets the destination address to that of the creator
   */
  function init(
    address _parentAddress,
    bool _autoFlush721,
    bool _autoFlush1155
  ) external onlyUninitialized {
    parentAddress = _parentAddress;
    uint256 value = address(this).balance;

    // set whether we want to automatically flush erc721/erc1155 tokens or not
    autoFlush721 = _autoFlush721;
    autoFlush1155 = _autoFlush1155;

    if (value == 0) {
      return;
    }

    // NOTE: since we are forwarding on initialization,
    // we don't have the context of the original sender.
    // We still emit an event about the forwarding but set
    // the sender to the forwarder itself
    emit ForwarderDeposited(address(this), value, msg.data);

    (bool success, ) = parentAddress.call{ value: value }('');
    require(success, 'Flush failed');
  }

  /**
   * Modifier that will execute internal code block only if the sender is the parent address
   */
  modifier onlyParent() {
    require(msg.sender == parentAddress, 'Only Parent');
    _;
  }

  /**
   * Modifier that will execute internal code block only if the contract has not been initialized yet
   */
  modifier onlyUninitialized() {
    require(parentAddress == address(0x0), 'Already initialized');
    _;
  }

  /**
   * Default function; Gets called when data is sent but does not match any other function
   */
  fallback() external payable {
    flush();
  }

  /**
   * Default function; Gets called when Ether is deposited with no data, and forwards it to the parent address
   */
  receive() external payable {
    flush();
  }

  /**
   * @inheritdoc IForwarder
   */
  function setAutoFlush721(bool autoFlush)
    external
    virtual
    override
    onlyParent
  {
    autoFlush721 = autoFlush;
  }

  /**
   * @inheritdoc IForwarder
   */
  function setAutoFlush1155(bool autoFlush)
    external
    virtual
    override
    onlyParent
  {
    autoFlush1155 = autoFlush;
  }

  /**
   * ERC721 standard callback function for when a ERC721 is transfered. The forwarder will send the nft
   * to the base wallet once the nft contract invokes this method after transfering the nft.
   *
   * @param _operator The address which called `safeTransferFrom` function
   * @param _from The address of the sender
   * @param _tokenId The token id of the nft
   * @param data Additional data with no specified format, sent in call to `_to`
   */
  function onERC721Received(
    address _operator,
    address _from,
    uint256 _tokenId,
    bytes memory data
  ) external virtual override returns (bytes4) {
    if (autoFlush721) {
      IERC721 instance = IERC721(msg.sender);
      require(
        instance.supportsInterface(type(IERC721).interfaceId),
        'The caller does not support the ERC721 interface'
      );
      // this won't work for ERC721 re-entrancy
      instance.safeTransferFrom(address(this), parentAddress, _tokenId, data);
    }

    return this.onERC721Received.selector;
  }

  function callFromParent(
    address target,
    uint256 value,
    bytes calldata data
  ) external onlyParent returns (bytes memory) {
    (bool success, bytes memory returnedData) = target.call{ value: value }(
      data
    );
    require(success, 'Parent call execution failed');

    return returnedData;
  }

  /**
   * @inheritdoc ERC1155Holder
   */
  function onERC1155Received(
    address _operator,
    address _from,
    uint256 id,
    uint256 value,
    bytes memory data
  ) public virtual override returns (bytes4) {
    IERC1155 instance = IERC1155(msg.sender);
    require(
      instance.supportsInterface(type(IERC1155).interfaceId),
      'The caller does not support the IERC1155 interface'
    );

    if (autoFlush1155) {
      instance.safeTransferFrom(address(this), parentAddress, id, value, data);
    }

    return this.onERC1155Received.selector;
  }

  /**
   * @inheritdoc ERC1155Holder
   */
  function onERC1155BatchReceived(
    address _operator,
    address _from,
    uint256[] memory ids,
    uint256[] memory values,
    bytes memory data
  ) public virtual override returns (bytes4) {
    IERC1155 instance = IERC1155(msg.sender);
    require(
      instance.supportsInterface(type(IERC1155).interfaceId),
      'The caller does not support the IERC1155 interface'
    );

    if (autoFlush1155) {
      instance.safeBatchTransferFrom(
        address(this),
        parentAddress,
        ids,
        values,
        data
      );
    }

    return this.onERC1155BatchReceived.selector;
  }

  /**
   * @inheritdoc IForwarder
   */
  function flushTokens(address tokenContractAddress)
    external
    virtual
    override
    onlyParent
  {
    ERC20Interface instance = ERC20Interface(tokenContractAddress);
    address forwarderAddress = address(this);
    uint256 forwarderBalance = instance.balanceOf(forwarderAddress);
    if (forwarderBalance == 0) {
      return;
    }

    TransferHelper.safeTransfer(
      tokenContractAddress,
      parentAddress,
      forwarderBalance
    );
  }

  /**
   * @inheritdoc IForwarder
   */
  function flushERC721Token(address tokenContractAddress, uint256 tokenId)
    external
    virtual
    override
    onlyParent
  {
    IERC721 instance = IERC721(tokenContractAddress);
    require(
      instance.supportsInterface(type(IERC721).interfaceId),
      'The tokenContractAddress does not support the ERC721 interface'
    );

    address ownerAddress = instance.ownerOf(tokenId);
    instance.transferFrom(ownerAddress, parentAddress, tokenId);
  }

  /**
   * @inheritdoc IForwarder
   */
  function flushERC1155Tokens(address tokenContractAddress, uint256 tokenId)
    external
    virtual
    override
    onlyParent
  {
    IERC1155 instance = IERC1155(tokenContractAddress);
    require(
      instance.supportsInterface(type(IERC1155).interfaceId),
      'The caller does not support the IERC1155 interface'
    );

    address forwarderAddress = address(this);
    uint256 forwarderBalance = instance.balanceOf(forwarderAddress, tokenId);

    instance.safeTransferFrom(
      forwarderAddress,
      parentAddress,
      tokenId,
      forwarderBalance,
      ''
    );
  }

  /**
   * @inheritdoc IForwarder
   */
  function batchFlushERC1155Tokens(
    address tokenContractAddress,
    uint256[] calldata tokenIds
  ) external virtual override onlyParent {
    IERC1155 instance = IERC1155(tokenContractAddress);
    require(
      instance.supportsInterface(type(IERC1155).interfaceId),
      'The caller does not support the IERC1155 interface'
    );

    address forwarderAddress = address(this);
    uint256[] memory amounts = new uint256[](tokenIds.length);
    for (uint256 i = 0; i < tokenIds.length; i++) {
      amounts[i] = instance.balanceOf(forwarderAddress, tokenIds[i]);
    }

    instance.safeBatchTransferFrom(
      forwarderAddress,
      parentAddress,
      tokenIds,
      amounts,
      ''
    );
  }

  /**
   * Flush the entire balance of the contract to the parent address.
   */
  function flush() public {
    uint256 value = address(this).balance;

    if (value == 0) {
      return;
    }

    emit ForwarderDeposited(msg.sender, value, msg.data);
    (bool success, ) = parentAddress.call{ value: value }('');
    require(success, 'Flush failed');
  }

  /**
   * @inheritdoc IERC165
   */
  function supportsInterface(bytes4 interfaceId)
    public
    view
    virtual
    override(ERC1155Holder, IERC165)
    returns (bool)
  {
    return
      interfaceId == type(IForwarder).interfaceId ||
      super.supportsInterface(interfaceId);
  }
}

// ============================================================
// FILE: contracts/IForwarder.sol
// ============================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.20;

import '@openzeppelin/contracts/utils/introspection/IERC165.sol';

interface IForwarder is IERC165 {
  /**
   * Sets the autoflush721 parameter.
   *
   * @param autoFlush whether to autoflush erc721 tokens
   */
  function setAutoFlush721(bool autoFlush) external;

  /**
   * Sets the autoflush1155 parameter.
   *
   * @param autoFlush whether to autoflush erc1155 tokens
   */
  function setAutoFlush1155(bool autoFlush) external;

  /**
   * Execute a token transfer of the full balance from the forwarder to the parent address
   *
   * @param tokenContractAddress the address of the erc20 token contract
   */
  function flushTokens(address tokenContractAddress) external;

  /**
   * Execute a nft transfer from the forwarder to the parent address
   *
   * @param tokenContractAddress the address of the ERC721 NFT contract
   * @param tokenId The token id of the nft
   */
  function flushERC721Token(address tokenContractAddress, uint256 tokenId)
    external;

  /**
   * Execute a nft transfer from the forwarder to the parent address.
   *
   * @param tokenContractAddress the address of the ERC1155 NFT contract
   * @param tokenId The token id of the nft
   */
  function flushERC1155Tokens(address tokenContractAddress, uint256 tokenId)
    external;

  /**
   * Execute a batch nft transfer from the forwarder to the parent address.
   *
   * @param tokenContractAddress the address of the ERC1155 NFT contract
   * @param tokenIds The token ids of the nfts
   */
  function batchFlushERC1155Tokens(
    address tokenContractAddress,
    uint256[] calldata tokenIds
  ) external;
}

// ============================================================
// FILE: contracts/TransferHelper.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
// source: https://github.com/Uniswap/solidity-lib/blob/master/contracts/libraries/TransferHelper.sol
pragma solidity 0.8.20;

import '@openzeppelin/contracts/utils/Address.sol';

// helper methods for interacting with ERC20 tokens and sending ETH that do not consistently return true/false
library TransferHelper {
  function safeTransfer(
    address token,
    address to,
    uint256 value
  ) internal {
    // bytes4(keccak256(bytes('transfer(address,uint256)')));
    (bool success, bytes memory data) = token.call(
      abi.encodeWithSelector(0xa9059cbb, to, value)
    );
    require(
      success && (data.length == 0 || abi.decode(data, (bool))),
      'TransferHelper::safeTransfer: transfer failed'
    );
  }

  function safeTransferFrom(
    address token,
    address from,
    address to,
    uint256 value
  ) internal {
    // bytes4(keccak256(bytes('transferFrom(address,address,uint256)')));
    (bool success, bytes memory returndata) = token.call(
      abi.encodeWithSelector(0x23b872dd, from, to, value)
    );
    Address.verifyCallResult(success, returndata);
  }
}

// ============================================================
// FILE: contracts/WalletSimple.sol
// ============================================================

// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.20;
import './TransferHelper.sol';
import './ERC20Interface.sol';
import './IForwarder.sol';

/** ERC721, ERC1155 imports */
import '@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol';
import '@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol';
import '@openzeppelin/contracts/utils/Strings.sol';

/**
 *
 * WalletSimple
 * ============
 *
 * Basic multi-signer wallet designed for use in a co-signing environment where 2 signatures are required to move funds.
 * Typically used in a 2-of-3 signing configuration. Uses ecrecover to allow for 2 signatures in a single transaction.
 *
 * The first signature is created on the operation hash (see Data Formats) and passed to sendMultiSig/sendMultiSigToken
 * The signer is determined by verifyMultiSig().
 *
 * The second signature is created by the submitter of the transaction and determined by msg.signer.
 *
 * Data Formats
 * ============
 *
 * The signature is created with ethereumjs-util.ecsign(operationHash).
 * Like the eth_sign RPC call, it packs the values as a 65-byte array of [r, s, v].
 * Unlike eth_sign, the message is not prefixed.
 *
 * The operationHash the result of keccak256(prefix, toAddress, value, data, expireTime).
 * For ether transactions, `prefix` is chain id of the coin i.e. for eth mainnet it is "1".
 * For token transaction, `prefix` is chain id + "-ERC20" i.e. for mainnet it is "1-ERC20" and `data` is the tokenContractAddress.
 *
 *
 */
contract WalletSimple is IERC721Receiver, ERC1155Holder {
  // Events
  event Deposited(address from, uint256 value, bytes data);
  event SafeModeActivated(address msgSender);
  event Transacted(
    address msgSender, // Address of the sender of the message initiating the transaction
    address otherSigner, // Address of the signer (second signature) used to initiate the transaction
    bytes32 operation, // Operation hash (see Data Formats)
    address toAddress, // The address the transaction was sent to
    uint256 value, // Amount of Wei sent to the address
    bytes data // Data sent when invoking the transaction
  );

  event BatchTransfer(address sender, address recipient, uint256 value);
  // this event shows the other signer and the operation hash that they signed
  // specific batch transfer events are emitted in Batcher
  event BatchTransacted(
    address msgSender, // Address of the sender of the message initiating the transaction
    address otherSigner, // Address of the signer (second signature) used to initiate the transaction
    bytes32 operation // Operation hash (see Data Formats)
  );

  // Public fields
  mapping(address => bool) public signers; // The addresses that can co-sign transactions on the wallet
  bool public safeMode = false; // When active, wallet may only send to signer addresses
  bool public initialized = false; // True if the contract has been initialized

  // Internal fields
  uint256 private constant MAX_SEQUENCE_ID_INCREASE = 10000;
  uint256 constant SEQUENCE_ID_WINDOW_SIZE = 10;
  uint256[SEQUENCE_ID_WINDOW_SIZE] recentSequenceIds;

  /**
   * Set up a simple multi-sig wallet by specifying the signers allowed to be used on this wallet.
   * 2 signers will be required to send a transaction from this wallet.
   * Note: The sender is NOT automatically added to the list of signers.
   * Signers CANNOT be changed once they are set
   *
   * @param allowedSigners An array of signers on the wallet
   */
  function init(address[] calldata allowedSigners) external onlyUninitialized {
    require(allowedSigners.length == 3, 'Invalid number of signers');

    for (uint8 i = 0; i < allowedSigners.length; i++) {
      require(allowedSigners[i] != address(0), 'Invalid signer');
      signers[allowedSigners[i]] = true;
    }

    initialized = true;
  }

  /**
   * Get the network identifier that signers must sign over
   * This provides protection signatures being replayed on other chains
   * This must be a virtual function because chain-specific contracts will need
   *    to override with their own network ids. It also can't be a field
   *    to allow this contract to be used by proxy with delegatecall, which will
   *    not pick up on state variables
   */
  function getNetworkId() internal view virtual returns (string memory) {
    return Strings.toString(block.chainid);
  }

  /**
   * Get the network identifier that signers must sign over for token transfers
   * This provides protection signatures being replayed on other chains
   * This must be a virtual function because chain-specific contracts will need
   *    to override with their own network ids. It also can't be a field
   *    to allow this contract to be used by proxy with delegatecall, which will
   *    not pick up on state variables
   */
  function getTokenNetworkId() internal view virtual returns (string memory) {
    return string.concat(Strings.toString(block.chainid), '-ERC20');
  }

  /**
   * Get the network identifier that signers must sign over for batch transfers
   * This provides protection signatures being replayed on other chains
   * This must be a virtual function because chain-specific contracts will need
   *    to override with their own network ids. It also can't be a field
   *    to allow this contract to be used by proxy with delegatecall, which will
   *    not pick up on state variables
   */
  function getBatchNetworkId() internal view virtual returns (string memory) {
    return string.concat(Strings.toString(block.chainid), '-Batch');
  }

  /**
   * Modifier that will execute internal code block only if the sender is an authorized signer on this wallet
   */
  modifier onlySigner() {
    require(signers[msg.sender], 'Non-signer in onlySigner method');
    _;
  }

  /**
   * Modifier that will execute internal code block only if the contract has not been initialized yet
   */
  modifier onlyUninitialized() {
    require(!initialized, 'Contract already initialized');
    _;
  }

  /**
   * Gets called when a transaction is received with data that does not match any other method
   */
  fallback() external payable {
    if (msg.value > 0) {
      // Fire deposited event if we are receiving funds
      emit Deposited(msg.sender, msg.value, msg.data);
    }
  }

  /**
   * Gets called when a transaction is received with ether and no data
   */
  receive() external payable {
    if (msg.value > 0) {
      // Fire deposited event if we are receiving funds
      // message data is always empty for receive. If there is data it is sent to fallback function.
      emit Deposited(msg.sender, msg.value, '');
    }
  }

  /**
   * Execute a multi-signature transaction from this wallet using 2 signers: one from msg.sender and the other from ecrecover.
   * Sequence IDs are numbers starting from 1. They are used to prevent replay attacks and may not be repeated.
   *
   * @param toAddress the destination address to send an outgoing transaction
   * @param value the amount in Wei to be sent
   * @param data the data to send to the toAddress when invoking the transaction
   * @param expireTime the number of seconds since 1970 for which this transaction is valid
   * @param sequenceId the unique sequence id obtainable from getNextSequenceId
   * @param signature see Data Formats
   */
  function sendMultiSig(
    address toAddress,
    uint256 value,
    bytes calldata data,
    uint256 expireTime,
    uint256 sequenceId,
    bytes calldata signature
  ) external onlySigner {
    // Verify the other signer
    bytes32 operationHash = keccak256(
      abi.encode(getNetworkId(), toAddress, value, data, expireTime, sequenceId)
    );

    address otherSigner = verifyMultiSig(
      toAddress,
      operationHash,
      signature,
      expireTime,
      sequenceId
    );

    emit Transacted(
      msg.sender,
      otherSigner,
      operationHash,
      toAddress,
      value,
      data
    );

    // Success, send the transaction
    (bool success, ) = toAddress.call{ value: value }(data);
    require(success, 'Call execution failed');
  }

  /**
   * Execute a batched multi-signature transaction from this wallet using 2 signers: one from msg.sender and the other from ecrecover.
   * Sequence IDs are numbers starting from 1. They are used to prevent replay attacks and may not be repeated.
   * The recipients and values to send are encoded in two arrays, where for index i, recipients[i] will be sent values[i].
   *
   * @param recipients The list of recipients to send to
   * @param values The list of values to send to
   * @param expireTime the number of seconds since 1970 for which this transaction is valid
   * @param sequenceId the unique sequence id obtainable from getNextSequenceId
   * @param signature see Data Formats
   */
  function sendMultiSigBatch(
    address[] calldata recipients,
    uint256[] calldata values,
    uint256 expireTime,
    uint256 sequenceId,
    bytes calldata signature
  ) external onlySigner {
    require(recipients.length != 0, 'Not enough recipients');
    require(
      recipients.length == values.length,
      'Unequal recipients and values'
    );
    require(recipients.length < 256, 'Too many recipients, max 255');

    // Verify the other signer
    bytes32 operationHash = keccak256(
      abi.encode(
        getBatchNetworkId(),
        recipients,
        values,
        expireTime,
        sequenceId
      )
    );

    // the first parameter (toAddress) is used to ensure transactions in safe mode only go to a signer
    // if in safe mode, we should use normal sendMultiSig to recover, so this check will always fail if in safe mode
    require(!safeMode, 'Batch in safe mode');
    address otherSigner = verifyMultiSig(
      address(0x0),
      operationHash,
      signature,
      expireTime,
      sequenceId
    );

    emit BatchTransacted(msg.sender, otherSigner, operationHash);
    batchTransfer(recipients, values);
  }

  /**
   * Transfer funds in a batch to each of recipients
   * @param recipients The list of recipients to send to
   * @param values The list of values to send to recipients.
   *  The recipient with index i in recipients array will be sent values[i].
   *  Thus, recipients and values must be the same length
   */
  function batchTransfer(
    address[] calldata recipients,
    uint256[] calldata values
  ) private {
    for (uint256 i = 0; i < recipients.length; i++) {
      require(address(this).balance >= values[i], 'Insufficient funds');

      emit BatchTransfer(msg.sender, recipients[i], values[i]);

      (bool success, ) = recipients[i].call{ value: values[i] }('');
      require(success, 'Call failed');
    }
  }

  /**
   * Execute a multi-signature token transfer from this wallet using 2 signers: one from msg.sender and the other from ecrecover.
   * Sequence IDs are numbers starting from 1. They are used to prevent replay attacks and may not be repeated.
   *
   * @param toAddress the destination address to send an outgoing transaction
   * @param value the amount in tokens to be sent
   * @param tokenContractAddress the address of the erc20 token contract
   * @param expireTime the number of seconds since 1970 for which this transaction is valid
   * @param sequenceId the unique sequence id obtainable from getNextSequenceId
   * @param signature see Data Formats
   */
  function sendMultiSigToken(
    address toAddress,
    uint256 value,
    address tokenContractAddress,
    uint256 expireTime,
    uint256 sequenceId,
    bytes calldata signature
  ) external onlySigner {
    // Verify the other signer
    bytes32 operationHash = keccak256(
      abi.encodePacked(
        getTokenNetworkId(),
        toAddress,
        value,
        tokenContractAddress,
        expireTime,
        sequenceId
      )
    );

    verifyMultiSig(toAddress, operationHash, signature, expireTime, sequenceId);

    TransferHelper.safeTransfer(tokenContractAddress, toAddress, value);
  }

  /**
   * Execute a token flush from one of the forwarder addresses. This transfer needs only a single signature and can be done by any signer
   *
   * @param forwarderAddress the address of the forwarder address to flush the tokens from
   * @param tokenContractAddress the address of the erc20 token contract
   */
  function flushForwarderTokens(
    address payable forwarderAddress,
    address tokenContractAddress
  ) external onlySigner {
    IForwarder forwarder = IForwarder(forwarderAddress);
    forwarder.flushTokens(tokenContractAddress);
  }

  /**
   * Execute a ERC721 token flush from one of the forwarder addresses. This transfer needs only a single signature and can be done by any signer
   *
   * @param forwarderAddress the address of the forwarder address to flush the tokens from
   * @param tokenContractAddress the address of the erc20 token contract
   */
  function flushERC721ForwarderTokens(
    address payable forwarderAddress,
    address tokenContractAddress,
    uint256 tokenId
  ) external onlySigner {
    IForwarder forwarder = IForwarder(forwarderAddress);
    forwarder.flushERC721Token(tokenContractAddress, tokenId);
  }

  /**
   * Execute a ERC1155 batch token flush from one of the forwarder addresses.
   * This transfer needs only a single signature and can be done by any signer.
   *
   * @param forwarderAddress the address of the forwarder address to flush the tokens from
   * @param tokenContractAddress the address of the erc1155 token contract
   */
  function batchFlushERC1155ForwarderTokens(
    address payable forwarderAddress,
    address tokenContractAddress,
    uint256[] calldata tokenIds
  ) external onlySigner {
    IForwarder forwarder = IForwarder(forwarderAddress);
    forwarder.batchFlushERC1155Tokens(tokenContractAddress, tokenIds);
  }

  /**
   * Execute a ERC1155 token flush from one of the forwarder addresses.
   * This transfer needs only a single signature and can be done by any signer.
   *
   * @param forwarderAddress the address of the forwarder address to flush the tokens from
   * @param tokenContractAddress the address of the erc1155 token contract
   * @param tokenId the token id associated with the ERC1155
   */
  function flushERC1155ForwarderTokens(
    address payable forwarderAddress,
    address tokenContractAddress,
    uint256 tokenId
  ) external onlySigner {
    IForwarder forwarder = IForwarder(forwarderAddress);
    forwarder.flushERC1155Tokens(tokenContractAddress, tokenId);
  }

  /**
   * Sets the autoflush 721 parameter on the forwarder.
   *
   * @param forwarderAddress the address of the forwarder to toggle.
   * @param autoFlush whether to autoflush erc721 tokens
   */
  function setAutoFlush721(address forwarderAddress, bool autoFlush)
    external
    onlySigner
  {
    IForwarder forwarder = IForwarder(forwarderAddress);
    forwarder.setAutoFlush721(autoFlush);
  }

  /**
   * Sets the autoflush 721 parameter on the forwarder.
   *
   * @param forwarderAddress the address of the forwarder to toggle.
   * @param autoFlush whether to autoflush erc1155 tokens
   */
  function setAutoFlush1155(address forwarderAddress, bool autoFlush)
    external
    onlySigner
  {
    IForwarder forwarder = IForwarder(forwarderAddress);
    forwarder.setAutoFlush1155(autoFlush);
  }

  /**
   * Do common multisig verification for both eth sends and erc20token transfers
   *
   * @param toAddress the destination address to send an outgoing transaction
   * @param operationHash see Data Formats
   * @param signature see Data Formats
   * @param expireTime the number of seconds since 1970 for which this transaction is valid
   * @param sequenceId the unique sequence id obtainable from getNextSequenceId
   * returns address that has created the signature
   */
  function verifyMultiSig(
    address toAddress,
    bytes32 operationHash,
    bytes calldata signature,
    uint256 expireTime,
    uint256 sequenceId
  ) private returns (address) {
    address otherSigner = recoverAddressFromSignature(operationHash, signature);

    // Verify if we are in safe mode. In safe mode, the wallet can only send to signers
    require(!safeMode || signers[toAddress], 'External transfer in safe mode');

    // Verify that the transaction has not expired
    require(expireTime >= block.timestamp, 'Transaction expired');

    // Try to insert the sequence ID. Will revert if the sequence id was invalid
    tryInsertSequenceId(sequenceId);

    require(signers[otherSigner], 'Invalid signer');

    require(otherSigner != msg.sender, 'Signers cannot be equal');

    return otherSigner;
  }

  /**
   * ERC721 standard callback function for when a ERC721 is transfered.
   *
   * @param _operator The address of the nft contract
   * @param _from The address of the sender
   * @param _tokenId The token id of the nft
   * @param _data Additional data with no specified format, sent in call to `_to`
   */
  function onERC721Received(
    address _operator,
    address _from,
    uint256 _tokenId,
    bytes memory _data
  ) external virtual override returns (bytes4) {
    return this.onERC721Received.selector;
  }

  /**
   * @inheritdoc ERC1155Holder
   */
  function onERC1155Received(
    address _operator,
    address _from,
    uint256 id,
    uint256 value,
    bytes memory data
  ) public virtual override returns (bytes4) {
    return this.onERC1155Received.selector;
  }

  /**
   * @inheritdoc ERC1155Holder
   */
  function onERC1155BatchReceived(
    address _operator,
    address _from,
    uint256[] memory ids,
    uint256[] memory values,
    bytes memory data
  ) public virtual override returns (bytes4) {
    return this.onERC1155BatchReceived.selector;
  }

  /**
   * Irrevocably puts contract into safe mode. When in this mode, transactions may only be sent to signing addresses.
   */
  function activateSafeMode() external onlySigner {
    safeMode = true;
    emit SafeModeActivated(msg.sender);
  }

  /**
   * Gets signer's address using ecrecover
   * @param operationHash see Data Formats
   * @param signature see Data Formats
   * returns address recovered from the signature
   */
  function recoverAddressFromSignature(
    bytes32 operationHash,
    bytes memory signature
  ) private pure returns (address) {
    require(signature.length == 65, 'Invalid signature - wrong length');

    // We need to unpack the signature, which is given as an array of 65 bytes (like eth.sign)
    bytes32 r;
    bytes32 s;
    uint8 v;

    // solhint-disable-next-line
    assembly {
      r := mload(add(signature, 32))
      s := mload(add(signature, 64))
      v := and(mload(add(signature, 65)), 255)
    }
    if (v < 27) {
      v += 27; // Ethereum versions are 27 or 28 as opposed to 0 or 1 which is submitted by some signing libs
    }

    // protect against signature malleability
    // S value must be in the lower half orader
    // reference: https://github.com/OpenZeppelin/openzeppelin-contracts/blob/051d340171a93a3d401aaaea46b4b62fa81e5d7c/contracts/cryptography/ECDSA.sol#L53
    require(
      uint256(s) <=
        0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0,
      "ECDSA: invalid signature 's' value"
    );

    // note that this returns 0 if the signature is invalid
    // Since 0x0 can never be a signer, when the recovered signer address
    // is checked against our signer list, that 0x0 will cause an invalid signer failure
    return ecrecover(operationHash, v, r, s);
  }

  /**
   * Verify that the sequence id has not been used before and inserts it. Throws if the sequence ID was not accepted.
   * We collect a window of up to 10 recent sequence ids, and allow any sequence id that is not in the window and
   * greater than the minimum element in the window.
   * @param sequenceId to insert into array of stored ids
   */
  function tryInsertSequenceId(uint256 sequenceId) private {
    // Keep a pointer to the lowest value element in the window
    uint256 lowestValueIndex = 0;
    // fetch recentSequenceIds into memory for function context to avoid unnecessary sloads

    uint256[SEQUENCE_ID_WINDOW_SIZE]
      memory _recentSequenceIds = recentSequenceIds;
    for (uint256 i = 0; i < SEQUENCE_ID_WINDOW_SIZE; i++) {
      require(_recentSequenceIds[i] != sequenceId, 'Sequence ID already used');

      if (_recentSequenceIds[i] < _recentSequenceIds[lowestValueIndex]) {
        lowestValueIndex = i;
      }
    }

    // The sequence ID being used is lower than the lowest value in the window
    // so we cannot accept it as it may have been used before
    require(
      sequenceId > _recentSequenceIds[lowestValueIndex],
      'Sequence ID below window'
    );

    // Block sequence IDs which are much higher than the lowest value
    // This prevents people blocking the contract by using very large sequence IDs quickly
    require(
      sequenceId <=
        (_recentSequenceIds[lowestValueIndex] + MAX_SEQUENCE_ID_INCREASE),
      'Sequence ID above maximum'
    );

    recentSequenceIds[lowestValueIndex] = sequenceId;
  }

  /**
   * Gets the next available sequence ID for signing when using executeAndConfirm
   * returns the sequenceId one higher than the highest currently stored
   */
  function getNextSequenceId() external view returns (uint256) {
    uint256 highestSequenceId = 0;
    for (uint256 i = 0; i < SEQUENCE_ID_WINDOW_SIZE; i++) {
      if (recentSequenceIds[i] > highestSequenceId) {
        highestSequenceId = recentSequenceIds[i];
      }
    }
    return highestSequenceId + 1;
  }
}
