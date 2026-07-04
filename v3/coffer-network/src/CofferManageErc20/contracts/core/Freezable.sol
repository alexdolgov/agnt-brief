// SPDX-License-Identifier: MIT

pragma solidity =0.8.28;

import "./interfaces/IFreezable.sol";

contract Freezable is IFreezable {
    // Freezer
    address public freezer;

    // Pending freezer
    address internal pendingFreezer_;

    // Frozen
    mapping(address => bool) internal frozen;

    constructor(address _freezer) {
        require(_freezer != address(0), ErrorZeroAddress());
        freezer = _freezer;
    }

    /**
     * @dev Allows the current freezer to transfer control of the contract to a newFreezer.
     * @param _newFreezer The new address allowed to freeze/unfreeze addresses and seize their tokens.
     */
    function transferFreezer(address _newFreezer) public onlyFreezer {
        require(_newFreezer != address(0), ErrorZeroAddress());
        require(_newFreezer != freezer, ErrorSameAddress());

        pendingFreezer_ = _newFreezer;
    }

    function acceptFreezer() external {
        require(msg.sender == pendingFreezer_, ErrorNotPendingFreezer());

        address oldFreezer = freezer;
        freezer = pendingFreezer_;
        emit FreezerTransferred(oldFreezer, freezer);

        pendingFreezer_ = address(0);
    }

    modifier onlyFreezer() {
        require(msg.sender == freezer, ErrorNotFreezer());
        _;
    }

    /**
     * @dev Freezes an address balance from being transferred.
     * @param _addr The new address to freeze.
     */
    function freeze(address _addr) internal onlyFreezer {
        require(!frozen[_addr], ErrorSameStatus());
        frozen[_addr] = true;
        emit AccountFrozen(_addr);
    }

    /**
     * @dev Unfreezes an address balance allowing transfer.
     * @param _addr The new address to unfreeze.
     */
    function unfreeze(address _addr) internal onlyFreezer {
        require(frozen[_addr], ErrorSameStatus());
        frozen[_addr] = false;
        emit AccountUnfrozen(_addr);
    }

    /**
     * @dev Gets the balance of the specified address.
     * @param _addr The address to check if frozen.
     * @return A bool representing whether the given address is frozen.
     */
    function isFrozen(address _addr) public view returns (bool) {
        return frozen[_addr];
    }
}
