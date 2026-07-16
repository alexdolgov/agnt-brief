// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {Proxy} from "@openzeppelin/contracts/proxy/Proxy.sol";
import {IBeacon} from "contracts/interfaces/base/proxy/IBeacon.sol";
import {SafeCall} from "contracts/libraries/SafeCall.sol";

contract ImmutableBeaconProxy is Proxy {
    using {SafeCall.safeDelegateCall} for address;

    address private immutable beacon;

    error BeaconCallFailed();
    error BeaconReturnedUnexpectedNumberOfBytes(uint256);
    error BeaconReturnedAddressZero();

    constructor(bytes memory initDataWithSelector) {
        beacon = msg.sender;

        if (initDataWithSelector.length > 0) {
            _implementation().safeDelegateCall(initDataWithSelector);
        }
    }

    function _implementation() internal view override returns (address impl) {
        (bool success, bytes memory result) = beacon.staticcall(
            abi.encodeWithSelector(IBeacon.implementation.selector)
        );

        if (!success) revert BeaconCallFailed();
        if (result.length != 32) revert BeaconReturnedUnexpectedNumberOfBytes(result.length);

        impl = abi.decode(result, (address));
        if (impl == address(0)) revert BeaconReturnedAddressZero();
    }
}
