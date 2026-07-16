// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title IDomainMapper
 * @notice Maps between Hyperlane domain IDs and CCTP domain IDs
 * @dev Hyperlane and CCTP use different domain ID schemes.
 *      This external contract provides the conversion.
 *      Example: Hyperlane Arbitrum = 42161, CCTP Arbitrum = 3
 */
interface IDomainMapper {
    /**
     * @notice Convert a Hyperlane domain ID to a CCTP domain ID
     * @param hyperlaneDomain The Hyperlane domain ID
     * @return cctpDomain The corresponding CCTP domain ID
     */
    function hyperlaneToCctp(uint32 hyperlaneDomain) external view returns (uint32 cctpDomain);

    /**
     * @notice Check if a Hyperlane domain has a CCTP mapping
     * @param hyperlaneDomain The Hyperlane domain ID
     * @return True if a mapping exists
     */
    function hasCctpMapping(uint32 hyperlaneDomain) external view returns (bool);
}
