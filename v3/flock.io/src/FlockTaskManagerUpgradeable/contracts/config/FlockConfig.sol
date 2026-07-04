// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import {IFlockConfig} from "../interfaces/IFlockConfig.sol";
import "../AdminUpgradeable.sol";

/**
 * @title Flock Configuration
 * @notice The config information which contains all the relevant smart contracts and numeric and boolean configuration
 * @author AlloyX
 */

contract FlockConfig is IFlockConfig, AdminUpgradeable {
    mapping(uint256 => address) private addresses;

    event AddressUpdated(address owner, uint256 index, address oldValue, address newValue);

    function initialize() external initializer {
        __AdminUpgradeable_init(msg.sender);
    }

    /**
     * @notice Set the address of certain index
     * @param addressIndex the index to set
     * @param newAddress new address to set
     */
    function setAddress(uint256 addressIndex, address newAddress) public override onlyAdmin {
        require(newAddress != address(0));
        emit AddressUpdated(msg.sender, addressIndex, addresses[addressIndex], newAddress);
        addresses[addressIndex] = newAddress;
    }

    /**
     * @notice Copy from other config
     * @param _initialConfig the configuration to copy from
     * @param addressesLength the length of the addresses to copy from
     */
    function copyFromOtherConfig(address _initialConfig, uint256 addressesLength) external onlyAdmin {
        IFlockConfig initialConfig = IFlockConfig(_initialConfig);
        for (uint256 i = 0; i < addressesLength; i++) {
            setAddress(i, initialConfig.getAddress(i));
        }
    }

    /**
     * @notice Get address for index
     * @param index the index to get address from
     */
    function getAddress(uint256 index) external view override returns (address) {
        return addresses[index];
    }
}
