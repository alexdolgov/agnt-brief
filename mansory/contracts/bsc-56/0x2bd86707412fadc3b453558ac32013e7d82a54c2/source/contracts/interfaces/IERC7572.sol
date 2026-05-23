// SPDX-License-Identifier: MIT
pragma solidity >0.8.20;

/**
 * @title ERC-7572 Metadata Interface
 * @notice Minimal interface for contracts that expose a collection-level metadata
 *         document through {contractURI}.
 * @dev Conforms to the draft ERC-7572 (“Contract-level Metadata”) standard.
 */
interface IERC7572 {
    /**
     * @notice Emitted when the contract-level metadata URI is changed.
     */
    event ContractURIUpdated();

    /**
     * @notice Returns the URI pointing to a JSON document that describes the collection
     *         or contract as a whole (e.g. royalty info, external links, image, description).
     * @dev SHOULD follow the ERC-7572 JSON schema and typically points to a
     *      `data:application/json;base64,` payload or an HTTPS URL.
     */
    function contractURI() external view returns (string memory);
}
