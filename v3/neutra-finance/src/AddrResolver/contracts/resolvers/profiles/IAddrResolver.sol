// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

/**
 * Interface for the legacy (ETH-only) addr function.
 */
interface IAddrResolver {
    event AddrChanged(bytes32 indexed node, address a);

    /**
     * Returns the address associated with an RNS node.
     * @param node The RNS node to query.
     * @return The associated address.
     */
    function addr(bytes32 node) external view returns (address payable);
}
