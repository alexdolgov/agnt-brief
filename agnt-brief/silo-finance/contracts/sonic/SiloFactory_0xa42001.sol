// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/access/Ownable.sol
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
// FILE: gitmodules/openzeppelin-contracts-5/contracts/access/Ownable2Step.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable2Step.sol)

pragma solidity ^0.8.20;

import {Ownable} from "./Ownable.sol";

/**
 * @dev Contract module which provides access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * This extension of the {Ownable} contract includes a two-step mechanism to transfer
 * ownership, where the new owner must call {acceptOwnership} in order to replace the
 * old one. This can help prevent common mistakes, such as transfers of ownership to
 * incorrect accounts, or to contracts that are unable to interact with the
 * permission system.
 *
 * The initial owner is specified at deployment time in the constructor for `Ownable`. This
 * can later be changed with {transferOwnership} and {acceptOwnership}.
 *
 * This module is used through inheritance. It will make available all functions
 * from parent (Ownable).
 */
abstract contract Ownable2Step is Ownable {
    address private _pendingOwner;

    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Returns the address of the pending owner.
     */
    function pendingOwner() public view virtual returns (address) {
        return _pendingOwner;
    }

    /**
     * @dev Starts the ownership transfer of the contract to a new account. Replaces the pending transfer if there is one.
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual override onlyOwner {
        _pendingOwner = newOwner;
        emit OwnershipTransferStarted(owner(), newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`) and deletes any pending owner.
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual override {
        delete _pendingOwner;
        super._transferOwnership(newOwner);
    }

    /**
     * @dev The new owner accepts the ownership transfer.
     */
    function acceptOwnership() public virtual {
        address sender = _msgSender();
        if (pendingOwner() != sender) {
            revert OwnableUnauthorizedAccount(sender);
        }
        _transferOwnership(sender);
    }
}

// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/interfaces/draft-IERC6093.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/draft-IERC6093.sol)
pragma solidity ^0.8.20;

/**
 * @dev Standard ERC-20 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC-20 tokens.
 */
interface IERC20Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientBalance(address sender, uint256 balance, uint256 needed);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC20InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC20InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `spender`’s `allowance`. Used in transfers.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     * @param allowance Amount of tokens a `spender` is allowed to operate with.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientAllowance(address spender, uint256 allowance, uint256 needed);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC20InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `spender` to be approved. Used in approvals.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC20InvalidSpender(address spender);
}

/**
 * @dev Standard ERC-721 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC-721 tokens.
 */
interface IERC721Errors {
    /**
     * @dev Indicates that an address can't be an owner. For example, `address(0)` is a forbidden owner in ERC-20.
     * Used in balance queries.
     * @param owner Address of the current owner of a token.
     */
    error ERC721InvalidOwner(address owner);

    /**
     * @dev Indicates a `tokenId` whose `owner` is the zero address.
     * @param tokenId Identifier number of a token.
     */
    error ERC721NonexistentToken(uint256 tokenId);

    /**
     * @dev Indicates an error related to the ownership over a particular token. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param tokenId Identifier number of a token.
     * @param owner Address of the current owner of a token.
     */
    error ERC721IncorrectOwner(address sender, uint256 tokenId, address owner);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC721InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC721InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param tokenId Identifier number of a token.
     */
    error ERC721InsufficientApproval(address operator, uint256 tokenId);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC721InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC721InvalidOperator(address operator);
}

/**
 * @dev Standard ERC-1155 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC-1155 tokens.
 */
interface IERC1155Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     * @param tokenId Identifier number of a token.
     */
    error ERC1155InsufficientBalance(address sender, uint256 balance, uint256 needed, uint256 tokenId);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC1155InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC1155InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param owner Address of the current owner of a token.
     */
    error ERC1155MissingApprovalForAll(address operator, address owner);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC1155InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC1155InvalidOperator(address operator);

    /**
     * @dev Indicates an array length mismatch between ids and values in a safeBatchTransferFrom operation.
     * Used in batch transfers.
     * @param idsLength Length of the array of token identifiers
     * @param valuesLength Length of the array of token amounts
     */
    error ERC1155InvalidArrayLength(uint256 idsLength, uint256 valuesLength);
}

// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/interfaces/IERC1363.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC1363.sol)

pragma solidity ^0.8.20;

import {IERC20} from "./IERC20.sol";
import {IERC165} from "./IERC165.sol";

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

// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/interfaces/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC165.sol)

pragma solidity ^0.8.20;

import {IERC165} from "../utils/introspection/IERC165.sol";

// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/interfaces/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../token/ERC20/IERC20.sol";

// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/interfaces/IERC4626.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC4626.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../token/ERC20/IERC20.sol";
import {IERC20Metadata} from "../token/ERC20/extensions/IERC20Metadata.sol";

/**
 * @dev Interface of the ERC-4626 "Tokenized Vault Standard", as defined in
 * https://eips.ethereum.org/EIPS/eip-4626[ERC-4626].
 */
interface IERC4626 is IERC20, IERC20Metadata {
    event Deposit(address indexed sender, address indexed owner, uint256 assets, uint256 shares);

    event Withdraw(
        address indexed sender,
        address indexed receiver,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );

    /**
     * @dev Returns the address of the underlying token used for the Vault for accounting, depositing, and withdrawing.
     *
     * - MUST be an ERC-20 token contract.
     * - MUST NOT revert.
     */
    function asset() external view returns (address assetTokenAddress);

    /**
     * @dev Returns the total amount of the underlying asset that is “managed” by Vault.
     *
     * - SHOULD include any compounding that occurs from yield.
     * - MUST be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT revert.
     */
    function totalAssets() external view returns (uint256 totalManagedAssets);

    /**
     * @dev Returns the amount of shares that the Vault would exchange for the amount of assets provided, in an ideal
     * scenario where all the conditions are met.
     *
     * - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT reflect slippage or other on-chain conditions, when performing the actual exchange.
     * - MUST NOT revert.
     *
     * NOTE: This calculation MAY NOT reflect the “per-user” price-per-share, and instead should reflect the
     * “average-user’s” price-per-share, meaning what the average user should expect to see when exchanging to and
     * from.
     */
    function convertToShares(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Returns the amount of assets that the Vault would exchange for the amount of shares provided, in an ideal
     * scenario where all the conditions are met.
     *
     * - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT reflect slippage or other on-chain conditions, when performing the actual exchange.
     * - MUST NOT revert.
     *
     * NOTE: This calculation MAY NOT reflect the “per-user” price-per-share, and instead should reflect the
     * “average-user’s” price-per-share, meaning what the average user should expect to see when exchanging to and
     * from.
     */
    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Returns the maximum amount of the underlying asset that can be deposited into the Vault for the receiver,
     * through a deposit call.
     *
     * - MUST return a limited value if receiver is subject to some deposit limit.
     * - MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of assets that may be deposited.
     * - MUST NOT revert.
     */
    function maxDeposit(address receiver) external view returns (uint256 maxAssets);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their deposit at the current block, given
     * current on-chain conditions.
     *
     * - MUST return as close to and no more than the exact amount of Vault shares that would be minted in a deposit
     *   call in the same transaction. I.e. deposit should return the same or more shares as previewDeposit if called
     *   in the same transaction.
     * - MUST NOT account for deposit limits like those returned from maxDeposit and should always act as though the
     *   deposit would be accepted, regardless if the user has enough tokens approved, etc.
     * - MUST be inclusive of deposit fees. Integrators should be aware of the existence of deposit fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToShares and previewDeposit SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by depositing.
     */
    function previewDeposit(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Mints shares Vault shares to receiver by depositing exactly amount of underlying tokens.
     *
     * - MUST emit the Deposit event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   deposit execution, and are accounted for during deposit.
     * - MUST revert if all of assets cannot be deposited (due to deposit limit being reached, slippage, the user not
     *   approving enough underlying tokens to the Vault contract, etc).
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault’s underlying asset token.
     */
    function deposit(uint256 assets, address receiver) external returns (uint256 shares);

    /**
     * @dev Returns the maximum amount of the Vault shares that can be minted for the receiver, through a mint call.
     * - MUST return a limited value if receiver is subject to some mint limit.
     * - MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of shares that may be minted.
     * - MUST NOT revert.
     */
    function maxMint(address receiver) external view returns (uint256 maxShares);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their mint at the current block, given
     * current on-chain conditions.
     *
     * - MUST return as close to and no fewer than the exact amount of assets that would be deposited in a mint call
     *   in the same transaction. I.e. mint should return the same or fewer assets as previewMint if called in the
     *   same transaction.
     * - MUST NOT account for mint limits like those returned from maxMint and should always act as though the mint
     *   would be accepted, regardless if the user has enough tokens approved, etc.
     * - MUST be inclusive of deposit fees. Integrators should be aware of the existence of deposit fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToAssets and previewMint SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by minting.
     */
    function previewMint(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Mints exactly shares Vault shares to receiver by depositing amount of underlying tokens.
     *
     * - MUST emit the Deposit event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the mint
     *   execution, and are accounted for during mint.
     * - MUST revert if all of shares cannot be minted (due to deposit limit being reached, slippage, the user not
     *   approving enough underlying tokens to the Vault contract, etc).
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault’s underlying asset token.
     */
    function mint(uint256 shares, address receiver) external returns (uint256 assets);

    /**
     * @dev Returns the maximum amount of the underlying asset that can be withdrawn from the owner balance in the
     * Vault, through a withdraw call.
     *
     * - MUST return a limited value if owner is subject to some withdrawal limit or timelock.
     * - MUST NOT revert.
     */
    function maxWithdraw(address owner) external view returns (uint256 maxAssets);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their withdrawal at the current block,
     * given current on-chain conditions.
     *
     * - MUST return as close to and no fewer than the exact amount of Vault shares that would be burned in a withdraw
     *   call in the same transaction. I.e. withdraw should return the same or fewer shares as previewWithdraw if
     *   called
     *   in the same transaction.
     * - MUST NOT account for withdrawal limits like those returned from maxWithdraw and should always act as though
     *   the withdrawal would be accepted, regardless if the user has enough shares, etc.
     * - MUST be inclusive of withdrawal fees. Integrators should be aware of the existence of withdrawal fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToShares and previewWithdraw SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by depositing.
     */
    function previewWithdraw(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Burns shares from owner and sends exactly assets of underlying tokens to receiver.
     *
     * - MUST emit the Withdraw event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   withdraw execution, and are accounted for during withdraw.
     * - MUST revert if all of assets cannot be withdrawn (due to withdrawal limit being reached, slippage, the owner
     *   not having enough shares, etc).
     *
     * Note that some implementations will require pre-requesting to the Vault before a withdrawal may be performed.
     * Those methods should be performed separately.
     */
    function withdraw(uint256 assets, address receiver, address owner) external returns (uint256 shares);

    /**
     * @dev Returns the maximum amount of Vault shares that can be redeemed from the owner balance in the Vault,
     * through a redeem call.
     *
     * - MUST return a limited value if owner is subject to some withdrawal limit or timelock.
     * - MUST return balanceOf(owner) if owner is not subject to any withdrawal limit or timelock.
     * - MUST NOT revert.
     */
    function maxRedeem(address owner) external view returns (uint256 maxShares);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their redeemption at the current block,
     * given current on-chain conditions.
     *
     * - MUST return as close to and no more than the exact amount of assets that would be withdrawn in a redeem call
     *   in the same transaction. I.e. redeem should return the same or more assets as previewRedeem if called in the
     *   same transaction.
     * - MUST NOT account for redemption limits like those returned from maxRedeem and should always act as though the
     *   redemption would be accepted, regardless if the user has enough shares, etc.
     * - MUST be inclusive of withdrawal fees. Integrators should be aware of the existence of withdrawal fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToAssets and previewRedeem SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by redeeming.
     */
    function previewRedeem(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Burns exactly shares from owner and sends assets of underlying tokens to receiver.
     *
     * - MUST emit the Withdraw event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   redeem execution, and are accounted for during redeem.
     * - MUST revert if all of shares cannot be redeemed (due to withdrawal limit being reached, slippage, the owner
     *   not having enough shares, etc).
     *
     * NOTE: some implementations will require pre-requesting to the Vault before a withdrawal may be performed.
     * Those methods should be performed separately.
     */
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256 assets);
}

// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/interfaces/IERC721.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC721.sol)

pragma solidity ^0.8.20;

import {IERC721} from "../token/ERC721/IERC721.sol";

// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/proxy/Clones.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/Clones.sol)

pragma solidity ^0.8.20;

import {Errors} from "../utils/Errors.sol";

/**
 * @dev https://eips.ethereum.org/EIPS/eip-1167[ERC-1167] is a standard for
 * deploying minimal proxy contracts, also known as "clones".
 *
 * > To simply and cheaply clone contract functionality in an immutable way, this standard specifies
 * > a minimal bytecode implementation that delegates all calls to a known, fixed address.
 *
 * The library includes functions to deploy a proxy using either `create` (traditional deployment) or `create2`
 * (salted deterministic deployment). It also includes functions to predict the addresses of clones deployed using the
 * deterministic method.
 */
library Clones {
    /**
     * @dev Deploys and returns the address of a clone that mimics the behaviour of `implementation`.
     *
     * This function uses the create opcode, which should never revert.
     */
    function clone(address implementation) internal returns (address instance) {
        return clone(implementation, 0);
    }

    /**
     * @dev Same as {xref-Clones-clone-address-}[clone], but with a `value` parameter to send native currency
     * to the new contract.
     *
     * NOTE: Using a non-zero value at creation will require the contract using this function (e.g. a factory)
     * to always have enough balance for new deployments. Consider exposing this function under a payable method.
     */
    function clone(address implementation, uint256 value) internal returns (address instance) {
        if (address(this).balance < value) {
            revert Errors.InsufficientBalance(address(this).balance, value);
        }
        /// @solidity memory-safe-assembly
        assembly {
            // Stores the bytecode after address
            mstore(0x20, 0x5af43d82803e903d91602b57fd5bf3)
            // implementation address
            mstore(0x11, implementation)
            // Packs the first 3 bytes of the `implementation` address with the bytecode before the address.
            mstore(0x00, or(shr(0x88, implementation), 0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000))
            instance := create(value, 0x09, 0x37)
        }
        if (instance == address(0)) {
            revert Errors.FailedDeployment();
        }
    }

    /**
     * @dev Deploys and returns the address of a clone that mimics the behaviour of `implementation`.
     *
     * This function uses the create2 opcode and a `salt` to deterministically deploy
     * the clone. Using the same `implementation` and `salt` multiple time will revert, since
     * the clones cannot be deployed twice at the same address.
     */
    function cloneDeterministic(address implementation, bytes32 salt) internal returns (address instance) {
        return cloneDeterministic(implementation, salt, 0);
    }

    /**
     * @dev Same as {xref-Clones-cloneDeterministic-address-bytes32-}[cloneDeterministic], but with
     * a `value` parameter to send native currency to the new contract.
     *
     * NOTE: Using a non-zero value at creation will require the contract using this function (e.g. a factory)
     * to always have enough balance for new deployments. Consider exposing this function under a payable method.
     */
    function cloneDeterministic(
        address implementation,
        bytes32 salt,
        uint256 value
    ) internal returns (address instance) {
        if (address(this).balance < value) {
            revert Errors.InsufficientBalance(address(this).balance, value);
        }
        /// @solidity memory-safe-assembly
        assembly {
            // Stores the bytecode after address
            mstore(0x20, 0x5af43d82803e903d91602b57fd5bf3)
            // implementation address
            mstore(0x11, implementation)
            // Packs the first 3 bytes of the `implementation` address with the bytecode before the address.
            mstore(0x00, or(shr(0x88, implementation), 0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000))
            instance := create2(value, 0x09, 0x37, salt)
        }
        if (instance == address(0)) {
            revert Errors.FailedDeployment();
        }
    }

    /**
     * @dev Computes the address of a clone deployed using {Clones-cloneDeterministic}.
     */
    function predictDeterministicAddress(
        address implementation,
        bytes32 salt,
        address deployer
    ) internal pure returns (address predicted) {
        /// @solidity memory-safe-assembly
        assembly {
            let ptr := mload(0x40)
            mstore(add(ptr, 0x38), deployer)
            mstore(add(ptr, 0x24), 0x5af43d82803e903d91602b57fd5bf3ff)
            mstore(add(ptr, 0x14), implementation)
            mstore(ptr, 0x3d602d80600a3d3981f3363d3d373d3d3d363d73)
            mstore(add(ptr, 0x58), salt)
            mstore(add(ptr, 0x78), keccak256(add(ptr, 0x0c), 0x37))
            predicted := keccak256(add(ptr, 0x43), 0x55)
        }
    }

    /**
     * @dev Computes the address of a clone deployed using {Clones-cloneDeterministic}.
     */
    function predictDeterministicAddress(
        address implementation,
        bytes32 salt
    ) internal view returns (address predicted) {
        return predictDeterministicAddress(implementation, salt, address(this));
    }
}

// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/token/ERC20/extensions/IERC20Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Metadata.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC-20 standard.
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
// FILE: gitmodules/openzeppelin-contracts-5/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

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

// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/token/ERC20/utils/SafeERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/utils/SafeERC20.sol)

pragma solidity ^0.8.20;

import {IERC20} from "../IERC20.sol";
import {IERC1363} from "../../../interfaces/IERC1363.sol";
import {Address} from "../../../utils/Address.sol";

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
    using Address for address;

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
     * @dev Performs an {ERC1363} transferAndCall, with a fallback to the simple {ERC20} transfer if the target has no
     * code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
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
     * has no code. This can be used to implement an {ERC721}-like safe transfer that rely on {ERC1363} checks when
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
     * Opposedly, when the recipient address (`to`) has code, this function only attempts to call {ERC1363-approveAndCall}
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
// FILE: gitmodules/openzeppelin-contracts-5/contracts/token/ERC721/ERC721.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC721/ERC721.sol)

pragma solidity ^0.8.20;

import {IERC721} from "./IERC721.sol";
import {IERC721Metadata} from "./extensions/IERC721Metadata.sol";
import {ERC721Utils} from "./utils/ERC721Utils.sol";
import {Context} from "../../utils/Context.sol";
import {Strings} from "../../utils/Strings.sol";
import {IERC165, ERC165} from "../../utils/introspection/ERC165.sol";
import {IERC721Errors} from "../../interfaces/draft-IERC6093.sol";

/**
 * @dev Implementation of https://eips.ethereum.org/EIPS/eip-721[ERC-721] Non-Fungible Token Standard, including
 * the Metadata extension, but not including the Enumerable extension, which is available separately as
 * {ERC721Enumerable}.
 */
abstract contract ERC721 is Context, ERC165, IERC721, IERC721Metadata, IERC721Errors {
    using Strings for uint256;

    // Token name
    string private _name;

    // Token symbol
    string private _symbol;

    mapping(uint256 tokenId => address) private _owners;

    mapping(address owner => uint256) private _balances;

    mapping(uint256 tokenId => address) private _tokenApprovals;

    mapping(address owner => mapping(address operator => bool)) private _operatorApprovals;

    /**
     * @dev Initializes the contract by setting a `name` and a `symbol` to the token collection.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC165, IERC165) returns (bool) {
        return
            interfaceId == type(IERC721).interfaceId ||
            interfaceId == type(IERC721Metadata).interfaceId ||
            super.supportsInterface(interfaceId);
    }

    /**
     * @dev See {IERC721-balanceOf}.
     */
    function balanceOf(address owner) public view virtual returns (uint256) {
        if (owner == address(0)) {
            revert ERC721InvalidOwner(address(0));
        }
        return _balances[owner];
    }

    /**
     * @dev See {IERC721-ownerOf}.
     */
    function ownerOf(uint256 tokenId) public view virtual returns (address) {
        return _requireOwned(tokenId);
    }

    /**
     * @dev See {IERC721Metadata-name}.
     */
    function name() public view virtual returns (string memory) {
        return _name;
    }

    /**
     * @dev See {IERC721Metadata-symbol}.
     */
    function symbol() public view virtual returns (string memory) {
        return _symbol;
    }

    /**
     * @dev See {IERC721Metadata-tokenURI}.
     */
    function tokenURI(uint256 tokenId) public view virtual returns (string memory) {
        _requireOwned(tokenId);

        string memory baseURI = _baseURI();
        return bytes(baseURI).length > 0 ? string.concat(baseURI, tokenId.toString()) : "";
    }

    /**
     * @dev Base URI for computing {tokenURI}. If set, the resulting URI for each
     * token will be the concatenation of the `baseURI` and the `tokenId`. Empty
     * by default, can be overridden in child contracts.
     */
    function _baseURI() internal view virtual returns (string memory) {
        return "";
    }

    /**
     * @dev See {IERC721-approve}.
     */
    function approve(address to, uint256 tokenId) public virtual {
        _approve(to, tokenId, _msgSender());
    }

    /**
     * @dev See {IERC721-getApproved}.
     */
    function getApproved(uint256 tokenId) public view virtual returns (address) {
        _requireOwned(tokenId);

        return _getApproved(tokenId);
    }

    /**
     * @dev See {IERC721-setApprovalForAll}.
     */
    function setApprovalForAll(address operator, bool approved) public virtual {
        _setApprovalForAll(_msgSender(), operator, approved);
    }

    /**
     * @dev See {IERC721-isApprovedForAll}.
     */
    function isApprovedForAll(address owner, address operator) public view virtual returns (bool) {
        return _operatorApprovals[owner][operator];
    }

    /**
     * @dev See {IERC721-transferFrom}.
     */
    function transferFrom(address from, address to, uint256 tokenId) public virtual {
        if (to == address(0)) {
            revert ERC721InvalidReceiver(address(0));
        }
        // Setting an "auth" arguments enables the `_isAuthorized` check which verifies that the token exists
        // (from != 0). Therefore, it is not needed to verify that the return value is not 0 here.
        address previousOwner = _update(to, tokenId, _msgSender());
        if (previousOwner != from) {
            revert ERC721IncorrectOwner(from, tokenId, previousOwner);
        }
    }

    /**
     * @dev See {IERC721-safeTransferFrom}.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId) public {
        safeTransferFrom(from, to, tokenId, "");
    }

    /**
     * @dev See {IERC721-safeTransferFrom}.
     */
    function safeTransferFrom(address from, address to, uint256 tokenId, bytes memory data) public virtual {
        transferFrom(from, to, tokenId);
        ERC721Utils.checkOnERC721Received(_msgSender(), from, to, tokenId, data);
    }

    /**
     * @dev Returns the owner of the `tokenId`. Does NOT revert if token doesn't exist
     *
     * IMPORTANT: Any overrides to this function that add ownership of tokens not tracked by the
     * core ERC-721 logic MUST be matched with the use of {_increaseBalance} to keep balances
     * consistent with ownership. The invariant to preserve is that for any address `a` the value returned by
     * `balanceOf(a)` must be equal to the number of tokens such that `_ownerOf(tokenId)` is `a`.
     */
    function _ownerOf(uint256 tokenId) internal view virtual returns (address) {
        return _owners[tokenId];
    }

    /**
     * @dev Returns the approved address for `tokenId`. Returns 0 if `tokenId` is not minted.
     */
    function _getApproved(uint256 tokenId) internal view virtual returns (address) {
        return _tokenApprovals[tokenId];
    }

    /**
     * @dev Returns whether `spender` is allowed to manage `owner`'s tokens, or `tokenId` in
     * particular (ignoring whether it is owned by `owner`).
     *
     * WARNING: This function assumes that `owner` is the actual owner of `tokenId` and does not verify this
     * assumption.
     */
    function _isAuthorized(address owner, address spender, uint256 tokenId) internal view virtual returns (bool) {
        return
            spender != address(0) &&
            (owner == spender || isApprovedForAll(owner, spender) || _getApproved(tokenId) == spender);
    }

    /**
     * @dev Checks if `spender` can operate on `tokenId`, assuming the provided `owner` is the actual owner.
     * Reverts if `spender` does not have approval from the provided `owner` for the given token or for all its assets
     * the `spender` for the specific `tokenId`.
     *
     * WARNING: This function assumes that `owner` is the actual owner of `tokenId` and does not verify this
     * assumption.
     */
    function _checkAuthorized(address owner, address spender, uint256 tokenId) internal view virtual {
        if (!_isAuthorized(owner, spender, tokenId)) {
            if (owner == address(0)) {
                revert ERC721NonexistentToken(tokenId);
            } else {
                revert ERC721InsufficientApproval(spender, tokenId);
            }
        }
    }

    /**
     * @dev Unsafe write access to the balances, used by extensions that "mint" tokens using an {ownerOf} override.
     *
     * NOTE: the value is limited to type(uint128).max. This protect against _balance overflow. It is unrealistic that
     * a uint256 would ever overflow from increments when these increments are bounded to uint128 values.
     *
     * WARNING: Increasing an account's balance using this function tends to be paired with an override of the
     * {_ownerOf} function to resolve the ownership of the corresponding tokens so that balances and ownership
     * remain consistent with one another.
     */
    function _increaseBalance(address account, uint128 value) internal virtual {
        unchecked {
            _balances[account] += value;
        }
    }

    /**
     * @dev Transfers `tokenId` from its current owner to `to`, or alternatively mints (or burns) if the current owner
     * (or `to`) is the zero address. Returns the owner of the `tokenId` before the update.
     *
     * The `auth` argument is optional. If the value passed is non 0, then this function will check that
     * `auth` is either the owner of the token, or approved to operate on the token (by the owner).
     *
     * Emits a {Transfer} event.
     *
     * NOTE: If overriding this function in a way that tracks balances, see also {_increaseBalance}.
     */
    function _update(address to, uint256 tokenId, address auth) internal virtual returns (address) {
        address from = _ownerOf(tokenId);

        // Perform (optional) operator check
        if (auth != address(0)) {
            _checkAuthorized(from, auth, tokenId);
        }

        // Execute the update
        if (from != address(0)) {
            // Clear approval. No need to re-authorize or emit the Approval event
            _approve(address(0), tokenId, address(0), false);

            unchecked {
                _balances[from] -= 1;
            }
        }

        if (to != address(0)) {
            unchecked {
                _balances[to] += 1;
            }
        }

        _owners[tokenId] = to;

        emit Transfer(from, to, tokenId);

        return from;
    }

    /**
     * @dev Mints `tokenId` and transfers it to `to`.
     *
     * WARNING: Usage of this method is discouraged, use {_safeMint} whenever possible
     *
     * Requirements:
     *
     * - `tokenId` must not exist.
     * - `to` cannot be the zero address.
     *
     * Emits a {Transfer} event.
     */
    function _mint(address to, uint256 tokenId) internal {
        if (to == address(0)) {
            revert ERC721InvalidReceiver(address(0));
        }
        address previousOwner = _update(to, tokenId, address(0));
        if (previousOwner != address(0)) {
            revert ERC721InvalidSender(address(0));
        }
    }

    /**
     * @dev Mints `tokenId`, transfers it to `to` and checks for `to` acceptance.
     *
     * Requirements:
     *
     * - `tokenId` must not exist.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function _safeMint(address to, uint256 tokenId) internal {
        _safeMint(to, tokenId, "");
    }

    /**
     * @dev Same as {xref-ERC721-_safeMint-address-uint256-}[`_safeMint`], with an additional `data` parameter which is
     * forwarded in {IERC721Receiver-onERC721Received} to contract recipients.
     */
    function _safeMint(address to, uint256 tokenId, bytes memory data) internal virtual {
        _mint(to, tokenId);
        ERC721Utils.checkOnERC721Received(_msgSender(), address(0), to, tokenId, data);
    }

    /**
     * @dev Destroys `tokenId`.
     * The approval is cleared when the token is burned.
     * This is an internal function that does not check if the sender is authorized to operate on the token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     *
     * Emits a {Transfer} event.
     */
    function _burn(uint256 tokenId) internal {
        address previousOwner = _update(address(0), tokenId, address(0));
        if (previousOwner == address(0)) {
            revert ERC721NonexistentToken(tokenId);
        }
    }

    /**
     * @dev Transfers `tokenId` from `from` to `to`.
     *  As opposed to {transferFrom}, this imposes no restrictions on msg.sender.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     *
     * Emits a {Transfer} event.
     */
    function _transfer(address from, address to, uint256 tokenId) internal {
        if (to == address(0)) {
            revert ERC721InvalidReceiver(address(0));
        }
        address previousOwner = _update(to, tokenId, address(0));
        if (previousOwner == address(0)) {
            revert ERC721NonexistentToken(tokenId);
        } else if (previousOwner != from) {
            revert ERC721IncorrectOwner(from, tokenId, previousOwner);
        }
    }

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking that contract recipients
     * are aware of the ERC-721 standard to prevent tokens from being forever locked.
     *
     * `data` is additional data, it has no specified format and it is sent in call to `to`.
     *
     * This internal function is like {safeTransferFrom} in the sense that it invokes
     * {IERC721Receiver-onERC721Received} on the receiver, and can be used to e.g.
     * implement alternative mechanisms to perform token transfer, such as signature-based.
     *
     * Requirements:
     *
     * - `tokenId` token must exist and be owned by `from`.
     * - `to` cannot be the zero address.
     * - `from` cannot be the zero address.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function _safeTransfer(address from, address to, uint256 tokenId) internal {
        _safeTransfer(from, to, tokenId, "");
    }

    /**
     * @dev Same as {xref-ERC721-_safeTransfer-address-address-uint256-}[`_safeTransfer`], with an additional `data` parameter which is
     * forwarded in {IERC721Receiver-onERC721Received} to contract recipients.
     */
    function _safeTransfer(address from, address to, uint256 tokenId, bytes memory data) internal virtual {
        _transfer(from, to, tokenId);
        ERC721Utils.checkOnERC721Received(_msgSender(), from, to, tokenId, data);
    }

    /**
     * @dev Approve `to` to operate on `tokenId`
     *
     * The `auth` argument is optional. If the value passed is non 0, then this function will check that `auth` is
     * either the owner of the token, or approved to operate on all tokens held by this owner.
     *
     * Emits an {Approval} event.
     *
     * Overrides to this logic should be done to the variant with an additional `bool emitEvent` argument.
     */
    function _approve(address to, uint256 tokenId, address auth) internal {
        _approve(to, tokenId, auth, true);
    }

    /**
     * @dev Variant of `_approve` with an optional flag to enable or disable the {Approval} event. The event is not
     * emitted in the context of transfers.
     */
    function _approve(address to, uint256 tokenId, address auth, bool emitEvent) internal virtual {
        // Avoid reading the owner unless necessary
        if (emitEvent || auth != address(0)) {
            address owner = _requireOwned(tokenId);

            // We do not use _isAuthorized because single-token approvals should not be able to call approve
            if (auth != address(0) && owner != auth && !isApprovedForAll(owner, auth)) {
                revert ERC721InvalidApprover(auth);
            }

            if (emitEvent) {
                emit Approval(owner, to, tokenId);
            }
        }

        _tokenApprovals[tokenId] = to;
    }

    /**
     * @dev Approve `operator` to operate on all of `owner` tokens
     *
     * Requirements:
     * - operator can't be the address zero.
     *
     * Emits an {ApprovalForAll} event.
     */
    function _setApprovalForAll(address owner, address operator, bool approved) internal virtual {
        if (operator == address(0)) {
            revert ERC721InvalidOperator(operator);
        }
        _operatorApprovals[owner][operator] = approved;
        emit ApprovalForAll(owner, operator, approved);
    }

    /**
     * @dev Reverts if the `tokenId` doesn't have a current owner (it hasn't been minted, or it has been burned).
     * Returns the owner.
     *
     * Overrides to ownership logic should be done to {_ownerOf}.
     */
    function _requireOwned(uint256 tokenId) internal view returns (address) {
        address owner = _ownerOf(tokenId);
        if (owner == address(0)) {
            revert ERC721NonexistentToken(tokenId);
        }
        return owner;
    }
}

// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/token/ERC721/extensions/IERC721Metadata.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC721/extensions/IERC721Metadata.sol)

pragma solidity ^0.8.20;

import {IERC721} from "../IERC721.sol";

/**
 * @title ERC-721 Non-Fungible Token Standard, optional metadata extension
 * @dev See https://eips.ethereum.org/EIPS/eip-721
 */
interface IERC721Metadata is IERC721 {
    /**
     * @dev Returns the token collection name.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the token collection symbol.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the Uniform Resource Identifier (URI) for `tokenId` token.
     */
    function tokenURI(uint256 tokenId) external view returns (string memory);
}

// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/token/ERC721/IERC721.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC721/IERC721.sol)

pragma solidity ^0.8.20;

import {IERC165} from "../../utils/introspection/IERC165.sol";

/**
 * @dev Required interface of an ERC-721 compliant contract.
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
     * are aware of the ERC-721 protocol to prevent tokens from being forever locked.
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
     * WARNING: Note that the caller is responsible to confirm that the recipient is capable of receiving ERC-721
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
// FILE: gitmodules/openzeppelin-contracts-5/contracts/token/ERC721/IERC721Receiver.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC721/IERC721Receiver.sol)

pragma solidity ^0.8.20;

/**
 * @title ERC-721 token receiver interface
 * @dev Interface for any contract that wants to support safeTransfers
 * from ERC-721 asset contracts.
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
// FILE: gitmodules/openzeppelin-contracts-5/contracts/token/ERC721/utils/ERC721Utils.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {IERC721Receiver} from "../IERC721Receiver.sol";
import {IERC721Errors} from "../../../interfaces/draft-IERC6093.sol";

/**
 * @dev Library that provide common ERC-721 utility functions.
 *
 * See https://eips.ethereum.org/EIPS/eip-721[ERC-721].
 */
library ERC721Utils {
    /**
     * @dev Performs an acceptance check for the provided `operator` by calling {IERC721-onERC721Received}
     * on the `to` address. The `operator` is generally the address that initiated the token transfer (i.e. `msg.sender`).
     *
     * The acceptance call is not executed and treated as a no-op if the target address doesn't contain code (i.e. an EOA).
     * Otherwise, the recipient must implement {IERC721Receiver-onERC721Received} and return the acceptance magic value to accept
     * the transfer.
     */
    function checkOnERC721Received(
        address operator,
        address from,
        address to,
        uint256 tokenId,
        bytes memory data
    ) internal {
        if (to.code.length > 0) {
            try IERC721Receiver(to).onERC721Received(operator, from, tokenId, data) returns (bytes4 retval) {
                if (retval != IERC721Receiver.onERC721Received.selector) {
                    // Token rejected
                    revert IERC721Errors.ERC721InvalidReceiver(to);
                }
            } catch (bytes memory reason) {
                if (reason.length == 0) {
                    // non-IERC721Receiver implementer
                    revert IERC721Errors.ERC721InvalidReceiver(to);
                } else {
                    /// @solidity memory-safe-assembly
                    assembly {
                        revert(add(32, reason), mload(reason))
                    }
                }
            }
        }
    }
}

// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/Address.sol)

pragma solidity ^0.8.20;

import {Errors} from "./Errors.sol";

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev There's no code at `target` (it is not a contract).
     */
    error AddressEmptyCode(address target);

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
            revert Errors.InsufficientBalance(address(this).balance, amount);
        }

        (bool success, ) = recipient.call{value: amount}("");
        if (!success) {
            revert Errors.FailedCall();
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
     * {Errors.FailedCall} error.
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
            revert Errors.InsufficientBalance(address(this).balance, value);
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
     * was not a contract or bubbling up the revert reason (falling back to {Errors.FailedCall}) in case
     * of an unsuccessful call.
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
     * revert reason or with a default {Errors.FailedCall} error.
     */
    function verifyCallResult(bool success, bytes memory returndata) internal pure returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            return returndata;
        }
    }

    /**
     * @dev Reverts with returndata if present. Otherwise reverts with {Errors.FailedCall}.
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
            revert Errors.FailedCall();
        }
    }
}

// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/utils/Context.sol
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
// FILE: gitmodules/openzeppelin-contracts-5/contracts/utils/Errors.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

/**
 * @dev Collection of common custom errors used in multiple contracts
 *
 * IMPORTANT: Backwards compatibility is not guaranteed in future versions of the library.
 * It is recommended to avoid relying on the error API for critical functionality.
 */
library Errors {
    /**
     * @dev The ETH balance of the account is not enough to perform the operation.
     */
    error InsufficientBalance(uint256 balance, uint256 needed);

    /**
     * @dev A call to an address target failed. The target may have reverted.
     */
    error FailedCall();

    /**
     * @dev The deployment failed.
     */
    error FailedDeployment();
}

// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/utils/introspection/ERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/introspection/ERC165.sol)

pragma solidity ^0.8.20;

import {IERC165} from "./IERC165.sol";

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC-165 should inherit from this contract and override {supportsInterface} to check
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
// FILE: gitmodules/openzeppelin-contracts-5/contracts/utils/introspection/IERC165.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/introspection/IERC165.sol)

pragma solidity ^0.8.20;

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

// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/utils/math/Math.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/Math.sol)

pragma solidity ^0.8.20;

import {Panic} from "../Panic.sol";
import {SafeCast} from "./SafeCast.sol";

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    enum Rounding {
        Floor, // Toward negative infinity
        Ceil, // Toward positive infinity
        Trunc, // Toward zero
        Expand // Away from zero
    }

    /**
     * @dev Returns the addition of two unsigned integers, with an success flag (no overflow).
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with an success flag (no overflow).
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an success flag (no overflow).
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
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
     * @dev Returns the division of two unsigned integers, with a success flag (no division by zero).
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a success flag (no division by zero).
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool success, uint256 result) {
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
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }

        // The following calculation ensures accurate ceiling division without overflow.
        // Since a is non-zero, (a - 1) / b will not overflow.
        // The largest possible result occurs when (a - 1) / b is type(uint256).max,
        // but the largest value we can obtain is type(uint256).max - 1, which happens
        // when a = type(uint256).max and b = 1.
        unchecked {
            return a == 0 ? 0 : (a - 1) / b + 1;
        }
    }

    /**
     * @dev Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or
     * denominator == 0.
     *
     * Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv) with further edits by
     * Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2²⁵⁶ and mod 2²⁵⁶ - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2²⁵⁶ + prod0.
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

            // Make sure the result is less than 2²⁵⁶. Also prevents denominator == 0.
            if (denominator <= prod1) {
                Panic.panic(denominator == 0 ? Panic.DIVISION_BY_ZERO : Panic.UNDER_OVERFLOW);
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

                // Flip twos such that it is 2²⁵⁶ / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2²⁵⁶. Now that denominator is an odd number, it has an inverse modulo 2²⁵⁶ such
            // that denominator * inv ≡ 1 mod 2²⁵⁶. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv ≡ 1 mod 2⁴.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also
            // works in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2⁸
            inverse *= 2 - denominator * inverse; // inverse mod 2¹⁶
            inverse *= 2 - denominator * inverse; // inverse mod 2³²
            inverse *= 2 - denominator * inverse; // inverse mod 2⁶⁴
            inverse *= 2 - denominator * inverse; // inverse mod 2¹²⁸
            inverse *= 2 - denominator * inverse; // inverse mod 2²⁵⁶

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2²⁵⁶. Since the preconditions guarantee that the outcome is
            // less than 2²⁵⁶, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @dev Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        return mulDiv(x, y, denominator) + SafeCast.toUint(unsignedRoundsUp(rounding) && mulmod(x, y, denominator) > 0);
    }

    /**
     * @dev Calculate the modular multiplicative inverse of a number in Z/nZ.
     *
     * If n is a prime, then Z/nZ is a field. In that case all elements are inversible, expect 0.
     * If n is not a prime, then Z/nZ is not a field, and some elements might not be inversible.
     *
     * If the input value is not inversible, 0 is returned.
     *
     * NOTE: If you know for sure that n is (big) a prime, it may be cheaper to use Ferma's little theorem and get the
     * inverse using `Math.modExp(a, n - 2, n)`.
     */
    function invMod(uint256 a, uint256 n) internal pure returns (uint256) {
        unchecked {
            if (n == 0) return 0;

            // The inverse modulo is calculated using the Extended Euclidean Algorithm (iterative version)
            // Used to compute integers x and y such that: ax + ny = gcd(a, n).
            // When the gcd is 1, then the inverse of a modulo n exists and it's x.
            // ax + ny = 1
            // ax = 1 + (-y)n
            // ax ≡ 1 (mod n) # x is the inverse of a modulo n

            // If the remainder is 0 the gcd is n right away.
            uint256 remainder = a % n;
            uint256 gcd = n;

            // Therefore the initial coefficients are:
            // ax + ny = gcd(a, n) = n
            // 0a + 1n = n
            int256 x = 0;
            int256 y = 1;

            while (remainder != 0) {
                uint256 quotient = gcd / remainder;

                (gcd, remainder) = (
                    // The old remainder is the next gcd to try.
                    remainder,
                    // Compute the next remainder.
                    // Can't overflow given that (a % gcd) * (gcd // (a % gcd)) <= gcd
                    // where gcd is at most n (capped to type(uint256).max)
                    gcd - remainder * quotient
                );

                (x, y) = (
                    // Increment the coefficient of a.
                    y,
                    // Decrement the coefficient of n.
                    // Can overflow, but the result is casted to uint256 so that the
                    // next value of y is "wrapped around" to a value between 0 and n - 1.
                    x - y * int256(quotient)
                );
            }

            if (gcd != 1) return 0; // No inverse exists.
            return x < 0 ? (n - uint256(-x)) : uint256(x); // Wrap the result if it's negative.
        }
    }

    /**
     * @dev Returns the modular exponentiation of the specified base, exponent and modulus (b ** e % m)
     *
     * Requirements:
     * - modulus can't be zero
     * - underlying staticcall to precompile must succeed
     *
     * IMPORTANT: The result is only valid if the underlying call succeeds. When using this function, make
     * sure the chain you're using it on supports the precompiled contract for modular exponentiation
     * at address 0x05 as specified in https://eips.ethereum.org/EIPS/eip-198[EIP-198]. Otherwise,
     * the underlying function will succeed given the lack of a revert, but the result may be incorrectly
     * interpreted as 0.
     */
    function modExp(uint256 b, uint256 e, uint256 m) internal view returns (uint256) {
        (bool success, uint256 result) = tryModExp(b, e, m);
        if (!success) {
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }
        return result;
    }

    /**
     * @dev Returns the modular exponentiation of the specified base, exponent and modulus (b ** e % m).
     * It includes a success flag indicating if the operation succeeded. Operation will be marked has failed if trying
     * to operate modulo 0 or if the underlying precompile reverted.
     *
     * IMPORTANT: The result is only valid if the success flag is true. When using this function, make sure the chain
     * you're using it on supports the precompiled contract for modular exponentiation at address 0x05 as specified in
     * https://eips.ethereum.org/EIPS/eip-198[EIP-198]. Otherwise, the underlying function will succeed given the lack
     * of a revert, but the result may be incorrectly interpreted as 0.
     */
    function tryModExp(uint256 b, uint256 e, uint256 m) internal view returns (bool success, uint256 result) {
        if (m == 0) return (false, 0);
        /// @solidity memory-safe-assembly
        assembly {
            let ptr := mload(0x40)
            // | Offset    | Content    | Content (Hex)                                                      |
            // |-----------|------------|--------------------------------------------------------------------|
            // | 0x00:0x1f | size of b  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x20:0x3f | size of e  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x40:0x5f | size of m  | 0x0000000000000000000000000000000000000000000000000000000000000020 |
            // | 0x60:0x7f | value of b | 0x<.............................................................b> |
            // | 0x80:0x9f | value of e | 0x<.............................................................e> |
            // | 0xa0:0xbf | value of m | 0x<.............................................................m> |
            mstore(ptr, 0x20)
            mstore(add(ptr, 0x20), 0x20)
            mstore(add(ptr, 0x40), 0x20)
            mstore(add(ptr, 0x60), b)
            mstore(add(ptr, 0x80), e)
            mstore(add(ptr, 0xa0), m)

            // Given the result < m, it's guaranteed to fit in 32 bytes,
            // so we can use the memory scratch space located at offset 0.
            success := staticcall(gas(), 0x05, ptr, 0xc0, 0x00, 0x20)
            result := mload(0x00)
        }
    }

    /**
     * @dev Variant of {modExp} that supports inputs of arbitrary length.
     */
    function modExp(bytes memory b, bytes memory e, bytes memory m) internal view returns (bytes memory) {
        (bool success, bytes memory result) = tryModExp(b, e, m);
        if (!success) {
            Panic.panic(Panic.DIVISION_BY_ZERO);
        }
        return result;
    }

    /**
     * @dev Variant of {tryModExp} that supports inputs of arbitrary length.
     */
    function tryModExp(
        bytes memory b,
        bytes memory e,
        bytes memory m
    ) internal view returns (bool success, bytes memory result) {
        if (_zeroBytes(m)) return (false, new bytes(0));

        uint256 mLen = m.length;

        // Encode call args in result and move the free memory pointer
        result = abi.encodePacked(b.length, e.length, mLen, b, e, m);

        /// @solidity memory-safe-assembly
        assembly {
            let dataPtr := add(result, 0x20)
            // Write result on top of args to avoid allocating extra memory.
            success := staticcall(gas(), 0x05, dataPtr, mload(result), dataPtr, mLen)
            // Overwrite the length.
            // result.length > returndatasize() is guaranteed because returndatasize() == m.length
            mstore(result, mLen)
            // Set the memory pointer after the returned data.
            mstore(0x40, add(dataPtr, mLen))
        }
    }

    /**
     * @dev Returns whether the provided byte array is zero.
     */
    function _zeroBytes(bytes memory byteArray) private pure returns (bool) {
        for (uint256 i = 0; i < byteArray.length; ++i) {
            if (byteArray[i] != 0) {
                return false;
            }
        }
        return true;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded
     * towards zero.
     *
     * This method is based on Newton's method for computing square roots; the algorithm is restricted to only
     * using integer operations.
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        unchecked {
            // Take care of easy edge cases when a == 0 or a == 1
            if (a <= 1) {
                return a;
            }

            // In this function, we use Newton's method to get a root of `f(x) := x² - a`. It involves building a
            // sequence x_n that converges toward sqrt(a). For each iteration x_n, we also define the error between
            // the current value as `ε_n = | x_n - sqrt(a) |`.
            //
            // For our first estimation, we consider `e` the smallest power of 2 which is bigger than the square root
            // of the target. (i.e. `2**(e-1) ≤ sqrt(a) < 2**e`). We know that `e ≤ 128` because `(2¹²⁸)² = 2²⁵⁶` is
            // bigger than any uint256.
            //
            // By noticing that
            // `2**(e-1) ≤ sqrt(a) < 2**e → (2**(e-1))² ≤ a < (2**e)² → 2**(2*e-2) ≤ a < 2**(2*e)`
            // we can deduce that `e - 1` is `log2(a) / 2`. We can thus compute `x_n = 2**(e-1)` using a method similar
            // to the msb function.
            uint256 aa = a;
            uint256 xn = 1;

            if (aa >= (1 << 128)) {
                aa >>= 128;
                xn <<= 64;
            }
            if (aa >= (1 << 64)) {
                aa >>= 64;
                xn <<= 32;
            }
            if (aa >= (1 << 32)) {
                aa >>= 32;
                xn <<= 16;
            }
            if (aa >= (1 << 16)) {
                aa >>= 16;
                xn <<= 8;
            }
            if (aa >= (1 << 8)) {
                aa >>= 8;
                xn <<= 4;
            }
            if (aa >= (1 << 4)) {
                aa >>= 4;
                xn <<= 2;
            }
            if (aa >= (1 << 2)) {
                xn <<= 1;
            }

            // We now have x_n such that `x_n = 2**(e-1) ≤ sqrt(a) < 2**e = 2 * x_n`. This implies ε_n ≤ 2**(e-1).
            //
            // We can refine our estimation by noticing that the middle of that interval minimizes the error.
            // If we move x_n to equal 2**(e-1) + 2**(e-2), then we reduce the error to ε_n ≤ 2**(e-2).
            // This is going to be our x_0 (and ε_0)
            xn = (3 * xn) >> 1; // ε_0 := | x_0 - sqrt(a) | ≤ 2**(e-2)

            // From here, Newton's method give us:
            // x_{n+1} = (x_n + a / x_n) / 2
            //
            // One should note that:
            // x_{n+1}² - a = ((x_n + a / x_n) / 2)² - a
            //              = ((x_n² + a) / (2 * x_n))² - a
            //              = (x_n⁴ + 2 * a * x_n² + a²) / (4 * x_n²) - a
            //              = (x_n⁴ + 2 * a * x_n² + a² - 4 * a * x_n²) / (4 * x_n²)
            //              = (x_n⁴ - 2 * a * x_n² + a²) / (4 * x_n²)
            //              = (x_n² - a)² / (2 * x_n)²
            //              = ((x_n² - a) / (2 * x_n))²
            //              ≥ 0
            // Which proves that for all n ≥ 1, sqrt(a) ≤ x_n
            //
            // This gives us the proof of quadratic convergence of the sequence:
            // ε_{n+1} = | x_{n+1} - sqrt(a) |
            //         = | (x_n + a / x_n) / 2 - sqrt(a) |
            //         = | (x_n² + a - 2*x_n*sqrt(a)) / (2 * x_n) |
            //         = | (x_n - sqrt(a))² / (2 * x_n) |
            //         = | ε_n² / (2 * x_n) |
            //         = ε_n² / | (2 * x_n) |
            //
            // For the first iteration, we have a special case where x_0 is known:
            // ε_1 = ε_0² / | (2 * x_0) |
            //     ≤ (2**(e-2))² / (2 * (2**(e-1) + 2**(e-2)))
            //     ≤ 2**(2*e-4) / (3 * 2**(e-1))
            //     ≤ 2**(e-3) / 3
            //     ≤ 2**(e-3-log2(3))
            //     ≤ 2**(e-4.5)
            //
            // For the following iterations, we use the fact that, 2**(e-1) ≤ sqrt(a) ≤ x_n:
            // ε_{n+1} = ε_n² / | (2 * x_n) |
            //         ≤ (2**(e-k))² / (2 * 2**(e-1))
            //         ≤ 2**(2*e-2*k) / 2**e
            //         ≤ 2**(e-2*k)
            xn = (xn + a / xn) >> 1; // ε_1 := | x_1 - sqrt(a) | ≤ 2**(e-4.5)  -- special case, see above
            xn = (xn + a / xn) >> 1; // ε_2 := | x_2 - sqrt(a) | ≤ 2**(e-9)    -- general case with k = 4.5
            xn = (xn + a / xn) >> 1; // ε_3 := | x_3 - sqrt(a) | ≤ 2**(e-18)   -- general case with k = 9
            xn = (xn + a / xn) >> 1; // ε_4 := | x_4 - sqrt(a) | ≤ 2**(e-36)   -- general case with k = 18
            xn = (xn + a / xn) >> 1; // ε_5 := | x_5 - sqrt(a) | ≤ 2**(e-72)   -- general case with k = 36
            xn = (xn + a / xn) >> 1; // ε_6 := | x_6 - sqrt(a) | ≤ 2**(e-144)  -- general case with k = 72

            // Because e ≤ 128 (as discussed during the first estimation phase), we know have reached a precision
            // ε_6 ≤ 2**(e-144) < 1. Given we're operating on integers, then we can ensure that xn is now either
            // sqrt(a) or sqrt(a) + 1.
            return xn - SafeCast.toUint(xn > a / xn);
        }
    }

    /**
     * @dev Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && result * result < a);
        }
    }

    /**
     * @dev Return the log in base 2 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        uint256 exp;
        unchecked {
            exp = 128 * SafeCast.toUint(value > (1 << 128) - 1);
            value >>= exp;
            result += exp;

            exp = 64 * SafeCast.toUint(value > (1 << 64) - 1);
            value >>= exp;
            result += exp;

            exp = 32 * SafeCast.toUint(value > (1 << 32) - 1);
            value >>= exp;
            result += exp;

            exp = 16 * SafeCast.toUint(value > (1 << 16) - 1);
            value >>= exp;
            result += exp;

            exp = 8 * SafeCast.toUint(value > (1 << 8) - 1);
            value >>= exp;
            result += exp;

            exp = 4 * SafeCast.toUint(value > (1 << 4) - 1);
            value >>= exp;
            result += exp;

            exp = 2 * SafeCast.toUint(value > (1 << 2) - 1);
            value >>= exp;
            result += exp;

            result += SafeCast.toUint(value > 1);
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
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 1 << result < value);
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
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 10 ** result < value);
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
        uint256 isGt;
        unchecked {
            isGt = SafeCast.toUint(value > (1 << 128) - 1);
            value >>= isGt * 128;
            result += isGt * 16;

            isGt = SafeCast.toUint(value > (1 << 64) - 1);
            value >>= isGt * 64;
            result += isGt * 8;

            isGt = SafeCast.toUint(value > (1 << 32) - 1);
            value >>= isGt * 32;
            result += isGt * 4;

            isGt = SafeCast.toUint(value > (1 << 16) - 1);
            value >>= isGt * 16;
            result += isGt * 2;

            result += SafeCast.toUint(value > (1 << 8) - 1);
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
            return result + SafeCast.toUint(unsignedRoundsUp(rounding) && 1 << (result << 3) < value);
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
// FILE: gitmodules/openzeppelin-contracts-5/contracts/utils/math/SafeCast.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/SafeCast.sol)
// This file was procedurally generated from scripts/generate/templates/SafeCast.js.

pragma solidity ^0.8.20;

/**
 * @dev Wrappers over Solidity's uintXX/intXX/bool casting operators with added overflow
 * checks.
 *
 * Downcasting from uint256/int256 in Solidity does not revert on overflow. This can
 * easily result in undesired exploitation or bugs, since developers usually
 * assume that overflows raise errors. `SafeCast` restores this intuition by
 * reverting the transaction when such an operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeCast {
    /**
     * @dev Value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedUintDowncast(uint8 bits, uint256 value);

    /**
     * @dev An int value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedIntToUint(int256 value);

    /**
     * @dev Value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedIntDowncast(uint8 bits, int256 value);

    /**
     * @dev An uint value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedUintToInt(uint256 value);

    /**
     * @dev Returns the downcasted uint248 from uint256, reverting on
     * overflow (when the input is greater than largest uint248).
     *
     * Counterpart to Solidity's `uint248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toUint248(uint256 value) internal pure returns (uint248) {
        if (value > type(uint248).max) {
            revert SafeCastOverflowedUintDowncast(248, value);
        }
        return uint248(value);
    }

    /**
     * @dev Returns the downcasted uint240 from uint256, reverting on
     * overflow (when the input is greater than largest uint240).
     *
     * Counterpart to Solidity's `uint240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toUint240(uint256 value) internal pure returns (uint240) {
        if (value > type(uint240).max) {
            revert SafeCastOverflowedUintDowncast(240, value);
        }
        return uint240(value);
    }

    /**
     * @dev Returns the downcasted uint232 from uint256, reverting on
     * overflow (when the input is greater than largest uint232).
     *
     * Counterpart to Solidity's `uint232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toUint232(uint256 value) internal pure returns (uint232) {
        if (value > type(uint232).max) {
            revert SafeCastOverflowedUintDowncast(232, value);
        }
        return uint232(value);
    }

    /**
     * @dev Returns the downcasted uint224 from uint256, reverting on
     * overflow (when the input is greater than largest uint224).
     *
     * Counterpart to Solidity's `uint224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toUint224(uint256 value) internal pure returns (uint224) {
        if (value > type(uint224).max) {
            revert SafeCastOverflowedUintDowncast(224, value);
        }
        return uint224(value);
    }

    /**
     * @dev Returns the downcasted uint216 from uint256, reverting on
     * overflow (when the input is greater than largest uint216).
     *
     * Counterpart to Solidity's `uint216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toUint216(uint256 value) internal pure returns (uint216) {
        if (value > type(uint216).max) {
            revert SafeCastOverflowedUintDowncast(216, value);
        }
        return uint216(value);
    }

    /**
     * @dev Returns the downcasted uint208 from uint256, reverting on
     * overflow (when the input is greater than largest uint208).
     *
     * Counterpart to Solidity's `uint208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toUint208(uint256 value) internal pure returns (uint208) {
        if (value > type(uint208).max) {
            revert SafeCastOverflowedUintDowncast(208, value);
        }
        return uint208(value);
    }

    /**
     * @dev Returns the downcasted uint200 from uint256, reverting on
     * overflow (when the input is greater than largest uint200).
     *
     * Counterpart to Solidity's `uint200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toUint200(uint256 value) internal pure returns (uint200) {
        if (value > type(uint200).max) {
            revert SafeCastOverflowedUintDowncast(200, value);
        }
        return uint200(value);
    }

    /**
     * @dev Returns the downcasted uint192 from uint256, reverting on
     * overflow (when the input is greater than largest uint192).
     *
     * Counterpart to Solidity's `uint192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toUint192(uint256 value) internal pure returns (uint192) {
        if (value > type(uint192).max) {
            revert SafeCastOverflowedUintDowncast(192, value);
        }
        return uint192(value);
    }

    /**
     * @dev Returns the downcasted uint184 from uint256, reverting on
     * overflow (when the input is greater than largest uint184).
     *
     * Counterpart to Solidity's `uint184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toUint184(uint256 value) internal pure returns (uint184) {
        if (value > type(uint184).max) {
            revert SafeCastOverflowedUintDowncast(184, value);
        }
        return uint184(value);
    }

    /**
     * @dev Returns the downcasted uint176 from uint256, reverting on
     * overflow (when the input is greater than largest uint176).
     *
     * Counterpart to Solidity's `uint176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toUint176(uint256 value) internal pure returns (uint176) {
        if (value > type(uint176).max) {
            revert SafeCastOverflowedUintDowncast(176, value);
        }
        return uint176(value);
    }

    /**
     * @dev Returns the downcasted uint168 from uint256, reverting on
     * overflow (when the input is greater than largest uint168).
     *
     * Counterpart to Solidity's `uint168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toUint168(uint256 value) internal pure returns (uint168) {
        if (value > type(uint168).max) {
            revert SafeCastOverflowedUintDowncast(168, value);
        }
        return uint168(value);
    }

    /**
     * @dev Returns the downcasted uint160 from uint256, reverting on
     * overflow (when the input is greater than largest uint160).
     *
     * Counterpart to Solidity's `uint160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toUint160(uint256 value) internal pure returns (uint160) {
        if (value > type(uint160).max) {
            revert SafeCastOverflowedUintDowncast(160, value);
        }
        return uint160(value);
    }

    /**
     * @dev Returns the downcasted uint152 from uint256, reverting on
     * overflow (when the input is greater than largest uint152).
     *
     * Counterpart to Solidity's `uint152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toUint152(uint256 value) internal pure returns (uint152) {
        if (value > type(uint152).max) {
            revert SafeCastOverflowedUintDowncast(152, value);
        }
        return uint152(value);
    }

    /**
     * @dev Returns the downcasted uint144 from uint256, reverting on
     * overflow (when the input is greater than largest uint144).
     *
     * Counterpart to Solidity's `uint144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toUint144(uint256 value) internal pure returns (uint144) {
        if (value > type(uint144).max) {
            revert SafeCastOverflowedUintDowncast(144, value);
        }
        return uint144(value);
    }

    /**
     * @dev Returns the downcasted uint136 from uint256, reverting on
     * overflow (when the input is greater than largest uint136).
     *
     * Counterpart to Solidity's `uint136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toUint136(uint256 value) internal pure returns (uint136) {
        if (value > type(uint136).max) {
            revert SafeCastOverflowedUintDowncast(136, value);
        }
        return uint136(value);
    }

    /**
     * @dev Returns the downcasted uint128 from uint256, reverting on
     * overflow (when the input is greater than largest uint128).
     *
     * Counterpart to Solidity's `uint128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toUint128(uint256 value) internal pure returns (uint128) {
        if (value > type(uint128).max) {
            revert SafeCastOverflowedUintDowncast(128, value);
        }
        return uint128(value);
    }

    /**
     * @dev Returns the downcasted uint120 from uint256, reverting on
     * overflow (when the input is greater than largest uint120).
     *
     * Counterpart to Solidity's `uint120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toUint120(uint256 value) internal pure returns (uint120) {
        if (value > type(uint120).max) {
            revert SafeCastOverflowedUintDowncast(120, value);
        }
        return uint120(value);
    }

    /**
     * @dev Returns the downcasted uint112 from uint256, reverting on
     * overflow (when the input is greater than largest uint112).
     *
     * Counterpart to Solidity's `uint112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toUint112(uint256 value) internal pure returns (uint112) {
        if (value > type(uint112).max) {
            revert SafeCastOverflowedUintDowncast(112, value);
        }
        return uint112(value);
    }

    /**
     * @dev Returns the downcasted uint104 from uint256, reverting on
     * overflow (when the input is greater than largest uint104).
     *
     * Counterpart to Solidity's `uint104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toUint104(uint256 value) internal pure returns (uint104) {
        if (value > type(uint104).max) {
            revert SafeCastOverflowedUintDowncast(104, value);
        }
        return uint104(value);
    }

    /**
     * @dev Returns the downcasted uint96 from uint256, reverting on
     * overflow (when the input is greater than largest uint96).
     *
     * Counterpart to Solidity's `uint96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toUint96(uint256 value) internal pure returns (uint96) {
        if (value > type(uint96).max) {
            revert SafeCastOverflowedUintDowncast(96, value);
        }
        return uint96(value);
    }

    /**
     * @dev Returns the downcasted uint88 from uint256, reverting on
     * overflow (when the input is greater than largest uint88).
     *
     * Counterpart to Solidity's `uint88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toUint88(uint256 value) internal pure returns (uint88) {
        if (value > type(uint88).max) {
            revert SafeCastOverflowedUintDowncast(88, value);
        }
        return uint88(value);
    }

    /**
     * @dev Returns the downcasted uint80 from uint256, reverting on
     * overflow (when the input is greater than largest uint80).
     *
     * Counterpart to Solidity's `uint80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toUint80(uint256 value) internal pure returns (uint80) {
        if (value > type(uint80).max) {
            revert SafeCastOverflowedUintDowncast(80, value);
        }
        return uint80(value);
    }

    /**
     * @dev Returns the downcasted uint72 from uint256, reverting on
     * overflow (when the input is greater than largest uint72).
     *
     * Counterpart to Solidity's `uint72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toUint72(uint256 value) internal pure returns (uint72) {
        if (value > type(uint72).max) {
            revert SafeCastOverflowedUintDowncast(72, value);
        }
        return uint72(value);
    }

    /**
     * @dev Returns the downcasted uint64 from uint256, reverting on
     * overflow (when the input is greater than largest uint64).
     *
     * Counterpart to Solidity's `uint64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toUint64(uint256 value) internal pure returns (uint64) {
        if (value > type(uint64).max) {
            revert SafeCastOverflowedUintDowncast(64, value);
        }
        return uint64(value);
    }

    /**
     * @dev Returns the downcasted uint56 from uint256, reverting on
     * overflow (when the input is greater than largest uint56).
     *
     * Counterpart to Solidity's `uint56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toUint56(uint256 value) internal pure returns (uint56) {
        if (value > type(uint56).max) {
            revert SafeCastOverflowedUintDowncast(56, value);
        }
        return uint56(value);
    }

    /**
     * @dev Returns the downcasted uint48 from uint256, reverting on
     * overflow (when the input is greater than largest uint48).
     *
     * Counterpart to Solidity's `uint48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toUint48(uint256 value) internal pure returns (uint48) {
        if (value > type(uint48).max) {
            revert SafeCastOverflowedUintDowncast(48, value);
        }
        return uint48(value);
    }

    /**
     * @dev Returns the downcasted uint40 from uint256, reverting on
     * overflow (when the input is greater than largest uint40).
     *
     * Counterpart to Solidity's `uint40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toUint40(uint256 value) internal pure returns (uint40) {
        if (value > type(uint40).max) {
            revert SafeCastOverflowedUintDowncast(40, value);
        }
        return uint40(value);
    }

    /**
     * @dev Returns the downcasted uint32 from uint256, reverting on
     * overflow (when the input is greater than largest uint32).
     *
     * Counterpart to Solidity's `uint32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toUint32(uint256 value) internal pure returns (uint32) {
        if (value > type(uint32).max) {
            revert SafeCastOverflowedUintDowncast(32, value);
        }
        return uint32(value);
    }

    /**
     * @dev Returns the downcasted uint24 from uint256, reverting on
     * overflow (when the input is greater than largest uint24).
     *
     * Counterpart to Solidity's `uint24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toUint24(uint256 value) internal pure returns (uint24) {
        if (value > type(uint24).max) {
            revert SafeCastOverflowedUintDowncast(24, value);
        }
        return uint24(value);
    }

    /**
     * @dev Returns the downcasted uint16 from uint256, reverting on
     * overflow (when the input is greater than largest uint16).
     *
     * Counterpart to Solidity's `uint16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toUint16(uint256 value) internal pure returns (uint16) {
        if (value > type(uint16).max) {
            revert SafeCastOverflowedUintDowncast(16, value);
        }
        return uint16(value);
    }

    /**
     * @dev Returns the downcasted uint8 from uint256, reverting on
     * overflow (when the input is greater than largest uint8).
     *
     * Counterpart to Solidity's `uint8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     */
    function toUint8(uint256 value) internal pure returns (uint8) {
        if (value > type(uint8).max) {
            revert SafeCastOverflowedUintDowncast(8, value);
        }
        return uint8(value);
    }

    /**
     * @dev Converts a signed int256 into an unsigned uint256.
     *
     * Requirements:
     *
     * - input must be greater than or equal to 0.
     */
    function toUint256(int256 value) internal pure returns (uint256) {
        if (value < 0) {
            revert SafeCastOverflowedIntToUint(value);
        }
        return uint256(value);
    }

    /**
     * @dev Returns the downcasted int248 from int256, reverting on
     * overflow (when the input is less than smallest int248 or
     * greater than largest int248).
     *
     * Counterpart to Solidity's `int248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toInt248(int256 value) internal pure returns (int248 downcasted) {
        downcasted = int248(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(248, value);
        }
    }

    /**
     * @dev Returns the downcasted int240 from int256, reverting on
     * overflow (when the input is less than smallest int240 or
     * greater than largest int240).
     *
     * Counterpart to Solidity's `int240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toInt240(int256 value) internal pure returns (int240 downcasted) {
        downcasted = int240(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(240, value);
        }
    }

    /**
     * @dev Returns the downcasted int232 from int256, reverting on
     * overflow (when the input is less than smallest int232 or
     * greater than largest int232).
     *
     * Counterpart to Solidity's `int232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toInt232(int256 value) internal pure returns (int232 downcasted) {
        downcasted = int232(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(232, value);
        }
    }

    /**
     * @dev Returns the downcasted int224 from int256, reverting on
     * overflow (when the input is less than smallest int224 or
     * greater than largest int224).
     *
     * Counterpart to Solidity's `int224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toInt224(int256 value) internal pure returns (int224 downcasted) {
        downcasted = int224(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(224, value);
        }
    }

    /**
     * @dev Returns the downcasted int216 from int256, reverting on
     * overflow (when the input is less than smallest int216 or
     * greater than largest int216).
     *
     * Counterpart to Solidity's `int216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toInt216(int256 value) internal pure returns (int216 downcasted) {
        downcasted = int216(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(216, value);
        }
    }

    /**
     * @dev Returns the downcasted int208 from int256, reverting on
     * overflow (when the input is less than smallest int208 or
     * greater than largest int208).
     *
     * Counterpart to Solidity's `int208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toInt208(int256 value) internal pure returns (int208 downcasted) {
        downcasted = int208(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(208, value);
        }
    }

    /**
     * @dev Returns the downcasted int200 from int256, reverting on
     * overflow (when the input is less than smallest int200 or
     * greater than largest int200).
     *
     * Counterpart to Solidity's `int200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toInt200(int256 value) internal pure returns (int200 downcasted) {
        downcasted = int200(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(200, value);
        }
    }

    /**
     * @dev Returns the downcasted int192 from int256, reverting on
     * overflow (when the input is less than smallest int192 or
     * greater than largest int192).
     *
     * Counterpart to Solidity's `int192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toInt192(int256 value) internal pure returns (int192 downcasted) {
        downcasted = int192(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(192, value);
        }
    }

    /**
     * @dev Returns the downcasted int184 from int256, reverting on
     * overflow (when the input is less than smallest int184 or
     * greater than largest int184).
     *
     * Counterpart to Solidity's `int184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toInt184(int256 value) internal pure returns (int184 downcasted) {
        downcasted = int184(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(184, value);
        }
    }

    /**
     * @dev Returns the downcasted int176 from int256, reverting on
     * overflow (when the input is less than smallest int176 or
     * greater than largest int176).
     *
     * Counterpart to Solidity's `int176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toInt176(int256 value) internal pure returns (int176 downcasted) {
        downcasted = int176(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(176, value);
        }
    }

    /**
     * @dev Returns the downcasted int168 from int256, reverting on
     * overflow (when the input is less than smallest int168 or
     * greater than largest int168).
     *
     * Counterpart to Solidity's `int168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toInt168(int256 value) internal pure returns (int168 downcasted) {
        downcasted = int168(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(168, value);
        }
    }

    /**
     * @dev Returns the downcasted int160 from int256, reverting on
     * overflow (when the input is less than smallest int160 or
     * greater than largest int160).
     *
     * Counterpart to Solidity's `int160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toInt160(int256 value) internal pure returns (int160 downcasted) {
        downcasted = int160(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(160, value);
        }
    }

    /**
     * @dev Returns the downcasted int152 from int256, reverting on
     * overflow (when the input is less than smallest int152 or
     * greater than largest int152).
     *
     * Counterpart to Solidity's `int152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toInt152(int256 value) internal pure returns (int152 downcasted) {
        downcasted = int152(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(152, value);
        }
    }

    /**
     * @dev Returns the downcasted int144 from int256, reverting on
     * overflow (when the input is less than smallest int144 or
     * greater than largest int144).
     *
     * Counterpart to Solidity's `int144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toInt144(int256 value) internal pure returns (int144 downcasted) {
        downcasted = int144(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(144, value);
        }
    }

    /**
     * @dev Returns the downcasted int136 from int256, reverting on
     * overflow (when the input is less than smallest int136 or
     * greater than largest int136).
     *
     * Counterpart to Solidity's `int136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toInt136(int256 value) internal pure returns (int136 downcasted) {
        downcasted = int136(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(136, value);
        }
    }

    /**
     * @dev Returns the downcasted int128 from int256, reverting on
     * overflow (when the input is less than smallest int128 or
     * greater than largest int128).
     *
     * Counterpart to Solidity's `int128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toInt128(int256 value) internal pure returns (int128 downcasted) {
        downcasted = int128(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(128, value);
        }
    }

    /**
     * @dev Returns the downcasted int120 from int256, reverting on
     * overflow (when the input is less than smallest int120 or
     * greater than largest int120).
     *
     * Counterpart to Solidity's `int120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toInt120(int256 value) internal pure returns (int120 downcasted) {
        downcasted = int120(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(120, value);
        }
    }

    /**
     * @dev Returns the downcasted int112 from int256, reverting on
     * overflow (when the input is less than smallest int112 or
     * greater than largest int112).
     *
     * Counterpart to Solidity's `int112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toInt112(int256 value) internal pure returns (int112 downcasted) {
        downcasted = int112(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(112, value);
        }
    }

    /**
     * @dev Returns the downcasted int104 from int256, reverting on
     * overflow (when the input is less than smallest int104 or
     * greater than largest int104).
     *
     * Counterpart to Solidity's `int104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toInt104(int256 value) internal pure returns (int104 downcasted) {
        downcasted = int104(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(104, value);
        }
    }

    /**
     * @dev Returns the downcasted int96 from int256, reverting on
     * overflow (when the input is less than smallest int96 or
     * greater than largest int96).
     *
     * Counterpart to Solidity's `int96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toInt96(int256 value) internal pure returns (int96 downcasted) {
        downcasted = int96(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(96, value);
        }
    }

    /**
     * @dev Returns the downcasted int88 from int256, reverting on
     * overflow (when the input is less than smallest int88 or
     * greater than largest int88).
     *
     * Counterpart to Solidity's `int88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toInt88(int256 value) internal pure returns (int88 downcasted) {
        downcasted = int88(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(88, value);
        }
    }

    /**
     * @dev Returns the downcasted int80 from int256, reverting on
     * overflow (when the input is less than smallest int80 or
     * greater than largest int80).
     *
     * Counterpart to Solidity's `int80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toInt80(int256 value) internal pure returns (int80 downcasted) {
        downcasted = int80(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(80, value);
        }
    }

    /**
     * @dev Returns the downcasted int72 from int256, reverting on
     * overflow (when the input is less than smallest int72 or
     * greater than largest int72).
     *
     * Counterpart to Solidity's `int72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toInt72(int256 value) internal pure returns (int72 downcasted) {
        downcasted = int72(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(72, value);
        }
    }

    /**
     * @dev Returns the downcasted int64 from int256, reverting on
     * overflow (when the input is less than smallest int64 or
     * greater than largest int64).
     *
     * Counterpart to Solidity's `int64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toInt64(int256 value) internal pure returns (int64 downcasted) {
        downcasted = int64(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(64, value);
        }
    }

    /**
     * @dev Returns the downcasted int56 from int256, reverting on
     * overflow (when the input is less than smallest int56 or
     * greater than largest int56).
     *
     * Counterpart to Solidity's `int56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toInt56(int256 value) internal pure returns (int56 downcasted) {
        downcasted = int56(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(56, value);
        }
    }

    /**
     * @dev Returns the downcasted int48 from int256, reverting on
     * overflow (when the input is less than smallest int48 or
     * greater than largest int48).
     *
     * Counterpart to Solidity's `int48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toInt48(int256 value) internal pure returns (int48 downcasted) {
        downcasted = int48(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(48, value);
        }
    }

    /**
     * @dev Returns the downcasted int40 from int256, reverting on
     * overflow (when the input is less than smallest int40 or
     * greater than largest int40).
     *
     * Counterpart to Solidity's `int40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toInt40(int256 value) internal pure returns (int40 downcasted) {
        downcasted = int40(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(40, value);
        }
    }

    /**
     * @dev Returns the downcasted int32 from int256, reverting on
     * overflow (when the input is less than smallest int32 or
     * greater than largest int32).
     *
     * Counterpart to Solidity's `int32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toInt32(int256 value) internal pure returns (int32 downcasted) {
        downcasted = int32(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(32, value);
        }
    }

    /**
     * @dev Returns the downcasted int24 from int256, reverting on
     * overflow (when the input is less than smallest int24 or
     * greater than largest int24).
     *
     * Counterpart to Solidity's `int24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toInt24(int256 value) internal pure returns (int24 downcasted) {
        downcasted = int24(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(24, value);
        }
    }

    /**
     * @dev Returns the downcasted int16 from int256, reverting on
     * overflow (when the input is less than smallest int16 or
     * greater than largest int16).
     *
     * Counterpart to Solidity's `int16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toInt16(int256 value) internal pure returns (int16 downcasted) {
        downcasted = int16(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(16, value);
        }
    }

    /**
     * @dev Returns the downcasted int8 from int256, reverting on
     * overflow (when the input is less than smallest int8 or
     * greater than largest int8).
     *
     * Counterpart to Solidity's `int8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     */
    function toInt8(int256 value) internal pure returns (int8 downcasted) {
        downcasted = int8(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(8, value);
        }
    }

    /**
     * @dev Converts an unsigned uint256 into a signed int256.
     *
     * Requirements:
     *
     * - input must be less than or equal to maxInt256.
     */
    function toInt256(uint256 value) internal pure returns (int256) {
        // Note: Unsafe cast below is okay because `type(int256).max` is guaranteed to be positive
        if (value > uint256(type(int256).max)) {
            revert SafeCastOverflowedUintToInt(value);
        }
        return int256(value);
    }

    /**
     * @dev Cast a boolean (false or true) to a uint256 (0 or 1) with no jump.
     */
    function toUint(bool b) internal pure returns (uint256 u) {
        /// @solidity memory-safe-assembly
        assembly {
            u := iszero(iszero(b))
        }
    }
}

// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/utils/math/SignedMath.sol
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
            // Formula from the "Bit Twiddling Hacks" by Sean Eron Anderson.
            // Since `n` is a signed integer, the generated bytecode will use the SAR opcode to perform the right shift,
            // taking advantage of the most significant (or "sign" bit) in two's complement representation.
            // This opcode adds new most significant bits set to the value of the previous most significant bit. As a result,
            // the mask will either be `bytes(0)` (if n is positive) or `~bytes32(0)` (if n is negative).
            int256 mask = n >> 255;

            // A `bytes(0)` mask leaves the input unchanged, while a `~bytes32(0)` mask complements it.
            return uint256((n + mask) ^ mask);
        }
    }
}

// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/utils/Panic.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

/**
 * @dev Helper library for emitting standardized panic codes.
 *
 * ```solidity
 * contract Example {
 *      using Panic for uint256;
 *
 *      // Use any of the declared internal constants
 *      function foo() { Panic.GENERIC.panic(); }
 *
 *      // Alternatively
 *      function foo() { Panic.panic(Panic.GENERIC); }
 * }
 * ```
 *
 * Follows the list from https://github.com/ethereum/solidity/blob/v0.8.24/libsolutil/ErrorCodes.h[libsolutil].
 */
// slither-disable-next-line unused-state
library Panic {
    /// @dev generic / unspecified error
    uint256 internal constant GENERIC = 0x00;
    /// @dev used by the assert() builtin
    uint256 internal constant ASSERT = 0x01;
    /// @dev arithmetic underflow or overflow
    uint256 internal constant UNDER_OVERFLOW = 0x11;
    /// @dev division or modulo by zero
    uint256 internal constant DIVISION_BY_ZERO = 0x12;
    /// @dev enum conversion error
    uint256 internal constant ENUM_CONVERSION_ERROR = 0x21;
    /// @dev invalid encoding in storage
    uint256 internal constant STORAGE_ENCODING_ERROR = 0x22;
    /// @dev empty array pop
    uint256 internal constant EMPTY_ARRAY_POP = 0x31;
    /// @dev array out of bounds access
    uint256 internal constant ARRAY_OUT_OF_BOUNDS = 0x32;
    /// @dev resource error (too large allocation or too large array)
    uint256 internal constant RESOURCE_ERROR = 0x41;
    /// @dev calling invalid internal function
    uint256 internal constant INVALID_INTERNAL_FUNCTION = 0x51;

    /// @dev Reverts with a panic code. Recommended to use with
    /// the internal constants with predefined codes.
    function panic(uint256 code) internal pure {
        /// @solidity memory-safe-assembly
        assembly {
            mstore(0x00, 0x4e487b71)
            mstore(0x20, code)
            revert(0x1c, 0x24)
        }
    }
}

// ============================================================
// FILE: gitmodules/openzeppelin-contracts-5/contracts/utils/Strings.sol
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
// FILE: silo-core/contracts/interfaces/ICrossReentrancyGuard.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

interface ICrossReentrancyGuard {
    error CrossReentrantCall();
    error CrossReentrancyNotActive();

    /// @notice only silo method for cross Silo reentrancy
    function turnOnReentrancyProtection() external;

    /// @notice only silo method for cross Silo reentrancy
    function turnOffReentrancyProtection() external;

    /// @notice view method for checking cross Silo reentrancy flag
    /// @return entered true if the reentrancy guard is currently set to "entered", which indicates there is a
    /// `nonReentrant` function in the call stack.
    function reentrancyGuardEntered() external view returns (bool entered);
}

// ============================================================
// FILE: silo-core/contracts/interfaces/IERC3156FlashBorrower.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

interface IERC3156FlashBorrower {
    /// @notice During the execution of the flashloan, Silo methods are not taking into consideration the fact,
    /// that some (or all) tokens were transferred as flashloan, therefore some methods can return invalid state
    /// eg. maxWithdraw can return amount that are not available to withdraw during flashlon.
    /// @dev Receive a flash loan.
    /// @param _initiator The initiator of the loan.
    /// @param _token The loan currency.
    /// @param _amount The amount of tokens lent.
    /// @param _fee The additional amount of tokens to repay.
    /// @param _data Arbitrary data structure, intended to contain user-defined parameters.
    /// @return The keccak256 hash of "ERC3156FlashBorrower.onFlashLoan"
    function onFlashLoan(address _initiator, address _token, uint256 _amount, uint256 _fee, bytes calldata _data)
        external
        returns (bytes32);
}

// ============================================================
// FILE: silo-core/contracts/interfaces/IERC3156FlashLender.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

import {IERC3156FlashBorrower} from "./IERC3156FlashBorrower.sol";

/// @notice https://eips.ethereum.org/EIPS/eip-3156
interface IERC3156FlashLender {
    /// @notice Protected deposits are not available for a flash loan.
    /// During the execution of the flashloan, Silo methods are not taking into consideration the fact,
    /// that some (or all) tokens were transferred as flashloan, therefore some methods can return invalid state
    /// eg. maxWithdraw can return amount that are not available to withdraw during flashlon.
    /// @dev Initiate a flash loan.
    /// @param _receiver The receiver of the tokens in the loan, and the receiver of the callback.
    /// @param _token The loan currency.
    /// @param _amount The amount of tokens lent.
    /// @param _data Arbitrary data structure, intended to contain user-defined parameters.
    function flashLoan(IERC3156FlashBorrower _receiver, address _token, uint256 _amount, bytes calldata _data)
        external
        returns (bool);

    /// @dev The amount of currency available to be lent.
    /// @param _token The loan currency.
    /// @return The amount of `token` that can be borrowed.
    function maxFlashLoan(address _token) external view returns (uint256);

    /// @dev The fee to be charged for a given loan.
    /// @param _token The loan currency.
    /// @param _amount The amount of tokens lent.
    /// @return The amount of `token` to be charged for the loan, on top of the returned principal.
    function flashFee(address _token, uint256 _amount) external view returns (uint256);
}

// ============================================================
// FILE: silo-core/contracts/interfaces/IHookReceiver.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

import {ISiloConfig} from "./ISiloConfig.sol";

interface IHookReceiver {
    struct HookConfig {
        uint24 hooksBefore;
        uint24 hooksAfter;
    }

    event HookConfigured(address silo, uint24 hooksBefore, uint24 hooksAfter);

    /// @notice Initialize a hook receiver
    /// @param _siloConfig Silo configuration with all the details about the silo
    /// @param _data Data to initialize the hook receiver (if needed)
    function initialize(ISiloConfig _siloConfig, bytes calldata _data) external;

    /// @notice state of Silo before action, can be also without interest, if you need them, call silo.accrueInterest()
    function beforeAction(address _silo, uint256 _action, bytes calldata _input) external;

    function afterAction(address _silo, uint256 _action, bytes calldata _inputAndOutput) external;

    /// @notice return hooksBefore and hooksAfter configuration
    function hookReceiverConfig(address _silo) external view returns (uint24 hooksBefore, uint24 hooksAfter);
}

// ============================================================
// FILE: silo-core/contracts/interfaces/IInterestRateModel.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

interface IInterestRateModel {
    event InterestRateModelError();

    /// @dev Sets config address for all Silos that will use this model
    /// @param _irmConfig address of IRM config contract
    function initialize(address _irmConfig) external;

    /// @dev get compound interest rate and update model storage for current block.timestamp
    /// @param _collateralAssets total silo collateral assets
    /// @param _debtAssets total silo debt assets
    /// @param _interestRateTimestamp last IRM timestamp
    /// @return rcomp compounded interest rate from last update until now (1e18 == 100%)
    function getCompoundInterestRateAndUpdate(
        uint256 _collateralAssets,
        uint256 _debtAssets,
        uint256 _interestRateTimestamp
    )
        external
        returns (uint256 rcomp);

    /// @dev get compound interest rate
    /// @param _silo address of Silo for which interest rate should be calculated
    /// @param _blockTimestamp current block timestamp
    /// @return rcomp compounded interest rate from last update until now (1e18 == 100%)
    function getCompoundInterestRate(address _silo, uint256 _blockTimestamp)
        external
        view
        returns (uint256 rcomp);

    /// @dev get current annual interest rate
    /// @param _silo address of Silo for which interest rate should be calculated
    /// @param _blockTimestamp current block timestamp
    /// @return rcur current annual interest rate (1e18 == 100%)
    function getCurrentInterestRate(address _silo, uint256 _blockTimestamp)
        external
        view
        returns (uint256 rcur);

    /// @dev returns decimal points used by model
    function decimals() external view returns (uint256);
}

// ============================================================
// FILE: silo-core/contracts/interfaces/IShareToken.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

import {IERC20Metadata} from "openzeppelin5/token/ERC20/extensions/IERC20Metadata.sol";

import {ISiloConfig} from "./ISiloConfig.sol";
import {ISilo} from "./ISilo.sol";

interface IShareToken is IERC20Metadata {
    struct HookSetup {
        /// @param this is the same as in siloConfig
        address hookReceiver;
        /// @param hooks bitmap
        uint24 hooksBefore;
        /// @param hooks bitmap
        uint24 hooksAfter;
        /// @param tokenType must be one of this hooks values: COLLATERAL_TOKEN, PROTECTED_TOKEN, DEBT_TOKEN
        uint24 tokenType;
    }

    struct ShareTokenStorage {
        /// @notice Silo address for which tokens was deployed
        ISilo silo;

        /// @dev cached silo config address
        ISiloConfig siloConfig;

        /// @notice Copy of hooks setup from SiloConfig for optimisation purposes
        HookSetup hookSetup;

        bool transferWithChecks;
    }

    /// @notice Emitted every time receiver is notified about token transfer
    /// @param notificationReceiver receiver address
    /// @param success false if TX reverted on `notificationReceiver` side, otherwise true
    event NotificationSent(address indexed notificationReceiver, bool success);

    error OnlySilo();
    error OnlySiloConfig();
    error OwnerIsZero();
    error RecipientIsZero();
    error AmountExceedsAllowance();
    error RecipientNotSolventAfterTransfer();
    error SenderNotSolventAfterTransfer();
    error ZeroTransfer();

    /// @notice method for SiloConfig to synchronize hooks
    /// @param _hooksBefore hooks bitmap to trigger hooks BEFORE action
    /// @param _hooksAfter hooks bitmap to trigger hooks AFTER action
    function synchronizeHooks(uint24 _hooksBefore, uint24 _hooksAfter) external;

    /// @notice Mint method for Silo to create debt
    /// @param _owner wallet for which to mint token
    /// @param _spender wallet that asks for mint
    /// @param _amount amount of token to be minted
    function mint(address _owner, address _spender, uint256 _amount) external;

    /// @notice Burn method for Silo to close debt
    /// @param _owner wallet for which to burn token
    /// @param _spender wallet that asks for burn
    /// @param _amount amount of token to be burned
    function burn(address _owner, address _spender, uint256 _amount) external;

    /// @notice TransferFrom method for liquidation
    /// @param _from wallet from which we transferring tokens
    /// @param _to wallet that will get tokens
    /// @param _amount amount of token to transfer
    function forwardTransferFromNoChecks(address _from, address _to, uint256 _amount) external;

    /// @dev Returns the amount of tokens owned by `account`.
    /// @param _account address for which to return data
    /// @return balance of the _account
    /// @return totalSupply total supply of the token
    function balanceOfAndTotalSupply(address _account) external view returns (uint256 balance, uint256 totalSupply);

    /// @notice Returns silo address for which token was deployed
    /// @return silo address
    function silo() external view returns (ISilo silo);

    function siloConfig() external view returns (ISiloConfig silo);

    /// @notice Returns hook setup
    function hookSetup() external view returns (HookSetup memory);

    /// @notice Returns hook receiver address
    function hookReceiver() external view returns (address);
}

// ============================================================
// FILE: silo-core/contracts/interfaces/IShareTokenInitializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

import {ISilo} from "./ISilo.sol";

interface IShareTokenInitializable {
    /// @param _target target address to call
    /// @param _value value to send
    /// @param _callType call type
    /// @param _input input data
    /// @return success true if the call was successful, false otherwise
    /// @return result bytes returned by the call
    function callOnBehalfOfShareToken(address _target, uint256 _value, ISilo.CallType _callType, bytes calldata _input)
        external
        payable
        returns (bool success, bytes memory result);

    /// @param _silo Silo address for which tokens was deployed
    /// @param _hookReceiver address that will get a callback on mint, burn and transfer of the token
    /// @param _tokenType must be one of this hooks values: COLLATERAL_TOKEN, PROTECTED_TOKEN, DEBT_TOKEN
    function initialize(ISilo _silo, address _hookReceiver, uint24 _tokenType) external;
}

// ============================================================
// FILE: silo-core/contracts/interfaces/ISilo.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

import {IERC4626, IERC20, IERC20Metadata} from "openzeppelin5/interfaces/IERC4626.sol";

import {IERC3156FlashLender} from "./IERC3156FlashLender.sol";
import {ISiloConfig} from "./ISiloConfig.sol";
import {ISiloFactory} from "./ISiloFactory.sol";

import {IHookReceiver} from "./IHookReceiver.sol";

// solhint-disable ordering
interface ISilo is IERC20, IERC4626, IERC3156FlashLender {
    /// @dev Interest accrual happens on each deposit/withdraw/borrow/repay. View methods work on storage that might be
    ///      outdate. Some calculations require accrued interest to return current state of Silo. This struct is used
    ///      to make a decision inside functions if interest should be accrued in memory to work on updated values.
    enum AccrueInterestInMemory {
        No,
        Yes
    }

    /// @dev Silo has two separate oracles for solvency and maxLtv calculations. MaxLtv oracle is optional. Solvency
    ///      oracle can also be optional if asset is used as denominator in Silo config. For example, in ETH/USDC Silo
    ///      one could setup only solvency oracle for ETH that returns price in USDC. Then USDC does not need an oracle
    ///      because it's used as denominator for ETH and it's "price" can be assume as 1.
    enum OracleType {
        Solvency,
        MaxLtv
    }

    /// @dev There are 3 types of accounting in the system: for non-borrowable collateral deposit called "protected",
    ///      for borrowable collateral deposit called "collateral" and for borrowed tokens called "debt". System does
    ///      identical calculations for each type of accounting but it uses different data. To avoid code duplication
    ///      this enum is used to decide which data should be read.
    enum AssetType {
        Protected, // default
        Collateral,
        Debt
    }

    /// @dev There are 2 types of accounting in the system: for non-borrowable collateral deposit called "protected" and
    ///      for borrowable collateral deposit called "collateral". System does
    ///      identical calculations for each type of accounting but it uses different data. To avoid code duplication
    ///      this enum is used to decide which data should be read.
    enum CollateralType {
        Protected, // default
        Collateral
    }

    /// @dev Types of calls that can be made by the hook receiver on behalf of Silo via `callOnBehalfOfSilo` fn
    enum CallType {
        Call, // default
        Delegatecall
    }

    /// @param _assets Amount of assets the user wishes to withdraw. Use 0 if shares are provided.
    /// @param _shares Shares the user wishes to burn in exchange for the withdrawal. Use 0 if assets are provided.
    /// @param _receiver Address receiving the withdrawn assets
    /// @param _owner Address of the owner of the shares being burned
    /// @param _spender Address executing the withdrawal; may be different than `_owner` if an allowance was set
    /// @param _collateralType Type of the asset being withdrawn (Collateral or Protected)
    struct WithdrawArgs {
        uint256 assets;
        uint256 shares;
        address receiver;
        address owner;
        address spender;
        ISilo.CollateralType collateralType;
    }

    /// @param assets Number of assets the borrower intends to borrow. Use 0 if shares are provided.
    /// @param shares Number of shares corresponding to the assets that the borrower intends to borrow. Use 0 if
    /// assets are provided.
    /// @param receiver Address that will receive the borrowed assets
    /// @param borrower The user who is borrowing the assets
    struct BorrowArgs {
        uint256 assets;
        uint256 shares;
        address receiver;
        address borrower;
    }

    /// @param shares Amount of shares the user wishes to transit.
    /// @param owner owner of the shares after transition.
    /// @param transitionFrom type of collateral that will be transitioned.
    struct TransitionCollateralArgs {
        uint256 shares;
        address owner;
        ISilo.CollateralType transitionFrom;
    }

    struct UtilizationData {
        /// @dev COLLATERAL: Amount of asset token that has been deposited to Silo plus interest earned by depositors.
        /// It also includes token amount that has been borrowed.
        uint256 collateralAssets;
        /// @dev DEBT: Amount of asset token that has been borrowed plus accrued interest.
        uint256 debtAssets;
        /// @dev timestamp of the last interest accrual
        uint64 interestRateTimestamp;
    }

    struct SiloStorage {
        /// @param daoAndDeployerRevenue Current amount of assets (fees) accrued by DAO and Deployer
        /// but not yet withdrawn
        uint192 daoAndDeployerRevenue;
        /// @dev timestamp of the last interest accrual
        uint64 interestRateTimestamp;

        /// @dev silo is just for one asset,
        /// but this one asset can be of three types: mapping key is uint256(AssetType), so we store `assets` by type.
        /// Assets based on type:
        /// - PROTECTED COLLATERAL: Amount of asset token that has been deposited to Silo that can be ONLY used
        /// as collateral. These deposits do NOT earn interest and CANNOT be borrowed.
        /// - COLLATERAL: Amount of asset token that has been deposited to Silo plus interest earned by depositors.
        /// It also includes token amount that has been borrowed.
        /// - DEBT: Amount of asset token that has been borrowed plus accrued interest.
        /// `totalAssets` can have outdated value (without interest), if you doing view call (of off-chain call)
        /// please use getters eg `getCollateralAssets()` to fetch value that includes interest.
        mapping(AssetType assetType => uint256 assets) totalAssets;
    }

    /// @notice Emitted on protected deposit
    /// @param sender wallet address that deposited asset
    /// @param owner wallet address that received shares in Silo
    /// @param assets amount of asset that was deposited
    /// @param shares amount of shares that was minted
    event DepositProtected(address indexed sender, address indexed owner, uint256 assets, uint256 shares);

    /// @notice Emitted on protected withdraw
    /// @param sender wallet address that sent transaction
    /// @param receiver wallet address that received asset
    /// @param owner wallet address that owned asset
    /// @param assets amount of asset that was withdrew
    /// @param shares amount of shares that was burn
    event WithdrawProtected(
        address indexed sender, address indexed receiver, address indexed owner, uint256 assets, uint256 shares
    );

    /// @notice Emitted on borrow
    /// @param sender wallet address that sent transaction
    /// @param receiver wallet address that received asset
    /// @param owner wallet address that owes assets
    /// @param assets amount of asset that was borrowed
    /// @param shares amount of shares that was minted
    event Borrow(
        address indexed sender, address indexed receiver, address indexed owner, uint256 assets, uint256 shares
    );

    /// @notice Emitted on repayment
    /// @param sender wallet address that repaid asset
    /// @param owner wallet address that owed asset
    /// @param assets amount of asset that was repaid
    /// @param shares amount of shares that was burn
    event Repay(address indexed sender, address indexed owner, uint256 assets, uint256 shares);

    /// @notice emitted only when collateral has been switched to other one
    event CollateralTypeChanged(address indexed borrower);

    event HooksUpdated(uint24 hooksBefore, uint24 hooksAfter);

    event AccruedInterest(uint256 hooksBefore);

    event FlashLoan(uint256 amount);

    event WithdrawnFeed(uint256 daoFees, uint256 deployerFees);

    error Unsupported();
    error NothingToWithdraw();
    error NotEnoughLiquidity();
    error NotSolvent();
    error BorrowNotPossible();
    error EarnedZero();
    error FlashloanFailed();
    error AboveMaxLtv();
    error SiloInitialized();
    error OnlyHookReceiver();
    error NoLiquidity();
    error InputCanBeAssetsOrShares();
    error CollateralSiloAlreadySet();
    error RepayTooHigh();
    error ZeroAmount();
    error InputZeroShares();
    error ReturnZeroAssets();
    error ReturnZeroShares();

    /// @return siloFactory The associated factory of the silo
    function factory() external view returns (ISiloFactory siloFactory);

    /// @notice Method for HookReceiver only to call on behalf of Silo
    /// @param _target address of the contract to call
    /// @param _value amount of ETH to send
    /// @param _callType type of the call (Call or Delegatecall)
    /// @param _input calldata for the call
    function callOnBehalfOfSilo(address _target, uint256 _value, CallType _callType, bytes calldata _input)
        external
        payable
        returns (bool success, bytes memory result);

    /// @notice Initialize Silo
    /// @param _siloConfig address of ISiloConfig with full config for this Silo
    function initialize(ISiloConfig _siloConfig) external;

    /// @notice Update hooks configuration for Silo
    /// @dev This function must be called after the hooks configuration is changed in the hook receiver
    function updateHooks() external;

    /// @notice Fetches the silo configuration contract
    /// @return siloConfig Address of the configuration contract associated with the silo
    function config() external view returns (ISiloConfig siloConfig);

    /// @notice Fetches the utilization data of the silo used by IRM
    function utilizationData() external view returns (UtilizationData memory utilizationData);

    /// @notice Fetches the real (available to borrow) liquidity in the silo, it does include interest
    /// @return liquidity The amount of liquidity
    function getLiquidity() external view returns (uint256 liquidity);

    /// @notice Determines if a borrower is solvent
    /// @param _borrower Address of the borrower to check for solvency
    /// @return True if the borrower is solvent, otherwise false
    function isSolvent(address _borrower) external view returns (bool);

    /// @notice Retrieves the raw total amount of assets based on provided type (direct storage access)
    function getTotalAssetsStorage(AssetType _assetType) external view returns (uint256);

    /// @notice Direct storage access to silo storage
    /// @dev See struct `SiloStorage` for more details
    function getSiloStorage()
        external
        view
        returns (
            uint192 daoAndDeployerRevenue,
            uint64 interestRateTimestamp,
            uint256 protectedAssets,
            uint256 collateralAssets,
            uint256 debtAssets
        );

    /// @notice Retrieves the total amount of collateral (borrowable) assets with interest
    /// @return totalCollateralAssets The total amount of assets of type 'Collateral'
    function getCollateralAssets() external view returns (uint256 totalCollateralAssets);

    /// @notice Retrieves the total amount of debt assets with interest
    /// @return totalDebtAssets The total amount of assets of type 'Debt'
    function getDebtAssets() external view returns (uint256 totalDebtAssets);

    /// @notice Retrieves the total amounts of collateral and protected (non-borrowable) assets
    /// @return totalCollateralAssets The total amount of assets of type 'Collateral'
    /// @return totalProtectedAssets The total amount of protected (non-borrowable) assets
    function getCollateralAndProtectedTotalsStorage()
        external
        view
        returns (uint256 totalCollateralAssets, uint256 totalProtectedAssets);

    /// @notice Retrieves the total amounts of collateral and debt assets
    /// @return totalCollateralAssets The total amount of assets of type 'Collateral'
    /// @return totalDebtAssets The total amount of debt assets of type 'Debt'
    function getCollateralAndDebtTotalsStorage()
        external
        view
        returns (uint256 totalCollateralAssets, uint256 totalDebtAssets);

    /// @notice Implements IERC4626.convertToShares for each asset type
    function convertToShares(uint256 _assets, AssetType _assetType) external view returns (uint256 shares);

    /// @notice Implements IERC4626.convertToAssets for each asset type
    function convertToAssets(uint256 _shares, AssetType _assetType) external view returns (uint256 assets);

    /// @notice Implements IERC4626.previewDeposit for protected (non-borrowable) collateral and collateral
    /// @dev Reverts for debt asset type
    function previewDeposit(uint256 _assets, CollateralType _collateralType) external view returns (uint256 shares);

    /// @notice Implements IERC4626.deposit for protected (non-borrowable) collateral and collateral
    /// @dev Reverts for debt asset type
    function deposit(uint256 _assets, address _receiver, CollateralType _collateralType)
        external
        returns (uint256 shares);

    /// @notice Implements IERC4626.previewMint for protected (non-borrowable) collateral and collateral
    /// @dev Reverts for debt asset type
    function previewMint(uint256 _shares, CollateralType _collateralType) external view returns (uint256 assets);

    /// @notice Implements IERC4626.mint for protected (non-borrowable) collateral and collateral
    /// @dev Reverts for debt asset type
    function mint(uint256 _shares, address _receiver, CollateralType _collateralType) external returns (uint256 assets);

    /// @notice Implements IERC4626.maxWithdraw for protected (non-borrowable) collateral and collateral
    /// @dev Reverts for debt asset type
    function maxWithdraw(address _owner, CollateralType _collateralType) external view returns (uint256 maxAssets);

    /// @notice Implements IERC4626.previewWithdraw for protected (non-borrowable) collateral and collateral
    /// @dev Reverts for debt asset type
    function previewWithdraw(uint256 _assets, CollateralType _collateralType) external view returns (uint256 shares);

    /// @notice Implements IERC4626.withdraw for protected (non-borrowable) collateral and collateral
    /// @dev Reverts for debt asset type
    function withdraw(uint256 _assets, address _receiver, address _owner, CollateralType _collateralType)
        external
        returns (uint256 shares);

    /// @notice Implements IERC4626.maxRedeem for protected (non-borrowable) collateral and collateral
    /// @dev Reverts for debt asset type
    function maxRedeem(address _owner, CollateralType _collateralType) external view returns (uint256 maxShares);

    /// @notice Implements IERC4626.previewRedeem for protected (non-borrowable) collateral and collateral
    /// @dev Reverts for debt asset type
    function previewRedeem(uint256 _shares, CollateralType _collateralType) external view returns (uint256 assets);

    /// @notice Implements IERC4626.redeem for protected (non-borrowable) collateral and collateral
    /// @dev Reverts for debt asset type
    function redeem(uint256 _shares, address _receiver, address _owner, CollateralType _collateralType)
        external
        returns (uint256 assets);

    /// @notice Calculates the maximum amount of assets that can be borrowed by the given address
    /// @param _borrower Address of the potential borrower
    /// @return maxAssets Maximum amount of assets that the borrower can borrow, this value is underestimated
    /// That means, in some cases when you borrow maxAssets, you will be able to borrow again eg. up to 2wei
    /// Reason for underestimation is to return value that will not cause borrow revert
    function maxBorrow(address _borrower) external view returns (uint256 maxAssets);

    /// @notice Previews the amount of shares equivalent to the given asset amount for borrowing
    /// @param _assets Amount of assets to preview the equivalent shares for
    /// @return shares Amount of shares equivalent to the provided asset amount
    function previewBorrow(uint256 _assets) external view returns (uint256 shares);

    /// @notice Allows an address to borrow a specified amount of assets
    /// @param _assets Amount of assets to borrow
    /// @param _receiver Address receiving the borrowed assets
    /// @param _borrower Address responsible for the borrowed assets
    /// @return shares Amount of shares equivalent to the borrowed assets
    function borrow(uint256 _assets, address _receiver, address _borrower)
        external returns (uint256 shares);

    /// @notice Calculates the maximum amount of shares that can be borrowed by the given address
    /// @param _borrower Address of the potential borrower
    /// @return maxShares Maximum number of shares that the borrower can borrow
    function maxBorrowShares(address _borrower) external view returns (uint256 maxShares);

    /// @notice Previews the amount of assets equivalent to the given share amount for borrowing
    /// @param _shares Amount of shares to preview the equivalent assets for
    /// @return assets Amount of assets equivalent to the provided share amount
    function previewBorrowShares(uint256 _shares) external view returns (uint256 assets);

    /// @notice Calculates the maximum amount of assets that can be borrowed by the given address
    /// @param _borrower Address of the potential borrower
    /// @return maxAssets Maximum amount of assets that the borrower can borrow, this value is underestimated
    /// That means, in some cases when you borrow maxAssets, you will be able to borrow again eg. up to 2wei
    /// Reason for underestimation is to return value that will not cause borrow revert
    function maxBorrowSameAsset(address _borrower) external view returns (uint256 maxAssets);

    /// @notice Allows an address to borrow a specified amount of assets that will be back up with deposit made with the
    /// same asset
    /// @param _assets Amount of assets to borrow
    /// @param _receiver Address receiving the borrowed assets
    /// @param _borrower Address responsible for the borrowed assets
    /// @return shares Amount of shares equivalent to the borrowed assets
    function borrowSameAsset(uint256 _assets, address _receiver, address _borrower)
        external returns (uint256 shares);

    /// @notice Allows a user to borrow assets based on the provided share amount
    /// @param _shares Amount of shares to borrow against
    /// @param _receiver Address to receive the borrowed assets
    /// @param _borrower Address responsible for the borrowed assets
    /// @return assets Amount of assets borrowed
    function borrowShares(uint256 _shares, address _receiver, address _borrower)
        external
        returns (uint256 assets);

    /// @notice Calculates the maximum amount an address can repay based on their debt shares
    /// @param _borrower Address of the borrower
    /// @return assets Maximum amount of assets the borrower can repay
    function maxRepay(address _borrower) external view returns (uint256 assets);

    /// @notice Provides an estimation of the number of shares equivalent to a given asset amount for repayment
    /// @param _assets Amount of assets to be repaid
    /// @return shares Estimated number of shares equivalent to the provided asset amount
    function previewRepay(uint256 _assets) external view returns (uint256 shares);

    /// @notice Repays a given asset amount and returns the equivalent number of shares
    /// @param _assets Amount of assets to be repaid
    /// @param _borrower Address of the borrower whose debt is being repaid
    /// @return shares The equivalent number of shares for the provided asset amount
    function repay(uint256 _assets, address _borrower) external returns (uint256 shares);

    /// @notice Calculates the maximum number of shares that can be repaid for a given borrower
    /// @param _borrower Address of the borrower
    /// @return shares The maximum number of shares that can be repaid for the borrower
    function maxRepayShares(address _borrower) external view returns (uint256 shares);

    /// @notice Provides a preview of the equivalent assets for a given number of shares to repay
    /// @param _shares Number of shares to preview repayment for
    /// @return assets Equivalent assets for the provided shares
    function previewRepayShares(uint256 _shares) external view returns (uint256 assets);

    /// @notice Allows a user to repay a loan using shares instead of assets
    /// @param _shares The number of shares the borrower wants to repay with
    /// @param _borrower The address of the borrower for whom to repay the loan
    /// @return assets The equivalent assets amount for the provided shares
    function repayShares(uint256 _shares, address _borrower) external returns (uint256 assets);

    /// @notice Transitions assets between borrowable (collateral) and non-borrowable (protected) states
    /// @dev This function allows assets to move between collateral and protected (non-borrowable) states without
    /// leaving the protocol
    /// @param _shares Amount of shares to be transitioned
    /// @param _owner Owner of the assets being transitioned
    /// @param _transitionFrom Specifies if the transition is from collateral or protected assets
    /// @return assets Amount of assets transitioned
    function transitionCollateral(uint256 _shares, address _owner, CollateralType _transitionFrom)
        external
        returns (uint256 assets);

    /// @notice Switches the collateral silo to this silo
    /// @dev Revert if the collateral silo is already set
    function switchCollateralToThisSilo() external;

    /// @notice Accrues interest for the asset and returns the accrued interest amount
    /// @return accruedInterest The total interest accrued during this operation
    function accrueInterest() external returns (uint256 accruedInterest);

    /// @notice only for SiloConfig
    function accrueInterestForConfig(
        address _interestRateModel,
        uint256 _daoFee,
        uint256 _deployerFee
    ) external;

    /// @notice Withdraws earned fees and distributes them to the DAO and deployer fee receivers
    function withdrawFees() external;
}

// ============================================================
// FILE: silo-core/contracts/interfaces/ISiloConfig.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

import {ISilo} from "./ISilo.sol";
import {ICrossReentrancyGuard} from "./ICrossReentrancyGuard.sol";

interface ISiloConfig is ICrossReentrancyGuard {
    struct InitData {
        /// @notice Can be address zero if deployer fees are not to be collected. If deployer address is zero then
        /// deployer fee must be zero as well. Deployer will be minted an NFT that gives the right to claim deployer
        /// fees. NFT can be transferred with the right to claim.
        address deployer;

        /// @notice Address of the hook receiver called on every before/after action on Silo. Hook contract also
        /// implements liquidation logic and veSilo gauge connection.
        address hookReceiver;

        /// @notice Deployer's fee in 18 decimals points. Deployer will earn this fee based on the interest earned
        /// by the Silo. Max deployer fee is set by the DAO. At deployment it is 15%.
        uint256 deployerFee;

        /// @notice DAO's fee in 18 decimals points. DAO will earn this fee based on the interest earned
        /// by the Silo. Acceptable fee range fee is set by the DAO. Default at deployment is 5% - 50%.
        uint256 daoFee;

        /// @notice Address of the first token
        address token0;

        /// @notice Address of the solvency oracle. Solvency oracle is used to calculate LTV when deciding if borrower
        /// is solvent or should be liquidated. Solvency oracle is optional and if not set price of 1 will be assumed.
        address solvencyOracle0;

        /// @notice Address of the maxLtv oracle. Max LTV oracle is used to calculate LTV when deciding if borrower
        /// can borrow given amount of assets. Max LTV oracle is optional and if not set it defaults to solvency
        /// oracle. If neither is set price of 1 will be assumed.
        address maxLtvOracle0;

        /// @notice Address of the interest rate model
        address interestRateModel0;

        /// @notice Maximum LTV for first token. maxLTV is in 18 decimals points and is used to determine, if borrower
        /// can borrow given amount of assets. MaxLtv is in 18 decimals points. MaxLtv must be lower or equal to LT.
        uint256 maxLtv0;

        /// @notice Liquidation threshold for first token. LT is used to calculate solvency. LT is in 18 decimals
        /// points. LT must not be lower than maxLTV.
        uint256 lt0;

        /// @notice minimal acceptable LTV after liquidation, in 18 decimals points
        uint256 liquidationTargetLtv0;

        /// @notice Liquidation fee for the first token in 18 decimals points. Liquidation fee is what liquidator earns
        /// for repaying insolvent loan.
        uint256 liquidationFee0;

        /// @notice Flashloan fee sets the cost of taking a flashloan in 18 decimals points
        uint256 flashloanFee0;

        /// @notice Indicates if a beforeQuote on oracle contract should be called before quoting price
        bool callBeforeQuote0;

        /// @notice Address of the second token
        address token1;

        /// @notice Address of the solvency oracle. Solvency oracle is used to calculate LTV when deciding if borrower
        /// is solvent or should be liquidated. Solvency oracle is optional and if not set price of 1 will be assumed.
        address solvencyOracle1;

        /// @notice Address of the maxLtv oracle. Max LTV oracle is used to calculate LTV when deciding if borrower
        /// can borrow given amount of assets. Max LTV oracle is optional and if not set it defaults to solvency
        /// oracle. If neither is set price of 1 will be assumed.
        address maxLtvOracle1;

        /// @notice Address of the interest rate model
        address interestRateModel1;

        /// @notice Maximum LTV for first token. maxLTV is in 18 decimals points and is used to determine,
        /// if borrower can borrow given amount of assets. maxLtv is in 18 decimals points
        uint256 maxLtv1;

        /// @notice Liquidation threshold for first token. LT is used to calculate solvency. LT is in 18 decimals points
        uint256 lt1;

        /// @notice minimal acceptable LTV after liquidation, in 18 decimals points
        uint256 liquidationTargetLtv1;

        /// @notice Liquidation fee is what liquidator earns for repaying insolvent loan.
        uint256 liquidationFee1;

        /// @notice Flashloan fee sets the cost of taking a flashloan in 18 decimals points
        uint256 flashloanFee1;

        /// @notice Indicates if a beforeQuote on oracle contract should be called before quoting price
        bool callBeforeQuote1;
    }

    struct ConfigData {
        uint256 daoFee;
        uint256 deployerFee;
        address silo;
        address token;
        address protectedShareToken;
        address collateralShareToken;
        address debtShareToken;
        address solvencyOracle;
        address maxLtvOracle;
        address interestRateModel;
        uint256 maxLtv;
        uint256 lt;
        uint256 liquidationTargetLtv;
        uint256 liquidationFee;
        uint256 flashloanFee;
        address hookReceiver;
        bool callBeforeQuote;
    }

    struct DepositConfig {
        address silo;
        address token;
        address collateralShareToken;
        address protectedShareToken;
        uint256 daoFee;
        uint256 deployerFee;
        address interestRateModel;
    }

    error OnlySilo();
    error OnlySiloOrTokenOrHookReceiver();
    error WrongSilo();
    error OnlyDebtShareToken();
    error DebtExistInOtherSilo();
    error FeeTooHigh();

    /// @dev It should be called on debt transfer (debt share token transfer).
    /// In the case if the`_recipient` doesn't have configured a collateral silo,
    /// it will be set to the collateral silo of the `_sender`.
    /// @param _sender sender address
    /// @param _recipient recipient address
    function onDebtTransfer(address _sender, address _recipient) external;

    /// @notice Set collateral silo.
    /// @dev Revert if msg.sender is not a SILO_0 or SILO_1.
    /// @dev Always set collateral silo the same as msg.sender.
    /// @param _borrower borrower address
    function setThisSiloAsCollateralSilo(address _borrower) external;

    /// @notice Set collateral silo
    /// @dev Revert if msg.sender is not a SILO_0 or SILO_1.
    /// @dev Always set collateral silo opposite to the msg.sender.
    /// @param _borrower borrower address
    function setOtherSiloAsCollateralSilo(address _borrower) external;

    /// @notice Accrue interest for the silo
    /// @param _silo silo for which accrue interest
    function accrueInterestForSilo(address _silo) external;

    /// @notice Accrue interest for both silos (SILO_0 and SILO_1 in a config)
    function accrueInterestForBothSilos() external;

    /// @notice Retrieves the collateral silo for a specific borrower.
    /// @dev As a user can deposit into `Silo0` and `Silo1`, this property specifies which Silo
    /// will be used as collateral for the debt. Later on, it will be used for max LTV and solvency checks.
    /// After being set, the collateral silo is never set to `address(0)` again but such getters as
    /// `getConfigsForSolvency`, `getConfigsForBorrow`, `getConfigsForWithdraw` will return empty
    /// collateral silo config if borrower doesn't have debt.
    ///
    /// In the SiloConfig collateral silo is set by the following functions:
    /// `onDebtTransfer` - only if the recipient doesn't have collateral silo set (inherits it from the sender)
    /// This function is called on debt share token transfer (debt transfer).
    /// `setThisSiloAsCollateralSilo` - sets the same silo as the one that calls the function.
    /// `setOtherSiloAsCollateralSilo` - sets the opposite silo as collateral from the one that calls the function.
    ///
    /// In the Silo collateral silo is set by the following functions:
    /// `borrow` - always sets opposite silo as collateral.
    /// If Silo0 borrows, then Silo1 will be collateral and vice versa.
    /// `borrowSameAsset` - always sets the same silo as collateral.
    /// `switchCollateralToThisSilo` - always sets the same silo as collateral.
    /// @param _borrower The address of the borrower for which the collateral silo is being retrieved
    /// @return collateralSilo The address of the collateral silo for the specified borrower
    function borrowerCollateralSilo(address _borrower) external view returns (address collateralSilo);

    /// @notice Retrieves the silo ID
    /// @dev Each silo is assigned a unique ID. ERC-721 token is minted with identical ID to deployer.
    /// An owner of that token receives the deployer fees.
    /// @return siloId The ID of the silo
    function SILO_ID() external view returns (uint256 siloId); // solhint-disable-line func-name-mixedcase

    /// @notice Retrieves the addresses of the two silos
    /// @return silo0 The address of the first silo
    /// @return silo1 The address of the second silo
    function getSilos() external view returns (address silo0, address silo1);

    /// @notice Retrieves the asset associated with a specific silo
    /// @dev This function reverts for incorrect silo address input
    /// @param _silo The address of the silo for which the associated asset is being retrieved
    /// @return asset The address of the asset associated with the specified silo
    function getAssetForSilo(address _silo) external view returns (address asset);

    /// @notice Verifies if the borrower has debt in other silo by checking the debt share token balance
    /// @param _thisSilo The address of the silo in respect of which the debt is checked
    /// @param _borrower The address of the borrower for which the debt is checked
    /// @return hasDebt true if the borrower has debt in other silo
    function hasDebtInOtherSilo(address _thisSilo, address _borrower) external view returns (bool hasDebt);

    /// @notice Retrieves the debt silo associated with a specific borrower
    /// @dev This function reverts if debt present in two silo (should not happen)
    /// @param _borrower The address of the borrower for which the debt silo is being retrieved
    function getDebtSilo(address _borrower) external view returns (address debtSilo);

    /// @notice Retrieves configuration data for both silos. First config is for the silo that is asking for configs.
    /// @param borrower borrower address for which debtConfig will be returned
    /// @return collateralConfig The configuration data for collateral silo (empty if there is no debt).
    /// @return debtConfig The configuration data for debt silo (empty if there is no debt).
    function getConfigsForSolvency(address borrower)
        external
        view
        returns (ConfigData memory collateralConfig, ConfigData memory debtConfig);

    /// @notice Retrieves configuration data for a specific silo
    /// @dev This function reverts for incorrect silo address input.
    /// @param _silo The address of the silo for which configuration data is being retrieved
    /// @return config The configuration data for the specified silo
    function getConfig(address _silo) external view returns (ConfigData memory config);

    /// @notice Retrieves configuration data for a specific silo for withdraw fn.
    /// @dev This function reverts for incorrect silo address input.
    /// @param _silo The address of the silo for which configuration data is being retrieved
    /// @return depositConfig The configuration data for the specified silo (always config for `_silo`)
    /// @return collateralConfig The configuration data for the collateral silo (empty if there is no debt)
    /// @return debtConfig The configuration data for the debt silo (empty if there is no debt)
    function getConfigsForWithdraw(address _silo, address _borrower) external view returns (
        DepositConfig memory depositConfig,
        ConfigData memory collateralConfig,
        ConfigData memory debtConfig
    );

    /// @notice Retrieves configuration data for a specific silo for borrow fn.
    /// @dev This function reverts for incorrect silo address input.
    /// @param _debtSilo The address of the silo for which configuration data is being retrieved
    /// @return collateralConfig The configuration data for the collateral silo (always other than `_debtSilo`)
    /// @return debtConfig The configuration data for the debt silo (always config for `_debtSilo`)
    function getConfigsForBorrow(address _debtSilo)
        external
        view
        returns (ConfigData memory collateralConfig, ConfigData memory debtConfig);

    /// @notice Retrieves fee-related information for a specific silo
    /// @dev This function reverts for incorrect silo address input
    /// @param _silo The address of the silo for which fee-related information is being retrieved.
    /// @return daoFee The DAO fee percentage in 18 decimals points.
    /// @return deployerFee The deployer fee percentage in 18 decimals points.
    /// @return flashloanFee The flashloan fee percentage in 18 decimals points.
    /// @return asset The address of the asset associated with the specified silo.
    function getFeesWithAsset(address _silo)
        external
        view
        returns (uint256 daoFee, uint256 deployerFee, uint256 flashloanFee, address asset);

    /// @notice Retrieves share tokens associated with a specific silo
    /// @dev This function reverts for incorrect silo address input
    /// @param _silo The address of the silo for which share tokens are being retrieved
    /// @return protectedShareToken The address of the protected (non-borrowable) share token
    /// @return collateralShareToken The address of the collateral share token
    /// @return debtShareToken The address of the debt share token
    function getShareTokens(address _silo)
        external
        view
        returns (address protectedShareToken, address collateralShareToken, address debtShareToken);

    /// @notice Retrieves the share token and the silo token associated with a specific silo
    /// @param _silo The address of the silo for which the share token and silo token are being retrieved
    /// @param _collateralType The type of collateral
    /// @return shareToken The address of the share token (collateral or protected collateral)
    /// @return asset The address of the silo token
    function getCollateralShareTokenAndAsset(address _silo, ISilo.CollateralType _collateralType)
        external
        view
        returns (address shareToken, address asset);

    /// @notice Retrieves the share token and the silo token associated with a specific silo
    /// @param _silo The address of the silo for which the share token and silo token are being retrieved
    /// @return shareToken The address of the share token (debt)
    /// @return asset The address of the silo token
    function getDebtShareTokenAndAsset(address _silo)
        external
        view
        returns (address shareToken, address asset);
}

// ============================================================
// FILE: silo-core/contracts/interfaces/ISiloFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

import {IERC721} from "openzeppelin5/interfaces/IERC721.sol";
import {ISiloConfig} from "./ISiloConfig.sol";

interface ISiloFactory is IERC721 {
    struct Range {
        uint128 min;
        uint128 max;
    }

    /// @notice Emitted on the creation of a Silo.
    /// @param implementation Address of the Silo implementation.
    /// @param token0 Address of the first Silo token.
    /// @param token1 Address of the second Silo token.
    /// @param silo0 Address of the first Silo.
    /// @param silo1 Address of the second Silo.
    /// @param siloConfig Address of the SiloConfig.
    event NewSilo(
        address indexed implementation,
        address indexed token0,
        address indexed token1,
        address silo0,
        address silo1,
        address siloConfig
    );

    event BaseURI(string newBaseURI);

    /// @notice Emitted on the update of DAO fee.
    /// @param minDaoFee Value of the new minimal DAO fee.
    /// @param maxDaoFee Value of the new maximal DAO fee.
    event DaoFeeChanged(uint128 minDaoFee, uint128 maxDaoFee);

    /// @notice Emitted on the update of max deployer fee.
    /// @param maxDeployerFee Value of the new max deployer fee.
    event MaxDeployerFeeChanged(uint256 maxDeployerFee);

    /// @notice Emitted on the update of max flashloan fee.
    /// @param maxFlashloanFee Value of the new max flashloan fee.
    event MaxFlashloanFeeChanged(uint256 maxFlashloanFee);

    /// @notice Emitted on the update of max liquidation fee.
    /// @param maxLiquidationFee Value of the new max liquidation fee.
    event MaxLiquidationFeeChanged(uint256 maxLiquidationFee);

    /// @notice Emitted on the change of DAO fee receiver.
    /// @param daoFeeReceiver Address of the new DAO fee receiver.
    event DaoFeeReceiverChanged(address daoFeeReceiver);

    error MissingHookReceiver();
    error ZeroAddress();
    error DaoFeeReceiverZeroAddress();
    error EmptyToken0();
    error EmptyToken1();
    error MaxFeeExceeded();
    error InvalidFeeRange();
    error SameAsset();
    error SameRange();
    error InvalidIrm();
    error InvalidMaxLtv();
    error InvalidLt();
    error InvalidDeployer();
    error DaoMinRangeExceeded();
    error DaoMaxRangeExceeded();
    error MaxDeployerFeeExceeded();
    error MaxFlashloanFeeExceeded();
    error MaxLiquidationFeeExceeded();
    error InvalidCallBeforeQuote();
    error OracleMisconfiguration();
    error InvalidQuoteToken();
    error HookIsZeroAddress();
    error LiquidationTargetLtvTooHigh();

    /// @notice Create a new Silo.
    /// @param _initData Silo initialization data.
    /// @param _siloConfig Silo configuration.
    /// @param _siloImpl Address of the `Silo` implementation.
    /// @param _shareProtectedCollateralTokenImpl Address of the `ShareProtectedCollateralToken` implementation.
    /// @param _shareDebtTokenImpl Address of the `ShareDebtToken` implementation.
    function createSilo(
        ISiloConfig.InitData memory _initData,
        ISiloConfig _siloConfig,
        address _siloImpl,
        address _shareProtectedCollateralTokenImpl,
        address _shareDebtTokenImpl
    )
        external;

    /// @notice NFT ownership represents the deployer fee receiver for the each Silo ID.  After burning, 
    /// the deployer fee is sent to the DAO. Burning doesn't affect Silo's behavior. It is only about fee distribution.
    /// @param _siloIdToBurn silo ID to burn.
    function burn(uint256 _siloIdToBurn) external;

    /// @notice Update the value of DAO fee. Updated value will be used only for a new Silos.
    /// Previously deployed SiloConfigs are immutable.
    /// @param _minFee Value of the new DAO minimal fee.
    /// @param _maxFee Value of the new DAO maximal fee.
    function setDaoFee(uint128 _minFee, uint128 _maxFee) external;

    /// @notice Set the new DAO fee receiver.
    /// @param _newDaoFeeReceiver Address of the new DAO fee receiver.
    function setDaoFeeReceiver(address _newDaoFeeReceiver) external;

    /// @notice Update the value of max deployer fee. Updated value will be used only for a new Silos max deployer
    /// fee validation. Previously deployed SiloConfigs are immutable.
    /// @param _newMaxDeployerFee Value of the new max deployer fee.
    function setMaxDeployerFee(uint256 _newMaxDeployerFee) external;

    /// @notice Update the value of max flashloan fee. Updated value will be used only for a new Silos max flashloan
    /// fee validation. Previously deployed SiloConfigs are immutable.
    /// @param _newMaxFlashloanFee Value of the new max flashloan fee.
    function setMaxFlashloanFee(uint256 _newMaxFlashloanFee) external;

    /// @notice Update the value of max liquidation fee. Updated value will be used only for a new Silos max
    /// liquidation fee validation. Previously deployed SiloConfigs are immutable.
    /// @param _newMaxLiquidationFee Value of the new max liquidation fee.
    function setMaxLiquidationFee(uint256 _newMaxLiquidationFee) external;
   
    /// @notice Update the base URI.
    /// @param _newBaseURI Value of the new base URI.
    function setBaseURI(string calldata _newBaseURI) external;

    /// @notice Acceptable DAO fee range for new Silos. Denominated in 18 decimals points. 1e18 == 100%.
    function daoFeeRange() external view returns (Range memory);

    /// @notice Max deployer fee for a new Silos. Denominated in 18 decimals points. 1e18 == 100%.
    function maxDeployerFee() external view returns (uint256);

    /// @notice Max flashloan fee for a new Silos. Denominated in 18 decimals points. 1e18 == 100%.
    function maxFlashloanFee() external view returns (uint256);

    /// @notice Max liquidation fee for a new Silos. Denominated in 18 decimals points. 1e18 == 100%.
    function maxLiquidationFee() external view returns (uint256);

    /// @notice The recipient of DAO fees.
    function daoFeeReceiver() external view returns (address);

    /// @notice Get SiloConfig address by Silo id.
    function idToSiloConfig(uint256 _id) external view returns (address);

    /// @notice Do not use this method to check if silo is secure. Anyone can deploy silo with any configuration
    /// and implementation. Most critical part of verification would be to check who deployed it.
    /// @dev True if the address was deployed using SiloFactory.
    function isSilo(address _silo) external view returns (bool);

    /// @notice Id of a next Silo to be deployed. This is an ID of non-existing Silo outside of createSilo
    /// function call. ID of a first Silo is 1.
    function getNextSiloId() external view returns (uint256);

    /// @notice Get the DAO and deployer fee receivers for a particular Silo address.
    /// @param _silo Silo address.
    /// @return dao DAO fee receiver.
    /// @return deployer Deployer fee receiver.
    function getFeeReceivers(address _silo) external view returns (address dao, address deployer);

    /// @notice Validate InitData for a new Silo. Config will be checked for the fee limits, missing parameters.
    /// @param _initData Silo init data.
    function validateSiloInitData(ISiloConfig.InitData memory _initData) external view returns (bool);
}

// ============================================================
// FILE: silo-core/contracts/interfaces/ISiloOracle.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

interface ISiloOracle {
    /// @notice Hook function to call before `quote` function reads price
    /// @dev This hook function can be used to change state right before the price is read. For example it can be used
    ///      for curve read only reentrancy protection. In majority of implementations this will be an empty function.
    ///      WARNING: reverts are propagated to Silo so if `beforeQuote` reverts, Silo reverts as well.
    /// @param _baseToken Address of priced token
    function beforeQuote(address _baseToken) external;

    /// @return quoteAmount Returns quote price for _baseAmount of _baseToken
    /// @param _baseAmount Amount of priced token
    /// @param _baseToken Address of priced token
    function quote(uint256 _baseAmount, address _baseToken) external view returns (uint256 quoteAmount);

    /// @return address of token in which quote (price) is denominated
    function quoteToken() external view returns (address);
}

// ============================================================
// FILE: silo-core/contracts/lib/CallBeforeQuoteLib.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {ISiloConfig} from "../interfaces/ISiloConfig.sol";
import {ISiloOracle} from "../interfaces/ISiloOracle.sol";

library CallBeforeQuoteLib {
    /// @dev Call `beforeQuote` on the `solvencyOracle` oracle
    /// @param _config Silo config data
    function callSolvencyOracleBeforeQuote(ISiloConfig.ConfigData memory _config) internal {
        if (_config.callBeforeQuote && _config.solvencyOracle != address(0)) {
            ISiloOracle(_config.solvencyOracle).beforeQuote(_config.token);
        }
    }

    /// @dev Call `beforeQuote` on the `maxLtvOracle` oracle
    /// @param _config Silo config data
    function callMaxLtvOracleBeforeQuote(ISiloConfig.ConfigData memory _config) internal {
        if (_config.callBeforeQuote && _config.maxLtvOracle != address(0)) {
            ISiloOracle(_config.maxLtvOracle).beforeQuote(_config.token);
        }
    }
}

// ============================================================
// FILE: silo-core/contracts/lib/CloneDeterministic.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {Clones} from "openzeppelin5/proxy/Clones.sol";

/// @title Deterministic clones library for the silo market deployment.
/// @dev This library is used to deploy deterministic clones of:
/// Silo (SILO_0, SILO_1)
/// ShareProtectedCollateralToken (SHARE_PROTECTED_COLLATERAL_TOKEN_0, SHARE_PROTECTED_COLLATERAL_TOKEN_1)
/// ShareDebtToken (SHARE_DEBT_TOKEN_0, SHARE_DEBT_TOKEN_1)
library CloneDeterministic {
    /// @dev Deterministic salt for Silo0
    bytes32 private constant _SILO_0 = keccak256("create2.salt.Silo0");
    /// @dev Deterministic salt for ShareProtectedCollateralToken Silo0
    bytes32 private constant _SHARE_PROTECTED_COLLATERAL_TOKEN_0 = keccak256(
        "create2.salt.ShareProtectedCollateralToken0"
    );
    /// @dev Deterministic salt for ShareDebtToken Silo0
    bytes32 private constant _SHARE_DEBT_TOKEN_0 = keccak256("create2.salt.ShareDebtToken0");
    /// @dev Deterministic salt for Silo1
    bytes32 private constant _SILO_1 = keccak256("create2.salt.Silo1");
    /// @dev Deterministic salt for ShareProtectedCollateralToken Silo1
    bytes32 private constant _SHARE_PROTECTED_COLLATERAL_TOKEN_1 = keccak256(
        "create2.salt.ShareProtectedCollateralToken1"
    );
    /// @dev Deterministic salt for ShareDebtToken Silo1
    bytes32 private constant _SHARE_DEBT_TOKEN_1 = keccak256("create2.salt.ShareDebtToken1");

    /// @notice Deploys a Silo0 clone.
    /// @param _implementation The Silo implementation to be cloned.
    /// @param _siloId The Silo ID (assigned by the `SiloFactory`).
    function silo0(address _implementation, uint256 _siloId) internal returns (address instance) {
        instance = Clones.cloneDeterministic(_implementation, _silo0Salt(_siloId));
    }

    /// @notice Deploys a Silo1 clone.
    /// @param _implementation The Silo implementation to be cloned.
    /// @param _siloId The Silo ID (assigned by the `SiloFactory`).
    function silo1(address _implementation, uint256 _siloId) internal returns (address instance) {
        instance = Clones.cloneDeterministic(_implementation, _silo1Salt(_siloId));
    }

    /// @notice Deploys a protected share token clone for the silo0.
    /// @param _implementation The protected share token implementation to be cloned.
    /// @param _siloId The Silo ID (assigned by the `SiloFactory`).
    function shareProtectedCollateralToken0(
        address _implementation,
        uint256 _siloId
    )
        internal
        returns (address instance)
    {
        instance = Clones.cloneDeterministic(_implementation, _shareProtectedCollateralToken0Salt(_siloId));
    }

    /// @notice Deploys a debt share token clone for the silo0.
    /// @param _implementation The debt share token implementation to be cloned.
    /// @param _siloId The Silo ID (assigned by the `SiloFactory`).
    function shareDebtToken0(address _implementation, uint256 _siloId) internal returns (address instance) {
        instance = Clones.cloneDeterministic(_implementation, _shareDebtToken0Salt(_siloId));
    }

    /// @notice Deploys a protected share token  clone for the silo1.
    /// @param _implementation The protected share token implementation to be cloned.
    /// @param _siloId The Silo ID (assigned by the `SiloFactory`).
    function shareProtectedCollateralToken1(
        address _implementation,
        uint256 _siloId
    )
        internal
        returns (address instance)
    {
        instance = Clones.cloneDeterministic(_implementation, _shareProtectedCollateralToken1Salt(_siloId));
    }

    /// @notice Deploys a debt share token clone for the silo1.
    /// @param _implementation The debt share token implementation to be cloned.
    /// @param _siloId The Silo ID (assigned by the `SiloFactory`).
    function shareDebtToken1(address _implementation, uint256 _siloId) internal returns (address instance) {
        instance = Clones.cloneDeterministic(_implementation, _shareDebtToken1Salt(_siloId));
    }

    /// @notice Predicts the address of the SiloConfig _SILO0.
    /// @param _siloImpl The Silo implementation address.
    /// @param _siloId The Silo ID (assigned by the `SiloFactory`).
    /// @param _deployer The deployer address.
    function predictSilo0Addr(
        address _siloImpl,
        uint256 _siloId,
        address _deployer
    )
        internal
        pure
        returns (address addr)
    {
        addr = Clones.predictDeterministicAddress(_siloImpl, _silo0Salt(_siloId), _deployer);
    }

    /// @notice Predicts the address of the SiloConfig _SILO1.
    /// @param _siloImpl The Silo implementation address.
    /// @param _siloId The Silo ID (assigned by the `SiloFactory`).
    /// @param _deployer The deployer address.
    function predictSilo1Addr(
        address _siloImpl,
        uint256 _siloId,
        address _deployer
    )
        internal
        pure
        returns (address addr)
    {
        addr = Clones.predictDeterministicAddress(_siloImpl, _silo1Salt(_siloId), _deployer);
    }

    /// @notice Predicts the address of the SiloConfig _PROTECTED_COLLATERAL_SHARE_TOKEN0.
    /// @param _shareProtectedCollateralTokenImpl The ShareProtectedCollateralToken implementation address.
    /// @param _siloId The Silo ID (assigned by the `SiloFactory`).
    /// @param _deployer The deployer address.
    function predictShareProtectedCollateralToken0Addr(
        address _shareProtectedCollateralTokenImpl,
        uint256 _siloId,
        address _deployer
    )
        internal
        pure
        returns (address addr)
    {
        addr = Clones.predictDeterministicAddress(
            _shareProtectedCollateralTokenImpl, _shareProtectedCollateralToken0Salt(_siloId), _deployer
        );
    }

    /// @notice Predicts the address of the SiloConfig _DEBT_SHARE_TOKEN0.
    /// @param _shareDebtTokenImpl The ShareDebtToken implementation address.
    /// @param _siloId The Silo ID (assigned by the `SiloFactory`).
    /// @param _deployer The deployer address.
    function predictShareDebtToken0Addr(
        address _shareDebtTokenImpl,
        uint256 _siloId,
        address _deployer
    )
        internal
        pure
        returns (address addr)
    {
        addr = Clones.predictDeterministicAddress(
            _shareDebtTokenImpl, _shareDebtToken0Salt(_siloId), _deployer
        );
    }

    /// @notice Predicts the address of the SiloConfig _PROTECTED_COLLATERAL_SHARE_TOKEN1.
    /// @param _shareProtectedCollateralTokenImpl The ShareProtectedCollateralToken implementation address.
    /// @param _siloId The Silo ID (assigned by the `SiloFactory`).
    /// @param _deployer The deployer address.
    function predictShareProtectedCollateralToken1Addr(
        address _shareProtectedCollateralTokenImpl,
        uint256 _siloId,
        address _deployer
    )
        internal
        pure
        returns (address addr)
    {
        addr = Clones.predictDeterministicAddress(
            _shareProtectedCollateralTokenImpl, _shareProtectedCollateralToken1Salt(_siloId), _deployer
        );
    }

    /// @notice Predicts the address of the SiloConfig _DEBT_SHARE_TOKEN1.
    /// @param _shareDebtTokenImpl The ShareDebtToken implementation address.
    /// @param _siloId The Silo ID (assigned by the `SiloFactory`).
    /// @param _deployer The deployer address.
    function predictShareDebtToken1Addr(
        address _shareDebtTokenImpl,
        uint256 _siloId,
        address _deployer
    )
        internal
        pure
        returns (address addr)
    {
        addr = Clones.predictDeterministicAddress(
            _shareDebtTokenImpl, _shareDebtToken1Salt(_siloId), _deployer
        );
    }

    /// @notice Generates the salt for the `Silo0` `create2` operations.
    /// @param _siloId The Silo ID (assigned by the `SiloFactory`).
    function _silo0Salt(uint256 _siloId) private pure returns (bytes32 salt) {
        salt = keccak256(abi.encodePacked(_siloId, _SILO_0));
    }

    /// @notice Generates the salt for the `Silo1` `create2` operations.
    /// @param _siloId The Silo ID (assigned by the `SiloFactory`).
    function _silo1Salt(uint256 _siloId) private pure returns (bytes32 salt) {
        salt = keccak256(abi.encodePacked(_siloId, _SILO_1));
    }

    /// @notice Generates the salt for the `ShareProtectedCollateralToken0` `create2` operations.
    /// @param _siloId The Silo ID (assigned by the `SiloFactory`).
    function _shareProtectedCollateralToken0Salt(uint256 _siloId) private pure returns (bytes32 salt) {
        salt = keccak256(abi.encodePacked(_siloId, _SHARE_PROTECTED_COLLATERAL_TOKEN_0));
    }

    /// @notice Generates the salt for the `ShareDebtToken0` `create2` operations.
    /// @param _siloId The Silo ID (assigned by the `SiloFactory`).
    function _shareDebtToken0Salt(uint256 _siloId) private pure returns (bytes32 salt) {
        salt = keccak256(abi.encodePacked(_siloId, _SHARE_DEBT_TOKEN_0));
    }

    /// @notice Generates the salt for the `ShareProtectedCollateralToken1` `create2` operations.
    /// @param _siloId The Silo ID (assigned by the `SiloFactory`).
    function _shareProtectedCollateralToken1Salt(uint256 _siloId) private pure returns (bytes32 salt) {
        salt = keccak256(abi.encodePacked(_siloId, _SHARE_PROTECTED_COLLATERAL_TOKEN_1));
    }

    /// @notice Generates the salt for the `ShareDebtToken1` `create2` operations.
    /// @param _siloId The Silo ID (assigned by the `SiloFactory`).
    function _shareDebtToken1Salt(uint256 _siloId) private pure returns (bytes32 salt) {
        salt = keccak256(abi.encodePacked(_siloId, _SHARE_DEBT_TOKEN_1));
    }
}

// ============================================================
// FILE: silo-core/contracts/lib/Hook.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.28;

import {ISilo} from "../interfaces/ISilo.sol";

// solhint-disable private-vars-leading-underscore
library Hook {
    /// @notice The data structure for the deposit hook
    /// @param assets The amount of assets deposited
    /// @param shares The amount of shares deposited
    /// @param receiver The receiver of the deposit
    struct BeforeDepositInput {
        uint256 assets;
        uint256 shares;
        address receiver;
    }

    /// @notice The data structure for the deposit hook
    /// @param assets The amount of assets deposited
    /// @param shares The amount of shares deposited
    /// @param receiver The receiver of the deposit
    /// @param receivedAssets The exact amount of assets being deposited
    /// @param mintedShares The exact amount of shares being minted
    struct AfterDepositInput {
        uint256 assets;
        uint256 shares;
        address receiver;
        uint256 receivedAssets;
        uint256 mintedShares;
    }

    /// @notice The data structure for the withdraw hook
    /// @param assets The amount of assets withdrawn
    /// @param shares The amount of shares withdrawn
    /// @param receiver The receiver of the withdrawal
    /// @param owner The owner of the shares
    /// @param spender The spender of the shares
    struct BeforeWithdrawInput {
        uint256 assets;
        uint256 shares;
        address receiver;
        address owner;
        address spender;
    }

    /// @notice The data structure for the withdraw hook
    /// @param assets The amount of assets withdrawn
    /// @param shares The amount of shares withdrawn
    /// @param receiver The receiver of the withdrawal
    /// @param owner The owner of the shares
    /// @param spender The spender of the shares
    /// @param withdrawnAssets The exact amount of assets being withdrawn
    /// @param withdrawnShares The exact amount of shares being withdrawn
    struct AfterWithdrawInput {
        uint256 assets;
        uint256 shares;
        address receiver;
        address owner;
        address spender;
        uint256 withdrawnAssets;
        uint256 withdrawnShares;
    }

    /// @notice The data structure for the share token transfer hook
    /// @param sender The sender of the transfer (address(0) on mint)
    /// @param recipient The recipient of the transfer (address(0) on burn)
    /// @param amount The amount of tokens transferred/minted/burned
    /// @param senderBalance The balance of the sender after the transfer (empty on mint)
    /// @param recipientBalance The balance of the recipient after the transfer (empty on burn)
    /// @param totalSupply The total supply of the share token
    struct AfterTokenTransfer {
        address sender;
        address recipient;
        uint256 amount;
        uint256 senderBalance;
        uint256 recipientBalance;
        uint256 totalSupply;
    }

    /// @notice The data structure for the before borrow hook
    /// @param assets The amount of assets to borrow
    /// @param shares The amount of shares to borrow
    /// @param receiver The receiver of the borrow
    /// @param borrower The borrower of the assets
    /// @param _spender Address which initiates the borrowing action on behalf of the borrower
    struct BeforeBorrowInput {
        uint256 assets;
        uint256 shares;
        address receiver;
        address borrower;
        address spender;
    }

    /// @notice The data structure for the after borrow hook
    /// @param assets The amount of assets borrowed
    /// @param shares The amount of shares borrowed
    /// @param receiver The receiver of the borrow
    /// @param borrower The borrower of the assets
    /// @param spender Address which initiates the borrowing action on behalf of the borrower
    /// @param borrowedAssets The exact amount of assets being borrowed
    /// @param borrowedShares The exact amount of shares being borrowed
    struct AfterBorrowInput {
        uint256 assets;
        uint256 shares;
        address receiver;
        address borrower;
        address spender;
        uint256 borrowedAssets;
        uint256 borrowedShares;
    }

    /// @notice The data structure for the before repay hook
    /// @param assets The amount of assets to repay
    /// @param shares The amount of shares to repay
    /// @param borrower The borrower of the assets
    /// @param repayer The repayer of the assets
    struct BeforeRepayInput {
        uint256 assets;
        uint256 shares;
        address borrower;
        address repayer;
    }

    /// @notice The data structure for the after repay hook
    /// @param assets The amount of assets to repay
    /// @param shares The amount of shares to repay
    /// @param borrower The borrower of the assets
    /// @param repayer The repayer of the assets
    /// @param repaidAssets The exact amount of assets being repaid
    /// @param repaidShares The exact amount of shares being repaid
    struct AfterRepayInput {
        uint256 assets;
        uint256 shares;
        address borrower;
        address repayer;
        uint256 repaidAssets;
        uint256 repaidShares;
    }

    /// @notice The data structure for the before flash loan hook
    /// @param receiver The flash loan receiver
    /// @param token The flash loan token
    /// @param amount Requested amount of tokens
    struct BeforeFlashLoanInput {
        address receiver;
        address token;
        uint256 amount;
    }

    /// @notice The data structure for the after flash loan hook
    /// @param receiver The flash loan receiver
    /// @param token The flash loan token
    /// @param amount Received amount of tokens
    /// @param fee The flash loan fee
    struct AfterFlashLoanInput {
        address receiver;
        address token;
        uint256 amount;
        uint256 fee;
    }

    /// @notice The data structure for the before transition collateral hook
    /// @param shares The amount of shares to transition
    struct BeforeTransitionCollateralInput {
        uint256 shares;
        address owner;
    }

    /// @notice The data structure for the after transition collateral hook
    /// @param shares The amount of shares to transition
    struct AfterTransitionCollateralInput {
        uint256 shares;
        address owner;
        uint256 assets;
    }

    /// @notice The data structure for the switch collateral hook
    /// @param user The user switching collateral
    struct SwitchCollateralInput {
        address user;
    }

    /// @notice Supported hooks
    /// @dev The hooks are stored as a bitmap and can be combined with bitwise OR
    uint256 internal constant NONE = 0;
    uint256 internal constant DEPOSIT = 2 ** 1;
    uint256 internal constant BORROW = 2 ** 2;
    uint256 internal constant BORROW_SAME_ASSET = 2 ** 3;
    uint256 internal constant REPAY = 2 ** 4;
    uint256 internal constant WITHDRAW = 2 ** 5;
    uint256 internal constant FLASH_LOAN = 2 ** 6;
    uint256 internal constant TRANSITION_COLLATERAL = 2 ** 7;
    uint256 internal constant SWITCH_COLLATERAL = 2 ** 8;
    uint256 internal constant LIQUIDATION = 2 ** 9;
    uint256 internal constant SHARE_TOKEN_TRANSFER = 2 ** 10;
    uint256 internal constant COLLATERAL_TOKEN = 2 ** 11;
    uint256 internal constant PROTECTED_TOKEN = 2 ** 12;
    uint256 internal constant DEBT_TOKEN = 2 ** 13;

    // note: currently we can support hook value up to 2 ** 23,
    // because for optimisation purposes, we storing hooks as uint24

    // For decoding packed data
    uint256 private constant PACKED_ADDRESS_LENGTH = 20;
    uint256 private constant PACKED_FULL_LENGTH = 32;
    uint256 private constant PACKED_ENUM_LENGTH = 1;
    uint256 private constant PACKED_BOOL_LENGTH = 1;

    error FailedToParseBoolean();

    /// @notice Checks if the action has a specific hook
    /// @param _action The action
    /// @param _expectedHook The expected hook
    /// @dev The function returns true if the action has the expected hook.
    /// As hooks actions can be combined with bitwise OR, the following examples are valid:
    /// `matchAction(WITHDRAW | COLLATERAL_TOKEN, WITHDRAW) == true`
    /// `matchAction(WITHDRAW | COLLATERAL_TOKEN, COLLATERAL_TOKEN) == true`
    /// `matchAction(WITHDRAW | COLLATERAL_TOKEN, WITHDRAW | COLLATERAL_TOKEN) == true`
    function matchAction(uint256 _action, uint256 _expectedHook) internal pure returns (bool) {
        return _action & _expectedHook == _expectedHook;
    }

    /// @notice Adds a hook to an action
    /// @param _action The action
    /// @param _newAction The new hook to be added
    function addAction(uint256 _action, uint256 _newAction) internal pure returns (uint256) {
        return _action | _newAction;
    }

    /// @dev please be careful with removing actions, because other hooks might using them
    /// eg when you have `_action = COLLATERAL_TOKEN | PROTECTED_TOKEN | SHARE_TOKEN_TRANSFER`
    /// and you want to remove action on protected token transfer by doing
    /// `remove(_action, PROTECTED_TOKEN | SHARE_TOKEN_TRANSFER)`, the result will be `_action=COLLATERAL_TOKEN`
    /// and it will not trigger collateral token transfer. In this example you should do:
    /// `remove(_action, PROTECTED_TOKEN)`
    function removeAction(uint256 _action, uint256 _actionToRemove) internal pure returns (uint256) {
        return _action & (~_actionToRemove);
    }

    /// @notice Returns the action for depositing a specific collateral type
    /// @param _type The collateral type
    function depositAction(ISilo.CollateralType _type) internal pure returns (uint256) {
        return DEPOSIT | (_type == ISilo.CollateralType.Collateral ? COLLATERAL_TOKEN : PROTECTED_TOKEN);
    }

    /// @notice Returns the action for withdrawing a specific collateral type
    /// @param _type The collateral type
    function withdrawAction(ISilo.CollateralType _type) internal pure returns (uint256) {
        return WITHDRAW | (_type == ISilo.CollateralType.Collateral ? COLLATERAL_TOKEN : PROTECTED_TOKEN);
    }

    /// @notice Returns the action for collateral transition
    /// @param _type The collateral type
    function transitionCollateralAction(ISilo.CollateralType _type) internal pure returns (uint256) {
        return TRANSITION_COLLATERAL | (_type == ISilo.CollateralType.Collateral ? COLLATERAL_TOKEN : PROTECTED_TOKEN);
    }

    /// @notice Returns the share token transfer action
    /// @param _tokenType The token type (COLLATERAL_TOKEN || PROTECTED_TOKEN || DEBT_TOKEN)
    function shareTokenTransfer(uint256 _tokenType) internal pure returns (uint256) {
        return SHARE_TOKEN_TRANSFER | _tokenType;
    }

    /// @dev Decodes packed data from the share token after the transfer hook
    /// @param packed The packed data (via abi.encodePacked)
    /// @return input decoded
    function afterTokenTransferDecode(bytes memory packed)
        internal
        pure
        returns (AfterTokenTransfer memory input)
    {
        address sender;
        address recipient;
        uint256 amount;
        uint256 senderBalance;
        uint256 recipientBalance;
        uint256 totalSupply;

        assembly { // solhint-disable-line no-inline-assembly
            let pointer := PACKED_ADDRESS_LENGTH
            sender := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            recipient := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            amount := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            senderBalance := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            recipientBalance := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            totalSupply := mload(add(packed, pointer))
        }

        input = AfterTokenTransfer(sender, recipient, amount, senderBalance, recipientBalance, totalSupply);
    }

    /// @dev Decodes packed data from the deposit hook
    /// @param packed The packed data (via abi.encodePacked)
    /// @return input decoded
    function beforeDepositDecode(bytes memory packed)
        internal
        pure
        returns (BeforeDepositInput memory input)
    {
        uint256 assets;
        uint256 shares;
        address receiver;

        assembly { // solhint-disable-line no-inline-assembly
            let pointer := PACKED_FULL_LENGTH
            assets := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            shares := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            receiver := mload(add(packed, pointer))
        }

        input = BeforeDepositInput(assets, shares, receiver);
    }

    /// @dev Decodes packed data from the deposit hook
    /// @param packed The packed data (via abi.encodePacked)
    /// @return input decoded
    function afterDepositDecode(bytes memory packed)
        internal
        pure
        returns (AfterDepositInput memory input)
    {
        uint256 assets;
        uint256 shares;
        address receiver;
        uint256 receivedAssets;
        uint256 mintedShares;

        assembly { // solhint-disable-line no-inline-assembly
            let pointer := PACKED_FULL_LENGTH
            assets := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            shares := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            receiver := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            receivedAssets := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            mintedShares := mload(add(packed, pointer))
        }

        input = AfterDepositInput(assets, shares, receiver, receivedAssets, mintedShares);
    }

    /// @dev Decodes packed data from the withdraw hook
    /// @param packed The packed data (via abi.encodePacked)
    /// @return input decoded
    function beforeWithdrawDecode(bytes memory packed)
        internal
        pure
        returns (BeforeWithdrawInput memory input)
    {
        uint256 assets;
        uint256 shares;
        address receiver;
        address owner;
        address spender;

        assembly { // solhint-disable-line no-inline-assembly
            let pointer := PACKED_FULL_LENGTH
            assets := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            shares := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            receiver := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            owner := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            spender := mload(add(packed, pointer))
        }

        input = BeforeWithdrawInput(assets, shares, receiver, owner, spender);
    }

    /// @dev Decodes packed data from the withdraw hook
    /// @param packed The packed data (via abi.encodePacked)
    /// @return input decoded
    function afterWithdrawDecode(bytes memory packed)
        internal
        pure
        returns (AfterWithdrawInput memory input)
    {
        uint256 assets;
        uint256 shares;
        address receiver;
        address owner;
        address spender;
        uint256 withdrawnAssets;
        uint256 withdrawnShares;

        assembly { // solhint-disable-line no-inline-assembly
            let pointer := PACKED_FULL_LENGTH
            assets := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            shares := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            receiver := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            owner := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            spender := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            withdrawnAssets := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            withdrawnShares := mload(add(packed, pointer))
        }

        input = AfterWithdrawInput(assets, shares, receiver, owner, spender, withdrawnAssets, withdrawnShares);
    }

    /// @dev Decodes packed data from the before borrow hook
    /// @param packed The packed data (via abi.encodePacked)
    /// @return input decoded
    function beforeBorrowDecode(bytes memory packed)
        internal
        pure
        returns (BeforeBorrowInput memory input)
    {
        uint256 assets;
        uint256 shares;
        address receiver;
        address borrower;
        address spender;
        assembly { // solhint-disable-line no-inline-assembly
            let pointer := PACKED_FULL_LENGTH
            assets := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            shares := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            receiver := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            borrower := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            spender := mload(add(packed, pointer))
        }

        input = BeforeBorrowInput(assets, shares, receiver, borrower, spender);
    }

    /// @dev Decodes packed data from the after borrow hook
    /// @param packed The packed data (via abi.encodePacked)
    /// @return input decoded
    function afterBorrowDecode(bytes memory packed)
        internal
        pure
        returns (AfterBorrowInput memory input)
    {
        uint256 assets;
        uint256 shares;
        address receiver;
        address borrower;
        address spender;
        uint256 borrowedAssets;
        uint256 borrowedShares;

        assembly { // solhint-disable-line no-inline-assembly
            let pointer := PACKED_FULL_LENGTH
            assets := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            shares := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            receiver := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            borrower := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            spender := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            borrowedAssets := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            borrowedShares := mload(add(packed, pointer))
        }

        input = AfterBorrowInput(assets, shares, receiver, borrower, spender, borrowedAssets, borrowedShares);
    }

    /// @dev Decodes packed data from the before repay hook
    /// @param packed The packed data (via abi.encodePacked)
    /// @return input decoded
    function beforeRepayDecode(bytes memory packed)
        internal
        pure
        returns (BeforeRepayInput memory input)
    {
        uint256 assets;
        uint256 shares;
        address borrower;
        address repayer;

        assembly { // solhint-disable-line no-inline-assembly
            let pointer := PACKED_FULL_LENGTH
            assets := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            shares := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            borrower := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            repayer := mload(add(packed, pointer))
        }

        input = BeforeRepayInput(assets, shares, borrower, repayer);
    }

    /// @dev Decodes packed data from the after repay hook
    /// @param packed The packed data (via abi.encodePacked)
    /// @return input decoded
    function afterRepayDecode(bytes memory packed)
        internal
        pure
        returns (AfterRepayInput memory input)
    {
        uint256 assets;
        uint256 shares;
        address borrower;
        address repayer;
        uint256 repaidAssets;
        uint256 repaidShares;

        assembly { // solhint-disable-line no-inline-assembly
            let pointer := PACKED_FULL_LENGTH
            assets := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            shares := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            borrower := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            repayer := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            repaidAssets := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            repaidShares := mload(add(packed, pointer))
        }

        input = AfterRepayInput(assets, shares, borrower, repayer, repaidAssets, repaidShares);
    }

    /// @dev Decodes packed data from the before flash loan hook
    /// @param packed The packed data (via abi.encodePacked)
    /// @return input decoded
    function beforeFlashLoanDecode(bytes memory packed)
        internal
        pure
        returns (BeforeFlashLoanInput memory input)
    {
        address receiver;
        address token;
        uint256 amount;

        assembly { // solhint-disable-line no-inline-assembly
            let pointer := PACKED_ADDRESS_LENGTH
            receiver := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            token := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            amount := mload(add(packed, pointer))
        }

        input = BeforeFlashLoanInput(receiver, token, amount);
    }

    /// @dev Decodes packed data from the before flash loan hook
    /// @param packed The packed data (via abi.encodePacked)
    /// @return input decoded
    function afterFlashLoanDecode(bytes memory packed)
        internal
        pure
        returns (AfterFlashLoanInput memory input)
    {
        address receiver;
        address token;
        uint256 amount;
        uint256 fee;

        assembly { // solhint-disable-line no-inline-assembly
            let pointer := PACKED_ADDRESS_LENGTH
            receiver := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            token := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            amount := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            fee := mload(add(packed, pointer))
        }

        input = AfterFlashLoanInput(receiver, token, amount, fee);
    }

    /// @dev Decodes packed data from the transition collateral hook
    /// @param packed The packed data (via abi.encodePacked)
    /// @return input decoded
    function beforeTransitionCollateralDecode(bytes memory packed)
        internal
        pure
        returns (BeforeTransitionCollateralInput memory input)
    {
        uint256 shares;
        address owner;

        assembly { // solhint-disable-line no-inline-assembly
            let pointer := PACKED_FULL_LENGTH
            shares := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            owner := mload(add(packed, pointer))
        }

        input = BeforeTransitionCollateralInput(shares, owner);
    }

    /// @dev Decodes packed data from the transition collateral hook
    /// @param packed The packed data (via abi.encodePacked)
    /// @return input decoded
    function afterTransitionCollateralDecode(bytes memory packed)
        internal
        pure
        returns (AfterTransitionCollateralInput memory input)
    {
        uint256 shares;
        address owner;
        uint256 assets;

        assembly { // solhint-disable-line no-inline-assembly
            let pointer := PACKED_FULL_LENGTH
            shares := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_ADDRESS_LENGTH)
            owner := mload(add(packed, pointer))
            pointer := add(pointer, PACKED_FULL_LENGTH)
            assets := mload(add(packed, pointer))
        }

        input = AfterTransitionCollateralInput(shares, owner, assets);
    }

    /// @dev Decodes packed data from the switch collateral hook
    /// @param packed The packed data (via abi.encodePacked)
    /// @return input decoded
    function switchCollateralDecode(bytes memory packed)
        internal
        pure
        returns (SwitchCollateralInput memory input)
    {
        address user;

        assembly { // solhint-disable-line no-inline-assembly
            let pointer := PACKED_ADDRESS_LENGTH
            user := mload(add(packed, pointer))
        }

        input = SwitchCollateralInput(user);
    }

    /// @dev Converts a uint8 to a boolean
    function _toBoolean(uint8 _value) internal pure returns (bool result) {
        if (_value == 0) {
            result = false;
        } else if (_value == 1) {
            result = true;
        } else {
            revert FailedToParseBoolean();
        }
    }
}

// ============================================================
// FILE: silo-core/contracts/lib/IsContract.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

library IsContract {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     *
     * Furthermore, `isContract` will also return true if the target contract within
     * the same transaction is already scheduled for destruction by `SELFDESTRUCT`,
     * which only has an effect at the end of a transaction.
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address _account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return _account.code.length > 0;
    }
}

// ============================================================
// FILE: silo-core/contracts/lib/Rounding.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.28;

import {Math} from "openzeppelin5/utils/math/Math.sol";

// solhint-disable private-vars-leading-underscore
library Rounding {
    Math.Rounding internal constant UP = (Math.Rounding.Ceil);
    Math.Rounding internal constant DOWN = (Math.Rounding.Floor);
    Math.Rounding internal constant DEBT_TO_ASSETS = (Math.Rounding.Ceil);
    // COLLATERAL_TO_ASSETS is used to calculate borrower collateral (so we want to round down)
    Math.Rounding internal constant COLLATERAL_TO_ASSETS = (Math.Rounding.Floor);
    // why DEPOSIT_TO_ASSETS is Up if COLLATERAL_TO_ASSETS is Down?
    // DEPOSIT_TO_ASSETS is used for preview deposit and deposit, based on provided shares we want to pull "more" tokens
    // so we rounding up, "token flow" is in different direction than for COLLATERAL_TO_ASSETS, that's why
    // different rounding policy
    Math.Rounding internal constant DEPOSIT_TO_ASSETS = (Math.Rounding.Ceil);
    Math.Rounding internal constant DEPOSIT_TO_SHARES = (Math.Rounding.Floor);
    Math.Rounding internal constant BORROW_TO_ASSETS = (Math.Rounding.Floor);
    Math.Rounding internal constant BORROW_TO_SHARES = (Math.Rounding.Ceil);
    Math.Rounding internal constant MAX_BORROW_TO_ASSETS = (Math.Rounding.Floor);
    Math.Rounding internal constant MAX_BORROW_TO_SHARES = (Math.Rounding.Floor);
    Math.Rounding internal constant MAX_BORROW_VALUE = (Math.Rounding.Floor);
    Math.Rounding internal constant REPAY_TO_ASSETS = (Math.Rounding.Ceil);
    Math.Rounding internal constant REPAY_TO_SHARES = (Math.Rounding.Floor);
    Math.Rounding internal constant MAX_REPAY_TO_ASSETS = (Math.Rounding.Ceil);
    Math.Rounding internal constant WITHDRAW_TO_ASSETS = (Math.Rounding.Floor);
    Math.Rounding internal constant WITHDRAW_TO_SHARES = (Math.Rounding.Ceil);
    Math.Rounding internal constant MAX_WITHDRAW_TO_ASSETS = (Math.Rounding.Floor);
    Math.Rounding internal constant MAX_WITHDRAW_TO_SHARES = (Math.Rounding.Floor);
    Math.Rounding internal constant LIQUIDATE_TO_SHARES = (Math.Rounding.Floor);
    Math.Rounding internal constant LTV = (Math.Rounding.Ceil);
    Math.Rounding internal constant ACCRUED_INTEREST = (Math.Rounding.Floor);
}

// ============================================================
// FILE: silo-core/contracts/lib/ShareTokenLib.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import {Strings} from "openzeppelin5/utils/Strings.sol";

import {ISilo} from "../interfaces/ISilo.sol";
import {IShareToken} from "../interfaces/IShareToken.sol";
import {ISiloConfig} from "../interfaces/ISiloConfig.sol";

import {TokenHelper} from "../lib/TokenHelper.sol";
import {CallBeforeQuoteLib} from "../lib/CallBeforeQuoteLib.sol";
import {Hook} from "../lib/Hook.sol";

// solhint-disable ordering

library ShareTokenLib {
    using Hook for uint24;
    using CallBeforeQuoteLib for ISiloConfig.ConfigData;

    // keccak256(abi.encode(uint256(keccak256("silo.storage.ShareToken")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant _STORAGE_LOCATION = 0x01b0b3f9d6e360167e522fa2b18ba597ad7b2b35841fec7e1ca4dbb0adea1200;

    function getShareTokenStorage() internal pure returns (IShareToken.ShareTokenStorage storage $) {
        // solhint-disable-next-line no-inline-assembly
        assembly {
            $.slot := _STORAGE_LOCATION
        }
    }

    // solhint-disable-next-line func-name-mixedcase, private-vars-leading-underscore
    function __ShareToken_init(ISilo _silo, address _hookReceiver, uint24 _tokenType) external {
        IShareToken.ShareTokenStorage storage $ = ShareTokenLib.getShareTokenStorage();

        $.silo = _silo;
        $.siloConfig = _silo.config();

        $.hookSetup.hookReceiver = _hookReceiver;
        $.hookSetup.tokenType = _tokenType;
        $.transferWithChecks = true;
    }

    /// @dev decimals of share token
    function decimals() external view returns (uint8) {
        IShareToken.ShareTokenStorage storage $ = getShareTokenStorage();

        ISiloConfig.ConfigData memory configData = $.siloConfig.getConfig(address($.silo));
        return uint8(TokenHelper.assertAndGetDecimals(configData.token));
    }

    /// @dev Name convention:
    ///      NAME - asset name
    ///      SILO_ID - unique silo id
    ///
    ///      Protected deposit: "Silo Finance Non-borrowable NAME Deposit, SiloId: SILO_ID"
    ///      Borrowable deposit: "Silo Finance Borrowable NAME Deposit, SiloId: SILO_ID"
    ///      Debt: "Silo Finance NAME Debt, SiloId: SILO_ID"
    function name() external view returns (string memory) {
        IShareToken.ShareTokenStorage storage $ = getShareTokenStorage();

        ISiloConfig.ConfigData memory configData = $.siloConfig.getConfig(address($.silo));
        string memory siloIdAscii = Strings.toString($.siloConfig.SILO_ID());

        string memory pre = "";
        string memory post = " Deposit";

        if (address(this) == configData.protectedShareToken) {
            pre = "Non-borrowable ";
        } else if (address(this) == configData.collateralShareToken) {
            pre = "Borrowable ";
        } else if (address(this) == configData.debtShareToken) {
            post = " Debt";
        }

        string memory tokenSymbol = TokenHelper.symbol(configData.token);
        return string.concat("Silo Finance ", pre, tokenSymbol, post, ", SiloId: ", siloIdAscii);
    }

    /// @dev Symbol convention:
    ///      SYMBOL - asset symbol
    ///      SILO_ID - unique silo id
    ///
    ///      Protected deposit: "nbSYMBOL-SILO_ID"
    ///      Borrowable deposit: "bSYMBOL-SILO_ID"
    ///      Debt: "dSYMBOL-SILO_ID"
    function symbol() external view returns (string memory) {
        IShareToken.ShareTokenStorage storage $ = getShareTokenStorage();

        ISiloConfig.ConfigData memory configData = $.siloConfig.getConfig(address($.silo));
        string memory siloIdAscii = Strings.toString($.siloConfig.SILO_ID());

        string memory pre;

        if (address(this) == configData.protectedShareToken) {
            pre = "nb";
        } else if (address(this) == configData.collateralShareToken) {
            pre = "b";
        } else if (address(this) == configData.debtShareToken) {
            pre = "d";
        }

        string memory tokenSymbol = TokenHelper.symbol(configData.token);
        return string.concat(pre, tokenSymbol, "-", siloIdAscii);
    }

    /// @notice Call beforeQuote on solvency oracles
    /// @param _user user address for which the solvent check is performed
    function callOracleBeforeQuote(ISiloConfig _siloConfig, address _user) internal {
        (
            ISiloConfig.ConfigData memory collateralConfig,
            ISiloConfig.ConfigData memory debtConfig
        ) = _siloConfig.getConfigsForSolvency(_user);

        collateralConfig.callSolvencyOracleBeforeQuote();
        debtConfig.callSolvencyOracleBeforeQuote();
    }

    /// @dev Call on behalf of share token
    /// @param _target target address to call
    /// @param _value value to send
    /// @param _callType call type
    /// @param _input input data
    /// @return success true if the call was successful, false otherwise
    /// @return result bytes returned by the call
    function callOnBehalfOfShareToken(address _target, uint256 _value, ISilo.CallType _callType, bytes calldata _input)
        internal
        returns (bool success, bytes memory result)
    {
        // Share token will not send back any ether leftovers after the call.
        // The hook receiver should request the ether if needed in a separate call.
        if (_callType == ISilo.CallType.Delegatecall) {
            (success, result) = _target.delegatecall(_input); // solhint-disable-line avoid-low-level-calls
        } else {
            (success, result) = _target.call{value: _value}(_input); // solhint-disable-line avoid-low-level-calls
        }
    }

    /// @dev checks if operation is "real" transfer
    /// @param _sender sender address
    /// @param _recipient recipient address
    /// @return bool true if operation is real transfer, false if it is mint or burn
    function isTransfer(address _sender, address _recipient) internal pure returns (bool) {
        // in order this check to be true, it is required to have:
        // require(sender != address(0), "ERC20: transfer from the zero address");
        // require(recipient != address(0), "ERC20: transfer to the zero address");
        // on transfer. ERC20 has them, so we good.
        return _sender != address(0) && _recipient != address(0);
    }

    function siloConfig() internal view returns (ISiloConfig thisSiloConfig) {
        return ShareTokenLib.getShareTokenStorage().siloConfig;
    }

    function getConfig() internal view returns (ISiloConfig.ConfigData memory thisSiloConfigData) {
        thisSiloConfigData = ShareTokenLib.getShareTokenStorage().siloConfig.getConfig(address(this));
    }
}

// ============================================================
// FILE: silo-core/contracts/lib/SiloERC4626Lib.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {SafeERC20} from "openzeppelin5/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "openzeppelin5/token/ERC20/IERC20.sol";
import {Math} from "openzeppelin5/utils/math/Math.sol";

import {ISiloConfig} from "../interfaces/ISiloConfig.sol";
import {ISilo} from "../interfaces/ISilo.sol";
import {IShareToken} from "../interfaces/IShareToken.sol";
import {SiloSolvencyLib} from "./SiloSolvencyLib.sol";
import {SiloMathLib} from "./SiloMathLib.sol";
import {SiloStdLib} from "./SiloStdLib.sol";
import {SiloLendingLib} from "./SiloLendingLib.sol";
import {Rounding} from "./Rounding.sol";
import {Hook} from "./Hook.sol";
import {ShareTokenLib} from "./ShareTokenLib.sol";
import {SiloStorageLib} from "./SiloStorageLib.sol";

// solhint-disable function-max-lines

library SiloERC4626Lib {
    using SafeERC20 for IERC20;
    using Math for uint256;

    uint256 internal constant _PRECISION_DECIMALS = 1e18;

    /// @dev ERC4626: MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of assets that may be
    ///      deposited. In our case, we want to limit this value in a way, that after max deposit we can do borrow.
    ///      That's why we decided to go with type(uint128).max - which is anyway high enough to consume any totalSupply
    uint256 internal constant _VIRTUAL_DEPOSIT_LIMIT = type(uint256).max;

    /// @notice Deposit assets into the silo
    /// @param _token The ERC20 token address being deposited; 0 means tokens will not be transferred. Useful for
    /// transition of collateral.
    /// @param _depositor Address of the user depositing the assets
    /// @param _assets Amount of assets being deposited. Use 0 if shares are provided.
    /// @param _shares Shares being exchanged for the deposit; used for precise calculations. Use 0 if assets are
    /// provided.
    /// @param _receiver The address that will receive the collateral shares
    /// @param _collateralShareToken The collateral share token
    /// @param _collateralType The type of collateral being deposited
    /// @return assets The exact amount of assets being deposited
    /// @return shares The exact number of collateral shares being minted in exchange for the deposited assets
    function deposit(
        address _token,
        address _depositor,
        uint256 _assets,
        uint256 _shares,
        address _receiver,
        IShareToken _collateralShareToken,
        ISilo.CollateralType _collateralType
    ) internal returns (uint256 assets, uint256 shares) {
        ISilo.SiloStorage storage $ = SiloStorageLib.getSiloStorage();

        uint256 totalAssets = $.totalAssets[ISilo.AssetType(uint256(_collateralType))];

        (assets, shares) = SiloMathLib.convertToAssetsOrToShares(
            _assets,
            _shares,
            totalAssets,
            _collateralShareToken.totalSupply(),
            Rounding.DEPOSIT_TO_ASSETS,
            Rounding.DEPOSIT_TO_SHARES,
            ISilo.AssetType(uint256(_collateralType))
        );

        $.totalAssets[ISilo.AssetType(uint256(_collateralType))] = totalAssets + assets;

        // Hook receiver is called after `mint` and can reentry but state changes are completed already,
        // and reentrancy protection is still enabled.
        _collateralShareToken.mint(_receiver, _depositor, shares);

        if (_token != address(0)) {
            // Reentrancy is possible only for view methods (read-only reentrancy),
            // so no harm can be done as the state is already updated.
            // We do not expect the silo to work with any malicious token that will not send tokens to silo.
            IERC20(_token).safeTransferFrom(_depositor, address(this), assets);
        }
    }

    /// @notice Withdraw assets from the silo
    /// @dev Asset type is not verified here, make sure you revert before when type == Debt
    /// @param _asset The ERC20 token address to withdraw; 0 means tokens will not be transferred. Useful for
    /// transition of collateral.
    /// @param _shareToken Address of the share token being burned for withdrawal
    /// @param _args ISilo.WithdrawArgs
    /// @return assets The exact amount of assets withdrawn
    /// @return shares The exact number of shares burned in exchange for the withdrawn assets
    function withdraw(
        address _asset,
        address _shareToken,
        ISilo.WithdrawArgs memory _args
    ) internal returns (uint256 assets, uint256 shares) {
        uint256 shareTotalSupply = IShareToken(_shareToken).totalSupply();
        require(shareTotalSupply != 0, ISilo.NothingToWithdraw());

        ISilo.SiloStorage storage $ = SiloStorageLib.getSiloStorage();

        { // Stack too deep
            uint256 totalAssets = $.totalAssets[ISilo.AssetType(uint256(_args.collateralType))];

            (assets, shares) = SiloMathLib.convertToAssetsOrToShares(
                _args.assets,
                _args.shares,
                totalAssets,
                shareTotalSupply,
                Rounding.WITHDRAW_TO_ASSETS,
                Rounding.WITHDRAW_TO_SHARES,
                ISilo.AssetType(uint256(_args.collateralType))
            );

            uint256 liquidity = _args.collateralType == ISilo.CollateralType.Collateral
                ? SiloMathLib.liquidity($.totalAssets[ISilo.AssetType.Collateral], $.totalAssets[ISilo.AssetType.Debt])
                : $.totalAssets[ISilo.AssetType.Protected];

            // check liquidity
            require(assets <= liquidity, ISilo.NotEnoughLiquidity());

            $.totalAssets[ISilo.AssetType(uint256(_args.collateralType))] = totalAssets - assets;
        }

        // `burn` checks if `_spender` is allowed to withdraw `_owner` assets. `burn` calls hook receiver
        // after tokens transfer and can potentially reenter, but state changes are already completed,
        // and reentrancy protection is still enabled.
        IShareToken(_shareToken).burn(_args.owner, _args.spender, shares);

        if (_asset != address(0)) {
            // fee-on-transfer is ignored
            IERC20(_asset).safeTransfer(_args.receiver, assets);
        }
    }

    /// @notice Determines the maximum amount a user can withdraw, either in terms of assets or shares
    /// @dev The function computes the maximum withdrawable assets and shares, considering user's collateral, debt,
    /// and the liquidity in the silo.
    /// Debt withdrawals are not allowed, resulting in a revert if such an attempt is made.
    /// @param _owner Address of the user for which the maximum withdrawal amount is calculated
    /// @param _collateralType The type of asset being considered for withdrawal
    /// @param _totalAssets The total PROTECTED assets in the silo. In case of collateral use `0`, total
    /// collateral will be calculated internally with interest
    /// @return assets The maximum assets that the user can withdraw
    /// @return shares The maximum shares that the user can withdraw
    function maxWithdraw(
        address _owner,
        ISilo.CollateralType _collateralType,
        uint256 _totalAssets
    ) internal view returns (uint256 assets, uint256 shares) {
        (
            ISiloConfig.DepositConfig memory depositConfig,
            ISiloConfig.ConfigData memory collateralConfig,
            ISiloConfig.ConfigData memory debtConfig
        ) = ShareTokenLib.siloConfig().getConfigsForWithdraw(address(this), _owner);

        uint256 shareTokenTotalSupply;
        uint256 liquidity;

        if (_collateralType == ISilo.CollateralType.Collateral) {
            shareTokenTotalSupply = IShareToken(depositConfig.collateralShareToken).totalSupply();
            (liquidity, _totalAssets, ) = SiloLendingLib.getLiquidityAndAssetsWithInterest(
                depositConfig.interestRateModel,
                depositConfig.daoFee,
                depositConfig.deployerFee
            );
        } else {
            shareTokenTotalSupply = IShareToken(depositConfig.protectedShareToken).totalSupply();
            liquidity = _totalAssets;
        }

        if (depositConfig.silo != collateralConfig.silo) {
            shares = _collateralType == ISilo.CollateralType.Protected
                ? IShareToken(depositConfig.protectedShareToken).balanceOf(_owner)
                : IShareToken(depositConfig.collateralShareToken).balanceOf(_owner);

            assets = SiloMathLib.convertToAssets(
                shares,
                _totalAssets,
                shareTokenTotalSupply,
                Rounding.MAX_WITHDRAW_TO_ASSETS,
                ISilo.AssetType(uint256(_collateralType))
            );

            if (_collateralType == ISilo.CollateralType.Protected || assets <= liquidity) return (assets, shares);

            assets = liquidity;

            shares = SiloMathLib.convertToShares(
                assets,
                _totalAssets,
                shareTokenTotalSupply,
                // when we doing withdraw, we using Rounding.Ceil, because we want to burn as many shares
                // however here, we will be using shares as input to withdraw, if we round up, we can overflow
                // because we will want to withdraw too much, so we have to use Rounding.Floor
                Rounding.MAX_WITHDRAW_TO_SHARES,
                ISilo.AssetType.Collateral
            );

            return (assets, shares);
        } else {
            return maxWithdrawWhenDebt(
                collateralConfig, debtConfig, _owner, liquidity, shareTokenTotalSupply, _collateralType, _totalAssets
            );
        }
    }

    function maxWithdrawWhenDebt(
        ISiloConfig.ConfigData memory _collateralConfig,
        ISiloConfig.ConfigData memory _debtConfig,
        address _owner,
        uint256 _liquidity,
        uint256 _shareTokenTotalSupply,
        ISilo.CollateralType _collateralType,
        uint256 _totalAssets
    ) internal view returns (uint256 assets, uint256 shares) {
        SiloSolvencyLib.LtvData memory ltvData = SiloSolvencyLib.getAssetsDataForLtvCalculations(
            _collateralConfig,
            _debtConfig,
            _owner,
            ISilo.OracleType.Solvency,
            ISilo.AccrueInterestInMemory.Yes,
            IShareToken(_debtConfig.debtShareToken).balanceOf(_owner)
        );

        {
            (uint256 collateralValue, uint256 debtValue) =
                                SiloSolvencyLib.getPositionValues(ltvData, _collateralConfig.token, _debtConfig.token);

            assets = SiloMathLib.calculateMaxAssetsToWithdraw(
                collateralValue,
                debtValue,
                _collateralConfig.lt,
                ltvData.borrowerProtectedAssets,
                ltvData.borrowerCollateralAssets
            );
        }

        (assets, shares) = SiloMathLib.maxWithdrawToAssetsAndShares(
            assets,
            ltvData.borrowerCollateralAssets,
            ltvData.borrowerProtectedAssets,
            _collateralType,
            _totalAssets,
            _shareTokenTotalSupply,
            _liquidity
        );

        if (assets != 0) {
            // recalculate assets due to rounding error that we have in convertToShares
            assets = SiloMathLib.convertToAssets(
                shares,
                _totalAssets,
                _shareTokenTotalSupply,
                Rounding.MAX_WITHDRAW_TO_ASSETS,
                ISilo.AssetType(uint256(_collateralType))
            );
        }
    }
}

// ============================================================
// FILE: silo-core/contracts/lib/SiloLendingLib.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {SafeERC20} from "openzeppelin5/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "openzeppelin5/token/ERC20/IERC20.sol";
import {Math} from "openzeppelin5/utils/math/Math.sol";

import {ISiloOracle} from "../interfaces/ISiloOracle.sol";
import {ISilo} from "../interfaces/ISilo.sol";
import {IShareToken} from "../interfaces/IShareToken.sol";
import {IInterestRateModel} from "../interfaces/IInterestRateModel.sol";
import {ISiloConfig} from "../interfaces/ISiloConfig.sol";
import {SiloSolvencyLib} from "./SiloSolvencyLib.sol";
import {SiloStdLib} from "./SiloStdLib.sol";
import {SiloMathLib} from "./SiloMathLib.sol";
import {Rounding} from "./Rounding.sol";
import {ShareTokenLib} from "./ShareTokenLib.sol";
import {SiloStorageLib} from "./SiloStorageLib.sol";

library SiloLendingLib {
    using SafeERC20 for IERC20;
    using Math for uint256;

    uint256 internal constant _PRECISION_DECIMALS = 1e18;

    /// @notice Allows repaying borrowed assets either partially or in full
    /// @param _debtShareToken debt share token address
    /// @param _debtAsset underlying debt asset address
    /// @param _assets The amount of assets to repay. Use 0 if shares are used.
    /// @param _shares The number of corresponding shares associated with the debt. Use 0 if assets are used.
    /// @param _borrower The account that has the debt
    /// @param _repayer The account that is repaying the debt
    /// @return assets The amount of assets that was repaid
    /// @return shares The corresponding number of debt shares that were repaid
    function repay(
        IShareToken _debtShareToken,
        address _debtAsset,
        uint256 _assets,
        uint256 _shares,
        address _borrower,
        address _repayer
    ) internal returns (uint256 assets, uint256 shares) {
        ISilo.SiloStorage storage $ = SiloStorageLib.getSiloStorage();

        uint256 totalDebtAssets = $.totalAssets[ISilo.AssetType.Debt];
        (uint256 debtSharesBalance, uint256 totalDebtShares) = _debtShareToken.balanceOfAndTotalSupply(_borrower);

        (assets, shares) = SiloMathLib.convertToAssetsOrToShares({
            _assets: _assets,
            _shares: _shares,
            _totalAssets: totalDebtAssets,
            _totalShares: totalDebtShares,
            _roundingToAssets: Rounding.REPAY_TO_ASSETS,
            _roundingToShares: Rounding.REPAY_TO_SHARES,
            _assetType: ISilo.AssetType.Debt
        });

        if (shares > debtSharesBalance) {
            shares = debtSharesBalance;

            (assets, shares) = SiloMathLib.convertToAssetsOrToShares({
                _assets: 0,
                _shares: shares,
                _totalAssets: totalDebtAssets,
                _totalShares: totalDebtShares,
                _roundingToAssets: Rounding.REPAY_TO_ASSETS,
                _roundingToShares: Rounding.REPAY_TO_SHARES,
                _assetType: ISilo.AssetType.Debt
            });
        }

        require(totalDebtAssets >= assets, ISilo.RepayTooHigh());

        // subtract repayment from debt, save to unchecked because of above `totalDebtAssets < assets`
        unchecked { $.totalAssets[ISilo.AssetType.Debt] = totalDebtAssets - assets; }

        // Anyone can repay anyone's debt so no approval check is needed.
        _debtShareToken.burn(_borrower, _repayer, shares);
        // fee-on-transfer is ignored
        // Reentrancy is possible only for view methods (read-only reentrancy),
        // so no harm can be done as the state is already updated.
        // We do not expect the silo to work with any malicious token that will not send tokens back.
        IERC20(_debtAsset).safeTransferFrom(_repayer, address(this), assets);
    }

    /// @notice Accrues interest on assets, updating the collateral and debt balances
    /// @dev This method will accrue interest for ONE asset ONLY, to calculate for both silos you have to call it twice
    /// with `_configData` for each token
    /// @param _interestRateModel The address of the interest rate model to calculate the compound interest rate
    /// @param _daoFee DAO's fee in 18 decimals points
    /// @param _deployerFee Deployer's fee in 18 decimals points
    /// @return accruedInterest The total amount of interest accrued
    function accrueInterestForAsset(address _interestRateModel, uint256 _daoFee, uint256 _deployerFee)
        external
        returns (uint256 accruedInterest)
    {
        ISilo.SiloStorage storage $ = SiloStorageLib.getSiloStorage();

        uint64 lastTimestamp = $.interestRateTimestamp;

        // Interest has already been accrued this block
        if (lastTimestamp == block.timestamp) {
            return 0;
        }

        // This is the first time, so we can return early and save some gas
        if (lastTimestamp == 0) {
            $.interestRateTimestamp = uint64(block.timestamp);
            return 0;
        }

        uint256 totalFees;
        uint256 totalCollateralAssets = $.totalAssets[ISilo.AssetType.Collateral];
        uint256 totalDebtAssets = $.totalAssets[ISilo.AssetType.Debt];

        uint256 rcomp;

        try
            IInterestRateModel(_interestRateModel).getCompoundInterestRateAndUpdate(
                totalCollateralAssets,
                totalDebtAssets,
                lastTimestamp
            )
            returns (uint256 interestRate)
        {
            rcomp = interestRate;
        } catch {
            // do not lock silo on interest calculation
            emit IInterestRateModel.InterestRateModelError();
        }

        (
            $.totalAssets[ISilo.AssetType.Collateral], $.totalAssets[ISilo.AssetType.Debt], totalFees, accruedInterest
        ) = SiloMathLib.getCollateralAmountsWithInterest(
            totalCollateralAssets,
            totalDebtAssets,
            rcomp,
            _daoFee,
            _deployerFee
        );

        // update remaining contract state
        $.interestRateTimestamp = uint64(block.timestamp);

        // we operating on chunks (fees) of real tokens, so overflow should not happen
        // fee is simply too small to overflow on cast to uint192, even if, we will get lower fee
        unchecked { $.daoAndDeployerRevenue += uint192(totalFees); }
    }

    /// @notice Allows a user or a delegate to borrow assets against their collateral
    /// @dev The function checks for necessary conditions such as borrow possibility, enough liquidity, and zero
    /// values
    /// @param _debtShareToken address of debt share token
    /// @param _token address of underlying debt token
    /// @param _spender Address which initiates the borrowing action on behalf of the borrower
    /// @return borrowedAssets Actual number of assets that the user has borrowed
    /// @return borrowedShares Number of debt share tokens corresponding to the borrowed assets
    function borrow(
        address _debtShareToken,
        address _token,
        address _spender,
        ISilo.BorrowArgs memory _args
    )
        internal
        returns (uint256 borrowedAssets, uint256 borrowedShares)
    {
        ISilo.SiloStorage storage $ = SiloStorageLib.getSiloStorage();

        uint256 totalDebtAssets = $.totalAssets[ISilo.AssetType.Debt];

        (borrowedAssets, borrowedShares) = SiloMathLib.convertToAssetsOrToShares(
            _args.assets,
            _args.shares,
            totalDebtAssets,
            IShareToken(_debtShareToken).totalSupply(),
            Rounding.BORROW_TO_ASSETS,
            Rounding.BORROW_TO_SHARES,
            ISilo.AssetType.Debt
        );

        uint256 totalCollateralAssets = $.totalAssets[ISilo.AssetType.Collateral];

        require(
            _token == address(0) || borrowedAssets <= SiloMathLib.liquidity(totalCollateralAssets, totalDebtAssets),
            ISilo.NotEnoughLiquidity()
        );

        // add new debt
        $.totalAssets[ISilo.AssetType.Debt] = totalDebtAssets + borrowedAssets;

        // `mint` checks if _spender is allowed to borrow on the account of _borrower.
        IShareToken(_debtShareToken).mint(_args.borrower, _spender, borrowedShares);

        if (_token != address(0)) {
            // fee-on-transfer is ignored.
            IERC20(_token).safeTransfer(_args.receiver, borrowedAssets);
        }
    }

    /// @notice Determines the maximum amount (both in assets and shares) that a borrower can borrow
    /// @param _collateralConfig Configuration data for the collateral
    /// @param _debtConfig Configuration data for the debt
    /// @param _borrower The address of the borrower whose maximum borrow limit is being queried
    /// @param _totalDebtAssets The total debt assets in the system
    /// @param _totalDebtShares The total debt shares in the system
    /// @param _siloConfig address of SiloConfig contract
    /// @return assets The maximum amount in assets that can be borrowed
    /// @return shares The equivalent amount in shares for the maximum assets that can be borrowed
    function calculateMaxBorrow( // solhint-disable-line function-max-lines
        ISiloConfig.ConfigData memory _collateralConfig,
        ISiloConfig.ConfigData memory _debtConfig,
        address _borrower,
        uint256 _totalDebtAssets,
        uint256 _totalDebtShares,
        ISiloConfig _siloConfig
    )
        internal
        view
        returns (uint256 assets, uint256 shares)
    {
        SiloSolvencyLib.LtvData memory ltvData = SiloSolvencyLib.getAssetsDataForLtvCalculations({
            _collateralConfig: _collateralConfig,
            _debtConfig: _debtConfig,
            _borrower: _borrower,
            _oracleType: ISilo.OracleType.MaxLtv,
            _accrueInMemory: ISilo.AccrueInterestInMemory.Yes,
            _debtShareBalanceCached: 0 /* no cache */
        });

        (
            uint256 sumOfBorrowerCollateralValue, uint256 borrowerDebtValue
        ) = SiloSolvencyLib.getPositionValues(ltvData, _collateralConfig.token, _debtConfig.token);

        uint256 maxBorrowValue = SiloMathLib.calculateMaxBorrowValue(
            _collateralConfig.maxLtv,
            sumOfBorrowerCollateralValue,
            borrowerDebtValue
        );

        (assets, shares) = maxBorrowValueToAssetsAndShares({
            _maxBorrowValue: maxBorrowValue,
            _debtAsset: _debtConfig.token,
            _debtOracle: ltvData.debtOracle,
            _totalDebtAssets: _totalDebtAssets,
            _totalDebtShares: _totalDebtShares
        });

        if (assets == 0 || shares == 0) return (0, 0);

        uint256 liquidityWithInterest = getLiquidity(_siloConfig);

        if (assets > liquidityWithInterest) {
            assets = liquidityWithInterest;

            // rounding must follow same flow as in `maxBorrowValueToAssetsAndShares()`
            shares = SiloMathLib.convertToShares(
                assets,
                _totalDebtAssets,
                _totalDebtShares,
                Rounding.MAX_BORROW_TO_SHARES,
                ISilo.AssetType.Debt
            );
        }
    }

    function maxBorrow(address _borrower, bool _sameAsset)
        internal
        view
        returns (uint256 maxAssets, uint256 maxShares)
    {
        ISiloConfig siloConfig = ShareTokenLib.siloConfig();
        if (siloConfig.hasDebtInOtherSilo(address(this), _borrower)) return (0, 0);

        ISiloConfig.ConfigData memory collateralConfig;
        ISiloConfig.ConfigData memory debtConfig;

        if (_sameAsset) {
            debtConfig = siloConfig.getConfig(address(this));
            collateralConfig = debtConfig;
        } else {
            (collateralConfig, debtConfig) = siloConfig.getConfigsForBorrow({_debtSilo: address(this)});
        }

        (uint256 totalDebtAssets, uint256 totalDebtShares) =
            SiloStdLib.getTotalAssetsAndTotalSharesWithInterest(debtConfig, ISilo.AssetType.Debt);

        return calculateMaxBorrow(
            collateralConfig,
            debtConfig,
            _borrower,
            totalDebtAssets,
            totalDebtShares,
            siloConfig
        );
    }

    function getLiquidity(ISiloConfig _siloConfig) internal view returns (uint256 liquidity) {
        ISiloConfig.ConfigData memory config = _siloConfig.getConfig(address(this));
        (liquidity,,) = getLiquidityAndAssetsWithInterest(config.interestRateModel, config.daoFee, config.deployerFee);
    }

    function getLiquidityAndAssetsWithInterest(address _interestRateModel, uint256 _daoFee, uint256 _deployerFee)
        internal
        view
        returns (uint256 liquidity, uint256 totalCollateralAssets, uint256 totalDebtAssets)
    {
        totalCollateralAssets = SiloStdLib.getTotalCollateralAssetsWithInterest(
            address(this),
            _interestRateModel,
            _daoFee,
            _deployerFee
        );

        totalDebtAssets = SiloStdLib.getTotalDebtAssetsWithInterest(
            address(this),
            _interestRateModel
        );

        liquidity = SiloMathLib.liquidity(totalCollateralAssets, totalDebtAssets);
    }

    /// @notice Calculates the maximum borrowable assets and shares
    /// @param _maxBorrowValue The maximum value that can be borrowed by the user
    /// @param _debtAsset Address of the debt token
    /// @param _debtOracle Oracle used to get the value of the debt token
    /// @param _totalDebtAssets Total assets of the debt
    /// @param _totalDebtShares Total shares of the debt
    /// @return assets Maximum borrowable assets
    /// @return shares Maximum borrowable shares
    function maxBorrowValueToAssetsAndShares(
        uint256 _maxBorrowValue,
        address _debtAsset,
        ISiloOracle _debtOracle,
        uint256 _totalDebtAssets,
        uint256 _totalDebtShares
    )
        internal
        view
        returns (uint256 assets, uint256 shares)
    {
        if (_maxBorrowValue == 0) {
            return (0, 0);
        }

        uint256 debtTokenSample = _PRECISION_DECIMALS;

        uint256 debtSampleValue = address(_debtOracle) == address(0)
            ? debtTokenSample
            : _debtOracle.quote(debtTokenSample, _debtAsset);

        assets = _maxBorrowValue.mulDiv(debtTokenSample, debtSampleValue, Rounding.MAX_BORROW_TO_ASSETS);

        // when we borrow, we convertToShares with rounding.Up, to create higher debt, however here,
        // when we want to calculate "max borrow", we can not round.Up, because it can create issue with max ltv,
        // because we not creating debt here, we calculating max assets/shares, so we need to round.Down here
        shares = SiloMathLib.convertToShares(
            assets, _totalDebtAssets, _totalDebtShares, Rounding.MAX_BORROW_TO_SHARES, ISilo.AssetType.Debt
        );

        // we need to recalculate assets, because what we did above is assets => shares with rounding down, but when
        // we input assets, they will generate more shares, so we need to calculate assets based on final shares
        // not based on borrow value
        assets = SiloMathLib.convertToAssets(
            shares, _totalDebtAssets, _totalDebtShares, Rounding.MAX_BORROW_TO_ASSETS, ISilo.AssetType.Debt
        );
    }
}

// ============================================================
// FILE: silo-core/contracts/lib/SiloMathLib.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {Math} from "openzeppelin5/utils/math/Math.sol";
import {Rounding} from "../lib/Rounding.sol";
import {ISilo} from "../interfaces/ISilo.sol";

library SiloMathLib {
    using Math for uint256;

    uint256 internal constant _PRECISION_DECIMALS = 1e18;

    uint256 internal constant _DECIMALS_OFFSET = 3;

    /// @dev this is constant version of openzeppelin5/contracts/token/ERC20/extensions/ERC4626._decimalsOffset
    uint256 internal constant _DECIMALS_OFFSET_POW = 10 ** _DECIMALS_OFFSET;

    /// @notice Returns available liquidity to be borrowed
    /// @dev Accrued interest is entirely added to `debtAssets` but only part of it is added to `collateralAssets`. The
    ///      difference is DAO's and deployer's cut. That means DAO's and deployer's cut is not considered a borrowable
    ///      liquidity.
    function liquidity(uint256 _collateralAssets, uint256 _debtAssets) internal pure returns (uint256 liquidAssets) {
        unchecked {
            // we checked the underflow
            liquidAssets = _debtAssets > _collateralAssets ? 0 : _collateralAssets - _debtAssets;
        }
    }

    /// @notice Calculate collateral assets with accrued interest and associated fees
    /// @param _collateralAssets The total amount of collateral assets
    /// @param _debtAssets The total amount of debt assets
    /// @param _rcomp Compound interest rate for debt
    /// @param _daoFee The fee (in 18 decimals points) to be taken for the DAO
    /// @param _deployerFee The fee (in 18 decimals points) to be taken for the deployer
    /// @return collateralAssetsWithInterest The total collateral assets including the accrued interest
    /// @return debtAssetsWithInterest The debt assets with accrued interest
    /// @return daoAndDeployerRevenue Total fees amount to be split between DAO and deployer
    /// @return accruedInterest The total accrued interest
    function getCollateralAmountsWithInterest(
        uint256 _collateralAssets,
        uint256 _debtAssets,
        uint256 _rcomp,
        uint256 _daoFee,
        uint256 _deployerFee
    )
        internal
        pure
        returns (
            uint256 collateralAssetsWithInterest,
            uint256 debtAssetsWithInterest,
            uint256 daoAndDeployerRevenue,
            uint256 accruedInterest
        )
    {
        (debtAssetsWithInterest, accruedInterest) = getDebtAmountsWithInterest(_debtAssets, _rcomp);

        uint256 fees;

        // _daoFee and _deployerFee are expected to be less than 1e18, so we will not overflow
        unchecked { fees = _daoFee + _deployerFee; }

        daoAndDeployerRevenue = mulDivOverflow(accruedInterest, fees, _PRECISION_DECIMALS);

        // we will not underflow because daoAndDeployerRevenue is chunk of accruedInterest
        uint256 collateralInterest = accruedInterest - daoAndDeployerRevenue;

        // save to uncheck because variable can not be more than max
        uint256 cap = type(uint256).max - _collateralAssets;

        if (cap < collateralInterest) {
            // avoid overflow on interest
            collateralInterest = cap;
        }

        // safe to uncheck because of cap
        unchecked {  collateralAssetsWithInterest = _collateralAssets + collateralInterest; }
    }

    /// @notice Calculate the debt assets with accrued interest, it should never revert with over/under flow
    /// @param _totalDebtAssets The total amount of debt assets before accrued interest
    /// @param _rcomp Compound interest rate for the debt in 18 decimal precision
    /// @return debtAssetsWithInterest The debt assets including the accrued interest
    /// @return accruedInterest The total amount of interest accrued on the debt assets
    function getDebtAmountsWithInterest(uint256 _totalDebtAssets, uint256 _rcomp)
        internal
        pure
        returns (uint256 debtAssetsWithInterest, uint256 accruedInterest)
    {
        if (_totalDebtAssets == 0 || _rcomp == 0) {
            return (_totalDebtAssets, 0);
        }

        accruedInterest = mulDivOverflow(_totalDebtAssets, _rcomp, _PRECISION_DECIMALS);

        unchecked {
            // We intentionally allow overflow here, to prevent transaction revert due to interest calculation.
            debtAssetsWithInterest = _totalDebtAssets + accruedInterest;

            // If overflow occurs, we skip accruing interest.
            if (debtAssetsWithInterest < _totalDebtAssets) {
                debtAssetsWithInterest = _totalDebtAssets;
                accruedInterest = 0;
            }
        }
    }

    /// @notice Calculates fraction between borrowed and deposited amount of tokens denominated in percentage
    /// @dev It assumes `_dp` = 100%.
    /// @param _dp decimal points used by model
    /// @param _collateralAssets current total deposits for assets
    /// @param _debtAssets current total borrows for assets
    /// @return utilization value, capped to 100%
    /// Limiting utilization ratio by 100% max will allows us to perform better interest rate computations
    /// and should not affect any other part of protocol. It is possible to go over 100% only when bad debt.
    function calculateUtilization(uint256 _dp, uint256 _collateralAssets, uint256 _debtAssets)
        internal
        pure
        returns (uint256 utilization)
    {
        if (_collateralAssets == 0 || _debtAssets == 0 || _dp == 0) return 0;

        /*
            how to prevent overflow on: _debtAssets.mulDiv(_dp, _collateralAssets, Rounding.ACCRUED_INTEREST):
            1. max > _debtAssets * _dp / _collateralAssets
            2. max / _dp > _debtAssets / _collateralAssets
        */
        if (type(uint256).max / _dp > _debtAssets / _collateralAssets) {
            utilization = _debtAssets.mulDiv(_dp, _collateralAssets, Rounding.ACCRUED_INTEREST);
            // cap at 100%
            if (utilization > _dp) utilization = _dp;
        } else {
            // we have overflow
            utilization = _dp;
        }
    }

    function convertToAssetsOrToShares(
        uint256 _assets,
        uint256 _shares,
        uint256 _totalAssets,
        uint256 _totalShares,
        Math.Rounding _roundingToAssets,
        Math.Rounding _roundingToShares,
        ISilo.AssetType _assetType
    ) internal pure returns (uint256 assets, uint256 shares) {
        if (_assets == 0) {
            require(_shares != 0, ISilo.InputZeroShares());
            shares = _shares;
            assets = convertToAssets(_shares, _totalAssets, _totalShares, _roundingToAssets, _assetType);
            require(assets != 0, ISilo.ReturnZeroAssets());
        } else if (_shares == 0) {
            shares = convertToShares(_assets, _totalAssets, _totalShares, _roundingToShares, _assetType);
            assets = _assets;
            require(shares != 0, ISilo.ReturnZeroShares());
        } else {
            revert ISilo.InputCanBeAssetsOrShares();
        }
    }

    /// @dev Math for collateral is exact copy of
    ///      openzeppelin5/contracts/token/ERC20/extensions/ERC4626._convertToShares
    function convertToShares(
        uint256 _assets,
        uint256 _totalAssets,
        uint256 _totalShares,
        Math.Rounding _rounding,
        ISilo.AssetType _assetType
    ) internal pure returns (uint256 shares) {
        (uint256 totalShares, uint256 totalAssets) = _commonConvertTo(_totalAssets, _totalShares, _assetType);

        // initially, in case of debt, if silo is empty we return shares==assets
        // for collateral, this will never be the case, because we are adding `+1` and offset in `_commonConvertTo`
        if (totalShares == 0) return _assets;

        shares = _assets.mulDiv(totalShares, totalAssets, _rounding);
    }

    /// @dev Math for collateral is exact copy of
    ///      openzeppelin5/contracts/token/ERC20/extensions/ERC4626._convertToAssets
    function convertToAssets(
        uint256 _shares,
        uint256 _totalAssets,
        uint256 _totalShares,
        Math.Rounding _rounding,
        ISilo.AssetType _assetType
    ) internal pure returns (uint256 assets) {
        (uint256 totalShares, uint256 totalAssets) = _commonConvertTo(_totalAssets, _totalShares, _assetType);

        // initially, in case of debt, if silo is empty we return shares==assets
        // for collateral, this will never be the case, because of `+1` in line above
        if (totalShares == 0) return _shares;

        assets = _shares.mulDiv(totalAssets, totalShares, _rounding);
    }

    /// @param _collateralMaxLtv maxLTV in 18 decimals that is set for debt asset
    /// @param _sumOfBorrowerCollateralValue borrower total collateral value (including protected)
    /// @param _borrowerDebtValue total value of borrower debt
    /// @return maxBorrowValue max borrow value yet available for borrower
    function calculateMaxBorrowValue(
        uint256 _collateralMaxLtv,
        uint256 _sumOfBorrowerCollateralValue,
        uint256 _borrowerDebtValue
    ) internal pure returns (uint256 maxBorrowValue) {
        if (_sumOfBorrowerCollateralValue == 0) {
            return 0;
        }

        uint256 maxDebtValue = _sumOfBorrowerCollateralValue.mulDiv(
            _collateralMaxLtv, _PRECISION_DECIMALS, Rounding.MAX_BORROW_VALUE
        );

        unchecked {
            // we will not underflow because we checking `maxDebtValue > _borrowerDebtValue`
            maxBorrowValue = maxDebtValue > _borrowerDebtValue ? maxDebtValue - _borrowerDebtValue : 0;
        }
    }

    /// @notice Calculate the maximum assets a borrower can withdraw without breaching the liquidation threshold
    /// @param _sumOfCollateralsValue The combined value of collateral and protected assets of the borrower
    /// @param _debtValue The total debt value of the borrower
    /// @param _lt The liquidation threshold in 18 decimal points
    /// @param _borrowerCollateralAssets The borrower's collateral assets before the withdrawal
    /// @param _borrowerProtectedAssets The borrower's protected assets before the withdrawal
    /// @return maxAssets The maximum assets the borrower can safely withdraw
    function calculateMaxAssetsToWithdraw(
        uint256 _sumOfCollateralsValue,
        uint256 _debtValue,
        uint256 _lt,
        uint256 _borrowerCollateralAssets,
        uint256 _borrowerProtectedAssets
    ) internal pure returns (uint256 maxAssets) {
        if (_sumOfCollateralsValue == 0) return 0;
        if (_debtValue == 0) return _sumOfCollateralsValue;
        if (_lt == 0) return 0;

        // using Rounding.LT (up) to have highest collateralValue that we have to leave for user to stay solvent
        uint256 minimumCollateralValue = _debtValue.mulDiv(_PRECISION_DECIMALS, _lt, Rounding.LTV);

        // if we over LT, we can not withdraw
        if (_sumOfCollateralsValue <= minimumCollateralValue) {
            return 0;
        }

        uint256 spareCollateralValue;
        // safe because we checked `if (_sumOfCollateralsValue <= minimumCollateralValue)`
        unchecked { spareCollateralValue = _sumOfCollateralsValue - minimumCollateralValue; }

        maxAssets = (_borrowerProtectedAssets + _borrowerCollateralAssets)
                .mulDiv(spareCollateralValue, _sumOfCollateralsValue, Rounding.MAX_WITHDRAW_TO_ASSETS);
    }

    /// @notice Determines the maximum number of assets and corresponding shares a borrower can safely withdraw
    /// @param _maxAssets The calculated limit on how many assets can be withdrawn without breaching the liquidation
    /// threshold
    /// @param _borrowerCollateralAssets Amount of collateral assets currently held by the borrower
    /// @param _borrowerProtectedAssets Amount of protected assets currently held by the borrower
    /// @param _collateralType Specifies whether the asset is of type Collateral or Protected
    /// @param _totalAssets The entire quantity of assets available in the system for withdrawal
    /// @param _assetTypeShareTokenTotalSupply Total supply of share tokens for the specified asset type
    /// @param _liquidity Current liquidity in the system for the asset type
    /// @return assets Maximum assets the borrower can withdraw
    /// @return shares Corresponding number of shares for the derived `assets` amount
    function maxWithdrawToAssetsAndShares(
        uint256 _maxAssets,
        uint256 _borrowerCollateralAssets,
        uint256 _borrowerProtectedAssets,
        ISilo.CollateralType _collateralType,
        uint256 _totalAssets,
        uint256 _assetTypeShareTokenTotalSupply,
        uint256 _liquidity
    ) internal pure returns (uint256 assets, uint256 shares) {
        if (_maxAssets == 0) return (0, 0);
        if (_assetTypeShareTokenTotalSupply == 0) return (0, 0);

        if (_collateralType == ISilo.CollateralType.Collateral) {
            assets = _maxAssets > _borrowerCollateralAssets ? _borrowerCollateralAssets : _maxAssets;

            if (assets > _liquidity) {
                assets = _liquidity;
            }
        } else {
            assets = _maxAssets > _borrowerProtectedAssets ? _borrowerProtectedAssets : _maxAssets;
        }

        shares = SiloMathLib.convertToShares(
            assets,
            _totalAssets,
            _assetTypeShareTokenTotalSupply,
            Rounding.MAX_WITHDRAW_TO_SHARES,
            ISilo.AssetType(uint256(_collateralType))
        );
    }

    /// @dev executed `_a * _b / _c`, reverts on _c == 0
    /// @return mulDivResult on overflow returns 0
    function mulDivOverflow(uint256 _a, uint256 _b, uint256 _c)
        internal
        pure
        returns (uint256 mulDivResult)
    {
        if (_a == 0) return (0);

        unchecked {
            // we have to uncheck to detect overflow
            mulDivResult = _a * _b;
            if (mulDivResult / _a != _b) return 0;

            mulDivResult /= _c;
        }
    }

    /// @dev Debt calculations should not lower the result. Debt is a liability so protocol should not take any for
    /// itself. It should return actual result and round it up.
    function _commonConvertTo(
        uint256 _totalAssets,
        uint256 _totalShares,
        ISilo.AssetType _assetType
    ) private pure returns (uint256 totalShares, uint256 totalAssets) {
        if (_totalShares == 0) {
            // silo is empty and we have dust to redistribute: this can only happen when everyone exits silo
            // this case can happen only for collateral, because for collateral we rounding in favorite of protocol
            // by resetting totalAssets, the dust that we have will go to first depositor and we starts from clean state
            _totalAssets = 0;
        }

            (totalShares, totalAssets) = _assetType == ISilo.AssetType.Debt
                ? (_totalShares, _totalAssets)
                : (_totalShares + _DECIMALS_OFFSET_POW, _totalAssets + 1);
    }
}

// ============================================================
// FILE: silo-core/contracts/lib/SiloSolvencyLib.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {Math} from "openzeppelin5/utils/math/Math.sol";

import {ISiloOracle} from "../interfaces/ISiloOracle.sol";
import {SiloStdLib, ISiloConfig, IShareToken, ISilo} from "./SiloStdLib.sol";
import {SiloMathLib} from "./SiloMathLib.sol";
import {Rounding} from "./Rounding.sol";

library SiloSolvencyLib {
    using Math for uint256;

    struct LtvData {
        ISiloOracle collateralOracle;
        ISiloOracle debtOracle;
        uint256 borrowerProtectedAssets;
        uint256 borrowerCollateralAssets;
        uint256 borrowerDebtAssets;
    }

    uint256 internal constant _PRECISION_DECIMALS = 1e18;
    uint256 internal constant _INFINITY = type(uint256).max;

    /// @notice Determines if a borrower is solvent based on the Loan-to-Value (LTV) ratio
    /// @param _collateralConfig Configuration data for the collateral
    /// @param _debtConfig Configuration data for the debt
    /// @param _borrower Address of the borrower to check solvency for
    /// @param _accrueInMemory Determines whether or not to consider un-accrued interest in calculations
    /// @return True if the borrower is solvent, false otherwise
    function isSolvent(
        ISiloConfig.ConfigData memory _collateralConfig,
        ISiloConfig.ConfigData memory _debtConfig,
        address _borrower,
        ISilo.AccrueInterestInMemory _accrueInMemory
    ) internal view returns (bool) {
        if (_debtConfig.silo == address(0)) return true; // no debt, so solvent

        uint256 ltv = getLtv(
            _collateralConfig,
            _debtConfig,
            _borrower,
            ISilo.OracleType.Solvency,
            _accrueInMemory,
            IShareToken(_debtConfig.debtShareToken).balanceOf(_borrower)
        );

        return ltv <= _collateralConfig.lt;
    }

    /// @notice Determines if a borrower's Loan-to-Value (LTV) ratio is below the maximum allowed LTV
    /// @param _collateralConfig Configuration data for the collateral
    /// @param _debtConfig Configuration data for the debt
    /// @param _borrower Address of the borrower to check against max LTV
    /// @param _accrueInMemory Determines whether or not to consider un-accrued interest in calculations
    /// @return True if the borrower's LTV is below the maximum, false otherwise
    function isBelowMaxLtv(
        ISiloConfig.ConfigData memory _collateralConfig,
        ISiloConfig.ConfigData memory _debtConfig,
        address _borrower,
        ISilo.AccrueInterestInMemory _accrueInMemory
    ) internal view returns (bool) {
        uint256 debtShareBalance = IShareToken(_debtConfig.debtShareToken).balanceOf(_borrower);
        if (debtShareBalance == 0) return true;

        uint256 ltv = getLtv(
            _collateralConfig,
            _debtConfig,
            _borrower,
            ISilo.OracleType.MaxLtv,
            _accrueInMemory,
            debtShareBalance
        );

        return ltv <= _collateralConfig.maxLtv;
    }

    /// @notice Retrieves assets data required for LTV calculations
    /// @param _collateralConfig Configuration data for the collateral
    /// @param _debtConfig Configuration data for the debt
    /// @param _borrower Address of the borrower whose LTV data is to be calculated
    /// @param _oracleType Specifies whether to use the MaxLTV or Solvency oracle type for calculations
    /// @param _accrueInMemory Determines whether or not to consider un-accrued interest in calculations
    /// @param _debtShareBalanceCached Cached value of debt share balance for the borrower. If debt shares of
    /// `_borrower` is unknown, simply pass `0`.
    /// @return ltvData Data structure containing necessary data to compute LTV
    function getAssetsDataForLtvCalculations( // solhint-disable-line function-max-lines
        ISiloConfig.ConfigData memory _collateralConfig,
        ISiloConfig.ConfigData memory _debtConfig,
        address _borrower,
        ISilo.OracleType _oracleType,
        ISilo.AccrueInterestInMemory _accrueInMemory,
        uint256 _debtShareBalanceCached
    ) internal view returns (LtvData memory ltvData) {
        if (_collateralConfig.token != _debtConfig.token) {
            // When calculating maxLtv, use maxLtv oracle.
            (ltvData.collateralOracle, ltvData.debtOracle) = _oracleType == ISilo.OracleType.MaxLtv
                ? (ISiloOracle(_collateralConfig.maxLtvOracle), ISiloOracle(_debtConfig.maxLtvOracle))
                : (ISiloOracle(_collateralConfig.solvencyOracle), ISiloOracle(_debtConfig.solvencyOracle));
        }

        uint256 totalShares;
        uint256 shares;

        (shares, totalShares) = SiloStdLib.getSharesAndTotalSupply(
            _collateralConfig.protectedShareToken, _borrower, 0 /* no cache */
        );

        (
            uint256 totalCollateralAssets, uint256 totalProtectedAssets
        ) = ISilo(_collateralConfig.silo).getCollateralAndProtectedTotalsStorage();

        ltvData.borrowerProtectedAssets = SiloMathLib.convertToAssets(
            shares, totalProtectedAssets, totalShares, Rounding.COLLATERAL_TO_ASSETS, ISilo.AssetType.Protected
        );

        (shares, totalShares) = SiloStdLib.getSharesAndTotalSupply(
            _collateralConfig.collateralShareToken, _borrower, 0 /* no cache */
        );

        totalCollateralAssets = _accrueInMemory == ISilo.AccrueInterestInMemory.Yes
            ? SiloStdLib.getTotalCollateralAssetsWithInterest(
                _collateralConfig.silo,
                _collateralConfig.interestRateModel,
                _collateralConfig.daoFee,
                _collateralConfig.deployerFee
            )
            : totalCollateralAssets;

        ltvData.borrowerCollateralAssets = SiloMathLib.convertToAssets(
            shares, totalCollateralAssets, totalShares, Rounding.COLLATERAL_TO_ASSETS, ISilo.AssetType.Collateral
        );

        (shares, totalShares) = SiloStdLib.getSharesAndTotalSupply(
            _debtConfig.debtShareToken, _borrower, _debtShareBalanceCached
        );

        uint256 totalDebtAssets = _accrueInMemory == ISilo.AccrueInterestInMemory.Yes
            ? SiloStdLib.getTotalDebtAssetsWithInterest(_debtConfig.silo, _debtConfig.interestRateModel)
            : ISilo(_debtConfig.silo).getTotalAssetsStorage(ISilo.AssetType.Debt);

        // BORROW value -> to assets -> UP
        ltvData.borrowerDebtAssets = SiloMathLib.convertToAssets(
            shares, totalDebtAssets, totalShares, Rounding.DEBT_TO_ASSETS, ISilo.AssetType.Debt
        );
    }

    /// @notice Calculates the Loan-To-Value (LTV) ratio for a given borrower
    /// @param _collateralConfig Configuration data related to the collateral asset
    /// @param _debtConfig Configuration data related to the debt asset
    /// @param _borrower Address of the borrower whose LTV is to be computed
    /// @param _oracleType Oracle type to use for fetching the asset prices
    /// @param _accrueInMemory Determines whether or not to consider un-accrued interest in calculations
    /// @return ltvInDp The computed LTV ratio in 18 decimals precision
    function getLtv(
        ISiloConfig.ConfigData memory _collateralConfig,
        ISiloConfig.ConfigData memory _debtConfig,
        address _borrower,
        ISilo.OracleType _oracleType,
        ISilo.AccrueInterestInMemory _accrueInMemory,
        uint256 _debtShareBalance
    ) internal view returns (uint256 ltvInDp) {
        if (_debtShareBalance == 0) return 0;

        LtvData memory ltvData = getAssetsDataForLtvCalculations(
            _collateralConfig, _debtConfig, _borrower, _oracleType, _accrueInMemory, _debtShareBalance
        );

        if (ltvData.borrowerDebtAssets == 0) return 0;

        (,, ltvInDp) = calculateLtv(ltvData, _collateralConfig.token, _debtConfig.token);
    }

    /// @notice Calculates the Loan-to-Value (LTV) ratio based on provided collateral and debt data
    /// @dev calculation never reverts, if there is revert, then it is because of oracle
    /// @param _ltvData Data structure containing relevant information to calculate LTV
    /// @param _collateralToken Address of the collateral token
    /// @param _debtAsset Address of the debt token
    /// @return sumOfBorrowerCollateralValue Total value of borrower's collateral
    /// @return totalBorrowerDebtValue Total debt value for the borrower
    /// @return ltvInDp Calculated LTV in 18 decimal precision
    function calculateLtv(
        SiloSolvencyLib.LtvData memory _ltvData, address _collateralToken, address _debtAsset)
        internal
        view
        returns (uint256 sumOfBorrowerCollateralValue, uint256 totalBorrowerDebtValue, uint256 ltvInDp)
    {
        (
            sumOfBorrowerCollateralValue, totalBorrowerDebtValue
        ) = getPositionValues(_ltvData, _collateralToken, _debtAsset);

        if (sumOfBorrowerCollateralValue == 0 && totalBorrowerDebtValue == 0) {
            return (0, 0, 0);
        } else if (sumOfBorrowerCollateralValue == 0) {
            ltvInDp = _INFINITY;
        } else {
            ltvInDp = ltvMath(totalBorrowerDebtValue, sumOfBorrowerCollateralValue);
        }
    }

    /// @notice Computes the value of collateral and debt based on given LTV data and asset addresses
    /// @param _ltvData Data structure containing the assets data required for LTV calculations
    /// @param _collateralAsset Address of the collateral asset
    /// @param _debtAsset Address of the debt asset
    /// @return sumOfCollateralValue Total value of collateral assets considering both protected and regular collateral
    /// assets
    /// @return debtValue Total value of debt assets
    function getPositionValues(LtvData memory _ltvData, address _collateralAsset, address _debtAsset)
        internal
        view
        returns (uint256 sumOfCollateralValue, uint256 debtValue)
    {
        uint256 sumOfCollateralAssets;
        
        sumOfCollateralAssets = _ltvData.borrowerProtectedAssets + _ltvData.borrowerCollateralAssets;

        if (sumOfCollateralAssets != 0) {
            // if no oracle is set, assume price 1, we should also not set oracle for quote token
            sumOfCollateralValue = address(_ltvData.collateralOracle) != address(0)
                ? _ltvData.collateralOracle.quote(sumOfCollateralAssets, _collateralAsset)
                : sumOfCollateralAssets;
        }

        if (_ltvData.borrowerDebtAssets != 0) {
            // if no oracle is set, assume price 1, we should also not set oracle for quote token
            debtValue = address(_ltvData.debtOracle) != address(0)
                ? _ltvData.debtOracle.quote(_ltvData.borrowerDebtAssets, _debtAsset)
                : _ltvData.borrowerDebtAssets;
        }
    }

    function ltvMath(uint256 _totalBorrowerDebtValue, uint256 _sumOfBorrowerCollateralValue)
        internal
        pure
        returns (uint256 ltvInDp)
    {
        ltvInDp = _totalBorrowerDebtValue.mulDiv(_PRECISION_DECIMALS, _sumOfBorrowerCollateralValue, Rounding.LTV);
    }
}

// ============================================================
// FILE: silo-core/contracts/lib/SiloStdLib.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {SafeERC20} from "openzeppelin5/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "openzeppelin5/token/ERC20/IERC20.sol";

import {ISiloConfig} from "../interfaces/ISiloConfig.sol";
import {ISilo} from "../interfaces/ISilo.sol";
import {IInterestRateModel} from "../interfaces/IInterestRateModel.sol";
import {IShareToken} from "../interfaces/IShareToken.sol";
import {SiloMathLib} from "./SiloMathLib.sol";

library SiloStdLib {
    using SafeERC20 for IERC20;

    uint256 internal constant _PRECISION_DECIMALS = 1e18;

    /// @notice Returns flash fee amount
    /// @param _config address of config contract for Silo
    /// @param _token for which fee is calculated
    /// @param _amount for which fee is calculated
    /// @return fee flash fee amount
    function flashFee(ISiloConfig _config, address _token, uint256 _amount) internal view returns (uint256 fee) {
        if (_amount == 0) return 0;

        // all user set fees are in 18 decimals points
        (,, uint256 flashloanFee, address asset) = _config.getFeesWithAsset(address(this));
        require(_token == asset, ISilo.Unsupported());
        if (flashloanFee == 0) return 0;

        fee = _amount * flashloanFee / _PRECISION_DECIMALS;

        // round up
        if (fee == 0) return 1;
    }

    /// @notice Returns totalAssets and totalShares for conversion math (convertToAssets and convertToShares)
    /// @dev This is useful for view functions that do not accrue interest before doing calculations. To work on
    ///      updated numbers, interest should be added on the fly.
    /// @param _configData for a single token for which to do calculations
    /// @param _assetType used to read proper storage data
    /// @return totalAssets total assets in Silo with interest for given asset type
    /// @return totalShares total shares in Silo for given asset type
    function getTotalAssetsAndTotalSharesWithInterest(
        ISiloConfig.ConfigData memory _configData,
        ISilo.AssetType _assetType
    )
        internal
        view
        returns (uint256 totalAssets, uint256 totalShares)
    {
        if (_assetType == ISilo.AssetType.Protected) {
            totalAssets = ISilo(_configData.silo).getTotalAssetsStorage(ISilo.AssetType.Protected);
            totalShares = IShareToken(_configData.protectedShareToken).totalSupply();
        } else if (_assetType == ISilo.AssetType.Collateral) {
            totalAssets = getTotalCollateralAssetsWithInterest(
                _configData.silo,
                _configData.interestRateModel,
                _configData.daoFee,
                _configData.deployerFee
            );

            totalShares = IShareToken(_configData.collateralShareToken).totalSupply();
        } else { // ISilo.AssetType.Debt
            totalAssets = getTotalDebtAssetsWithInterest(_configData.silo, _configData.interestRateModel);
            totalShares = IShareToken(_configData.debtShareToken).totalSupply();
        }
    }

    /// @notice Retrieves fee amounts in 18 decimals points and their respective receivers along with the asset
    /// @param _silo Silo address
    /// @return daoFeeReceiver Address of the DAO fee receiver
    /// @return deployerFeeReceiver Address of the deployer fee receiver
    /// @return daoFee DAO fee amount in 18 decimals points
    /// @return deployerFee Deployer fee amount in 18 decimals points
    /// @return asset Address of the associated asset
    function getFeesAndFeeReceiversWithAsset(ISilo _silo)
        internal
        view
        returns (
            address daoFeeReceiver,
            address deployerFeeReceiver,
            uint256 daoFee,
            uint256 deployerFee,
            address asset
        )
    {
        (daoFee, deployerFee,, asset) = _silo.config().getFeesWithAsset(address(_silo));
        (daoFeeReceiver, deployerFeeReceiver) = _silo.factory().getFeeReceivers(address(_silo));
    }

    /// @notice Calculates the total collateral assets with accrued interest
    /// @dev Do not use this method when accrueInterest were executed already, in that case total does not change
    /// @param _silo Address of the silo contract
    /// @param _interestRateModel Interest rate model to fetch compound interest rates
    /// @param _daoFee DAO fee in 18 decimals points
    /// @param _deployerFee Deployer fee in 18 decimals points
    /// @return totalCollateralAssetsWithInterest Accumulated collateral amount with interest
    function getTotalCollateralAssetsWithInterest(
        address _silo,
        address _interestRateModel,
        uint256 _daoFee,
        uint256 _deployerFee
    ) internal view returns (uint256 totalCollateralAssetsWithInterest) {
        uint256 rcomp;

        try IInterestRateModel(_interestRateModel).getCompoundInterestRate(_silo, block.timestamp) returns (uint256 r) {
            rcomp = r;
        } catch {
            // do not lock silo
        }

        (uint256 collateralAssets, uint256 debtAssets) = ISilo(_silo).getCollateralAndDebtTotalsStorage();

        (totalCollateralAssetsWithInterest,,,) = SiloMathLib.getCollateralAmountsWithInterest(
            collateralAssets, debtAssets, rcomp, _daoFee, _deployerFee
        );
    }

    /// @param _balanceCached if balance of `_owner` is unknown beforehand, then pass `0`
    function getSharesAndTotalSupply(address _shareToken, address _owner, uint256 _balanceCached)
        internal
        view
        returns (uint256 shares, uint256 totalSupply)
    {
        if (_balanceCached == 0) {
            (shares, totalSupply) = IShareToken(_shareToken).balanceOfAndTotalSupply(_owner);
        } else {
            shares = _balanceCached;
            totalSupply = IShareToken(_shareToken).totalSupply();
        }
    }

    /// @notice Calculates the total debt assets with accrued interest
    /// @param _silo Address of the silo contract
    /// @param _interestRateModel Interest rate model to fetch compound interest rates
    /// @return totalDebtAssetsWithInterest Accumulated debt amount with interest
    function getTotalDebtAssetsWithInterest(address _silo, address _interestRateModel)
        internal
        view
        returns (uint256 totalDebtAssetsWithInterest)
    {
        uint256 rcomp;

        try IInterestRateModel(_interestRateModel).getCompoundInterestRate(_silo, block.timestamp) returns (uint256 r) {
            rcomp = r;
        } catch {
            // do not lock silo
        }

        (
            totalDebtAssetsWithInterest,
        ) = SiloMathLib.getDebtAmountsWithInterest(ISilo(_silo).getTotalAssetsStorage(ISilo.AssetType.Debt), rcomp);
    }
}

// ============================================================
// FILE: silo-core/contracts/lib/SiloStorageLib.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {ISilo} from "silo-core/contracts/interfaces/ISilo.sol";

library SiloStorageLib {
    // keccak256(abi.encode(uint256(keccak256("silo.storage.SiloVault")) - 1)) & ~bytes32(uint256(0xff));
    bytes32 private constant _STORAGE_LOCATION = 0xd7513ffe3a01a9f6606089d1b67011bca35bec018ac0faa914e1c529408f8300;

    function getSiloStorage() internal pure returns (ISilo.SiloStorage storage $) {
        // solhint-disable-next-line no-inline-assembly
        assembly {
            $.slot := _STORAGE_LOCATION
        }
    }
}

// ============================================================
// FILE: silo-core/contracts/lib/TokenHelper.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {IERC20Metadata} from "openzeppelin5/token/ERC20/extensions/IERC20Metadata.sol";

import {IsContract} from "./IsContract.sol";

library TokenHelper {
    uint256 private constant _BYTES32_SIZE = 32;

    error TokenIsNotAContract();

    function assertAndGetDecimals(address _token) internal view returns (uint256) {
        (bool hasMetadata, bytes memory data) =
            _tokenMetadataCall(_token, abi.encodeCall(IERC20Metadata.decimals, ()));

        // decimals() is optional in the ERC20 standard, so if metadata is not accessible
        // we assume there are no decimals and use 0.
        if (!hasMetadata) {
            return 0;
        }

        return abi.decode(data, (uint8));
    }

    /// @dev Returns the symbol for the provided ERC20 token.
    /// An empty string is returned if the call to the token didn't succeed.
    /// @param _token address of the token to get the symbol for
    /// @return assetSymbol the token symbol
    function symbol(address _token) internal view returns (string memory assetSymbol) {
        (bool hasMetadata, bytes memory data) =
            _tokenMetadataCall(_token, abi.encodeCall(IERC20Metadata.symbol, ()));

        if (!hasMetadata || data.length == 0) {
            return "?";
        } else if (data.length == _BYTES32_SIZE) {
            return string(removeZeros(data));
        } else {
            return abi.decode(data, (string));
        }
    }

    /// @dev Removes bytes with value equal to 0 from the provided byte array.
    /// @param _data byte array from which to remove zeroes
    /// @return result byte array with zeroes removed
    function removeZeros(bytes memory _data) internal pure returns (bytes memory result) {
        uint256 n = _data.length;

        for (uint256 i; i < n; i++) {
            if (_data[i] == 0) continue;

            result = abi.encodePacked(result, _data[i]);
        }
    }

    /// @dev Performs a staticcall to the token to get its metadata (symbol, decimals, name)
    function _tokenMetadataCall(address _token, bytes memory _data) private view returns (bool, bytes memory) {
        // We need to do this before the call, otherwise the call will succeed even for EOAs
        require(IsContract.isContract(_token), TokenIsNotAContract());

        (bool success, bytes memory result) = _token.staticcall(_data);

        // If the call reverted we assume the token doesn't follow the metadata extension
        if (!success) {
            return (false, "");
        }

        return (true, result);
    }
}

// ============================================================
// FILE: silo-core/contracts/lib/Views.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {IERC20} from "openzeppelin5/token/ERC20/IERC20.sol";

import {ISiloConfig} from "../interfaces/ISiloConfig.sol";
import {ISilo} from "../interfaces/ISilo.sol";
import {ISiloOracle} from "../interfaces/ISiloOracle.sol";
import {IShareToken} from "../interfaces/IShareToken.sol";
import {ISiloFactory} from "../interfaces/ISiloFactory.sol";

import {SiloERC4626Lib} from "./SiloERC4626Lib.sol";
import {SiloSolvencyLib} from "./SiloSolvencyLib.sol";
import {SiloLendingLib} from "./SiloLendingLib.sol";
import {SiloStdLib} from "./SiloStdLib.sol";
import {SiloMathLib} from "./SiloMathLib.sol";
import {Rounding} from "./Rounding.sol";
import {ShareTokenLib} from "./ShareTokenLib.sol";
import {SiloStorageLib} from "./SiloStorageLib.sol";

// solhint-disable ordering

library Views {
    uint256 internal constant _100_PERCENT = 1e18;

    bytes32 internal constant _FLASHLOAN_CALLBACK = keccak256("ERC3156FlashBorrower.onFlashLoan");

    function isSolvent(address _borrower) external view returns (bool) {
        (
            ISiloConfig.ConfigData memory collateral,
            ISiloConfig.ConfigData memory debt
        ) = ShareTokenLib.siloConfig().getConfigsForSolvency(_borrower);

        return SiloSolvencyLib.isSolvent(collateral, debt, _borrower, ISilo.AccrueInterestInMemory.Yes);
    }

    /// @notice Returns flash fee amount
    /// @param _token for which fee is calculated
    /// @param _amount for which fee is calculated
    /// @return fee flash fee amount
    function flashFee(address _token, uint256 _amount) external view returns (uint256 fee) {
        fee = SiloStdLib.flashFee(ShareTokenLib.siloConfig(), _token, _amount);
    }

    function maxFlashLoan(address _token) internal view returns (uint256 maxLoan) {
        if (_token != ShareTokenLib.siloConfig().getAssetForSilo(address(this))) return 0;

        ISilo.SiloStorage storage $ = SiloStorageLib.getSiloStorage();
        uint256 protectedAssets = $.totalAssets[ISilo.AssetType.Protected];
        uint256 balance = IERC20(_token).balanceOf(address(this));

        unchecked {
            // we check underflow ourself
            return balance > protectedAssets ? balance - protectedAssets : 0;
        }
    }

    function maxBorrow(address _borrower, bool _sameAsset)
        external
        view
        returns (uint256 maxAssets, uint256 maxShares)
    {
        return SiloLendingLib.maxBorrow(_borrower, _sameAsset);
    }

    function maxWithdraw(address _owner, ISilo.CollateralType _collateralType)
        external
        view
        returns (uint256 assets, uint256 shares)
    {
        return SiloERC4626Lib.maxWithdraw(
            _owner,
            _collateralType,
            // 0 for CollateralType.Collateral because it will be calculated internally
            _collateralType == ISilo.CollateralType.Protected
                ? SiloStorageLib.getSiloStorage().totalAssets[ISilo.AssetType.Protected]
                : 0
        );
    }

    function maxRepay(address _borrower) external view returns (uint256 assets) {
        ISiloConfig.ConfigData memory configData = ShareTokenLib.getConfig();
        uint256 shares = IShareToken(configData.debtShareToken).balanceOf(_borrower);

        (uint256 totalSiloAssets, uint256 totalShares) =
            SiloStdLib.getTotalAssetsAndTotalSharesWithInterest(configData, ISilo.AssetType.Debt);

        return SiloMathLib.convertToAssets(
            shares, totalSiloAssets, totalShares, Rounding.MAX_REPAY_TO_ASSETS, ISilo.AssetType.Debt
        );
    }

    function getSiloStorage()
        internal
        view
        returns (
            uint192 daoAndDeployerRevenue,
            uint64 interestRateTimestamp,
            uint256 protectedAssets,
            uint256 collateralAssets,
            uint256 debtAssets
        )
    {
        ISilo.SiloStorage storage $ = SiloStorageLib.getSiloStorage();

        daoAndDeployerRevenue = $.daoAndDeployerRevenue;
        interestRateTimestamp = $.interestRateTimestamp;
        protectedAssets = $.totalAssets[ISilo.AssetType.Protected];
        collateralAssets = $.totalAssets[ISilo.AssetType.Collateral];
        debtAssets = $.totalAssets[ISilo.AssetType.Debt];
    }

    function utilizationData() internal view returns (ISilo.UtilizationData memory) {
        ISilo.SiloStorage storage $ = SiloStorageLib.getSiloStorage();

        return ISilo.UtilizationData({
            collateralAssets: $.totalAssets[ISilo.AssetType.Collateral],
            debtAssets: $.totalAssets[ISilo.AssetType.Debt],
            interestRateTimestamp: $.interestRateTimestamp
        });
    }

    function getDebtAssets() internal view returns (uint256 totalDebtAssets) {
        ISiloConfig.ConfigData memory thisSiloConfig = ShareTokenLib.getConfig();

        totalDebtAssets = SiloStdLib.getTotalDebtAssetsWithInterest(
            thisSiloConfig.silo, thisSiloConfig.interestRateModel
        );
    }

    function getCollateralAndProtectedAssets()
        internal
        view
        returns (uint256 totalCollateralAssets, uint256 totalProtectedAssets)
    {
        ISilo.SiloStorage storage $ = SiloStorageLib.getSiloStorage();

        totalCollateralAssets = $.totalAssets[ISilo.AssetType.Collateral];
        totalProtectedAssets = $.totalAssets[ISilo.AssetType.Protected];
    }

    function getCollateralAndDebtAssets()
        internal
        view
        returns (uint256 totalCollateralAssets, uint256 totalDebtAssets)
    {
        ISilo.SiloStorage storage $ = SiloStorageLib.getSiloStorage();

        totalCollateralAssets = $.totalAssets[ISilo.AssetType.Collateral];
        totalDebtAssets = $.totalAssets[ISilo.AssetType.Debt];
    }

    function copySiloConfig(
        ISiloConfig.InitData memory _initData,
        ISiloFactory.Range memory _daoFeeRange,
        uint256 _maxDeployerFee,
        uint256 _maxFlashloanFee,
        uint256 _maxLiquidationFee
    )
        internal
        view
        returns (ISiloConfig.ConfigData memory configData0, ISiloConfig.ConfigData memory configData1)
    {
        validateSiloInitData(_initData, _daoFeeRange, _maxDeployerFee, _maxFlashloanFee, _maxLiquidationFee);

        configData0.hookReceiver = _initData.hookReceiver;
        configData0.token = _initData.token0;
        configData0.solvencyOracle = _initData.solvencyOracle0;
        // If maxLtv oracle is not set, fallback to solvency oracle
        configData0.maxLtvOracle = _initData.maxLtvOracle0 == address(0)
            ? _initData.solvencyOracle0
            : _initData.maxLtvOracle0;
        configData0.interestRateModel = _initData.interestRateModel0;
        configData0.maxLtv = _initData.maxLtv0;
        configData0.lt = _initData.lt0;
        configData0.liquidationTargetLtv = _initData.liquidationTargetLtv0;
        configData0.deployerFee = _initData.deployerFee;
        configData0.daoFee = _initData.daoFee;
        configData0.liquidationFee = _initData.liquidationFee0;
        configData0.flashloanFee = _initData.flashloanFee0;
        configData0.callBeforeQuote = _initData.callBeforeQuote0;

        configData1.hookReceiver = _initData.hookReceiver;
        configData1.token = _initData.token1;
        configData1.solvencyOracle = _initData.solvencyOracle1;
        // If maxLtv oracle is not set, fallback to solvency oracle
        configData1.maxLtvOracle = _initData.maxLtvOracle1 == address(0)
            ? _initData.solvencyOracle1
            : _initData.maxLtvOracle1;
        configData1.interestRateModel = _initData.interestRateModel1;
        configData1.maxLtv = _initData.maxLtv1;
        configData1.lt = _initData.lt1;
        configData1.liquidationTargetLtv = _initData.liquidationTargetLtv1;
        configData1.deployerFee = _initData.deployerFee;
        configData1.daoFee = _initData.daoFee;
        configData1.liquidationFee = _initData.liquidationFee1;
        configData1.flashloanFee = _initData.flashloanFee1;
        configData1.callBeforeQuote = _initData.callBeforeQuote1;
    }

    // solhint-disable-next-line code-complexity
    function validateSiloInitData(
        ISiloConfig.InitData memory _initData,
        ISiloFactory.Range memory _daoFeeRange,
        uint256 _maxDeployerFee,
        uint256 _maxFlashloanFee,
        uint256 _maxLiquidationFee
    ) internal view returns (bool) {
        require(_initData.hookReceiver != address(0), ISiloFactory.MissingHookReceiver());

        require(_initData.token0 != address(0), ISiloFactory.EmptyToken0());
        require(_initData.token1 != address(0), ISiloFactory.EmptyToken1());

        require(_initData.token0 != _initData.token1, ISiloFactory.SameAsset());
        require(_initData.maxLtv0 != 0 || _initData.maxLtv1 != 0, ISiloFactory.InvalidMaxLtv());
        require(_initData.maxLtv0 <= _initData.lt0, ISiloFactory.InvalidMaxLtv());
        require(_initData.maxLtv1 <= _initData.lt1, ISiloFactory.InvalidMaxLtv());
        require(_initData.liquidationFee0 <= _maxLiquidationFee, ISiloFactory.MaxLiquidationFeeExceeded());
        require(_initData.liquidationFee1 <= _maxLiquidationFee, ISiloFactory.MaxLiquidationFeeExceeded());
        require(_initData.lt0 + _initData.liquidationFee0 <= _100_PERCENT, ISiloFactory.InvalidLt());
        require(_initData.lt1 + _initData.liquidationFee1 <= _100_PERCENT, ISiloFactory.InvalidLt());

        require(
            _initData.maxLtvOracle0 == address(0) || _initData.solvencyOracle0 != address(0),
            ISiloFactory.OracleMisconfiguration()
        );

        require(
            !_initData.callBeforeQuote0 || _initData.solvencyOracle0 != address(0),
            ISiloFactory.InvalidCallBeforeQuote()
        );

        require(
            _initData.maxLtvOracle1 == address(0) || _initData.solvencyOracle1 != address(0),
            ISiloFactory.OracleMisconfiguration()
        );

        require(
            !_initData.callBeforeQuote1 || _initData.solvencyOracle1 != address(0),
            ISiloFactory.InvalidCallBeforeQuote()
        );

        verifyQuoteTokens(_initData);

        require(_initData.deployerFee == 0 || _initData.deployer != address(0), ISiloFactory.InvalidDeployer());
        require(_initData.deployerFee <= _maxDeployerFee, ISiloFactory.MaxDeployerFeeExceeded());
        require(_daoFeeRange.min <= _initData.daoFee, ISiloFactory.DaoMinRangeExceeded());
        require(_initData.daoFee <= _daoFeeRange.max, ISiloFactory.DaoMaxRangeExceeded());
        require(_initData.flashloanFee0 <= _maxFlashloanFee, ISiloFactory.MaxFlashloanFeeExceeded());
        require(_initData.flashloanFee1 <= _maxFlashloanFee, ISiloFactory.MaxFlashloanFeeExceeded());
        require(_initData.liquidationTargetLtv0 <= _initData.lt0, ISiloFactory.LiquidationTargetLtvTooHigh());
        require(_initData.liquidationTargetLtv1 <= _initData.lt1, ISiloFactory.LiquidationTargetLtvTooHigh());

        require(
            _initData.interestRateModel0 != address(0) && _initData.interestRateModel1 != address(0),
            ISiloFactory.InvalidIrm()
        );

        return true;
    }

    function verifyQuoteTokens(ISiloConfig.InitData memory _initData) internal view {
        address expectedQuoteToken;

        expectedQuoteToken = verifyQuoteToken(expectedQuoteToken, _initData.solvencyOracle0);
        expectedQuoteToken = verifyQuoteToken(expectedQuoteToken, _initData.maxLtvOracle0);
        expectedQuoteToken = verifyQuoteToken(expectedQuoteToken, _initData.solvencyOracle1);
        expectedQuoteToken = verifyQuoteToken(expectedQuoteToken, _initData.maxLtvOracle1);
    }

    function verifyQuoteToken(address _expectedQuoteToken, address _oracle)
        internal
        view
        returns (address quoteToken)
    {
        if (_oracle == address(0)) return _expectedQuoteToken;

        quoteToken = ISiloOracle(_oracle).quoteToken();

        if (_expectedQuoteToken == address(0)) return quoteToken;
        require(_expectedQuoteToken == quoteToken, ISiloFactory.InvalidQuoteToken());
    }
}

// ============================================================
// FILE: silo-core/contracts/SiloConfig.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {IERC20} from "openzeppelin5/token/ERC20/IERC20.sol";

import {ISilo} from "./interfaces/ISilo.sol";
import {ISiloConfig} from "./interfaces/ISiloConfig.sol";
import {CrossReentrancyGuard} from "./utils/CrossReentrancyGuard.sol";
import {Hook} from "./lib/Hook.sol";

/// @notice SiloConfig stores full configuration of Silo in immutable manner
/// @dev Immutable contract is more expensive to deploy than minimal proxy however it provides nearly 10x cheaper
/// data access using immutable variables.
contract SiloConfig is ISiloConfig, CrossReentrancyGuard {
    using Hook for uint256;
    
    uint256 public immutable SILO_ID;

    uint256 internal immutable _DAO_FEE;
    uint256 internal immutable _DEPLOYER_FEE;
    address internal immutable _HOOK_RECEIVER;

    // TOKEN #0

    address internal immutable _SILO0;

    address internal immutable _TOKEN0;

    /// @dev Token that represents a share in total protected deposits of Silo
    address internal immutable _PROTECTED_COLLATERAL_SHARE_TOKEN0;
    /// @dev Token that represents a share in total deposits of Silo
    address internal immutable _COLLATERAL_SHARE_TOKEN0;
    /// @dev Token that represents a share in total debt of Silo
    address internal immutable _DEBT_SHARE_TOKEN0;

    address internal immutable _SOLVENCY_ORACLE0;
    address internal immutable _MAX_LTV_ORACLE0;

    address internal immutable _INTEREST_RATE_MODEL0;

    uint256 internal immutable _MAX_LTV0;
    uint256 internal immutable _LT0;
    /// @dev target LTV after liquidation
    uint256 internal immutable _LIQUIDATION_TARGET_LTV0;
    uint256 internal immutable _LIQUIDATION_FEE0;
    uint256 internal immutable _FLASHLOAN_FEE0;

    bool internal immutable _CALL_BEFORE_QUOTE0;

    // TOKEN #1

    address internal immutable _SILO1;

    address internal immutable _TOKEN1;

    /// @dev Token that represents a share in total protected deposits of Silo
    address internal immutable _PROTECTED_COLLATERAL_SHARE_TOKEN1;
    /// @dev Token that represents a share in total deposits of Silo
    address internal immutable _COLLATERAL_SHARE_TOKEN1;
    /// @dev Token that represents a share in total debt of Silo
    address internal immutable _DEBT_SHARE_TOKEN1;

    address internal immutable _SOLVENCY_ORACLE1;
    address internal immutable _MAX_LTV_ORACLE1;

    address internal immutable _INTEREST_RATE_MODEL1;

    uint256 internal immutable _MAX_LTV1;
    uint256 internal immutable _LT1;
    /// @dev target LTV after liquidation
    uint256 internal immutable _LIQUIDATION_TARGET_LTV1;
    uint256 internal immutable _LIQUIDATION_FEE1;
    uint256 internal immutable _FLASHLOAN_FEE1;

    bool internal immutable _CALL_BEFORE_QUOTE1;
    
    /// @inheritdoc ISiloConfig
    mapping (address borrower => address collateralSilo) public borrowerCollateralSilo;
    
    /// @param _siloId ID of this pool assigned by factory
    /// @param _configData0 silo configuration data for token0
    /// @param _configData1 silo configuration data for token1
    constructor( // solhint-disable-line function-max-lines
        uint256 _siloId,
        ConfigData memory _configData0,
        ConfigData memory _configData1
    ) CrossReentrancyGuard() {
        SILO_ID = _siloId;

        // To make further computations in the Silo secure require DAO and deployer fees to be less than 100%
        require(_configData0.daoFee + _configData0.deployerFee < 1e18, FeeTooHigh());

        _DAO_FEE = _configData0.daoFee;
        _DEPLOYER_FEE = _configData0.deployerFee;
        _HOOK_RECEIVER = _configData0.hookReceiver;

        // TOKEN #0

        _SILO0 = _configData0.silo;
        _TOKEN0 = _configData0.token;

        _PROTECTED_COLLATERAL_SHARE_TOKEN0 = _configData0.protectedShareToken;
        _COLLATERAL_SHARE_TOKEN0 = _configData0.silo;
        _DEBT_SHARE_TOKEN0 = _configData0.debtShareToken;

        _SOLVENCY_ORACLE0 = _configData0.solvencyOracle;
        _MAX_LTV_ORACLE0 = _configData0.maxLtvOracle;

        _INTEREST_RATE_MODEL0 = _configData0.interestRateModel;

        _MAX_LTV0 = _configData0.maxLtv;
        _LT0 = _configData0.lt;
        _LIQUIDATION_TARGET_LTV0 = _configData0.liquidationTargetLtv;
        _LIQUIDATION_FEE0 = _configData0.liquidationFee;
        _FLASHLOAN_FEE0 = _configData0.flashloanFee;

        _CALL_BEFORE_QUOTE0 = _configData0.callBeforeQuote;

        // TOKEN #1

        _SILO1 = _configData1.silo;
        _TOKEN1 = _configData1.token;

        _PROTECTED_COLLATERAL_SHARE_TOKEN1 = _configData1.protectedShareToken;
        _COLLATERAL_SHARE_TOKEN1 = _configData1.silo;
        _DEBT_SHARE_TOKEN1 = _configData1.debtShareToken;

        _SOLVENCY_ORACLE1 = _configData1.solvencyOracle;
        _MAX_LTV_ORACLE1 = _configData1.maxLtvOracle;

        _INTEREST_RATE_MODEL1 = _configData1.interestRateModel;

        _MAX_LTV1 = _configData1.maxLtv;
        _LT1 = _configData1.lt;
        _LIQUIDATION_TARGET_LTV1 = _configData1.liquidationTargetLtv;
        _LIQUIDATION_FEE1 = _configData1.liquidationFee;
        _FLASHLOAN_FEE1 = _configData1.flashloanFee;

        _CALL_BEFORE_QUOTE1 = _configData1.callBeforeQuote;
    }

    /// @inheritdoc ISiloConfig
    function setThisSiloAsCollateralSilo(address _borrower) external virtual {
        _onlySilo();
        borrowerCollateralSilo[_borrower] = msg.sender;
    }

    /// @inheritdoc ISiloConfig
    function setOtherSiloAsCollateralSilo(address _borrower) external virtual {
        _onlySilo();
        borrowerCollateralSilo[_borrower] = msg.sender == _SILO0 ? _SILO1 : _SILO0;
    }

    /// @inheritdoc ISiloConfig
    function onDebtTransfer(address _sender, address _recipient) external virtual {
        require(msg.sender == _DEBT_SHARE_TOKEN0 || msg.sender == _DEBT_SHARE_TOKEN1, OnlyDebtShareToken());

        address thisSilo = msg.sender == _DEBT_SHARE_TOKEN0 ? _SILO0 : _SILO1;

        require(!hasDebtInOtherSilo(thisSilo, _recipient), DebtExistInOtherSilo());

        if (borrowerCollateralSilo[_recipient] == address(0)) {
            borrowerCollateralSilo[_recipient] = borrowerCollateralSilo[_sender];
        }
    }

    /// @inheritdoc ISiloConfig
    function accrueInterestForSilo(address _silo) external virtual {
        address irm;

        if (_silo == _SILO0) {
            irm = _INTEREST_RATE_MODEL0;
        } else if (_silo == _SILO1) {
            irm = _INTEREST_RATE_MODEL1;
        } else {
            revert WrongSilo();
        }

        ISilo(_silo).accrueInterestForConfig(
            irm,
            _DAO_FEE,
            _DEPLOYER_FEE
        );
    }

    /// @inheritdoc ISiloConfig
    function accrueInterestForBothSilos() external virtual {
        ISilo(_SILO0).accrueInterestForConfig(
            _INTEREST_RATE_MODEL0,
            _DAO_FEE,
            _DEPLOYER_FEE
        );

        ISilo(_SILO1).accrueInterestForConfig(
            _INTEREST_RATE_MODEL1,
            _DAO_FEE,
            _DEPLOYER_FEE
        );
    }

    /// @inheritdoc ISiloConfig
    function getConfigsForSolvency(address _borrower) public view virtual returns (
        ConfigData memory collateralConfig,
        ConfigData memory debtConfig
    ) {
        address debtSilo = getDebtSilo(_borrower);

        if (debtSilo == address(0)) return (collateralConfig, debtConfig);

        address collateralSilo = borrowerCollateralSilo[_borrower];

        collateralConfig = getConfig(collateralSilo);
        debtConfig = getConfig(debtSilo);
    }

    /// @inheritdoc ISiloConfig
    // solhint-disable-next-line ordering
    function getConfigsForWithdraw(address _silo, address _depositOwner) external view virtual returns (
        DepositConfig memory depositConfig,
        ConfigData memory collateralConfig,
        ConfigData memory debtConfig
    ) {
        depositConfig = _getDepositConfig(_silo);
        (collateralConfig, debtConfig) = getConfigsForSolvency(_depositOwner);
    }

    /// @inheritdoc ISiloConfig
    function getConfigsForBorrow(address _debtSilo)
        external
        view
        virtual
        returns (ConfigData memory collateralConfig, ConfigData memory debtConfig)
    {
        address collateralSilo; 
        
        if (_debtSilo == _SILO0) {
            collateralSilo = _SILO1;
        } else if (_debtSilo == _SILO1) {
            collateralSilo = _SILO0;
        } else {
            revert WrongSilo();
        }

        collateralConfig = getConfig(collateralSilo);
        debtConfig = getConfig(_debtSilo);
    }

    /// @inheritdoc ISiloConfig
    function getSilos() external view virtual returns (address silo0, address silo1) {
        return (_SILO0, _SILO1);
    }

    /// @inheritdoc ISiloConfig
    function getShareTokens(address _silo)
        external
        view
        virtual
        returns (address protectedShareToken, address collateralShareToken, address debtShareToken)
    {
        if (_silo == _SILO0) {
            return (_PROTECTED_COLLATERAL_SHARE_TOKEN0, _COLLATERAL_SHARE_TOKEN0, _DEBT_SHARE_TOKEN0);
        } else if (_silo == _SILO1) {
            return (_PROTECTED_COLLATERAL_SHARE_TOKEN1, _COLLATERAL_SHARE_TOKEN1, _DEBT_SHARE_TOKEN1);
        } else {
            revert WrongSilo();
        }
    }

    /// @inheritdoc ISiloConfig
    function getAssetForSilo(address _silo) external view virtual returns (address asset) {
        if (_silo == _SILO0) {
            return _TOKEN0;
        } else if (_silo == _SILO1) {
            return _TOKEN1;
        } else {
            revert WrongSilo();
        }
    }

    /// @inheritdoc ISiloConfig
    function getFeesWithAsset(address _silo)
        external
        view
        virtual
        returns (uint256 daoFee, uint256 deployerFee, uint256 flashloanFee, address asset)
    {
        daoFee = _DAO_FEE;
        deployerFee = _DEPLOYER_FEE;

        if (_silo == _SILO0) {
            asset = _TOKEN0;
            flashloanFee = _FLASHLOAN_FEE0;
        } else if (_silo == _SILO1) {
            asset = _TOKEN1;
            flashloanFee = _FLASHLOAN_FEE1;
        } else {
            revert WrongSilo();
        }
    }

    /// @inheritdoc ISiloConfig
    function getCollateralShareTokenAndAsset(address _silo, ISilo.CollateralType _collateralType)
        external
        view
        virtual
        returns (address shareToken, address asset)
    {
        if (_silo == _SILO0) {
            return _collateralType == ISilo.CollateralType.Collateral
                ? (_COLLATERAL_SHARE_TOKEN0, _TOKEN0)
                : (_PROTECTED_COLLATERAL_SHARE_TOKEN0, _TOKEN0);
        } else if (_silo == _SILO1) {
            return _collateralType == ISilo.CollateralType.Collateral
                ? (_COLLATERAL_SHARE_TOKEN1, _TOKEN1)
                : (_PROTECTED_COLLATERAL_SHARE_TOKEN1, _TOKEN1);
        } else {
            revert WrongSilo();
        }
    }

    /// @inheritdoc ISiloConfig
    function getDebtShareTokenAndAsset(address _silo)
        external
        view
        virtual
        returns (address shareToken, address asset)
    {
        if (_silo == _SILO0) {
            return (_DEBT_SHARE_TOKEN0, _TOKEN0);
        } else if (_silo == _SILO1) {
            return (_DEBT_SHARE_TOKEN1, _TOKEN1);
        } else {
            revert WrongSilo();
        }
    }

    /// @inheritdoc ISiloConfig
    function getConfig(address _silo) public view virtual returns (ConfigData memory config) {
        if (_silo == _SILO0) {
            config = _silo0ConfigData();
        } else if (_silo == _SILO1) {
            config = _silo1ConfigData();
        } else {
            revert WrongSilo();
        }
    }

    /// @inheritdoc ISiloConfig
    function hasDebtInOtherSilo(address _thisSilo, address _borrower) public view virtual returns (bool hasDebt) {
        if (_thisSilo == _SILO0) {
            hasDebt = _balanceOf(_DEBT_SHARE_TOKEN1, _borrower) != 0;
        } else if (_thisSilo == _SILO1) {
            hasDebt = _balanceOf(_DEBT_SHARE_TOKEN0, _borrower) != 0;
        } else {
            revert WrongSilo();
        }
     }

    /// @inheritdoc ISiloConfig
    function getDebtSilo(address _borrower) public view virtual returns (address debtSilo) {
        uint256 debtBal0 = _balanceOf(_DEBT_SHARE_TOKEN0, _borrower);
        uint256 debtBal1 = _balanceOf(_DEBT_SHARE_TOKEN1, _borrower);

        require(debtBal0 == 0 || debtBal1 == 0, DebtExistInOtherSilo());
        if (debtBal0 == 0 && debtBal1 == 0) return address(0);

        debtSilo = debtBal0 != 0 ? _SILO0 : _SILO1;
    }

    function _silo0ConfigData() internal view virtual returns (ConfigData memory config) {
        config = ConfigData({
            daoFee: _DAO_FEE,
            deployerFee: _DEPLOYER_FEE,
            silo: _SILO0,
            token: _TOKEN0,
            protectedShareToken: _PROTECTED_COLLATERAL_SHARE_TOKEN0,
            collateralShareToken: _COLLATERAL_SHARE_TOKEN0,
            debtShareToken: _DEBT_SHARE_TOKEN0,
            solvencyOracle: _SOLVENCY_ORACLE0,
            maxLtvOracle: _MAX_LTV_ORACLE0,
            interestRateModel: _INTEREST_RATE_MODEL0,
            maxLtv: _MAX_LTV0,
            lt: _LT0,
            liquidationTargetLtv: _LIQUIDATION_TARGET_LTV0,
            liquidationFee: _LIQUIDATION_FEE0,
            flashloanFee: _FLASHLOAN_FEE0,
            hookReceiver: _HOOK_RECEIVER,
            callBeforeQuote: _CALL_BEFORE_QUOTE0
        });
    }

    function _silo1ConfigData() internal view virtual returns (ConfigData memory config) {
        config = ConfigData({
            daoFee: _DAO_FEE,
            deployerFee: _DEPLOYER_FEE,
            silo: _SILO1,
            token: _TOKEN1,
            protectedShareToken: _PROTECTED_COLLATERAL_SHARE_TOKEN1,
            collateralShareToken: _COLLATERAL_SHARE_TOKEN1,
            debtShareToken: _DEBT_SHARE_TOKEN1,
            solvencyOracle: _SOLVENCY_ORACLE1,
            maxLtvOracle: _MAX_LTV_ORACLE1,
            interestRateModel: _INTEREST_RATE_MODEL1,
            maxLtv: _MAX_LTV1,
            lt: _LT1,
            liquidationTargetLtv: _LIQUIDATION_TARGET_LTV1,
            liquidationFee: _LIQUIDATION_FEE1,
            flashloanFee: _FLASHLOAN_FEE1,
            hookReceiver: _HOOK_RECEIVER,
            callBeforeQuote: _CALL_BEFORE_QUOTE1
        });
    }

    function _getDepositConfig(address _silo) internal view virtual returns (DepositConfig memory config) {
        if (_silo == _SILO0) {
            config = DepositConfig({
                silo: _SILO0,
                token: _TOKEN0,
                collateralShareToken: _COLLATERAL_SHARE_TOKEN0,
                protectedShareToken: _PROTECTED_COLLATERAL_SHARE_TOKEN0,
                daoFee: _DAO_FEE,
                deployerFee: _DEPLOYER_FEE,
                interestRateModel: _INTEREST_RATE_MODEL0
            });
        } else if (_silo == _SILO1) {
            config = DepositConfig({
                silo: _SILO1,
                token: _TOKEN1,
                collateralShareToken: _COLLATERAL_SHARE_TOKEN1,
                protectedShareToken: _PROTECTED_COLLATERAL_SHARE_TOKEN1,
                daoFee: _DAO_FEE,
                deployerFee: _DEPLOYER_FEE,
                interestRateModel: _INTEREST_RATE_MODEL1
            });
        } else {
            revert WrongSilo();
        }
    }

    function _onlySiloOrTokenOrHookReceiver() internal view virtual override {
        if (msg.sender != _SILO0 &&
            msg.sender != _SILO1 &&
            msg.sender != _HOOK_RECEIVER &&
            msg.sender != _COLLATERAL_SHARE_TOKEN0 &&
            msg.sender != _COLLATERAL_SHARE_TOKEN1 &&
            msg.sender != _PROTECTED_COLLATERAL_SHARE_TOKEN0 &&
            msg.sender != _PROTECTED_COLLATERAL_SHARE_TOKEN1 &&
            msg.sender != _DEBT_SHARE_TOKEN0 &&
            msg.sender != _DEBT_SHARE_TOKEN1
        ) {
            revert OnlySiloOrTokenOrHookReceiver();
        }
    }

    function _onlySilo() internal view virtual {
        require(msg.sender == _SILO0 || msg.sender == _SILO1, OnlySilo());
    }

    function _balanceOf(address _token, address _user) internal view virtual returns (uint256 balance) {
        balance = IERC20(_token).balanceOf(_user);
    }
}

// ============================================================
// FILE: silo-core/contracts/SiloFactory.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {Strings} from "openzeppelin5/utils/Strings.sol";
import {Ownable2Step, Ownable} from "openzeppelin5/access/Ownable2Step.sol";
import {ERC721} from "openzeppelin5/token/ERC721/ERC721.sol";

import {IShareTokenInitializable} from "./interfaces/IShareTokenInitializable.sol";
import {ISiloFactory} from "./interfaces/ISiloFactory.sol";
import {ISilo} from "./interfaces/ISilo.sol";
import {ISiloConfig, SiloConfig} from "./SiloConfig.sol";
import {Hook} from "./lib/Hook.sol";
import {Views} from "./lib/Views.sol";
import {CloneDeterministic} from "./lib/CloneDeterministic.sol";

contract SiloFactory is ISiloFactory, ERC721, Ownable2Step {
    /// @dev max fee is 50%, 1e18 == 100%
    uint256 public constant MAX_FEE = 0.5e18;

    /// @dev max percent is 1e18 == 100%
    uint256 public constant MAX_PERCENT = 1e18;

    /// @dev dao fee range (min, max) in 18 decimals, 1e18 == 100%
    Range private _daoFeeRange;
    uint256 public maxDeployerFee;
    uint256 public maxFlashloanFee;
    uint256 public maxLiquidationFee;
    address public daoFeeReceiver;

    string public baseURI;

    mapping(uint256 id => address siloConfig) public idToSiloConfig;
    mapping(address silo => bool) public isSilo;

    uint256 internal _siloId;

    constructor(address _daoFeeReceiver)
        ERC721("Silo Finance Fee Receiver", "feeSILO")
        Ownable(msg.sender)
    {
        // start IDs from 1
        _siloId = 1;

        baseURI = "https://v2.app.silo.finance/markets/";

        _setDaoFee({_minFee: 0.05e18, _maxFee: 0.5e18});
        _setDaoFeeReceiver(_daoFeeReceiver);

        _setMaxDeployerFee({_newMaxDeployerFee: 0.15e18}); // 15% max deployer fee
        _setMaxFlashloanFee({_newMaxFlashloanFee: 0.15e18}); // 15% max flashloan fee
        _setMaxLiquidationFee({_newMaxLiquidationFee: 0.30e18}); // 30% max liquidation fee
    }

    function daoFeeRange() external view returns (Range memory) {
        return _daoFeeRange;
    }

    /// @inheritdoc ISiloFactory
    function createSilo( // solhint-disable-line function-max-lines
        ISiloConfig.InitData memory _initData,
        ISiloConfig _siloConfig,
        address _siloImpl,
        address _shareProtectedCollateralTokenImpl,
        address _shareDebtTokenImpl
    )
        external
        virtual
    {
        require(
            _siloImpl != address(0) &&
            _shareProtectedCollateralTokenImpl != address(0) &&
            _shareDebtTokenImpl != address(0) &&
            address(_siloConfig) != address(0),
            ZeroAddress()
        );

        ISiloConfig.ConfigData memory configData0;
        ISiloConfig.ConfigData memory configData1;

        (
            configData0, configData1
        ) = Views.copySiloConfig(_initData, _daoFeeRange, maxDeployerFee, maxFlashloanFee, maxLiquidationFee);

        uint256 nextSiloId = _siloId;
        // safe to uncheck, because we will not create 2 ** 256 of silos in a lifetime
        unchecked { _siloId++; }

        configData0.silo = CloneDeterministic.silo0(_siloImpl, nextSiloId);
        configData1.silo = CloneDeterministic.silo1(_siloImpl, nextSiloId);

        _cloneShareTokens(
            configData0,
            configData1,
            _shareProtectedCollateralTokenImpl,
            _shareDebtTokenImpl,
            nextSiloId
        );

        ISilo(configData0.silo).initialize(_siloConfig);
        ISilo(configData1.silo).initialize(_siloConfig);

        _initializeShareTokens(configData0, configData1);

        ISilo(configData0.silo).updateHooks();
        ISilo(configData1.silo).updateHooks();

        idToSiloConfig[nextSiloId] = address(_siloConfig);

        isSilo[configData0.silo] = true;
        isSilo[configData1.silo] = true;

        if (_initData.deployer != address(0)) {
            _mint(_initData.deployer, nextSiloId);
        }

        emit NewSilo(
            _siloImpl,
            configData0.token,
            configData1.token,
            configData0.silo,
            configData1.silo,
            address(_siloConfig)
        );
    }

    /// @inheritdoc ISiloFactory
    function burn(uint256 _siloIdToBurn) external virtual {
        _burn(_siloIdToBurn);
    }

    /// @inheritdoc ISiloFactory
    function setDaoFee(uint128 _minFee, uint128 _maxFee) external virtual onlyOwner {
        _setDaoFee(_minFee, _maxFee);
    }

    /// @inheritdoc ISiloFactory
    function setMaxDeployerFee(uint256 _newMaxDeployerFee) external virtual onlyOwner {
        _setMaxDeployerFee(_newMaxDeployerFee);
    }

    /// @inheritdoc ISiloFactory
    function setMaxFlashloanFee(uint256 _newMaxFlashloanFee) external virtual onlyOwner {
        _setMaxFlashloanFee(_newMaxFlashloanFee);
    }

    /// @inheritdoc ISiloFactory
    function setMaxLiquidationFee(uint256 _newMaxLiquidationFee) external virtual onlyOwner {
        _setMaxLiquidationFee(_newMaxLiquidationFee);
    }

    /// @inheritdoc ISiloFactory
    function setDaoFeeReceiver(address _newDaoFeeReceiver) external virtual onlyOwner {
        _setDaoFeeReceiver(_newDaoFeeReceiver);
    }

    /// @inheritdoc ISiloFactory
    function setBaseURI(string calldata _newBaseURI) external virtual onlyOwner {
        baseURI = _newBaseURI;
        emit BaseURI(_newBaseURI);
    }

    /// @inheritdoc ISiloFactory
    function getNextSiloId() external view virtual returns (uint256) {
        return _siloId;
    }

    /// @inheritdoc ISiloFactory
    function getFeeReceivers(address _silo) external view virtual returns (address dao, address deployer) {
        uint256 siloID = ISilo(_silo).config().SILO_ID();
        return (daoFeeReceiver, _ownerOf(siloID));
    }

    /// @inheritdoc ISiloFactory
    function validateSiloInitData(ISiloConfig.InitData memory _initData) external view virtual returns (bool) {
        return Views.validateSiloInitData(_initData, _daoFeeRange, maxDeployerFee, maxFlashloanFee, maxLiquidationFee);
    }

    /// @inheritdoc ERC721
    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        _requireOwned(tokenId);

        return string.concat(
            baseURI,
            Strings.toString(block.chainid),
            "/",
            Strings.toHexString(idToSiloConfig[tokenId])
        );
    }

    function _setDaoFee(uint128 _minFee, uint128 _maxFee) internal virtual {
        require(_maxFee <= MAX_FEE, MaxFeeExceeded());
        require(_minFee <= _maxFee, InvalidFeeRange());
        require(_daoFeeRange.min != _minFee || _daoFeeRange.max != _maxFee, SameRange());

        _daoFeeRange.min = _minFee;
        _daoFeeRange.max = _maxFee;

        emit DaoFeeChanged(_minFee, _maxFee);
    }

    function _setMaxDeployerFee(uint256 _newMaxDeployerFee) internal virtual {
        require(_newMaxDeployerFee <= MAX_FEE, MaxFeeExceeded());

        maxDeployerFee = _newMaxDeployerFee;

        emit MaxDeployerFeeChanged(_newMaxDeployerFee);
    }

    function _setMaxFlashloanFee(uint256 _newMaxFlashloanFee) internal virtual {
        require(_newMaxFlashloanFee <= MAX_FEE, MaxFeeExceeded());

        maxFlashloanFee = _newMaxFlashloanFee;

        emit MaxFlashloanFeeChanged(_newMaxFlashloanFee);
    }

    function _setMaxLiquidationFee(uint256 _newMaxLiquidationFee) internal virtual {
        require(_newMaxLiquidationFee <= MAX_FEE, MaxFeeExceeded());

        maxLiquidationFee = _newMaxLiquidationFee;

        emit MaxLiquidationFeeChanged(_newMaxLiquidationFee);
    }

    function _setDaoFeeReceiver(address _newDaoFeeReceiver) internal virtual {
        require(_newDaoFeeReceiver != address(0), DaoFeeReceiverZeroAddress());

        daoFeeReceiver = _newDaoFeeReceiver;

        emit DaoFeeReceiverChanged(_newDaoFeeReceiver);
    }

    function _cloneShareTokens(
        ISiloConfig.ConfigData memory configData0,
        ISiloConfig.ConfigData memory configData1,
        address _shareProtectedCollateralTokenImpl,
        address _shareDebtTokenImpl,
        uint256 _nextSiloId
    ) internal virtual {
        configData0.collateralShareToken = configData0.silo;
        configData1.collateralShareToken = configData1.silo;

        configData0.protectedShareToken = CloneDeterministic.shareProtectedCollateralToken0(
            _shareProtectedCollateralTokenImpl, _nextSiloId
        );

        configData1.protectedShareToken = CloneDeterministic.shareProtectedCollateralToken1(
            _shareProtectedCollateralTokenImpl, _nextSiloId
        );

        configData0.debtShareToken = CloneDeterministic.shareDebtToken0(_shareDebtTokenImpl, _nextSiloId);
        configData1.debtShareToken = CloneDeterministic.shareDebtToken1(_shareDebtTokenImpl, _nextSiloId);
    }

    function _initializeShareTokens(
        ISiloConfig.ConfigData memory configData0,
        ISiloConfig.ConfigData memory configData1
    ) internal virtual {
        uint24 protectedTokenType = uint24(Hook.PROTECTED_TOKEN);
        uint24 debtTokenType = uint24(Hook.DEBT_TOKEN);

        // initialize configData0
        ISilo silo0 = ISilo(configData0.silo);
        address hookReceiver0 = configData0.hookReceiver;

        IShareTokenInitializable(configData0.protectedShareToken).initialize(silo0, hookReceiver0, protectedTokenType);
        IShareTokenInitializable(configData0.debtShareToken).initialize(silo0, hookReceiver0, debtTokenType);

        // initialize configData1
        ISilo silo1 = ISilo(configData1.silo);
        address hookReceiver1 = configData1.hookReceiver;

        IShareTokenInitializable(configData1.protectedShareToken).initialize(silo1, hookReceiver1, protectedTokenType);
        IShareTokenInitializable(configData1.debtShareToken).initialize(silo1, hookReceiver1, debtTokenType);
    }
}

// ============================================================
// FILE: silo-core/contracts/utils/CrossReentrancyGuard.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import {ICrossReentrancyGuard} from "../interfaces/ICrossReentrancyGuard.sol";

abstract contract CrossReentrancyGuard is ICrossReentrancyGuard {
    uint256 private constant _NOT_ENTERED = 0;
    uint256 private constant _ENTERED = 1;

    uint256 private transient _crossReentrantStatus;

    /// @inheritdoc ICrossReentrancyGuard
    function turnOnReentrancyProtection() external virtual {
        _onlySiloOrTokenOrHookReceiver();
        
        require(_crossReentrantStatus != _ENTERED, CrossReentrantCall());

        _crossReentrantStatus = _ENTERED;
    }

    /// @inheritdoc ICrossReentrancyGuard
    function turnOffReentrancyProtection() external virtual {
        _onlySiloOrTokenOrHookReceiver();
        
        // Leaving it unprotected may lead to a bug in the reentrancy protection system,
        // as it can be used in the function without activating the protection before deactivating it.
        // Later on, these functions may be called to turn off the reentrancy protection.
        // To avoid this, we check if the protection is active before deactivating it.
        require(_crossReentrantStatus != _NOT_ENTERED, CrossReentrancyNotActive());

        _crossReentrantStatus = _NOT_ENTERED;
    }

    /// @inheritdoc ICrossReentrancyGuard
    function reentrancyGuardEntered() external view virtual returns (bool entered) {
        entered = _crossReentrantStatus == _ENTERED;
    }

    function _onlySiloOrTokenOrHookReceiver() internal virtual {}
}
