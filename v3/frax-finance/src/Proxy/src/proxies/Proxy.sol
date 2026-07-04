// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {IBeacon} from "../common/interfaces/IBeacon.sol";
import {StorageSlot} from "../common/libraries/StorageSlot.sol";

/**
 * @title Proxy
 * @dev Implementation of the Proxy contract to delegate calls to implementation contracts.
 * @custom:security-contact security@wisdomtree.com
 */
contract Proxy {
    using StorageSlot for StorageSlot.AddressSlot;

    /// @notice The slot for the Beacon address.
    bytes32 internal constant _BEACON_SLOT = keccak256("proxy.beacon");

    /// @notice The slot for the initialization owner address.
    bytes32 internal constant _INIT_OWNER_SLOT = keccak256("proxy.initializationOwnerAddress");

    /// @notice The event for beacon address change.
    event BeaconChanged(address indexed previousBeacon, address indexed newBeacon);

    /**
     * @notice Constructor to initialize the proxy with a beacon address and initialization owner address.
     * Requirements:
     * - The `beacon_` address cannot be the zero address.
     * @param beacon_ The beacon address.
     * @param initData The initialization data.
     */
    constructor(
        address beacon_,
        bytes memory initData
    ) {
        require(beacon_ != address(0), "Proxy: new beacon is the zero address");
        StorageSlot.getAddressSlot(_BEACON_SLOT).value = beacon_;
        emit BeaconChanged(address(0), beacon_);

        StorageSlot.getAddressSlot(_INIT_OWNER_SLOT).value = msg.sender;

        address implementationAddress = _implementation();
        (bool success, ) = implementationAddress.delegatecall(
            initData
            );
        require(success, "Proxy: Initialization failed");
    }

    /**
     * @notice Fallback function to delegate calls to the implementation contract.
     */
    fallback() external payable {
        address impl = _implementation();
        require(impl != address(0), "Proxy: implementation is the zero address");

        assembly {
            let ptr := mload(0x40)
            calldatacopy(ptr, 0, calldatasize())
            let result := delegatecall(gas(), impl, ptr, calldatasize(), 0, 0)
            let size := returndatasize()
            returndatacopy(ptr, 0, size)
            switch result
            case 0 { revert(ptr, size) }
            default { return(ptr, size) }
        }
    }

    /**
     * @notice Receive function to reject Ether deposits.
     */
    receive() external payable {
        revert("Does not accept Ether deposits");
    }

    /**
     * @notice Retrieves the current implementation address.
     * @return The current implementation address.
     */
    function getImplementation() external view returns (address) {
        return _implementation();
    }

    /**
     * @notice Retrieves the current implementation address.
     * @return The current implementation address.
     */
    function _implementation() internal view returns (address) {
        return IBeacon(StorageSlot.getAddressSlot(_BEACON_SLOT).value).implementation();
    }
}
