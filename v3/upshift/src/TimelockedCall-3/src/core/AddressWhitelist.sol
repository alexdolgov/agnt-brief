// SPDX-License-Identifier: BUSL-1.1
pragma solidity >= 0.8.26;

import "./interfaces/IAddressWhitelist.sol";
import "./LightweightOwnable.sol";

/**
 * @title Standalone contract for whitelisting addresses.
 */
contract AddressWhitelist is IAddressWhitelist, LightweightOwnable {
    mapping (address => bool) internal _whitelistedAddresses;

    constructor(address ownerAddr) {
        require(ownerAddr != address(0), "Owner required");
        _owner = ownerAddr;
    }

    /**
     * @notice Whitelists the address specified.
     * @param addr The address to enable
     */
    function enableAddress (address addr) external override nonReentrant onlyOwner {
        require(!_whitelistedAddresses[addr], "Already enabled");
        _whitelistedAddresses[addr] = true;
        emit OnAddressEnabled(addr);
    }

    /**
     * @notice Whitelists the addresses specified.
     * @param arr The addresses to enable
     */
    function enableAddresses (address[] calldata arr) external override nonReentrant onlyOwner {
        require(arr.length > 0, "Addresses required");

        for (uint256 i; i < arr.length; i++) {
            require(arr[i] != address(0), "Invalid address");
            require(!_whitelistedAddresses[arr[i]], "Already enabled");
            _whitelistedAddresses[arr[i]] = true;
            emit OnAddressEnabled(arr[i]);
        }
    }

    /**
     * @notice Disables the address specified.
     * @param addr The address to disable
     */
    function disableAddress (address addr) external override nonReentrant onlyOwner {
        require(_whitelistedAddresses[addr], "Already disabled");
        _whitelistedAddresses[addr] = false;
        emit OnAddressDisabled(addr);
    }

    /**
     * @notice Disables the addresses specified.
     * @param arr The addresses to disable
     */
    function disableAddresses (address[] calldata arr) external override nonReentrant onlyOwner {
        for (uint256 i; i < arr.length; i++) {
            require(_whitelistedAddresses[arr[i]], "Already disabled");
            _whitelistedAddresses[arr[i]] = false;
            emit OnAddressDisabled(arr[i]);
        }
    }

    /**
     * @notice Indicates if the address is whitelisted or not.
     * @param addr The address to evaluate.
     * @return Returns true if the address is whitelisted.
     */
    function isWhitelistedAddress (address addr) external view override returns (bool) {
        return _whitelistedAddresses[addr];
    }
}
