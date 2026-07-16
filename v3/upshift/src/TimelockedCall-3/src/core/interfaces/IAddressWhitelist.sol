// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

/**
 * @notice Defines the interface for whitelisting addresses.
 */
interface IAddressWhitelist {
    /**
     * @notice Whitelists the address specified.
     * @param addr The address to enable
     */
    function enableAddress (address addr) external;

    /**
     * @notice Whitelists the addresses specified.
     * @param arr The addresses to enable
     */
    function enableAddresses (address[] calldata arr) external;

    /**
     * @notice Disables the address specified.
     * @param addr The address to disable
     */
    function disableAddress (address addr) external;

    /**
     * @notice Disables the addresses specified.
     * @param arr The addresses to disable
     */
    function disableAddresses (address[] calldata arr) external;

    /**
     * @notice Indicates if the address is whitelisted or not.
     * @param addr The address to disable
     * @return Returns 1 if the address is whitelisted
     */
    function isWhitelistedAddress (address addr) external view returns (bool);

    /**
     * This event is triggered when a new address is whitelisted.
     * @param addr The address that was whitelisted
     */
    event OnAddressEnabled(address addr);

    /**
     * This event is triggered when an address is disabled.
     * @param addr The address that was disabled
     */
    event OnAddressDisabled(address addr);
}
