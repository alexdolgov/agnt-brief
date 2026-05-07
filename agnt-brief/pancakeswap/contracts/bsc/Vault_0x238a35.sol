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
// FILE: lib/openzeppelin-contracts/contracts/access/Ownable2Step.sol
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
// FILE: src/interfaces/IERC20Minimal.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Minimal ERC20 interface for PancakeSwap
/// @notice Contains a subset of the full ERC20 interface that is used in PancakeSwap V3
interface IERC20Minimal {
    /// @notice Returns the balance of a token
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
// FILE: src/interfaces/IHooks.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IHooks {
    function getHooksRegistrationBitmap() external view returns (uint16);
}

// ============================================================
// FILE: src/interfaces/ILockCallback.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Interface for the callback executed when an address locks the vault
interface ILockCallback {
    /// @notice Called by the pool manager on `msg.sender` when a lock is acquired
    /// @param data The data that was passed to the call to lock
    /// @return Any data that you want to be returned from the lock call
    function lockAcquired(bytes calldata data) external returns (bytes memory);
}

// ============================================================
// FILE: src/interfaces/IPoolManager.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IHooks} from "./IHooks.sol";
import {PoolKey} from "../types/PoolKey.sol";
import {PoolId} from "../types/PoolId.sol";
import {Currency} from "../types/Currency.sol";

interface IPoolManager {
    /// @notice Thrown when trying to interact with a non-initialized pool
    error PoolNotInitialized();

    /// @notice PoolKey must have currencies where address(currency0) < address(currency1)
    error CurrenciesInitializedOutOfOrder(address currency0, address currency1);

    /// @notice Thrown when a call to updateDynamicLPFee is made by an address that is not the hook,
    /// or on a pool is not a dynamic fee pool.
    error UnauthorizedDynamicLPFeeUpdate();

    /// @notice Emitted when lp fee is updated
    /// @dev The event is emitted even if the updated fee value is the same as previous one
    event DynamicLPFeeUpdated(PoolId indexed id, uint24 dynamicLPFee);

    /// @notice Updates lp fee for a dyanmic fee pool
    /// @dev Some of the use case could be:
    ///   1) when hook#beforeSwap() is called and hook call this function to update the lp fee
    ///   2) For BinPool only, when hook#beforeMint() is called and hook call this function to update the lp fee
    ///   3) other use case where the hook might want to on an ad-hoc basis increase/reduce lp fee
    function updateDynamicLPFee(PoolKey memory key, uint24 newDynamicLPFee) external;

    /// @notice Return PoolKey for a given PoolId
    function poolIdToPoolKey(PoolId id)
        external
        view
        returns (
            Currency currency0,
            Currency currency1,
            IHooks hooks,
            IPoolManager poolManager,
            uint24 fee,
            bytes32 parameters
        );
}

// ============================================================
// FILE: src/interfaces/IVault.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Currency} from "../types/Currency.sol";
import {BalanceDelta} from "../types/BalanceDelta.sol";
import {IVaultToken} from "./IVaultToken.sol";

interface IVault is IVaultToken {
    event AppRegistered(address indexed app);

    /// @notice Thrown when a app is not registered
    error AppUnregistered();

    /// @notice Thrown when a currency is not netted out after a lock
    error CurrencyNotSettled();

    /// @notice Thrown when there is already a locker
    /// @param locker The address of the current locker
    error LockerAlreadySet(address locker);

    /// @notice Thrown when passing in msg.value for non-native currency
    error SettleNonNativeCurrencyWithValue();

    /// @notice Thrown when `clear` is called with an amount that is not exactly equal to the open currency delta.
    error MustClearExactPositiveDelta();

    /// @notice Thrown when there is no locker
    error NoLocker();

    /// @notice Thrown when collectFee is attempted on a token that is synced.
    error FeeCurrencySynced();

    function isAppRegistered(address app) external returns (bool);

    /// @notice Returns the reserves for a a given pool type and currency
    function reservesOfApp(address app, Currency currency) external view returns (uint256);

    /// @notice register an app so that it can perform accounting base on vault
    function registerApp(address app) external;

    /// @notice Returns the locker who is locking the vault
    function getLocker() external view returns (address locker);

    /// @notice Returns the reserve and its amount that is currently being stored in trnasient storage
    function getVaultReserve() external view returns (Currency, uint256);

    /// @notice Returns lock data
    function getUnsettledDeltasCount() external view returns (uint256 count);

    /// @notice Get the current delta for a locker in the given currency
    /// @param currency The currency for which to lookup the delta
    function currencyDelta(address settler, Currency currency) external view returns (int256);

    /// @notice All operations go through this function
    /// @param data Any data to pass to the callback, via `ILockCallback(msg.sender).lockCallback(data)`
    /// @return The data returned by the call to `ILockCallback(msg.sender).lockCallback(data)`
    function lock(bytes calldata data) external returns (bytes memory);

    /// @notice Called by registered app to account for a change in the pool balance,
    /// convenient for AMM pool manager, typically after modifyLiquidity, swap, donate,
    /// include the case where hookDelta is involved
    /// @param currency0 The PoolKey currency0 to update
    /// @param currency1 The PoolKey currency1 to update
    /// @param delta The change in the pool's balance
    /// @param settler The address whose delta will be updated
    /// @param hookDelta The change in the pool's balance from hook
    /// @param hook The address whose hookDelta will be updated
    function accountAppBalanceDelta(
        Currency currency0,
        Currency currency1,
        BalanceDelta delta,
        address settler,
        BalanceDelta hookDelta,
        address hook
    ) external;

    /// @notice Called by registered app to account for a change in the pool balance,
    /// convenient for AMM pool manager, typically after modifyLiquidity, swap, donate
    /// @param currency0 The PoolKey currency0 to update
    /// @param currency1 The PoolKey currency1 to update
    /// @param delta The change in the pool's balance
    /// @param settler The address whose delta will be updated
    function accountAppBalanceDelta(Currency currency0, Currency currency1, BalanceDelta delta, address settler)
        external;

    /// @notice This works as a general accounting mechanism for non-dex app
    /// @param currency The currency to update
    /// @param delta The change in the balance
    /// @param settler The address whose delta will be updated
    function accountAppBalanceDelta(Currency currency, int128 delta, address settler) external;

    /// @notice Called by the user to net out some value owed to the user
    /// @dev Will revert if the requested amount is not available, consider using `mint` instead
    /// @dev Can also be used as a mechanism for free flash loans
    function take(Currency currency, address to, uint256 amount) external;

    /// @notice Writes the current ERC20 balance of the specified currency to transient storage
    /// This is used to checkpoint balances for the manager and derive deltas for the caller.
    /// @dev This MUST be called before any ERC20 tokens are sent into the contract, but can be skipped
    /// for native tokens because the amount to settle is determined by the sent value.
    /// However, if an ERC20 token has been synced and not settled, and the caller instead wants to settle
    /// native funds, this function can be called with the native currency to then be able to settle the native currency
    function sync(Currency token0) external;

    /// @notice Called by the user to pay what is owed
    function settle() external payable returns (uint256 paid);

    /// @notice Called by the user to pay on behalf of another address
    /// @param recipient The address to credit for the payment
    /// @return paid The amount of currency settled
    function settleFor(address recipient) external payable returns (uint256 paid);

    /// @notice WARNING - Any currency that is cleared, will be non-retreivable, and locked in the contract permanently.
    /// A call to clear will zero out a positive balance WITHOUT a corresponding transfer.
    /// @dev This could be used to clear a balance that is considered dust.
    /// Additionally, the amount must be the exact positive balance. This is to enforce that the caller is aware of the amount being cleared.
    function clear(Currency currency, uint256 amount) external;

    /// @notice Called by app to collect any fee related
    /// @dev no restriction on caller, underflow happen if caller collect more than the reserve
    function collectFee(Currency currency, uint256 amount, address recipient) external;

    /// @notice Called by the user to store surplus tokens in the vault
    function mint(address to, Currency currency, uint256 amount) external;

    /// @notice Called by the user to use surplus tokens for payment settlement
    function burn(address from, Currency currency, uint256 amount) external;
}

// ============================================================
// FILE: src/interfaces/IVaultToken.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PoolId} from "../types/PoolId.sol";
import {PoolKey} from "../types/PoolKey.sol";
import {BalanceDelta} from "../types/BalanceDelta.sol";
import {IPoolManager} from "./IPoolManager.sol";
import {Currency} from "../types/Currency.sol";

interface IVaultToken {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event OperatorSet(address indexed owner, address indexed operator, bool approved);

    event Approval(address indexed owner, address indexed spender, Currency indexed currency, uint256 amount);

    event Transfer(address caller, address indexed from, address indexed to, Currency indexed currency, uint256 amount);

    /// @notice get the amount of owner's surplus token in vault
    /// @param owner The address you want to query the balance of
    /// @param currency The currency you want to query the balance of
    /// @return balance The balance of the specified address
    function balanceOf(address owner, Currency currency) external view returns (uint256 balance);

    /// @notice get the amount that owner has authorized for spender to use
    /// @param owner The address of the owner
    /// @param spender The address who is allowed to spend the owner's token
    /// @param currency The currency the spender is allowed to spend
    /// @return amount The amount of token the spender is allowed to spend
    function allowance(address owner, address spender, Currency currency) external view returns (uint256 amount);

    /// @notice approve spender for using user's token
    /// @param spender The address msg.sender is approving to spend the his token
    /// @param currency The currency the spender is allowed to spend
    /// @param amount The amount of token the spender is allowed to spend
    /// @return bool Whether the approval was successful or not
    function approve(address spender, Currency currency, uint256 amount) external returns (bool);

    /// @notice transfer msg.sender's token to someone else
    /// @param to The address to transfer the token to
    /// @param currency The currency to transfer
    /// @param amount The amount of token to transfer
    /// @return bool Whether the transfer was successful or not
    function transfer(address to, Currency currency, uint256 amount) external returns (bool);

    /// @notice transfer from address's token on behalf of him
    /// @param from The address to transfer the token from
    /// @param to The address to transfer the token to
    /// @param currency The currency to transfer
    /// @param amount The amount of token to transfer
    /// @return bool Whether the transfer was successful or not
    function transferFrom(address from, address to, Currency currency, uint256 amount) external returns (bool);
}

// ============================================================
// FILE: src/libraries/CustomRevert.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Library for reverting with custom errors efficiently
/// @notice Contains functions for reverting with custom errors with different argument types efficiently
/// @dev The functions may tamper with the free memory pointer but it is fine since the call context is exited immediately
library CustomRevert {
    /// @dev ERC-7751 error for wrapping bubbled up reverts
    error WrappedError(address target, bytes4 selector, bytes reason, bytes details);

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
// FILE: src/libraries/SafeCast.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
// Copyright (C) 2024 PancakeSwap
pragma solidity ^0.8.0;

/// @title Safe casting methods
/// @notice Contains methods for safely casting between types
library SafeCast {
    error SafeCastOverflow();

    function _revertOverflow() private pure {
        assembly ("memory-safe") {
            // Store the function selector of `SafeCastOverflow()`.
            mstore(0x00, 0x93dafdf1)
            // Revert with (offset, size).
            revert(0x1c, 0x04)
        }
    }

    /// @notice Cast a uint256 to a uint160, revert on overflow
    /// @param x The uint256 to be downcasted
    /// @return y The downcasted integer, now type uint160
    function toUint160(uint256 x) internal pure returns (uint160 y) {
        y = uint160(x);
        if (y != x) _revertOverflow();
    }

    /// @notice Cast a int256 to a int128, revert on overflow or underflow
    /// @param x The int256 to be downcasted
    /// @return y The downcasted integer, now type int128
    function toInt128(int256 x) internal pure returns (int128 y) {
        y = int128(x);
        if (y != x) _revertOverflow();
    }

    /// @notice Cast a uint256 to a int256, revert on overflow
    /// @param x The uint256 to be casted
    /// @return y The casted integer, now type int256
    function toInt256(uint256 x) internal pure returns (int256 y) {
        y = int256(x);
        if (y < 0) _revertOverflow();
    }

    /// @notice Cast a int256 to a uint256, revert on overflow
    /// @param x The int256 to be casted
    /// @return y The casted integer, now type uint256
    function toUint256(int256 x) internal pure returns (uint256 y) {
        if (x < 0) _revertOverflow();
        y = uint256(x);
    }

    /// @notice Cast a uint256 to a int128, revert on overflow
    /// @param x The uint256 to be downcasted
    /// @return The downcasted integer, now type int128
    function toInt128(uint256 x) internal pure returns (int128) {
        if (x >= 1 << 127) _revertOverflow();
        return int128(int256(x));
    }
}

// ============================================================
// FILE: src/libraries/SettlementGuard.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
// Copyright (C) 2024 PancakeSwap
pragma solidity ^0.8.24;

import {Currency} from "../types/Currency.sol";
import {IVault} from "../interfaces/IVault.sol";

/// @notice This is a workaround when transient keyword is absent. It manages:
///  - 0: address locker
///  - 1: uint256 unsettledDeltasCount
///  - 2: mapping(address, mapping(Currency => int256)) currencyDelta
library SettlementGuard {
    /// @dev uint256 internal constant LOCKER_SLOT = uint256(keccak256("SETTLEMENT_LOCKER")) - 1;
    uint256 internal constant LOCKER_SLOT = 0xedda7c051899c54dd66eaf5e13c031326ab4729812a579bed198ab93fd313d70;

    /// @dev uint256 internal constant UNSETTLED_DELTAS_COUNT = uint256(keccak256("SETTLEMENT_UNSETTLEMENTD_DELTAS_COUNT")) - 1;
    uint256 internal constant UNSETTLED_DELTAS_COUNT =
        0xa88ffc6a483ae852b901fb1c3a0df606e2e4461b493434e6643ebdc3ffabd151;

    /// @dev uint256 internal constant CURRENCY_DELTA = uint256(keccak256("SETTLEMENT_CURRENCY_DELTA")) - 1;
    uint256 internal constant CURRENCY_DELTA = 0x6dc13502b9ba2a9e8e42c53a1856d632b29d5aab3bcb4a2476bfec06cbd9cf22;

    /// @notice Update the locker address stored in the transient store
    /// @param newLocker The new locker address
    function setLocker(address newLocker) internal {
        address currentLocker = getLocker();

        // either set from non-zero to zero (set) or from zero to non-zero (reset)
        if (currentLocker != address(0) && newLocker != address(0)) revert IVault.LockerAlreadySet(currentLocker);

        assembly ("memory-safe") {
            tstore(LOCKER_SLOT, and(newLocker, 0xffffffffffffffffffffffffffffffffffffffff))
        }
    }

    /// @notice Get the locker address stored in the transient store
    /// @return locker The locker address
    function getLocker() internal view returns (address locker) {
        assembly ("memory-safe") {
            locker := tload(LOCKER_SLOT)
        }
    }

    /// @notice Get the count of non-zero (unsettled) deltas stored in the transient store
    /// @return count The count of non-zero deltas
    function getUnsettledDeltasCount() internal view returns (uint256 count) {
        assembly ("memory-safe") {
            count := tload(UNSETTLED_DELTAS_COUNT)
        }
    }

    /// @notice Create or update the delta record for a settler and currency
    /// if a new record is added then increment the count of non-zero deltas
    /// if an existing record is updated to zero then decrement the count of non-zero deltas
    /// @param settler The address of who is responsible for the settlement
    /// @param currency The currency of the settlement
    /// @param newlyAddedDelta The delta to be added to the existing delta
    function accountDelta(address settler, Currency currency, int256 newlyAddedDelta) internal {
        if (newlyAddedDelta == 0) return;

        /// @dev update the count of non-zero deltas if necessary
        int256 currentDelta = getCurrencyDelta(settler, currency);
        int256 nextDelta = currentDelta + newlyAddedDelta;
        unchecked {
            if (nextDelta == 0) {
                assembly ("memory-safe") {
                    tstore(UNSETTLED_DELTAS_COUNT, sub(tload(UNSETTLED_DELTAS_COUNT), 1))
                }
            } else if (currentDelta == 0) {
                assembly ("memory-safe") {
                    tstore(UNSETTLED_DELTAS_COUNT, add(tload(UNSETTLED_DELTAS_COUNT), 1))
                }
            }
        }

        /// @dev ref: https://docs.soliditylang.org/en/v0.8.24/internals/layout_in_storage.html#mappings-and-dynamic-arrays
        /// simulating mapping index but with a single hash
        /// save one keccak256 hash compared to built-in nested mapping
        uint256 elementSlot = uint256(keccak256(abi.encode(settler, currency, CURRENCY_DELTA)));
        assembly ("memory-safe") {
            tstore(elementSlot, nextDelta)
        }
    }

    /// @notice Get the current delta record for a given settler and currency
    /// @param settler The address of who is responsible for the settlement
    /// @param currency The currency of the settlement
    /// @return delta The delta value
    function getCurrencyDelta(address settler, Currency currency) internal view returns (int256 delta) {
        uint256 elementSlot = uint256(keccak256(abi.encode(settler, currency, CURRENCY_DELTA)));
        assembly ("memory-safe") {
            delta := tload(elementSlot)
        }
    }
}

// ============================================================
// FILE: src/libraries/VaultReserve.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
// Copyright (C) 2024 PancakeSwap
pragma solidity ^0.8.24;

import {Currency} from "../types/Currency.sol";

/// @notice This is a workaround when transient keyword is absent.
/// It records a single reserve for a currency each time, this is helpful for
/// calculating how many tokens has been transferred to the vault right after the sync
library VaultReserve {
    // uint256 constant RESERVE_TYPE_SLOT = uint256(keccak256("reserveType")) - 1;
    uint256 internal constant RESERVE_TYPE_SLOT = 0x52a1be34b47478d7c75e2b6c3eea1e05dcb8dbb8c6a42c6482d0dca0df53cb27;

    // uint256 constant RESERVE_AMOUNT_SLOT = uint256(keccak256("reserveAmount")) - 1;
    uint256 internal constant RESERVE_AMOUNT_SLOT = 0xb0879d96d58bcff08d1fd45590200072d5a8c380da0b5aa1052b48b84e115207;

    /// @notice Transient store the currency reserve
    /// @param currency The currency to be saved
    /// @param amount The amount of the currency to be saved
    function setVaultReserve(Currency currency, uint256 amount) internal {
        assembly ("memory-safe") {
            // record <currency, amount> in transient storage
            tstore(RESERVE_TYPE_SLOT, and(currency, 0xffffffffffffffffffffffffffffffffffffffff))
            tstore(RESERVE_AMOUNT_SLOT, amount)
        }
    }

    /// @notice Transient load the currency reserve
    /// @return currency The currency that was most recently saved
    /// @return amount The amount of the currency that was most recently saved
    function getVaultReserve() internal view returns (Currency currency, uint256 amount) {
        assembly ("memory-safe") {
            currency := tload(RESERVE_TYPE_SLOT)
            amount := tload(RESERVE_AMOUNT_SLOT)
        }
    }
}

// ============================================================
// FILE: src/types/BalanceDelta.sol
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
    /// @notice Constant for a BalanceDelta of zero value
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
// FILE: src/types/Currency.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20Minimal} from "../interfaces/IERC20Minimal.sol";
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
    using CurrencyLibrary for Currency;

    /// @notice Additional context for ERC-7751 wrapped error when a native transfer fails
    error NativeTransferFailed();

    /// @notice Additional context for ERC-7751 wrapped error when an ERC20 transfer fails
    error ERC20TransferFailed();

    /// @notice A constant to represent the native currency
    Currency public constant NATIVE = Currency.wrap(address(0));

    function transfer(Currency currency, address to, uint256 amount) internal {
        // altered from https://github.com/transmissions11/solmate/blob/44a9963d4c78111f77caa0e65d677b8b46d6f2e6/src/utils/SafeTransferLib.sol
        // modified custom error selectors

        bool success;
        if (currency.isNative()) {
            assembly ("memory-safe") {
                // Transfer the ETH and revert if it fails.
                success := call(gas(), to, amount, 0, 0, 0, 0)
            }
            // revert with NativeTransferFailed, containing the bubbled up error as an argument
            if (!success) CustomRevert.bubbleUpAndRevertWith(to, bytes4(0), NativeTransferFailed.selector);
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
        if (currency.isNative()) {
            return address(this).balance;
        } else {
            return IERC20Minimal(Currency.unwrap(currency)).balanceOf(address(this));
        }
    }

    function balanceOf(Currency currency, address owner) internal view returns (uint256) {
        if (currency.isNative()) {
            return owner.balance;
        } else {
            return IERC20Minimal(Currency.unwrap(currency)).balanceOf(owner);
        }
    }

    function isNative(Currency currency) internal pure returns (bool) {
        return Currency.unwrap(currency) == Currency.unwrap(NATIVE);
    }

    function toId(Currency currency) internal pure returns (uint256) {
        return uint160(Currency.unwrap(currency));
    }

    function fromId(uint256 id) internal pure returns (Currency) {
        return Currency.wrap(address(uint160(id)));
    }
}

// ============================================================
// FILE: src/types/PoolId.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {PoolKey} from "./PoolKey.sol";

type PoolId is bytes32;

/// @notice Library for computing the ID of a pool
library PoolIdLibrary {
    function toId(PoolKey memory poolKey) internal pure returns (PoolId poolId) {
        assembly ("memory-safe") {
            // 0xc0 represents the total size of the poolKey struct (6 slots of 32 bytes)
            poolId := keccak256(poolKey, 0xc0)
        }
    }
}

// ============================================================
// FILE: src/types/PoolKey.sol
// ============================================================

//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Currency} from "./Currency.sol";
import {IPoolManager} from "../interfaces/IPoolManager.sol";
import {IHooks} from "../interfaces/IHooks.sol";
import {PoolIdLibrary} from "./PoolId.sol";

using PoolIdLibrary for PoolKey global;

/// @notice Returns the key for identifying a pool
struct PoolKey {
    /// @notice The lower currency of the pool, sorted numerically
    Currency currency0;
    /// @notice The higher currency of the pool, sorted numerically
    Currency currency1;
    /// @notice The hooks of the pool, won't have a general interface because hooks interface vary on pool type
    IHooks hooks;
    /// @notice The pool manager of the pool
    IPoolManager poolManager;
    /// @notice The pool lp fee, capped at 1_000_000. If the pool has a dynamic fee then it must be exactly equal to 0x800000
    uint24 fee;
    /// @notice Hooks callback and pool specific parameters, i.e. tickSpacing for CL, binStep for bin
    bytes32 parameters;
}

// ============================================================
// FILE: src/Vault.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
// Copyright (C) 2024 PancakeSwap
pragma solidity 0.8.26;

import {Ownable, Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IVault, IVaultToken} from "./interfaces/IVault.sol";
import {SettlementGuard} from "./libraries/SettlementGuard.sol";
import {Currency, CurrencyLibrary} from "./types/Currency.sol";
import {BalanceDelta} from "./types/BalanceDelta.sol";
import {ILockCallback} from "./interfaces/ILockCallback.sol";
import {SafeCast} from "./libraries/SafeCast.sol";
import {VaultReserve} from "./libraries/VaultReserve.sol";
import {VaultToken} from "./VaultToken.sol";

contract Vault is IVault, VaultToken, Ownable2Step {
    using SafeCast for *;
    using CurrencyLibrary for Currency;

    constructor() Ownable(msg.sender) {}

    mapping(address app => bool isRegistered) public override isAppRegistered;

    /// @dev keep track of each app's reserves
    mapping(address app => mapping(Currency currency => uint256 reserve)) public reservesOfApp;

    /// @notice only registered app is allowed to perform accounting
    modifier onlyRegisteredApp() {
        if (!isAppRegistered[msg.sender]) revert AppUnregistered();

        _;
    }

    /// @notice revert if no locker is set
    modifier isLocked() {
        if (SettlementGuard.getLocker() == address(0)) revert NoLocker();
        _;
    }

    /// @inheritdoc IVault
    function registerApp(address app) external override onlyOwner {
        isAppRegistered[app] = true;

        emit AppRegistered(app);
    }

    /// @inheritdoc IVault
    function getLocker() external view override returns (address) {
        return SettlementGuard.getLocker();
    }

    /// @inheritdoc IVault
    function getUnsettledDeltasCount() external view override returns (uint256) {
        return SettlementGuard.getUnsettledDeltasCount();
    }

    /// @inheritdoc IVault
    function currencyDelta(address settler, Currency currency) external view override returns (int256) {
        return SettlementGuard.getCurrencyDelta(settler, currency);
    }

    /// @dev interaction must start from lock
    /// @inheritdoc IVault
    function lock(bytes calldata data) external override returns (bytes memory result) {
        /// @dev only one locker at a time
        SettlementGuard.setLocker(msg.sender);

        result = ILockCallback(msg.sender).lockAcquired(data);
        /// @notice the caller can do anything in this callback as long as all deltas are offset after this
        if (SettlementGuard.getUnsettledDeltasCount() != 0) revert CurrencyNotSettled();

        /// @dev release the lock
        SettlementGuard.setLocker(address(0));
    }

    /// @inheritdoc IVault
    function accountAppBalanceDelta(
        Currency currency0,
        Currency currency1,
        BalanceDelta delta,
        address settler,
        BalanceDelta hookDelta,
        address hook
    ) external override isLocked onlyRegisteredApp {
        (int128 delta0, int128 delta1) = (delta.amount0(), delta.amount1());
        (int128 hookDelta0, int128 hookDelta1) = (hookDelta.amount0(), hookDelta.amount1());

        /// @dev call _accountDeltaForApp once with both delta/hookDelta to save gas and prevent
        /// reservesOfApp from underflow when it deduct before addition
        _accountDeltaForApp(currency0, delta0 + hookDelta0);
        _accountDeltaForApp(currency1, delta1 + hookDelta1);

        // keep track of the balance on vault level
        SettlementGuard.accountDelta(settler, currency0, delta0);
        SettlementGuard.accountDelta(settler, currency1, delta1);
        SettlementGuard.accountDelta(hook, currency0, hookDelta0);
        SettlementGuard.accountDelta(hook, currency1, hookDelta1);
    }

    /// @inheritdoc IVault
    function accountAppBalanceDelta(Currency currency0, Currency currency1, BalanceDelta delta, address settler)
        external
        override
        isLocked
        onlyRegisteredApp
    {
        int128 delta0 = delta.amount0();
        int128 delta1 = delta.amount1();

        // keep track of the balance on app level
        _accountDeltaForApp(currency0, delta0);
        _accountDeltaForApp(currency1, delta1);

        // keep track of the balance on vault level
        SettlementGuard.accountDelta(settler, currency0, delta0);
        SettlementGuard.accountDelta(settler, currency1, delta1);
    }

    /// @inheritdoc IVault
    function accountAppBalanceDelta(Currency currency, int128 delta, address settler)
        external
        override
        isLocked
        onlyRegisteredApp
    {
        _accountDeltaForApp(currency, delta);
        SettlementGuard.accountDelta(settler, currency, delta);
    }

    /// @inheritdoc IVault
    function take(Currency currency, address to, uint256 amount) external override isLocked {
        unchecked {
            SettlementGuard.accountDelta(msg.sender, currency, -(amount.toInt128()));
            currency.transfer(to, amount);
        }
    }

    /// @inheritdoc IVault
    function mint(address to, Currency currency, uint256 amount) external override isLocked {
        unchecked {
            SettlementGuard.accountDelta(msg.sender, currency, -(amount.toInt128()));
            _mint(to, currency, amount);
        }
    }

    function sync(Currency currency) public override {
        if (currency.isNative()) {
            VaultReserve.setVaultReserve(CurrencyLibrary.NATIVE, 0);
        } else {
            uint256 balance = currency.balanceOfSelf();
            VaultReserve.setVaultReserve(currency, balance);
        }
    }

    /// @inheritdoc IVault
    function settle() external payable override isLocked returns (uint256) {
        return _settle(msg.sender);
    }

    /// @inheritdoc IVault
    function settleFor(address recipient) external payable override isLocked returns (uint256) {
        return _settle(recipient);
    }

    /// @inheritdoc IVault
    function clear(Currency currency, uint256 amount) external isLocked {
        int256 existingDelta = SettlementGuard.getCurrencyDelta(msg.sender, currency);
        int128 amountDelta = amount.toInt128();
        /// @dev since amount is uint256, existingDelta must be positive otherwise revert
        if (amountDelta != existingDelta) revert MustClearExactPositiveDelta();
        unchecked {
            SettlementGuard.accountDelta(msg.sender, currency, -amountDelta);
        }
    }

    /// @inheritdoc IVault
    function burn(address from, Currency currency, uint256 amount) external override isLocked {
        SettlementGuard.accountDelta(msg.sender, currency, amount.toInt128());
        _burnFrom(from, currency, amount);
    }

    /// @inheritdoc IVault
    function collectFee(Currency currency, uint256 amount, address recipient) external onlyRegisteredApp {
        // prevent transfer between the sync and settle balanceOfs (native settle uses msg.value)
        (Currency syncedCurrency,) = VaultReserve.getVaultReserve();
        if (!currency.isNative() && syncedCurrency == currency) revert FeeCurrencySynced();
        reservesOfApp[msg.sender][currency] -= amount;
        currency.transfer(recipient, amount);
    }

    /// @inheritdoc IVault
    function getVaultReserve() external view returns (Currency, uint256) {
        return VaultReserve.getVaultReserve();
    }

    function _accountDeltaForApp(Currency currency, int128 delta) internal {
        if (delta == 0) return;

        /// @dev optimization: msg.sender will always be app address, verification should be done on caller address
        if (delta >= 0) {
            /// @dev arithmetic underflow make sure trader can't withdraw too much from app
            reservesOfApp[msg.sender][currency] -= uint128(delta);
        } else {
            /// @dev arithmetic overflow make sure trader won't deposit too much into app
            reservesOfApp[msg.sender][currency] += uint128(-delta);
        }
    }

    // if settling native, integrators should still call `sync` first to avoid DoS attack vectors
    function _settle(address recipient) internal returns (uint256 paid) {
        (Currency currency, uint256 reservesBefore) = VaultReserve.getVaultReserve();
        if (!currency.isNative()) {
            if (msg.value > 0) revert SettleNonNativeCurrencyWithValue();
            uint256 reservesNow = currency.balanceOfSelf();
            paid = reservesNow - reservesBefore;

            /// @dev reset the reserve after settled
            VaultReserve.setVaultReserve(CurrencyLibrary.NATIVE, 0);
        } else {
            // NATIVE token does not require sync call before settle
            paid = msg.value;
        }

        SettlementGuard.accountDelta(recipient, currency, paid.toInt128());
    }
}

// ============================================================
// FILE: src/VaultToken.sol
// ============================================================

// SPDX-License-Identifier: GPL-2.0-or-later
// Copyright (C) 2024 PancakeSwap
pragma solidity ^0.8.0;

import {Currency} from "./types/Currency.sol";
import {IVaultToken} from "./interfaces/IVaultToken.sol";

/// @dev This contract is a modified version of the ERC6909 implementation:
/// 1. totalSupply is removed
/// 2. tokenId is changed to Currency to fit our use case
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/tokens/ERC6909.sol)

/// @notice Users are allowed to store their surplus tokens i.e. unsettled balance that the pool
/// owed to user in the vault, and they will be able to withdraw them or use them to settle future
/// transactions. VaultToken is designed as a minimum implementation to achieve this goal. It keeps
/// track of users' surplus tokens and allows users to approve others to spend their tokens.
abstract contract VaultToken is IVaultToken {
    /*//////////////////////////////////////////////////////////////
                             ERC6909 STORAGE
    //////////////////////////////////////////////////////////////*/

    mapping(address owner => mapping(address operator => bool isOperator)) public isOperator;

    mapping(address owner => mapping(Currency currency => uint256 balance)) public balanceOf;

    mapping(address owner => mapping(address spender => mapping(Currency currency => uint256 amount))) public allowance;

    /*//////////////////////////////////////////////////////////////
                              ERC6909 LOGIC
    //////////////////////////////////////////////////////////////*/

    function transfer(address receiver, Currency currency, uint256 amount) public virtual returns (bool) {
        balanceOf[msg.sender][currency] -= amount;

        balanceOf[receiver][currency] += amount;

        emit Transfer(msg.sender, msg.sender, receiver, currency, amount);

        return true;
    }

    function transferFrom(address sender, address receiver, Currency currency, uint256 amount)
        public
        virtual
        returns (bool)
    {
        if (msg.sender != sender && !isOperator[sender][msg.sender]) {
            uint256 allowed = allowance[sender][msg.sender][currency];
            if (allowed != type(uint256).max) allowance[sender][msg.sender][currency] -= amount;
        }

        balanceOf[sender][currency] -= amount;

        balanceOf[receiver][currency] += amount;

        emit Transfer(msg.sender, sender, receiver, currency, amount);

        return true;
    }

    function approve(address spender, Currency currency, uint256 amount) public virtual returns (bool) {
        allowance[msg.sender][spender][currency] = amount;

        emit Approval(msg.sender, spender, currency, amount);

        return true;
    }

    function setOperator(address operator, bool approved) public virtual returns (bool) {
        isOperator[msg.sender][operator] = approved;

        emit OperatorSet(msg.sender, operator, approved);

        return true;
    }

    /*//////////////////////////////////////////////////////////////
                              ERC165 LOGIC
    //////////////////////////////////////////////////////////////*/

    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return interfaceId == 0x01ffc9a7 // ERC165 Interface ID for ERC165
            || interfaceId == 0xb2e69f8a; // ERC165 Interface ID for ERC6909
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL MINT/BURN LOGIC
    //////////////////////////////////////////////////////////////*/

    function _mint(address receiver, Currency currency, uint256 amount) internal virtual {
        balanceOf[receiver][currency] += amount;

        emit Transfer(msg.sender, address(0), receiver, currency, amount);
    }

    function _burn(address sender, Currency currency, uint256 amount) internal virtual {
        balanceOf[sender][currency] -= amount;

        emit Transfer(msg.sender, sender, address(0), currency, amount);
    }

    function _burnFrom(address from, Currency currency, uint256 amount) internal virtual {
        if (msg.sender != from && !isOperator[from][msg.sender]) {
            uint256 allowed = allowance[from][msg.sender][currency];
            if (allowed != type(uint256).max) allowance[from][msg.sender][currency] -= amount;
        }

        _burn(from, currency, amount);
    }
}
