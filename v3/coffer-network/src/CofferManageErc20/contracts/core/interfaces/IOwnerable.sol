// SPDX-License-Identifier: MIT

pragma solidity =0.8.28;

import "./IError.sol";

interface IOwnerable is IError {
    // Errors
    error ErrorNotOwner();
    error ErrorNotPendingOwner();

    // Owner Events
    event OwnershipTransferred(address indexed oldOwner, address indexed newOwner);

    function transferOwner(address _newOwner) external;
    function acceptOwner() external;
}
