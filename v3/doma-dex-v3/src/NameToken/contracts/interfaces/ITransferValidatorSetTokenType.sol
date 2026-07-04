// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface ITransferValidatorSetTokenType {
    /**
     * @notice Sets the token type for a collection
     * @param collection The address of the collection contract
     * @param tokenType The type of token (e.g., ERC721, ERC1155, ERC20)
     */
    function setTokenTypeOfCollection(address collection, uint16 tokenType) external;
}
