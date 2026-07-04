// SPDX-License-Identifier: MIT

pragma solidity =0.8.28;

import "./interfaces/IOwnerable.sol";

contract Ownerable is IOwnerable {
    // Owner
    address public owner;

    // Pending Owner
    address internal pendingOwner_;

    constructor(address _owner) {
        require(_owner != address(0), ErrorZeroAddress());
        owner = _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(msg.sender == owner, ErrorNotOwner());
        _;
    }

    /**
     * @dev Allows the current owner to transfer control of the contract to a newOwner.
     * @param _newOwner The address to transfer ownership to.
     */
    function transferOwner(address _newOwner) public onlyOwner {
        require(_newOwner != address(0), ErrorZeroAddress());
        require(_newOwner != owner, ErrorSameAddress());
        pendingOwner_ = _newOwner;
    }

    function acceptOwner() external {
        require(msg.sender == pendingOwner_, ErrorNotPendingOwner());

        address oldOwner = owner;
        owner = pendingOwner_;
        emit OwnershipTransferred(oldOwner, owner);

        pendingOwner_ = address(0);
    }
}
