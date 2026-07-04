// SPDX-License-Identifier: MIT

pragma solidity =0.8.28;

import "./IError.sol";

interface IFreezable is IError {
    // Errors
    error ErrorNotFreezer();
    error ErrorNotPendingFreezer();
    error ErrorAddressFrozen(address addr);
    error ErrorAddressNotFrozen(address addr);

    // Freezer Events
    event FreezerTransferred(address indexed oldFreezer, address indexed newFreezer);
    event AccountFrozen(address indexed addr);
    event AccountUnfrozen(address indexed addr);
    event FrozenAccountWiped(address indexed addr);

    function transferFreezer(address _newFreezer) external;
    function acceptFreezer() external;
    // function freeze(address _addr) external;
    // function unfreeze(address _addr) external;
    function isFrozen(address _addr) external view returns (bool);
}
