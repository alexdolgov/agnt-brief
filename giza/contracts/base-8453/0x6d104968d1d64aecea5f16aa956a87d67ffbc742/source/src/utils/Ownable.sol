// SPDX-License-Identifier: MIT
/*
Copyright 2025 Giza Association
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), 
to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE 
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/
pragma solidity 0.8.26;

///@title Ownable contract
/// @notice Simple 2step owner authorization combining solmate and OZ implementation
abstract contract Ownable {
    /*//////////////////////////////////////////////////////////////
                             STORAGE
    //////////////////////////////////////////////////////////////*/

    ///@notice Address of the owner
    address public owner;

    ///@notice Address of the pending owner
    address public pendingOwner;

    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event OwnershipTransferred(address indexed user, address indexed newOner);
    event OwnershipTransferStarted(address indexed user, address indexed newOwner);
    event OwnershipTransferCanceled(address indexed pendingOwner);

    /*//////////////////////////////////////////////////////////////
                                 ERROR
    //////////////////////////////////////////////////////////////*/

    error Unauthorized();

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(address _owner) {
        owner = _owner;

        emit OwnershipTransferred(address(0), _owner);
    }

    /*//////////////////////////////////////////////////////////////
                             OWNERSHIP LOGIC
    //////////////////////////////////////////////////////////////*/

    ///@notice Transfer ownership to a new address
    ///@param newOwner address of the new owner
    ///@dev newOwner have to acceptOwnership
    function transferOwnership(address newOwner) external onlyOwner {
        pendingOwner = newOwner;
        emit OwnershipTransferStarted(msg.sender, newOwner);
    }

    ///@notice NewOwner accept the ownership, it transfer the ownership to newOwner
    function acceptOwnership() external {
        if (msg.sender != pendingOwner) revert Unauthorized();
        address oldOwner = owner;
        owner = pendingOwner;
        delete pendingOwner;
        emit OwnershipTransferred(oldOwner, owner);
    }

    ///@notice Cancel the ownership transfer
    function cancelTransferOwnership() external onlyOwner {
        emit OwnershipTransferCanceled(pendingOwner);
        delete pendingOwner;
    }

    modifier onlyOwner() {
        if (msg.sender != owner) revert Unauthorized();
        _;
    }
}
