// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

interface IBeacon {
    error InvalidImplementation(address implementation);

    /**
     * This upgrade will affect all Beacon Proxies that use this Beacon
     * @param newImplementation New implementation to delegate calls from Beacon Proxies
     */
    function setImplementation(address newImplementation) external;

    /**
     * Returns address of the current used by Beacon Proxies
     */
    function implementation() external view returns (address);
}
