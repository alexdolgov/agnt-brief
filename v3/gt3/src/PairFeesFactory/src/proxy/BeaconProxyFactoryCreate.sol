// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {BeaconProxy} from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import {UpgradeableBeacon} from "@openzeppelin/contracts/proxy/beacon/UpgradeableBeacon.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/// @title BeaconProxyFactoryCreate
/// @notice Factory contract for creating beacon proxies with a shared implementation
/// @dev This contract is meant to be inherited by other contracts that need to create beacon proxies
contract BeaconProxyFactoryCreate is Initializable {
    /// @notice Error thrown when zero address is provided for owner
    error BeaconProxyFactoryZeroOwner();

    /// @notice Error thrown when zero address is provided for implementation
    error BeaconProxyFactoryZeroImplementation();

    /// @notice The address of the UpgradeableBeacon contract
    address private _beacon;

    /// @notice Emitted when a new UpgradeableBeacon is set
    /// @param beacon The address of the newly created beacon
    /// @param implementation The address of the implementation contract
    /// @param owner The address of the beacon owner
    event SetUpgradeableBeacon(address indexed beacon, address indexed implementation, address indexed owner);

    /// @notice Emitted when a new BeaconProxy is created
    /// @param proxy The address of the newly created proxy
    /// @param beacon The address of the beacon contract
    /// @param implementation The current implementation address from the beacon
    /// @param initializeCalldata The initialization data passed to the proxy
    event BeaconProxyCreated(
        address indexed proxy, address indexed beacon, address indexed implementation, bytes initializeCalldata
    );

    /// @notice Constructor that disables initializers
    /// @dev This prevents the implementation contract from being initialized
    constructor() {
        _disableInitializers();
    }

    /// @notice Initializes the BeaconProxyFactory
    /// @dev This function should be called only once through a proxy
    /// @param owner_ The address that will own the beacon
    /// @param implementation_ The initial implementation address
    // solhint-disable-next-line func-name-mixedcase
    function __BeaconProxyFactory_init(address owner_, address implementation_) internal onlyInitializing {
        __BeaconProxyFactory_init_unchained(owner_, implementation_);
    }

    /// @notice Internal function to initialize the BeaconProxyFactory
    /// @dev Creates a new UpgradeableBeacon and sets it as the beacon
    /// @param owner_ The address that will own the beacon
    /// @param implementation_ The initial implementation address
    // solhint-disable-next-line func-name-mixedcase
    function __BeaconProxyFactory_init_unchained(address owner_, address implementation_) internal onlyInitializing {
        if (owner_ == address(0)) revert BeaconProxyFactoryZeroOwner();
        if (implementation_ == address(0)) revert BeaconProxyFactoryZeroImplementation();

        _beacon = address(new UpgradeableBeacon(implementation_, owner_));
        emit SetUpgradeableBeacon(_beacon, implementation_, owner_);
    }

    /// @notice Creates a new BeaconProxy
    /// @dev The proxy will use the current implementation from the beacon
    /// @param initializeCalldata_ The calldata to initialize the proxy
    /// @return proxyAddress The address of the newly created proxy
    function _createBeaconProxy(bytes memory initializeCalldata_) internal returns (address proxyAddress) {
        proxyAddress = address(new BeaconProxy(_beacon, initializeCalldata_));
        emit BeaconProxyCreated(proxyAddress, _beacon, UpgradeableBeacon(_beacon).implementation(), initializeCalldata_);
    }

    /// @notice Returns the address of the beacon
    /// @return The address of the UpgradeableBeacon contract
    function beacon() public view returns (address) {
        return _beacon;
    }

    /// @dev Reserved storage space to allow for layout changes in the future.
    /// @custom:storage-size 49 This is the size of the gap
    uint256[49] private __gap;
}
