// SPDX-License-Identifier: MIT

pragma solidity =0.8.28;

import "./IError.sol";

interface IPausable is IError {
    // Errors
    error ErrorNotPauser();
    error ErrorNotPendingPauser();
    error ErrorWhenNotPaused();

    // Pauser Events
    event PauserTransferred(address indexed oldPauser, address indexed newPauser);

    event Pause();
    event Unpause();

    function transferPauser(address _newPauser) external;
    function acceptPauser() external;

    function pause() external;
    function unpause() external;
}
