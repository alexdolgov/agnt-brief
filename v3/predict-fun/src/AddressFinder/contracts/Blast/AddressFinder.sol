// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IAddressFinder} from "./interfaces/IAddressFinder.sol";

/**
 * @title Provides addresses of the live contracts implementing certain interfaces.
 * @dev Examples of interfaces with implementations that Finder locates are the Oracle and Store interfaces.
 * @notice This is a straight fork of UMA's Finder contract and we are using it for non-contracts as well.
 */
contract AddressFinder is IAddressFinder, Ownable2Step {
    mapping(bytes32 => address) public interfacesImplemented;

    event InterfaceImplementationChanged(bytes32 indexed interfaceName, address indexed newImplementationAddress);

    constructor(address owner) Ownable(owner) {}

    /**
     * @notice Updates the address of the contract that implements `interfaceName`.
     * @param interfaceName bytes32 of the interface name that is either changed or registered.
     * @param implementationAddress address of the implementation contract.
     */
    function changeImplementationAddress(
        bytes32 interfaceName,
        address implementationAddress
    ) external override onlyOwner {
        interfacesImplemented[interfaceName] = implementationAddress;

        emit InterfaceImplementationChanged(interfaceName, implementationAddress);
    }

    /**
     * @notice Gets the address of the contract that implements the given `interfaceName`.
     * @param interfaceName queried interface.
     * @return implementationAddress address of the defined interface.
     */
    function getImplementationAddress(bytes32 interfaceName) external view override returns (address) {
        address implementationAddress = interfacesImplemented[interfaceName];
        require(implementationAddress != address(0x0), "Implementation not found");
        return implementationAddress;
    }
}
