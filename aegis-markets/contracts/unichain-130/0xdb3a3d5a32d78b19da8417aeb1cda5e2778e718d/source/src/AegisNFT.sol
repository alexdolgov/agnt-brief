// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {ERC2981} from "@openzeppelin/contracts/token/common/ERC2981.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import {Constants} from "./lib/Constants.sol";
import {IERC6551Registry} from "./interfaces/IERC6551Registry.sol";
import {ISponsorCenter} from "./interfaces/ISponsorCenter.sol";
import {IAegisNFT} from "./interfaces/IAegisNFT.sol";

contract AegisNFT is ERC721, ERC2981, ReentrancyGuard, IAegisNFT {

    /// @dev ERC-4906 interface ID for metadata updates.
    bytes4 private constant INTERFACE_ID_ERC4906 = 0x49064906;

    mapping(uint256 tokenId => Tier tier) private _tiers;
    mapping(uint256 tokenId => uint256 tierMintIndex) private _tierMintIndices;
    mapping(Tier tier => uint256 totalMinted) private _totalMintedByTier;
    mapping(Tier tier => string baseTokenUri) private _tierBaseTokenUris;
    string private _baseTokenUri;

    /// @inheritdoc IAegisNFT
    uint256 public override totalMinted;
    /// @inheritdoc IAegisNFT
    uint256 public immutable override maxMintSupply;
    /// @inheritdoc IAegisNFT
    address public override treasury;
    /// @inheritdoc IAegisNFT
    ISponsorCenter public immutable override sponsorCenter;
    /// @inheritdoc IAegisNFT
    IERC6551Registry public immutable override erc6551Registry;
    /// @inheritdoc IAegisNFT
    address public immutable override erc6551AccountImplementation;
    /// @inheritdoc IAegisNFT
    bytes32 public immutable override erc6551Salt;
    /// @inheritdoc IAegisNFT
    uint96 public override royaltyBps;

    modifier onlyTreasury() {
        if (msg.sender != treasury) {
            revert NotAuthorized();
        }
        _;
    }

    constructor(
        address treasury_,
        uint256 maxMintSupply_,
        ISponsorCenter sponsorCenter_,
        IERC6551Registry erc6551Registry_,
        address erc6551AccountImplementation_,
        bytes32 erc6551Salt_
    ) ERC721("Aegis", "AEGIS") {
        if (
            treasury_ == address(0) || address(sponsorCenter_) == address(0)
                || address(erc6551Registry_) == address(0) || erc6551AccountImplementation_ == address(0)
        ) {
            revert ZeroAddress();
        }
        if (maxMintSupply_ == 0) {
            revert InvalidAmount();
        }

        treasury = treasury_;
        maxMintSupply = maxMintSupply_;
        sponsorCenter = sponsorCenter_;
        erc6551Registry = erc6551Registry_;
        erc6551AccountImplementation = erc6551AccountImplementation_;
        erc6551Salt = erc6551Salt_;

        // Set default royalty: treasury receives ROYALTY_BPS of all sales
        royaltyBps = uint96(Constants.ROYALTY_BPS);
        _setDefaultRoyalty(treasury_, royaltyBps);
    }

    /// @inheritdoc IAegisNFT
    function mint(Tier tier, address to, uint256 amount)
        external
        payable
        override
        nonReentrant
        returns (uint256[] memory tokenIds, address[] memory sponsorTbas)
    {
        if (amount == 0) {
            revert InvalidAmount();
        }
        if (sponsorCenter.mintEnded()) {
            revert MintEnded();
        }
        if (to == address(0)) {
            revert ZeroAddress();
        }
        if (totalMinted + amount > maxMintSupply) {
            revert MaxSupplyReached();
        }
        uint256 fee = _mintFee(tier);
        uint256 totalFee = fee * amount;
        if (msg.value != totalFee) {
            revert MintFeeMismatch();
        }

        tokenIds = new uint256[](amount);
        sponsorTbas = new address[](amount);
        for (uint256 i = 0; i < amount; i++) {
            (tokenIds[i], sponsorTbas[i]) = _mintWithHooksInternal(tier, to);
        }
        Address.sendValue(payable(treasury), msg.value);
    }

    /// @inheritdoc IAegisNFT
    function mintWithInvite(
        Tier tier,
        address to,
        uint256 amount,
        bytes32 inviteId,
        ISponsorCenter.SignedAcceptance calldata acceptanceSig
    ) external payable override nonReentrant returns (uint256[] memory tokenIds, address[] memory sponsorTbas) {
        if (amount == 0) {
            revert InvalidAmount();
        }
        if (inviteId == bytes32(0)) {
            revert InvalidInvite();
        }
        if (acceptanceSig.signature.length == 0) {
            revert InvalidSignature();
        }
        if (sponsorCenter.mintEnded()) {
            revert MintEnded();
        }
        if (to == address(0)) {
            revert ZeroAddress();
        }
        if (totalMinted + amount > maxMintSupply) {
            revert MaxSupplyReached();
        }
        uint256 fee = _mintFee(tier);
        uint256 totalFee = fee * amount;
        if (msg.value != totalFee) {
            revert MintFeeMismatch();
        }

        ISponsorCenter.SponsorshipAcceptance calldata acceptance = acceptanceSig.acceptance;
        if (acceptance.inviteId != inviteId || acceptance.sponsoredWallet != to) {
            revert InvalidSignature();
        }
        sponsorCenter.acceptSponsorshipBySig(acceptanceSig);
        tokenIds = new uint256[](amount);
        sponsorTbas = new address[](amount);
        for (uint256 i = 0; i < amount; i++) {
            (tokenIds[i], sponsorTbas[i]) = _mintWithHooksInternal(tier, to);
        }
        Address.sendValue(payable(treasury), msg.value);
    }

    /// @inheritdoc IAegisNFT
    function treasuryMint(Tier tier, uint256 amount)
        external
        override
        onlyTreasury
        nonReentrant
        returns (uint256[] memory tokenIds, address[] memory sponsorTbas)
    {
        if (sponsorCenter.mintEnded()) {
            revert MintEnded();
        }
        if (amount == 0) {
            revert InvalidAmount();
        }
        if (totalMinted + amount > maxMintSupply) {
            revert MaxSupplyReached();
        }

        tokenIds = new uint256[](amount);
        sponsorTbas = new address[](amount);
        for (uint256 i = 0; i < amount; i++) {
            (tokenIds[i], sponsorTbas[i]) = _mintTreasury(tier);
        }
    }

    function _mintWithHooksInternal(Tier tier, address to) internal returns (uint256 tokenId, address sponsorTba) {
        if (sponsorCenter.mintEnded()) {
            revert MintEnded();
        }
        if (to == address(0)) {
            revert ZeroAddress();
        }

        if (totalMinted >= maxMintSupply) {
            revert MaxSupplyReached();
        }

        tokenId = totalMinted + 1;
        totalMinted = tokenId;

        _tiers[tokenId] = tier;
        _tierMintIndices[tokenId] = _nextTierMintIndex(tier);

        _mint(to, tokenId);

        sponsorTba = erc6551Registry.createAccount(
            erc6551AccountImplementation,
            erc6551Salt,
            block.chainid,
            address(this),
            tokenId
        );
        sponsorCenter.onMintSetBaseSlots(sponsorTba, _baseSlots(tier));
        sponsorCenter.onMintSetParent(sponsorTba, to);

        emit Minted(tokenId, to, uint8(tier), sponsorTba);
    }

    function _mintTreasury(Tier tier) internal returns (uint256 tokenId, address sponsorTba) {
        tokenId = totalMinted + 1;
        totalMinted = tokenId;

        _tiers[tokenId] = tier;
        _tierMintIndices[tokenId] = _nextTierMintIndex(tier);

        _mint(treasury, tokenId);

        sponsorTba = erc6551Registry.createAccount(
            erc6551AccountImplementation,
            erc6551Salt,
            block.chainid,
            address(this),
            tokenId
        );
        sponsorCenter.onMintSetBaseSlots(sponsorTba, _baseSlots(tier));
        sponsorCenter.onMintSetParent(sponsorTba, treasury);

        emit Minted(tokenId, treasury, uint8(tier), sponsorTba);
    }

    /// @inheritdoc IAegisNFT
    function tierOf(uint256 tokenId) external view override returns (Tier) {
        _requireOwned(tokenId);
        return _tiers[tokenId];
    }

    /// @inheritdoc IAegisNFT
    function sponsorTbaOf(uint256 tokenId) external view override returns (address) {
        _requireOwned(tokenId);
        return _computeSponsorTba(tokenId);
    }

    /// @inheritdoc IAegisNFT
    function nextTokenId() external view override returns (uint256) {
        return totalMinted + 1;
    }

    /// @inheritdoc IAegisNFT
    function baseTokenUri() external view override returns (string memory) {
        return _baseTokenUri;
    }

    /// @inheritdoc IAegisNFT
    function tierBaseTokenUri(Tier tier) external view override returns (string memory) {
        return _tierBaseTokenUris[tier];
    }

    /// @inheritdoc IAegisNFT
    function tierMintIndexOf(uint256 tokenId) external view override returns (uint256) {
        _requireOwned(tokenId);
        return _tierMintIndices[tokenId];
    }

    /// @inheritdoc IAegisNFT
    function setBaseTokenUri(string calldata baseUri) external override onlyTreasury {
        _baseTokenUri = baseUri;
        // Emit BatchMetadataUpdate for all tokens since tokenURI output may change globally.
        if (totalMinted > 0) {
            emit BatchMetadataUpdate(1, totalMinted);
        }
    }

    /// @inheritdoc IAegisNFT
    function setTierBaseTokenUri(Tier tier, string calldata baseUri) external override onlyTreasury {
        _tierBaseTokenUris[tier] = baseUri;
        // Emit BatchMetadataUpdate for all tokens since tokenURI output may change for this tier.
        if (totalMinted > 0) {
            emit BatchMetadataUpdate(1, totalMinted);
        }
    }

    /// @inheritdoc ERC721
    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        _requireOwned(tokenId);
        string memory tierBaseUri = _tierBaseTokenUris[_tiers[tokenId]];
        if (bytes(tierBaseUri).length != 0) {
            return string.concat(tierBaseUri, Strings.toString(_tierMintIndices[tokenId]), ".json");
        }
        if (bytes(_baseTokenUri).length == 0) {
            return "";
        }
        return string.concat(_baseTokenUri, Strings.toString(tokenId), ".json");
    }

    /// @inheritdoc ERC721
    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC721, ERC2981) returns (bool) {
        return interfaceId == INTERFACE_ID_ERC4906 || super.supportsInterface(interfaceId);
    }

    /// @inheritdoc IAegisNFT
    function setDefaultRoyalty(uint96 feeNumerator) external override onlyTreasury {
        if (feeNumerator > Constants.BPS_DENOMINATOR) {
            revert InvalidAmount();
        }
        royaltyBps = feeNumerator;
        _setDefaultRoyalty(treasury, feeNumerator);
    }

    /// @inheritdoc IAegisNFT
    function setTreasury(address newTreasury) external override onlyTreasury {
        if (newTreasury == address(0)) {
            revert ZeroAddress();
        }
        address oldTreasury = treasury;
        treasury = newTreasury;

        // Update royalty recipient to new treasury
        _setDefaultRoyalty(newTreasury, royaltyBps);

        emit TreasuryUpdated(oldTreasury, newTreasury);
    }

    function _computeSponsorTba(uint256 tokenId) internal view returns (address) {
        return erc6551Registry.account(erc6551AccountImplementation, erc6551Salt, block.chainid, address(this), tokenId);
    }

    function _baseSlots(Tier tier) internal pure returns (uint32) {
        if (tier == Tier.BUCKLER) {
            return uint32(Constants.TIER_BUCKLER_BASE_SLOTS);
        }
        if (tier == Tier.KITE_SHIELD) {
            return uint32(Constants.TIER_KITE_SHIELD_BASE_SLOTS);
        }
        if (tier == Tier.TOWER_SHIELD) {
            return uint32(Constants.TIER_TOWER_SHIELD_BASE_SLOTS);
        }
        revert InvalidTier();
    }

    function _mintFee(Tier tier) internal pure returns (uint256) {
        if (tier == Tier.BUCKLER) {
            return Constants.TIER_BUCKLER_MINT_FEE;
        }
        if (tier == Tier.KITE_SHIELD) {
            return Constants.TIER_KITE_SHIELD_MINT_FEE;
        }
        if (tier == Tier.TOWER_SHIELD) {
            return Constants.TIER_TOWER_SHIELD_MINT_FEE;
        }
        revert InvalidTier();
    }

    function _nextTierMintIndex(Tier tier) internal returns (uint256 tierMintIndex) {
        tierMintIndex = _totalMintedByTier[tier] + 1;
        _totalMintedByTier[tier] = tierMintIndex;
    }
}
