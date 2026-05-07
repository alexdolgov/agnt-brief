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
// FILE: src/fira_bonding/RehypothecationModule.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {IRehypothecationModule} from "../interfaces/IRehypothecationModule.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title RehypothecationModule
 *  @notice Holder contract for 3 values that play role in rehypothecation:
 * - ϕMax - Maximum ratio of raw tokens to total balance
 * - ϕMin - Minimum ratio of raw tokens to total balance
 * - ϕTarget - Target ratio of raw tokens to total balance
 * Rebalance Trigger: when the ratio of raw tokens to total balance goes above ϕMax or below ϕMin, tokens are
 * rebalanced to reach ϕTarget
 */
contract RehypothecationModule is Ownable, IRehypothecationModule {
    uint256 private constant BIPS = 10000;

    uint256 public phiMax; // ϕMax
    uint256 public phiMin; // ϕMin
    uint256 public phiTarget; // ϕTarget

    event RehypothecationParamsUpdated(uint256 phiMax, uint256 phiMin, uint256 phiTarget);

    constructor(uint256 _phiMax, uint256 _phiMin, uint256 _phiTarget, address owner) Ownable(owner) {
        require(_phiMin <= _phiTarget && _phiTarget <= _phiMax && _phiMax <= BIPS, "Invalid params");
        phiMax = _phiMax;
        phiMin = _phiMin;
        phiTarget = _phiTarget;
        emit RehypothecationParamsUpdated(_phiMax, _phiMin, _phiTarget);
    }

    /// @notice Updates the rehypothecation parameters
    /// @param _phiMax New value for ϕMax
    /// @param _phiMin New value for ϕMin
    /// @param _phiTarget New value for ϕTarget
    /// @dev Only callable by the owner
    function updateRehypothecationParams(uint256 _phiMax, uint256 _phiMin, uint256 _phiTarget) external onlyOwner {
        require(_phiMin <= _phiTarget && _phiTarget <= _phiMax && _phiMax <= BIPS, "Invalid params");
        phiMax = _phiMax;
        phiMin = _phiMin;
        phiTarget = _phiTarget;
        emit RehypothecationParamsUpdated(_phiMax, _phiMin, _phiTarget);
    }
}

// ============================================================
// FILE: src/interfaces/IRehypothecationModule.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

interface IRehypothecationModule {
    function phiMax() external view returns (uint256);

    function phiMin() external view returns (uint256);

    function phiTarget() external view returns (uint256);

    function updateRehypothecationParams(uint256 _phiMax, uint256 _phiMin, uint256 _phiTarget) external;
}
