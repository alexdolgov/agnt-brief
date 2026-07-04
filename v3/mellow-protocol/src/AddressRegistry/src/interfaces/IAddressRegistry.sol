// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.25;

interface IAddressRegistry {
    event BotAddressUpdated(address previousAddress, address newAddress);
    event HelperAddressUpdated(address previousAddress, address newAddress);

    function bot() external view returns (address);
    function helper() external view returns (address);
}
