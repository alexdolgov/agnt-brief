// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ISponsorCenter} from "./ISponsorCenter.sol";
import {IERC6551Registry} from "./IERC6551Registry.sol";

/// @title AEGIS NFT External Interface (LSN v1)
/// @notice Canonical surface for sponsorship-position NFT minting and metadata.
/// @dev ERC-721 metadata and EIP-2981 functions are available on the implementation,
///      but are not re-declared here to avoid inheritance linearization conflicts.
interface IAegisNFT {
    // -------- Types --------

    enum Tier {
        BUCKLER,
        KITE_SHIELD,
        TOWER_SHIELD
    }

    // -------- Errors --------

    /// @notice Thrown when the caller is not authorized to execute the function.
    error NotAuthorized();

    /// @notice Thrown when an address input is zero.
    error ZeroAddress();

    /// @notice Thrown when a numeric input is invalid.
    error InvalidAmount();

    /// @notice Thrown when public minting has ended.
    error MintEnded();

    /// @notice Thrown when minting would exceed max supply.
    error MaxSupplyReached();

    /// @notice Thrown when the ETH value does not match expected mint fee.
    error MintFeeMismatch();

    /// @notice Thrown when invite data is invalid.
    error InvalidInvite();

    /// @notice Thrown when signature data is invalid.
    error InvalidSignature();

    /// @notice Thrown when the selected tier is invalid.
    error InvalidTier();

    // -------- Events --------

    /// @notice Emitted when a sponsorship NFT is minted.
    event Minted(uint256 indexed tokenId, address indexed to, uint8 tier, address indexed sponsorTba);

    /// @notice Emitted when token metadata in a range has been updated (ERC-4906).
    event BatchMetadataUpdate(uint256 _fromTokenId, uint256 _toTokenId);

    /// @notice Emitted when treasury is updated.
    event TreasuryUpdated(address indexed oldTreasury, address indexed newTreasury);

    // -------- Read: Core Config --------

    /// @notice Total number of sponsorship positions minted.
    /// @dev Also equals the latest minted token id.
    function totalMinted() external view returns (uint256);

    /// @notice Next token id to mint.
    function nextTokenId() external view returns (uint256);

    /// @notice Hard cap on mint supply for this deployment.
    function maxMintSupply() external view returns (uint256);

    /// @notice Treasury receiving mint proceeds and royalties.
    function treasury() external view returns (address);

    /// @notice Default royalty fee numerator in basis points (denominator: 10_000).
    function royaltyBps() external view returns (uint96);

    /// @notice SponsorCenter address that receives mint hooks and invite acceptance calls.
    function sponsorCenter() external view returns (ISponsorCenter);

    /// @notice ERC-6551 registry used for sponsor TBA creation/derivation.
    function erc6551Registry() external view returns (IERC6551Registry);

    /// @notice ERC-6551 account implementation used for TBAs.
    function erc6551AccountImplementation() external view returns (address);

    /// @notice ERC-6551 salt used to derive sponsor TBAs.
    function erc6551Salt() external view returns (bytes32);

    // -------- Write: Minting --------

    /// @notice Mint one or more sponsorship-position NFTs.
    /// @dev Requires exact total fee; reverts after minting is ended or when supply cap reached.
    /// @param tier Tier selected for mint (affects fee and base slots).
    /// @param to Recipient of the NFTs.
    /// @param amount Number of NFTs to mint.
    /// @return tokenIds Newly minted token ids.
    /// @return sponsorTbas ERC-6551 accounts bound to the tokens.
    function mint(Tier tier, address to, uint256 amount)
        external
        payable
        returns (uint256[] memory tokenIds, address[] memory sponsorTbas);

    /// @notice Mint and accept an invite in a single transaction.
    /// @dev Requires an acceptance signature from `to`; forwards to `acceptSponsorshipBySig` before minting.
    /// @param tier Tier selected for mint.
    /// @param to Recipient of the NFTs.
    /// @param amount Number of NFTs to mint.
    /// @param inviteId Invite identifier from SponsorCenter.
    /// @param acceptanceSig Acceptance payload and signature bundle.
    /// @return tokenIds Newly minted token ids.
    /// @return sponsorTbas ERC-6551 accounts bound to the tokens.
    function mintWithInvite(
        Tier tier,
        address to,
        uint256 amount,
        bytes32 inviteId,
        ISponsorCenter.SignedAcceptance calldata acceptanceSig
    ) external payable returns (uint256[] memory tokenIds, address[] memory sponsorTbas);

    /// @notice Treasury-only minting for protocol allocations (no fee).
    /// @dev Mints directly to the treasury address; still respects mint end and max supply.
    /// @param tier Tier to mint.
    /// @param amount Number of tokens to mint.
    /// @return tokenIds Newly minted token ids.
    /// @return sponsorTbas ERC-6551 accounts bound to the tokens.
    function treasuryMint(Tier tier, uint256 amount)
        external
        returns (uint256[] memory tokenIds, address[] memory sponsorTbas);

    // -------- Read: Token Data --------

    /// @notice Return the tier associated with a token id.
    /// @param tokenId Token id to query.
    /// @return tier Tier assigned at mint.
    function tierOf(uint256 tokenId) external view returns (Tier);

    /// @notice Resolve the canonical sponsor TBA for a token id.
    /// @param tokenId Token id to query.
    /// @return sponsorTba ERC-6551 account derived for this token.
    function sponsorTbaOf(uint256 tokenId) external view returns (address);

    /// @notice Base URI used for folder-style metadata when configured.
    /// @dev When non-empty, implementations may resolve `tokenURI` as `base + tokenId + ".json"`.
    function baseTokenUri() external view returns (string memory);

    /// @notice Tier-specific base URI used for preloaded instant-reveal metadata.
    /// @dev When non-empty, implementations may resolve `tokenURI` as `tierBase + tierMintIndex + ".json"`.
    function tierBaseTokenUri(Tier tier) external view returns (string memory);

    /// @notice Per-tier mint index assigned at mint time for a token.
    /// @dev This starts at 1 for the first token minted in each tier.
    function tierMintIndexOf(uint256 tokenId) external view returns (uint256);

    // -------- Write: Treasury Controls --------

    /// @notice Set the base URI for folder-style metadata.
    /// @dev Treasury-only. Intended for layouts like `<base>/<tokenId>.json`.
    /// @param baseUri Prefix used by `tokenURI` when base mode is enabled.
    function setBaseTokenUri(string calldata baseUri) external;

    /// @notice Set a tier-specific base URI for preloaded instant-reveal metadata.
    /// @dev Treasury-only. Intended for layouts like `<tierBase>/<tierMintIndex>.json`.
    /// @param tier Tier whose metadata base URI is being configured.
    /// @param baseUri Prefix used by `tokenURI` when tier-specific base mode is enabled.
    function setTierBaseTokenUri(Tier tier, string calldata baseUri) external;

    /// @notice Update default royalty fee numerator (bps).
    /// @dev Treasury-only; must be <= BPS_DENOMINATOR.
    /// @param feeNumerator Royalty fee in basis points.
    function setDefaultRoyalty(uint96 feeNumerator) external;

    /// @notice Update the treasury address.
    /// @dev Treasury-only. Updates royalty recipient as well.
    /// @param newTreasury New treasury address.
    function setTreasury(address newTreasury) external;
}
