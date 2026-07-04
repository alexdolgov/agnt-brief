// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/proxy/beacon/IBeacon.sol";
import "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";

import "@openzeppelin/contracts/proxy/utils/Initializable.sol";

import "./../interfaces/IGauge.sol";

contract GaugeFactory is IBeacon, Initializable {
    address public lastGauge;
    address public implementation;
    address public owner;

    /// @notice Emitted when pairs implementation is changed
    /// @param oldImplementation The previous implementation
    /// @param newImplementation The new implementation
    event ImplementationChanged(
        address indexed oldImplementation,
        address indexed newImplementation
    );

    /// @notice Emitted when the owner of the factory is changed
    /// @param oldOwner The owner before the owner was changed
    /// @param newOwner The owner after the owner was changed
    event OwnerChanged(address indexed oldOwner, address indexed newOwner);

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _owner,
        address _implementation
    ) external initializer {
        owner = _owner;
        implementation = _implementation;
        emit OwnerChanged(address(0), msg.sender);
    }

    function createGauge(
        address _pool,
        address _feeDistributor,
        address _ve,
        bool isPair,
        address[] calldata _initialRewards
    ) external returns (address) {
        require(msg.sender == 0xAAAf3D9CDD3602d117c67D80eEC37a160C8d9869);
        lastGauge = address(
            new BeaconProxy(
                address(this),
                abi.encodeWithSelector(
                    IGauge.initialize.selector,
                    _pool,
                    _feeDistributor,
                    _ve,
                    msg.sender,
                    isPair,
                    _initialRewards
                )
            )
        );

        return lastGauge;
    }

    function setImplementation(address _implementation) external {
        require(msg.sender == owner, "AUTH");
        emit ImplementationChanged(implementation, _implementation);
        implementation = _implementation;
    }

    function setOwner(address _owner) external {
        require(msg.sender == owner, "AUTH");
        emit OwnerChanged(owner, _owner);
        owner = _owner;
    }
}
