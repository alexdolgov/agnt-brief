// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {BeaconProxy} from "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import {UpgradeableBeacon} from "@openzeppelin/contracts/proxy/beacon/UpgradeableBeacon.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/// @title BeaconProxyFactoryCreate2
/// @notice Factory contract for creating deterministic beacon proxies using CREATE2
/// @dev This contract is meant to be inherited by other contracts that need to create beacon proxies with predictable addresses
contract BeaconProxyFactoryCreate2 is Initializable {
    /// @notice Error thrown when zero address is provided for owner
    error BeaconProxyFactoryZeroOwner();

    /// @notice Error thrown when zero address is provided for implementation
    error BeaconProxyFactoryZeroImplementation();

    /// @notice Error thrown when proxy initialization fails
    error BeaconProxyFactoryCreate2Initialize();

    /// @notice Error thrown when a proxy already exists at the computed address
    error ProxyAlreadyExistsAtSalt();

    /// @notice The address of the UpgradeableBeacon contract
    address private _beacon;

    /// @notice Emitted when a new UpgradeableBeacon is set
    /// @param beacon The address of the newly created beacon
    /// @param implementation The address of the implementation contract
    /// @param owner The address of the beacon owner
    event SetUpgradeableBeacon(address indexed beacon, address indexed implementation, address indexed owner);

    /// @notice Emitted when a new BeaconProxy is created using CREATE2
    /// @param proxy The address of the newly created proxy
    /// @param beacon The address of the beacon contract
    /// @param implementation The current implementation address from the beacon
    /// @param initializeCalldata The initialization data passed to the proxy
    /// @param salt The salt used in CREATE2 to determine the proxy's address
    event BeaconProxyCreated(
        address indexed proxy,
        address indexed beacon,
        address indexed implementation,
        bytes initializeCalldata,
        bytes32 salt
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

    /// @notice Creates a new BeaconProxy at a deterministic address using CREATE2
    /// @dev The proxy will use the current implementation from the beacon
    /// @param initializeCalldata The calldata to initialize the proxy
    /// @param salt The salt used to determine the proxy's address
    /// @return proxyAddress The address of the newly created proxy
    function _create2BeaconProxy(bytes memory initializeCalldata, bytes32 salt)
        internal
        returns (address proxyAddress)
    {
        proxyAddress = _computeCreate2Address(salt);
        if (proxyAddress.code.length != 0) revert ProxyAlreadyExistsAtSalt();

        bytes memory creationCode = type(BeaconProxy).creationCode;
        // NOTE: BeaconProxy data param is empty so create2 address does not depend on it
        bytes memory bytecode = abi.encodePacked(creationCode, abi.encode(_beacon, ""));
        // solhint-disable-next-line no-inline-assembly
        assembly {
            proxyAddress := create2(0, add(bytecode, 0x20), mload(bytecode), salt)
            if iszero(extcodesize(proxyAddress)) { revert(0, 0) }
        }
        // NOTE: BeaconProxy is not initialized on constructor so its initialized after deployment
        // solhint-disable-next-line avoid-low-level-calls
        (bool success,) = proxyAddress.call(initializeCalldata);
        if (!success) revert BeaconProxyFactoryCreate2Initialize();

        emit BeaconProxyCreated(
            proxyAddress, _beacon, UpgradeableBeacon(_beacon).implementation(), initializeCalldata, salt
        );
    }

    /// @notice Computes the address where a proxy would be deployed using CREATE2
    /// @dev This function can be used to predict the address before deployment
    /// @param salt The salt to be used in the CREATE2 deployment
    /// @return The address where the proxy would be deployed
    function _computeCreate2Address(bytes32 salt) internal view returns (address) {
        bytes memory bytecode = abi.encodePacked(type(BeaconProxy).creationCode, abi.encode(_beacon, ""));
        return address(
            uint160(uint256(keccak256(abi.encodePacked(bytes1(0xff), address(this), salt, keccak256(bytecode)))))
        );
    }

    /// @notice Returns the address of the beacon
    /// @return The address of the UpgradeableBeacon contract
    function beacon() public view returns (address) {
        return _beacon;
    }

    /// @dev Reserved storage space to allow for layout changes in the future
    /// @custom:storage-size 49 This is the size of the gap
    uint256[49] private __gap;
}
