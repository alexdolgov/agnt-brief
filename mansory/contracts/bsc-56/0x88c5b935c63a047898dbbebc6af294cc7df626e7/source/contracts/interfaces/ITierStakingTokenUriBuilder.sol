// SPDX-License-Identifier: MIT
pragma solidity >0.8.20;

import './ITierStaking.sol';

/**
 * @title Tier-based NFT Metadata Builder Interface
 * @notice Implemented by helpers that generate on-chain JSON metadata for
 *         Tier Staking NFTs as well as ERC-7572 collection metadata.
 */
interface ITierStakingTokenUriBuilder {
    /**
     * @notice Returns the ERC-7572 contract-level metadata JSON (base64-encoded).
     * @return Base-64-encoded JSON document describing the collection.
     */
    function buildERC7572() external view returns (string memory);

    /**
     * @notice Builds the tokenURI JSON for a single staking receipt NFT.
     *
     * @param tokenId_      The ERC-721 token identifier.
     * @param tokenOwner_   Current owner of the NFT (included for completeness;
     *                      may be ignored by a particular implementation).
     * @param nftData_      The tier-specific data returned from `ITierStaking`.
     *
     * @return Base-64-encoded JSON document suitable for `tokenURI`.
     */
    function build(
        uint256 tokenId_,
        address tokenOwner_,
        ITierStaking.NftData memory nftData_
    ) external view returns (string memory);
}
