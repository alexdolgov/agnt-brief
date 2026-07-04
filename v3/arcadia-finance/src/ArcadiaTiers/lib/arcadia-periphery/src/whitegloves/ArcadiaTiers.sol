/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.34;

import { EnumerableSetLib } from "../../lib/asset-managers/lib/accounts-v2/lib/solady/src/utils/EnumerableSetLib.sol";
import { ERC721 } from "../../lib/asset-managers/lib/accounts-v2/lib/solady/src/tokens/ERC721.sol";
import { LibString } from "../../lib/asset-managers/lib/accounts-v2/lib/solady/src/utils/LibString.sol";
import { OwnableRoles } from "../../lib/asset-managers/lib/accounts-v2/lib/solady/src/auth/OwnableRoles.sol";

/**
 * @title Arcadia Tiers
 * @author Pragma Labs
 */
contract ArcadiaTiers is ERC721, OwnableRoles {
    using EnumerableSetLib for EnumerableSetLib.Uint256Set;
    using LibString for uint256;

    /* //////////////////////////////////////////////////////////////
                                CONSTANTS
    ////////////////////////////////////////////////////////////// */

    // The role required to manage the tiers and positions.
    uint256 public constant MANAGER = _ROLE_0;

    /* //////////////////////////////////////////////////////////////
                                STORAGE
    ////////////////////////////////////////////////////////////// */

    // Bool indicating if transfers are enabled.
    bool public transfersEnabled;

    // The next id to be minted.
    uint256 public nextId;

    // The base metadata URI prepended to the tier value.
    string public baseURI;

    // The collection-level metadata URI.
    string public contractURI;

    // The set of valid tiers.
    EnumerableSetLib.Uint256Set internal _tiers;

    // The tier of a given id.
    mapping(uint256 id => uint256 tier) public tier;

    // The custom metadata URI override for a given id.
    mapping(uint256 id => string uri) public customURI;

    // The set of tiers owned by a given wallet.
    mapping(address wallet => EnumerableSetLib.Uint256Set) internal _tiersOf;

    // The id of the NFT for a given wallet and tier.
    mapping(address wallet => mapping(uint256 tier => uint256 id)) public idOf;

    /* //////////////////////////////////////////////////////////////
                                EVENTS
    ////////////////////////////////////////////////////////////// */

    event BaseURISet(string uri);
    event ContractURISet(string uri);
    event CustomURISet(uint256 indexed id, string uri);
    event TierChanged(uint256 indexed id, uint256 indexed oldTier, uint256 indexed newTier);
    event TransfersEnabled();

    /* //////////////////////////////////////////////////////////////
                                ERRORS
    ////////////////////////////////////////////////////////////// */

    error AlreadyHasTier();
    error InvalidId();
    error InvalidTier();
    error LengthMismatch();
    error TransfersDisabled();

    /* //////////////////////////////////////////////////////////////
                                CONSTRUCTOR
    ////////////////////////////////////////////////////////////// */

    /**
     * @param owner_ The address of the Owner.
     */
    constructor(address owner_) {
        _initializeOwner(owner_);
        nextId = 1;
    }

    /**
     * @notice Returns the token collection name.
     * @return The token collection name.
     */
    function name() public pure override returns (string memory) {
        return "Arcadia Tiers";
    }

    /**
     * @notice Returns the token collection symbol.
     * @return The token collection symbol.
     */
    function symbol() public pure override returns (string memory) {
        return "TIERS";
    }

    /* //////////////////////////////////////////////////////////////
                            NFT MANAGEMENT
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Mints an NFT.
     * @param tier_ The tier of the NFT.
     * @param to The receiver of the NFT.
     * @return id The id of the NFT.
     */
    function mint(uint256 tier_, address to) external onlyRoles(MANAGER) returns (uint256 id) {
        id = _mint(tier_, to);
    }

    /**
     * @notice Mints multiple NFTs.
     * @param tiers The tiers of the NFTs.
     * @param tos The wallets to mint to.
     * @return ids The id of the NFTs.
     */
    function batchMint(uint256[] calldata tiers, address[] calldata tos)
        external
        onlyRoles(MANAGER)
        returns (uint256[] memory ids)
    {
        uint256 length = tos.length;
        if (length != tiers.length) revert LengthMismatch();

        ids = new uint256[](length);
        for (uint256 i; i < length; ++i) {
            ids[i] = _mint(tiers[i], tos[i]);
        }
    }

    /**
     * @notice Mints an NFT.
     * @param tier_ The tier of the NFT.
     * @param to The receiver of the NFT.
     * @return id The id of the NFT.
     */
    function _mint(uint256 tier_, address to) internal returns (uint256 id) {
        if (!_tiers.contains(tier_)) revert InvalidTier();
        if (!_tiersOf[to].add(tier_)) revert AlreadyHasTier();

        unchecked {
            id = nextId++;
        }

        tier[id] = tier_;
        idOf[to][tier_] = id;

        super._safeMint(to, id);

        emit TierChanged(id, 0, tier_);
    }

    /**
     * @notice Burns an NFT.
     * @param id The id of the NFT.
     */
    function burn(uint256 id) external onlyRoles(MANAGER) {
        _burn(id);
    }

    /**
     * @notice Burns multiple NFTs.
     * @param ids The id of the NFTs.
     */
    function batchBurn(uint256[] calldata ids) external onlyRoles(MANAGER) {
        for (uint256 i; i < ids.length; ++i) {
            _burn(ids[i]);
        }
    }

    /**
     * @notice Burns an NFT.
     * @param id The id of the NFT.
     */
    function _burn(uint256 id) internal override {
        address owner_ = _ownerOf(id);
        if (owner_ == address(0)) revert InvalidId();

        uint256 tier_ = tier[id];
        delete tier[id];
        delete idOf[owner_][tier_];
        _tiersOf[owner_].remove(tier_);

        delete customURI[id];

        super._burn(id);

        emit TierChanged(id, tier_, 0);
    }

    /**
     * @notice Changes the tier of an NFT.
     * @param id The id of the NFT.
     * @param tier_ The new tier.
     */
    function setTier(uint256 id, uint256 tier_) external onlyRoles(MANAGER) {
        _setTier(id, tier_);
    }

    /**
     * @notice Changes the tier of multiple NFTs.
     * @param ids The ids.
     * @param tiers The new tiers.
     */
    function batchSetTier(uint256[] calldata ids, uint256[] calldata tiers) external onlyRoles(MANAGER) {
        uint256 length = ids.length;
        if (length != tiers.length) revert LengthMismatch();

        for (uint256 i; i < length; ++i) {
            _setTier(ids[i], tiers[i]);
        }
    }

    /**
     * @notice Changes the tier of an NFT.
     * @param id The id of the NFT.
     * @param tier_ The new tier.
     */
    function _setTier(uint256 id, uint256 tier_) internal {
        address owner_ = _ownerOf(id);
        if (owner_ == address(0)) revert InvalidId();
        if (!_tiers.contains(tier_)) revert InvalidTier();
        if (!_tiersOf[owner_].add(tier_)) revert AlreadyHasTier();

        uint256 oldTier = tier[id];
        _tiersOf[owner_].remove(oldTier);
        delete idOf[owner_][oldTier];

        tier[id] = tier_;
        idOf[owner_][tier_] = id;

        emit TierChanged(id, oldTier, tier_);
    }

    /* //////////////////////////////////////////////////////////////
                          TIER MANAGEMENT
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Adds a new tier.
     * @param tier_ The tier to add.
     */
    function addTier(uint256 tier_) external onlyOwner {
        if (tier_ == 0 || !_tiers.add(tier_)) revert InvalidTier();
    }

    /**
     * @notice Removes a tier.
     * @param tier_ The tier to remove.
     * @dev Existing NFTs with this tier are not affected.
     */
    function removeTier(uint256 tier_) external onlyOwner {
        if (!_tiers.remove(tier_)) revert InvalidTier();
    }

    /**
     * @notice Checks if a tier exists.
     * @param tier_ The tier.
     * @return Bool indicating if the tier exists.
     */
    function isTier(uint256 tier_) external view returns (bool) {
        return _tiers.contains(tier_);
    }

    /**
     * @notice Returns all tiers.
     * @return tiers Array of all tiers.
     */
    function getTiers() external view returns (uint256[] memory tiers) {
        tiers = _tiers.values();
    }

    /* //////////////////////////////////////////////////////////////
                            WALLET QUERIES
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Returns all tier values owned by a wallet.
     * @param wallet The wallet address.
     * @return tiers Array of tiers owned by the wallet.
     */
    function tiersOf(address wallet) external view returns (uint256[] memory tiers) {
        tiers = _tiersOf[wallet].values();
    }

    /**
     * @notice Returns the highest tier value owned by a wallet.
     * @param wallet The wallet address.
     * @return result The highest tier value, or 0 if the wallet owns no tiers.
     */
    function highestTier(address wallet) external view returns (uint256 result) {
        EnumerableSetLib.Uint256Set storage tiers = _tiersOf[wallet];
        uint256 length = tiers.length();
        uint256 tier_;
        for (uint256 i; i < length; ++i) {
            tier_ = tiers.at(i);
            if (tier_ > result) result = tier_;
        }
    }

    /* //////////////////////////////////////////////////////////////
                            TRANSFER MANAGEMENT
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Enables transfers permanently.
     */
    function enableTransfers() external onlyOwner {
        transfersEnabled = true;

        emit TransfersEnabled();
    }

    /**
     * @notice Transfers an NFT, updating the ownership tracking.
     * @param from The current owner.
     * @param to The new owner.
     * @param id The id.
     */
    function transferFrom(address from, address to, uint256 id) public payable override {
        if (!transfersEnabled) revert TransfersDisabled();

        uint256 tier_ = tier[id];
        _tiersOf[from].remove(tier_);
        delete idOf[from][tier_];

        if (!_tiersOf[to].add(tier_)) revert AlreadyHasTier();
        idOf[to][tier_] = id;

        super.transferFrom(from, to, id);
    }

    /* //////////////////////////////////////////////////////////////
                              METADATA
    ////////////////////////////////////////////////////////////// */

    /**
     * @notice Sets the collection-level metadata URI.
     * @param uri The metadata URI.
     */
    function setContractURI(string calldata uri) external onlyOwner {
        contractURI = uri;

        emit ContractURISet(uri);
    }

    /**
     * @notice Sets the base metadata URI prepended to the tier value.
     * @param uri The base metadata URI.
     */
    function setBaseURI(string calldata uri) external onlyOwner {
        baseURI = uri;

        emit BaseURISet(uri);
    }

    /**
     * @notice Sets a custom metadata URI for a specific NFT.
     * @param id The id.
     * @param uri The custom metadata URI.
     * @dev Set to empty string to clear the override and fall back to baseURI + tier.
     */
    function setCustomURI(uint256 id, string calldata uri) external onlyRoles(MANAGER) {
        if (_ownerOf(id) == address(0)) revert InvalidId();

        customURI[id] = uri;

        emit CustomURISet(id, uri);
    }

    /**
     * @notice Returns the metadata URI for a given id.
     * @param id The id.
     * @return uri The metadata URI.
     */
    function tokenURI(uint256 id) public view override returns (string memory uri) {
        if (_ownerOf(id) == address(0)) revert InvalidId();

        uri = customURI[id];
        if (bytes(uri).length == 0) uri = string(abi.encodePacked(baseURI, tier[id].toString()));
    }
}
