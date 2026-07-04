// SPDX-License-Identifier: GPL-3.0
pragma solidity =0.8.19 ^0.8.0;

// /Users/qyu/Documents/hoprnet/vendor/solidity/openzeppelin-contracts-4.9.2/contracts/utils/Context.sol

// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

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
}

// /Users/qyu/Documents/hoprnet/vendor/solidity/openzeppelin-contracts-4.9.2/contracts/access/Ownable.sol

// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable.sol)

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
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
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
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
        require(newOwner != address(0), "Ownable: new owner is the zero address");
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

// ../../vendor/solidity/openzeppelin-contracts-4.9.2/contracts/access/Ownable2Step.sol

// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable2Step.sol)

/**
 * @dev Contract module which provides access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
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
        require(pendingOwner() == sender, "Ownable2Step: caller is not the new owner");
        _transferOwnership(sender);
    }
}

// src/WinningProbabilityOracle.sol

type WinProb is uint56;
using {equal as ==} for WinProb global;

function equal(WinProb a, WinProb b) pure returns (bool) {
    return WinProb.unwrap(a) == WinProb.unwrap(b);
}

abstract contract HoprWinningProbablityOracleEvents {
    // emitted when winning probability was updated
    event WinProbUpdated(WinProb, WinProb);
}

/**
 *    &&&&
 *    &&&&
 *    &&&&
 *    &&&&  &&&&&&&&&       &&&&&&&&&&&&          &&&&&&&&&&/   &&&&.&&&&&&&&&
 *    &&&&&&&&&   &&&&&   &&&&&&     &&&&&,     &&&&&    &&&&&  &&&&&&&&   &&&&
 *     &&&&&&      &&&&  &&&&#         &&&&   &&&&&       &&&&& &&&&&&     &&&&&
 *     &&&&&       &&&&/ &&&&           &&&& #&&&&        &&&&  &&&&&
 *     &&&&         &&&& &&&&&         &&&&  &&&&        &&&&&  &&&&&
 *     %%%%        /%%%%   %%%%%%   %%%%%%   %%%%  %%%%%%%%%    %%%%%
 *    %%%%%        %%%%      %%%%%%%%%%%    %%%%   %%%%%%       %%%%
 *                                          %%%%
 *                                          %%%%
 *                                          %%%%
 *
 * @title HoprWinningProbablityOracle
 * @dev Oracle which defines the current minimum winning probability used in a HOPR network.
 * Exposes a single function to set a new global minimum winning probablity set by the contract owner.
 *
 * The winning probablity is written as IEEE 754 double precision floating point number.
 *
 * The current winning probablity can be read via `currentWinProb()`.
 *
 * An update of the winning probablility triggers an event `WinProbUpdated`.
 * The winning probablity `WinProb` is stored in uint56, the same as in the HoprChannels contract.
 */
contract HoprWinningProbablityOracle is Ownable2Step, HoprWinningProbablityOracleEvents {
    WinProb public currentWinProb;

    // when new winning probability is equal to old winning probability
    error WinProbMustNotBeSame();

    /**
     * @param _newOwner Address of the new owner.
     * @param _initialWinProb Initially set the numerator of winning probablity.
     */
    constructor(address _newOwner, WinProb _initialWinProb) {
        _transferOwnership(_newOwner);
        _setWinProb(_initialWinProb);
    }

    /**
     * @dev Owner can set a new winning probability.
     * @param _newWinProb new winning probability, must not the same as what is already set
     */
    function setWinProb(WinProb _newWinProb) external onlyOwner {
        if (_newWinProb == currentWinProb) {
            revert WinProbMustNotBeSame();
        }
        _setWinProb(_newWinProb);
    }

    /**
     * @dev Set a new winning probability.
     * @param _newWinProb new winning probability, must not the same as what is already set
     */
    function _setWinProb(WinProb _newWinProb) internal {
        WinProb oldWinProb = currentWinProb;
        currentWinProb = _newWinProb;

        emit WinProbUpdated(oldWinProb, currentWinProb);
    }
}