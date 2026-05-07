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
     *
     * Setting `newOwner` to the zero address is allowed; this can be used to cancel an initiated ownership transfer.
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
// FILE: src/Points.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import { PointsFactory } from "./PointsFactory.sol";
import { Ownable2Step, Ownable } from "../lib/openzeppelin-contracts/contracts/access/Ownable2Step.sol";

/// @title Points
/// @author CopyPaste, Jack Corddry, Shivaansh Kapoor
/// @dev A simple contract for running Points Programs
contract Points is Ownable2Step {
    /*//////////////////////////////////////////////////////////////
                              CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /// @param _name The name of the points program
    /// @param _symbol The symbol for the points program
    /// @param _decimals The amount of decimals to use for accounting with points
    /// @param _owner The owner of the points program
    constructor(string memory _name, string memory _symbol, uint256 _decimals, address _owner) Ownable(_owner) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        // Enforces that the Points Program deployer is a factory
        pointsFactory = PointsFactory(msg.sender);
    }

    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/
    event Award(address indexed to, uint256 indexed amount, address indexed awardedBy);
    event AllowedVaultAdded(address indexed vault);
    event AllowedIPAdded(address indexed ip);
    event VaultRemoved(address indexed vault);
    /*//////////////////////////////////////////////////////////////
                                STORAGE
    //////////////////////////////////////////////////////////////*/
    /// @dev Maps a vault to if the vault is allowed to call this contract

    mapping(address => bool) public isAllowedVault;

    /// @dev The PointsFactory used to create this program
    PointsFactory public immutable pointsFactory;

    /// @dev The name of the points program
    string public name;
    /// @dev The symbol for the points program
    string public symbol;
    /// @dev We track all points logic using base 1
    uint256 public decimals;
    /// @dev Track which RecipeMarketHub IPs are allowed to mint
    mapping(address => bool) public allowedIPs;

    /*//////////////////////////////////////////////////////////////
                              POINTS AUTH
    //////////////////////////////////////////////////////////////*/
    error VaultIsDuplicate();

    /// @param vault The address to add to the allowed vaults for the points program
    function addAllowedVault(address vault) external onlyOwner {
        if (isAllowedVault[vault]) {
            revert VaultIsDuplicate();
        }

        isAllowedVault[vault] = true;

        emit AllowedVaultAdded(vault);
    }

    /// @param ip The incentive provider address to allow to mint points on RecipeMarketHub
    function addAllowedIP(address ip) external onlyOwner {
        allowedIPs[ip] = true;

        emit AllowedIPAdded(ip);
    }

    error OnlyAllowedVaults();
    error OnlyRecipeMarketHub();
    error NotAllowedIP();

    modifier onlyAllowedVaults() {
        if (!isAllowedVault[msg.sender]) {
            revert OnlyAllowedVaults();
        }
        _;
    }

    /// @dev only the RecipeMarketHub can call this function
    /// @param ip The address to check if allowed
    modifier onlyRecipeMarketHubAllowedIP(address ip) {
        if (!pointsFactory.isRecipeMarketHub(msg.sender)) {
            revert OnlyRecipeMarketHub();
        }
        if (!allowedIPs[ip]) {
            revert NotAllowedIP();
        }
        _;
    }

    /*//////////////////////////////////////////////////////////////
                                 POINTS
    //////////////////////////////////////////////////////////////*/

    /// @param to The address to mint points to
    /// @param amount  The amount of points to award to the `to` address
    function award(address to, uint256 amount) external onlyAllowedVaults {
        emit Award(to, amount, msg.sender);
    }

    /// @param to The address to mint points to
    /// @param amount  The amount of points to award to the `to` address
    /// @param ip The incentive provider attempting to mint the points
    function award(address to, uint256 amount, address ip) external onlyRecipeMarketHubAllowedIP(ip) {
        emit Award(to, amount, ip);
    }
}

// ============================================================
// FILE: src/PointsFactory.sol
// ============================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import { Points } from "./Points.sol";
import { Ownable2Step, Ownable } from "../lib/openzeppelin-contracts/contracts/access/Ownable2Step.sol";

/// @title PointsFactory
/// @author CopyPaste, Jack Corddry, Shivaansh Kapoor
/// @dev A simple factory for creating Points Programs
contract PointsFactory is Ownable2Step {
    /// @notice Mapping of Points Program address => bool (indicator of if Points Program was deployed using this factory)
    mapping(address => bool) public isPointsProgram;

    /// @notice Mapping of RecipeMarketHub address => bool (indicator of if the address is of a Royco RecipeMarketHub)
    mapping(address => bool) public isRecipeMarketHub;

    /// @notice Emitted when creating a points program using this factory
    event NewPointsProgram(Points indexed points, string indexed name, string indexed symbol);

    /// @notice Emitted when adding an RecipeMarketHub to this Points Factory
    event RecipeMarketHubAdded(address indexed recipeMarketHub);

    /// @param _owner The owner of the points factory - responsible for adding valid RecipeMarketHub(s) to the PointsFactory
    constructor(address _owner) Ownable(_owner) { }

    /// @param _recipeMarketHub The RecipeMarketHub to mark as valid in the Points Factory
    function addRecipeMarketHub(address _recipeMarketHub) external onlyOwner {
        isRecipeMarketHub[_recipeMarketHub] = true;
        emit RecipeMarketHubAdded(_recipeMarketHub);
    }

    /// @param _name The name for the new points program
    /// @param _symbol The symbol for the new points program
    /// @param _decimals The amount of decimals per point
    /// @param _owner The owner of the new points program
    function createPointsProgram(string memory _name, string memory _symbol, uint256 _decimals, address _owner) external returns (Points points) {
        bytes32 salt = keccak256(abi.encode(_name, _symbol, _decimals, _owner));
        points = new Points{ salt: salt }(_name, _symbol, _decimals, _owner);
        isPointsProgram[address(points)] = true;

        emit NewPointsProgram(points, _name, _symbol);
    }
}
