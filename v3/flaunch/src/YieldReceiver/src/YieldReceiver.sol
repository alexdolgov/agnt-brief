// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import {IFLETH} from '@fleth-interfaces/IFLETH.sol';


/**
 * Acts as a yield intermediary recipient to allow for additional safety depending on the
 * strategy defined to be used.
 *
 * The requirement of this intermediary YieldReceiver was introduced by CryptoTicky.
 */
contract YieldReceiver {

    error CallerIsNotFLETHOwner();
    error CannotReceiveETH();
    error CouldNotSendETH();

    /// The flETH token used by the protocol
    IFLETH public immutable flETH;

    /// The yield receiver that will be routed to
    address payable public realYieldReceiver;

    /// A boolean toggle to prevent reentrancy
    bool private _allowHarvest;

    /**
     * Initialises our contract addresses.
     *
     * @param _flETH The {flETH} contract address
     * @param _realYieldReceiver The initial real yield receiver
     */
    constructor(address _flETH, address payable _realYieldReceiver) {
        flETH = IFLETH(_flETH);
        realYieldReceiver = _realYieldReceiver;
    }

    /**
     * Harvests our flETH yield from strategies, unlocking our harvest protection whilst
     * doing so.
     *
     * @dev This can only be called by the FLETH contract owner
     */
    function harvest() external onlyFLETHOwner {
        _allowHarvest = true;
        flETH.harvest();
        _allowHarvest = false;
    }

    /**
     * Allows the `realYieldReceiver` to be updated.
     *
     * @dev This can only be called by the FLETH contract owner
     *
     * @param _realYieldReceiver The new end yield recipient
     */
    function setRealYieldReceiver(address payable _realYieldReceiver) external onlyFLETHOwner {
        realYieldReceiver = _realYieldReceiver;
    }

    /**
     * Only allows the flETH owner to make protected calls.
     */
    modifier onlyFLETHOwner() {
        if (msg.sender != flETH.owner()) revert CallerIsNotFLETHOwner();
        _;
    }

    /**
     * Allows our contract to receive ETH and protected from reentrancy attacks through checking
     * our `_allowHarvest` boolean switch.
     */
    receive() external payable {
        // If we aren't currently allowing a harvest (as it wasn't called through our reentrancy
        // protection) then prevent it
        if (!_allowHarvest) revert CannotReceiveETH();

        // Send the ETH to our real yield receiver, confirming successful receipt
        (bool success, ) = realYieldReceiver.call{value: msg.value}('');
        if (!success) revert CouldNotSendETH();
    }

}
