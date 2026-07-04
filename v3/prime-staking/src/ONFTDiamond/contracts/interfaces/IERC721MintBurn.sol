// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.29;

import {ISolidStateERC721} from "@solidstate/contracts/token/ERC721/ISolidStateERC721.sol";

interface IERC721MintBurn is ISolidStateERC721 {
    /**
     * @notice Mints a new token to the specified address.
     * @param to The address to mint the token to.
     * @param tokenId The ID of the token to mint.
     */
    function mint(address to, uint256 tokenId) external;

    /**
     * @notice Burns the specified token.
     * @param tokenId The ID of the token to burn.
     */
    function burn(uint256 tokenId) external;
}
