// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "./interfaces/IOwnable.sol";
import {BaseReentrancyGuard} from "../core/BaseReentrancyGuard.sol";
import {BaseOwnable} from "../core/BaseOwnable.sol";

/**
 * @title Lightweight version of the ownership contract. This contract has a reentrancy guard.
 */
abstract contract LightweightOwnable is IOwnable, BaseReentrancyGuard, BaseOwnable {
    /**
     * @notice Transfers ownership of the contract to the account specified.
     * @param newOwner The address of the new owner.
     */
    function transferOwnership(address newOwner) external virtual nonReentrant onlyOwner {
        _transferOwnership(newOwner);
    }

    /**
     * @notice Gets the owner of the contract.
     * @return address The address who owns the contract.
     */
    function owner() external view virtual returns (address) {
        return _owner;
    }    
}
