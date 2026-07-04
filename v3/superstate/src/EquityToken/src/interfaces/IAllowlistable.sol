// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

/**
 * @title IAllowlistable
 * @notice Interface for allowlist functionality
 * @dev Defines the interface for checking if addresses have permission to interact with the token
 */
interface IAllowlistable {
    /**
     * @dev Returns the current allowlist contract
     * @return The allowlist contract address
     */
    function allowlist() external view returns (address);

    /**
     * @dev Returns whether the instrument is public or private
     * @return True if the instrument is public, false if private
     */
    function isPublicInstrument() external view returns (bool);

    /**
     * @dev Checks if an address is allowed to interact with a private instrument
     * @param addr The address to check
     * @param instrument The private instrument identifier (typically a symbol)
     * @return True if the address is allowed, false otherwise
     */
    function isAddressAllowedForPrivateInstrument(address addr, string calldata instrument) external view returns (bool);

    /**
     * @dev Checks if an address is allowed to interact with public instrument
     * @param addr The address to check
     * @return True if the address is allowed, false otherwise
     */
    function isAddressAllowedForPublicInstrument(address addr) external view returns (bool);

    /**
     * @dev Checks if two addresses belong to the same entity
     * @param addr1 The first address
     * @param addr2 The second address
     * @return True if both addresses belong to the same entity, false otherwise
     */
    function isSameEntity(address addr1, address addr2) external view returns (bool);

    /**
     * @dev Emitted when the allowlist is updated
     */
    event AllowlistUpdated(address indexed oldAllowlist, address indexed newAllowlist);
    
    /**
     * @dev Emitted when the instrument type (public/private) is updated
     */
    event IsPublicInstrumentUpdated(bool oldIsPublicInstrument, bool newIsPublicInstrument);
    
    /**
     * @dev Error thrown when an address doesn't have sufficient permissions
     */
    error InsufficientPermissions();
    
    /**
     * @dev Error thrown when entity IDs don't match
     */
    error MismatchEntityIds();

    error ZeroAddressNotAllowed();
}
