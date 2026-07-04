// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable-v4/proxy/utils/UUPSUpgradeable.sol";
import { ERC721Upgradeable } from "@openzeppelin/contracts-upgradeable-v4/token/ERC721/ERC721Upgradeable.sol";
import { ERC721BurnableUpgradeable } from "@openzeppelin/contracts-upgradeable-v4/token/ERC721/extensions/ERC721BurnableUpgradeable.sol";
import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable-v4/access/AccessControlUpgradeable.sol";
import { IProxyDomaRecord } from "./interfaces/IProxyDomaRecord.sol";
import { ICreatorToken } from "./interfaces/ICreatorToken.sol";
import { IERC2981 } from "@openzeppelin/contracts/interfaces/IERC2981.sol";
import { IERC165 } from "@openzeppelin/contracts/interfaces/IERC165.sol";
import { ERC721C } from "./utils/ERC721C.sol";
import { AccessControlOwnable } from "./utils/AccessControlOwnable.sol";
import { DateUtils } from "./utils/DateUtils.sol";

/**
 * @title NameToken
 * @notice Abstract base contract for name NFTs in the DOMA protocol.
 * @dev This contract implements an ERC721 NFT that represents tokenized names.
 * Features include expiration tracking, transfer locking, name capabilities management,
 * royalty support (ERC2981), and integration with proxy DOMA record contracts.
 */
abstract contract NameToken is
    UUPSUpgradeable,
    ERC721Upgradeable,
    ERC721BurnableUpgradeable,
    AccessControlOwnable,
    ERC721C,
    IERC165,
    IERC2981
{
    /**
     * @dev Storage structure for ERC2981 royalty information.
     */
    struct ERC2981RoyaltyInfo {
        address receiver;
        uint96 royaltyFraction;
    }

    /**
     * @dev Storage structure for ERC2981 royalty information.
     * Contains the contract-wide royalty information that applies to all tokens.
     */
    /// @custom:storage-location erc7201:doma.storage.ERC2981
    struct ERC2981Storage {
        ERC2981RoyaltyInfo royaltyInfo;
    }

    // Storage slot for ERC2981 storage
    bytes32 private constant _ERC2981_STORAGE_SLOT =
        keccak256(abi.encode(uint256(keccak256(bytes("doma.storage.ERC2981"))) - 1)) &
            ~bytes32(uint256(0xff));

    /**
     * @dev Role required to mint tokens.
     * Equals to 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
     */
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    /**
     * @dev Role required to update metadata.
     */
    bytes32 public constant METADATA_OWNER_ROLE = keccak256("METADATA_OWNER_ROLE");

    /**
     * @notice Thrown when attempting to transfer a token that is locked for transfers.
     * @param tokenId The ID of the locked token
     */
    error TransferLocked(uint256 tokenId);

    /**
     * @notice Thrown when owner attempts to use burn functionality that is not supported.
     */
    error OwnerBurnNotSupported();

    /**
     * @notice Thrown when proxy DOMA record address is not set but required for operation.
     */
    error ProxyDomaRecordNotSet();

    /**
     * @notice Thrown when a zero address is provided where a valid address is required.
     */
    error ZeroAddress();

    /**
     * @notice Thrown when an invalid royalty receiver address is provided.
     */
    error InvalidRoyaltyReceiver();

    /**
     * @notice Thrown when royalty fraction exceeds the maximum allowed value.
     * @param feeNumerator The provided fee numerator
     * @param feeDenominator The fee denominator (10000 for basis points)
     */
    error InvalidRoyaltyFraction(uint96 feeNumerator, uint96 feeDenominator);

    /**
     * @notice Thrown when array parameters have mismatched lengths.
     */
    error ArrayLengthMismatch();

    /**
     * @notice Thrown when the token does not exist
     */
    error NameTokenDoesNotExist(uint256 tokenId);

    /**
     * @notice Emitted when name token is renewed.
     * @param tokenId The ID of the name token.
     * @param expiresAt The expiration date of the name token (UNIX seconds).
     * @param correlationId Correlation id associated with a renewal event. Used by registrars to track on-chain operations.
     */
    event NameTokenRenewed(uint256 indexed tokenId, uint256 expiresAt, string correlationId);

    /**
     * @notice Emitted when name token is burned.
     * Similar to ERC721 `Transfer` event with zero `to`, but with an additional correlation id included.
     * @param tokenId The ID of the name token.
     * @param owner Owner address at the time of burning.
     * @param correlationId Correlation id associated with a burn event. Used by registrars to track on-chain operations.
     */
    event NameTokenBurned(uint256 indexed tokenId, address owner, string correlationId);

    /**
     * @notice Emitted when name token is locked or unlocked.
     * @param tokenId The ID of the name token.
     * @param isTransferLocked Whether token transfer is locked or not.
     * @param correlationId Correlation id associated with a lock status change event. Used by registrars to track on-chain operations.
     */
    event LockStatusChanged(uint256 indexed tokenId, bool isTransferLocked, string correlationId);

    /**
     * @notice Emitted when metadata is updated for a token.
     * Can happen when token is renewed.
     * Follows IERC4906 Metadata Update Extension.
     */
    event MetadataUpdate(uint256 tokenId);

    /**
     * @notice Emitted when domain-level capabilities are updated for a token.
     * @param tokenId The ID of the name token.
     * @param capabilities The new domain capabilities bitmask.
     * @param correlationId Correlation id for tracking operations.
     */
    event DomainCapabilitiesUpdated(
        uint256 indexed tokenId,
        uint256 capabilities,
        string correlationId
    );

    /**
     * @dev Base URI for NFT tokens.
     */
    string internal _baseTokenURI;

    /**
     * @dev TLDs list is deprecated and no longer used.
     * Variable is left in place to keep storage layout the same.
     * In future, this storage slot could be reused for a different purpose.
     */
    mapping(string => uint256) internal _tlds;

    /**
     * @dev Maps Token ID to its expiration date.
     * Expiration date is a timestamp in seconds.
     * Since contract guarantees there could be only one token with a given ID, we can use Token ID as a key.
     */
    /// @custom:oz-renamed-from expirations
    mapping(uint256 => uint256) internal _expirations;

    /**
     * @dev Maps Token ID to its lock status
     * If set to true, token cannot be transferred
     */
    /// @custom:oz-renamed-from transferLocks
    mapping(uint256 => bool) internal _transferLocks;

    /**
     * @dev Storage gap, from previous version of the contract, to keep storage layout the same
     * Storage slot from a removed `gracePeriod` variable is reused
     * We can do this since mappings don't store any data in a storage slot
     */
    /// @custom:oz-renamed-from gracePeriod
    /// @custom:oz-retyped-from uint256
    mapping(uint256 => uint256) internal _registrarIanaIds;

    /**
     * @dev Block all transfers and minting. Used to prevent transfers during migration.
     */
    bool public blockAllTransfers;

    /**
     * @dev Address if ProxyDomaRecord Contract for proxy call
     */
    IProxyDomaRecord public proxyDomaRecord;

    /**
     * @dev Storage gap for future upgrades.
     */
    uint256[50] private _storageGap;

    /**
     * @dev Maps Token ID to its domain-level capabilities.
     * These are the capabilities supported by this specific domain.
     * Propagated automatically from Doma Chain when capabilities change.
     */
    mapping(uint256 => uint256) internal _domainCapabilities;

    modifier onlyMinter() {
        _checkRole(MINTER_ROLE);
        _;
    }

    modifier onlyOwner() {
        _checkRole(DEFAULT_ADMIN_ROLE);
        _;
    }

    modifier onlyMetadataOwner() {
        _checkRole(METADATA_OWNER_ROLE);
        _;
    }

    /**
     * @notice Constructor that disables initializers on an implementation contract.
     * @dev This is recommended for upgradable contracts.
     */
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initialize the contract with name, symbol, URI, and initial owner.
     * @dev Acts as constructor for upgradeable contract. Sets up roles and inheritance chain.
     * The initial owner receives DEFAULT_ADMIN_ROLE and can manage other roles.
     * @param name Name for the NFT collection (different contract instances may have different names)
     * @param symbol Symbol for the NFT collection (usually a short version of the name)
     * @param uri Base URI for NFT token metadata (typically points to off-chain mutable storage like S3)
     * @param initialOwner Address that will receive admin role and contract ownership
     */
    function initialize(
        string calldata name,
        string calldata symbol,
        string calldata uri,
        address initialOwner
    ) public initializer {
        __UUPSUpgradeable_init();
        __AccessControl_init();
        __ERC721_init(name, symbol);
        __ERC721Burnable_init();

        if (initialOwner == address(0)) {
            revert ZeroAddress();
        }

        _setupRole(DEFAULT_ADMIN_ROLE, initialOwner);
        _setRoleAdmin(MINTER_ROLE, DEFAULT_ADMIN_ROLE);
        _setRoleAdmin(METADATA_OWNER_ROLE, DEFAULT_ADMIN_ROLE);

        _baseTokenURI = uri;
    }

    /**
     * @notice User-initiated burn is not supported.
     * @dev This override prevents direct token burning by users. Only the bulkBurn function
     * should be used by authorized minters to ensure proper cleanup and event emission.
     * Base class (ERC721BurnableUpgradeable) is kept for compatibility with previous storage layout.
     */
    function burn(uint256) public virtual override {
        revert OwnerBurnNotSupported();
    }

    /**
     * @dev Internal function to burn a name token and clean up all associated storage.
     * @param tokenId The ID of the token to burn.
     * @param correlationId Correlation ID for tracking the burn operation.
     */
    function _burnNameToken(uint256 tokenId, string memory correlationId) internal {
        address owner = ownerOf(tokenId);
        delete _domainCapabilities[tokenId];
        delete _expirations[tokenId];
        delete _transferLocks[tokenId];
        delete _registrarIanaIds[tokenId];
        _burn(tokenId);
        emit NameTokenBurned(tokenId, owner, correlationId);
    }

    /**
     * @notice Trigger metadata update event for a specific token.
     * @dev Only metadata owners can call this function. Follows IERC4906 Metadata Update Extension.
     * This is useful when off-chain metadata changes and the update needs to be signaled on-chain.
     * @param tokenId The ID of the token whose metadata was updated
     */
    function metadataUpdated(uint256 tokenId) public onlyMetadataOwner {
        emit MetadataUpdate(tokenId);
    }

    /**
     * @notice Returns expiration date for a token. After this date, token transfer will be blocked.
     * @param id Token ID.
     * @return uint256 Unix timestamp in seconds.
     */
    function expirationOf(uint256 id) external view virtual returns (uint256) {
        return _expirations[id];
    }

    /**
     * @notice Returns registrar IANA ID for a token.
     * @param id Token ID.
     * @return uint256 Registrar IANA ID.
     */
    function registrarOf(uint256 id) external view returns (uint256) {
        return _registrarIanaIds[id];
    }

    /**
     * @notice Returns transfer lock status for a token. If 'true', token cannot be transferred.
     * @param id Token ID.
     */
    function lockStatusOf(uint256 id) external view returns (bool) {
        return _transferLocks[id] || blockAllTransfers;
    }

    /**
     * @notice Returns domain-level capabilities for a token.
     * These are the capabilities supported by this specific domain.
     * @param id Token ID.
     * @return uint256 Domain capabilities bitmask.
     */
    function domainCapabilitiesOf(uint256 id) external view returns (uint256) {
        return _domainCapabilities[id];
    }

    /**
     * @notice Check if a token has a specific capability.
     * @param id Token ID.
     * @param requiredCapability The required capability bit mask.
     * @return bool True if the token has the capability.
     */
    function hasCapability(uint256 id, uint256 requiredCapability) external view returns (bool) {
        uint256 capabilities = _domainCapabilities[id];
        return (capabilities & requiredCapability) == requiredCapability;
    }

    /**
     * @notice Returns true if a token with the given ID exists.
     * @param id Token ID.
     */
    function exists(uint256 id) external view returns (bool) {
        return _exists(id);
    }

    /**
     * @notice Overrides behavior of isApprovedForAll such that if an operator is not explicitly approved
     *         for all, the contract owner can optionally auto-approve the transfer validator for transfers.
     * @param owner The owner of the tokens
     * @param operator The operator to check approval for
     * @return isApproved True if the operator is approved for all tokens
     */
    function isApprovedForAll(
        address owner,
        address operator
    ) public view virtual override(ERC721Upgradeable) returns (bool isApproved) {
        isApproved = super.isApprovedForAll(owner, operator);

        if (!isApproved) {
            ERC721C.ERC721CStorage storage storage_ = _erc721Storage();
            if (storage_.autoApproveTransfersFromValidator) {
                isApproved = operator == getTransferValidator();
            }
        }
    }

    /**
     * @notice Check if the contract supports a given interface.
     * @dev Extends the standard ERC721 interface support to include additional interfaces:
     * Metadata Update (EIP-4906), Creator Token, ERC2981 Royalty, and Ownable interfaces.
     * @param interfaceId The interface identifier to check
     * @return Whether the contract supports the interface
     */
    function supportsInterface(
        bytes4 interfaceId
    )
        public
        view
        virtual
        override(ERC721Upgradeable, AccessControlUpgradeable, IERC165)
        returns (bool)
    {
        // Additional check for Metadata Update interface, ICreatorToken interface, IERC2981 interface, and Ownable interface
        return
            interfaceId == bytes4(0x49064906) || // Metadata Update interface
            interfaceId == type(ICreatorToken).interfaceId ||
            interfaceId == bytes4(0x7f5828d0) || // Ownable interface
            super.supportsInterface(interfaceId);
    }

    /**
     * @notice Get royalty information for a token sale (ERC2981).
     * @dev Returns the royalty receiver and amount for a given sale price.
     * Royalty is calculated as (salePrice * royaltyFraction) / 10000.
     * @param salePrice The sale price of the token
     * @return receiver The address that should receive the royalty payment
     * @return royaltyAmount The royalty amount to be paid
     */
    function royaltyInfo(
        uint256,
        uint256 salePrice
    ) external view virtual override returns (address receiver, uint256 royaltyAmount) {
        ERC2981Storage storage storage_ = _erc2981Storage();
        ERC2981RoyaltyInfo storage royalty = storage_.royaltyInfo;

        uint256 royaltyFraction = royalty.royaltyFraction;
        receiver = royalty.receiver;
        royaltyAmount = (salePrice * royaltyFraction) / _feeDenominator();
    }

    /**
     * @notice Update the base URI for all tokens in the collection.
     * @dev Admin-only function that affects metadata for all existing and future tokens.
     * Should be used with care as it impacts the entire collection.
     * @param newUri The new base URI to set
     */
    function setURI(string calldata newUri) external onlyOwner {
        _baseTokenURI = newUri;
    }

    /**
     * @notice Enable or disable all token transfers globally.
     * @dev Admin-only function used to block transfers during migration or emergency situations.
     * When enabled, no tokens can be transferred regardless of individual lock status.
     * @param newBlockAllTransfers True to block all transfers, false to allow normal operation
     */
    function setBlockAllTransfers(bool newBlockAllTransfers) external onlyOwner {
        blockAllTransfers = newBlockAllTransfers;
    }

    /**
     * @notice Set transfer lock status for a specific token.
     * @dev Minter-only function to prevent or allow transfers of individual tokens.
     * Emits LockStatusChanged event for tracking purposes.
     * @param id The token ID to modify
     * @param isTransferLocked True to lock transfers, false to unlock
     * @param correlationId Correlation ID for tracking the operation
     */
    function setLockStatus(
        uint256 id,
        bool isTransferLocked,
        string calldata correlationId
    ) external onlyMinter {
        _transferLocks[id] = isTransferLocked;
        emit LockStatusChanged(id, isTransferLocked, correlationId);
    }

    /**
     * @notice Update domain capabilities for a specific token.
     * @dev Minter-only function called when capabilities are updated on DOMA chain.
     * Domain capabilities determine what operations the token holder can perform.
     * @param id The token ID to update
     * @param capabilities The new domain capabilities bitmask
     * @param correlationId Correlation ID for tracking the operation
     */
    function updateDomainCapabilities(
        uint256 id,
        uint256 capabilities,
        string calldata correlationId
    ) external onlyMinter {
        _domainCapabilities[id] = capabilities;
        emit DomainCapabilitiesUpdated(id, capabilities, correlationId);
    }

    /**
     * @notice Set the address of the ProxyDomaRecord contract.
     * @dev Admin-only function to update the proxy contract reference.
     * Used for cross-chain communication and operations.
     * @param proxyDomaRecord_ The new ProxyDomaRecord contract address
     */
    function setProxyDomaRecord(IProxyDomaRecord proxyDomaRecord_) external onlyOwner {
        if (address(proxyDomaRecord_) == address(0)) revert ZeroAddress();
        proxyDomaRecord = proxyDomaRecord_;
    }

    /**
     * @notice Set royalty information for all tokens in the collection.
     * @dev Admin-only function implementing ERC2981 royalty standard.
     * Royalties are paid as (salePrice * feeNumerator) / 10000.
     * @param receiver Address that should receive royalty payments
     * @param feeNumerator The royalty fee numerator (basis points, max 10000)
     */
    function setRoyaltyInfo(address receiver, uint96 feeNumerator) external onlyOwner {
        _setRoyaltyInfo(receiver, feeNumerator);
    }

    /**
     * @notice Remove royalty information from the contract.
     * @dev Admin-only function to disable royalties for all tokens.
     */
    function deleteRoyaltyInfo() external onlyOwner {
        _deleteRoyaltyInfo();
    }

    function _mint(
        uint256 registrarIanaId,
        uint256 tokenId,
        uint256 expiresAt,
        address to
    ) internal {
        DateUtils.validateExpirationDate(expiresAt);

        _safeMint(to, tokenId);

        _expirations[tokenId] = expiresAt;
        _registrarIanaIds[tokenId] = registrarIanaId;
    }

    function _baseURI() internal view override returns (string memory) {
        return _baseTokenURI;
    }

    /**
     * @dev Overridden to support token expiration and ERC721C validation.
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 firstTokenId,
        uint256
    ) internal virtual override {
        // Handle only transfer between owners
        // Burn is not public and handled internally
        // Mint has a special logic to handle expirations
        if (from != address(0) && to != address(0)) {
            if (
                _isTokenExpired(firstTokenId) || _transferLocks[firstTokenId] || blockAllTransfers
            ) {
                revert TransferLocked(firstTokenId);
            }

            // Revert if proxyDomaRecord is not set
            if (address(proxyDomaRecord) == address(0)) {
                revert ProxyDomaRecordNotSet();
            }
            proxyDomaRecord.tokenTransfer(firstTokenId, from, to);
            // Call ERC721C validation
            _preValidateTransfer(_msgSender(), from, to, firstTokenId, msg.value);
        }
    }

    function _isTokenExpired(uint256 id) internal view virtual returns (bool) {
        return _expirations[id] < block.timestamp;
    }

    /* solhint-disable-next-line no-empty-blocks */
    function _authorizeUpgrade(address newImplementation) internal virtual override onlyOwner {}

    /**
     * @dev Implementation required by ERC721C for contract ownership verification.
     * Uses the DEFAULT_ADMIN_ROLE to determine contract ownership.
     */
    function _requireCallerIsContractOwner() internal view virtual override {
        _checkRole(DEFAULT_ADMIN_ROLE);
    }

    function _setRoyaltyInfo(address receiver, uint96 feeNumerator) internal virtual {
        if (feeNumerator > _feeDenominator()) {
            revert InvalidRoyaltyFraction(feeNumerator, _feeDenominator());
        }
        if (receiver == address(0)) {
            revert InvalidRoyaltyReceiver();
        }

        ERC2981Storage storage storage_ = _erc2981Storage();
        storage_.royaltyInfo = ERC2981RoyaltyInfo(receiver, feeNumerator);
    }

    /**
     * @dev Internal function to remove all royalty information from storage.
     */
    function _deleteRoyaltyInfo() internal virtual {
        delete _erc2981Storage().royaltyInfo;
    }

    function version() external pure virtual returns (string memory);

    function _erc2981Storage() internal pure returns (ERC2981Storage storage storageStruct) {
        bytes32 slot = _ERC2981_STORAGE_SLOT;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            storageStruct.slot := slot
        }
    }

    /**
     * @dev Returns the denominator for royalty fee calculations.
     * @return The fee denominator (10000, representing basis points)
     */
    function _feeDenominator() internal pure virtual returns (uint96) {
        return 10000;
    }
}
