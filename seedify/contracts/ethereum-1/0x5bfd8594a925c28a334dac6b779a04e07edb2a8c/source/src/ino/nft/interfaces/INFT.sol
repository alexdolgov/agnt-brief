// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {INOStorage} from "../../INOStorage.sol";

/**
 * @title INFT
 * @notice Define external and public functions used by NFTs listed in INOs.
 */
interface INFT {
    /// @dev Removes default royalty information.
    function deleteDefaultRoyalty() external;

    /**
     * @notice Initialize a clones NFT to sell & mint for an INO.
     * @dev Need to be public as childs override it while calling {super.initialize()}.
     *
     * @param data The NFT collection data.
     * @param initialOwner The initial owner of the NFT collection.
     * @param ino_ The linked INO contract address.
     */
    function initialize(
        INOStorage.NFTCollectionData calldata data,
        address initialOwner,
        address ino_
    ) external;

    /**
     * @notice Mint tokens, restricted to the INO contract.
     *
     * @dev    If the implementing token uses _safeMint(), or a feeRecipient with a malicious receive()
     *         hook is specified, the token or fee recipients may be able to execute another mint in the
     *         same transaction via a separate INO contract.
     *         This is dangerous if an implementing token does not correctly update the minterNumMinted
     *         and currentTotalSupply values before transferring minted tokens, as INO references these
     *         values to enforce token limits on a per-wallet and per-stage basis.
     *
     *         ERC721A tracks these values automatically, but this note and nonReentrant modifier are left
     *         here to encourage best-practices when referencing this contract.
     *
     * @param minter The address to mint to.
     * @param quantity The number of tokens to mint.
     */
    function mint(address minter, uint256 quantity) external;

    /**
     * @notice Mint all unsold NFTs to `receiver`.
     */
    function postmintAllUnsold(address receiver) external;

    /// @notice Mints `toMint` to `receiver` and reduces the max supply if does not mint all left.
    function postmintAndReduceSupply(
        address receiver,
        uint256 toMint
    ) external returns (uint256 reducedBy);

    /**
     * @notice Allow NFT collection owner to mint NFTs to his wallet BEFORE the INO starts. Mostly used to
     *         reward the team behind the project. Can also be used if airdrops/giveaway are introduced
     *         after the INO contract has been deployed.
     * @dev Can not be called even if INO is paused.
     */
    function premint(address receiver, uint256 amount) external;

    /**
     * @notice BE CAREFUL: once max supply is reduced it can never be increased again.
     * @dev Can only reduce the max supply between `totalSupply()` and `maxSupply()`.
     */
    function reduceSupplyTo(uint256 newMaxSupply) external;

    /// @dev Resets royalty information for the token id back to the global default.
    function resetTokenRoyalty(uint256 tokenId) external;

    /**
     * @dev Sets the royalty information that all ids in this contract will default to.
     *
     * @param receiver Address receiving royalties.
     * @param feeNumerator Royalties in basis points.
     */
    function setDefaultRoyalty(address receiver, uint96 feeNumerator) external;

    function setTokenRoyalty(
        uint256 tokenId,
        address receiver,
        uint96 feeNumerator
    ) external;

    /**
     * @notice Returns a set of mint stats for the address.
     *
     * @dev NOTE: Implementing contracts should always update these numbers before transferring any tokens
     *            with _safeMint() to mitigate consequences of malicious onERC721Received() hooks.
     *
     * @param minter The minter address.
     *
     * @return minterNumMinted The number of tokens minted by `minter`.
     * @return currentTotalSupply The current total supply of NFT.
     * @return maxSupply The maximum supply of NFT.
     */
    function getMintStats(
        address minter
    )
        external
        view
        returns (
            uint256 minterNumMinted,
            uint256 currentTotalSupply,
            uint256 maxSupply
        );
}
