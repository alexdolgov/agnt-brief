// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {IBeacon} from "../common/interfaces/IBeacon.sol";
import {StorageSlot} from "../common/libraries/StorageSlot.sol";

/**
 * @title Proxy
 * @author Mohammad Salim, WisdomTree Digital Assets
 * @notice Implementation of a transparent proxy that delegates calls to implementation contracts
 * @dev This contract acts as a transparent proxy that forwards all function calls to an implementation
 * contract provided by a beacon. The proxy supports upgrades through beacon changes and includes
 * initialization logic for setting up the initial state. All calls except those to specific
 * proxy management functions are delegated to the implementation.
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
     * @notice Fallback function that delegates all calls to the implementation contract
     * @dev Uses delegatecall to preserve the proxy's storage context while executing implementation logic
     * The implementation address is retrieved from the beacon contract for each call
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
     * @notice Receive function that rejects all Ether deposits
     * @dev This proxy does not accept Ether transfers and will revert any attempts
     */
    receive() external payable {
        revert("Does not accept Ether deposits");
    }

    /**
     * @notice Retrieves the current implementation address from the beacon
     * @dev This function exposes the implementation address for transparency
     * @return The address of the current implementation contract
     */
    function getImplementation() external view returns (address) {
        return _implementation();
    }

    /**
     * @dev Internal function to get the implementation address from the beacon
     * @return The address of the current implementation contract
     */
    function _implementation() internal view returns (address) {
        return IBeacon(StorageSlot.getAddressSlot(_BEACON_SLOT).value).implementation();
    }
}
