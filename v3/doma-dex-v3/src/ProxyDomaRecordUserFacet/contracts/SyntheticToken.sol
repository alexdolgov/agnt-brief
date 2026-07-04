// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { NameToken } from "./NameToken.sol";
import { DateUtils } from "./utils/DateUtils.sol";
import { NameUtils } from "./utils/NameUtils.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { ISyntheticToken } from "./interfaces/ISyntheticToken.sol";

/**
 * @title SyntheticToken
 * @notice Synthetic ownership tokens for subdomain/fractional ownership in DOMA protocol.
 * @dev Extends NameToken. Uses ERC-7201 namespaced storage to avoid collisions with inherited storage.
 */
contract SyntheticToken is NameToken, ISyntheticToken {
    // ============================================
    // Libraries
    // ============================================

    using EnumerableSet for EnumerableSet.UintSet;

    // ============================================
    // Types
    // ============================================

    /**
     * @dev Data structure for synthetic token-specific information.
     * Storage: 4 slots (parentTokenId: slot 0, host: slot 1, subdomainCount + revocable: slot 2, groupId: slot 3).
     * @param parentTokenId Token ID of the parent domain (0 for root domains).
     * @param host Subdomain host string (empty for root domains).
     * @param subdomainCount Number of active subdomains (uint64 allows 18 quintillion subdomains).
     * @param revocable Whether the synthetic token can be revoked by the parent owner.
     * @param groupId Group identifier for the token.
     */
    struct SyntheticData {
        uint256 parentTokenId;
        string host;
        uint64 subdomainCount;
        bool revocable;
        uint256 groupId;
    }

    /**
     * @dev Mint information structure for creating synthetic ownership tokens.
     * @param tokenId Unique identifier for the token.
     * @param registrarIanaId IANA ID of the sponsoring registrar.
     * @param owner Address of the token owner.
     * @param revocable Whether the token can be revoked.
     * @param sld Second-level domain label.
     * @param tld Top-level domain.
     * @param expiresAt Expiration timestamp.
     * @param capabilities Domain-level capability flags.
     * @param host Subdomain host (empty for root).
     * @param parentTokenId Parent token ID (0 for root).
     * @param groupId Group identifier for the token.
     */
    struct SyntheticTokenMintInfo {
        uint256 tokenId;
        uint256 registrarIanaId;
        address owner;
        bool revocable;
        string sld;
        string tld;
        uint256 expiresAt;
        uint256 capabilities;
        string host;
        uint256 parentTokenId;
        uint256 groupId;
    }

    /**
     * @dev Mint information structure for creating synthetic subdomain tokens without sld/tld.
     * @param receiver Address that will receive and own the token.
     * @param revocable Whether the token can be revoked.
     * @param expiresAt Expiration timestamp (0 for inheriting from parent).
     * @param capabilities Domain-level capability flags.
     * @param host Subdomain host label.
     * @param parentTokenId Parent token ID.
     * @param groupId Group identifier for the token.
     */
    struct SyntheticSubdomainMintInfo {
        address receiver;
        bool revocable;
        uint256 expiresAt;
        uint256 capabilities;
        string host;
        uint256 parentTokenId;
        uint256 groupId;
    }

    // ============================================
    // Storage (ERC-7201 Namespaced Storage Pattern)
    // ============================================

    /**
     * @dev Storage structure following ERC-7201 namespaced storage pattern.
     * This prevents storage collisions in upgradeable contracts.
     * @param syntheticData Maps token ID to synthetic-specific data.
     * @param currentTokenId Global counter for generating token IDs (added to baseTokenId).
     * @param subdomainTokenIds Maps namehash (baseTokenId) to set of active token IDs.
     */
    /// @custom:storage-location erc7201:doma.storage.SyntheticToken
    struct SyntheticTokenStorage {
        mapping(uint256 => SyntheticData) syntheticData;
        // group management mappings
        // ----------------------------
        // ParentId => GroupId => Count
        mapping(uint256 => mapping(uint256 => uint256)) groupCounts;
        // ParentId => GroupId => isRevoked
        mapping(uint256 => mapping(uint256 => bool)) isGroupRevoked;
        // subdomain minting
        // ----------------------------
        // Global counter added to baseTokenId for generating unique token IDs
        uint256 currentTokenId;
        // Namehash (baseTokenId) => Set of active TokenIds
        mapping(uint256 => EnumerableSet.UintSet) subdomainTokenIds;
        // Track last owner before token is burned (for claim after revocation)
        // TokenId => Last owner address
        mapping(uint256 => address) lastOwner;
    }

    /**
     * @dev Storage slot for SyntheticToken storage (ERC-7201).
     * keccak256(abi.encode(uint256(keccak256("doma.storage.SyntheticToken")) - 1)) & ~bytes32(uint256(0xff))
     */
    bytes32 private constant _SYNTHETIC_TOKEN_STORAGE_SLOT =
        keccak256(abi.encode(uint256(keccak256(bytes("doma.storage.SyntheticToken"))) - 1)) &
            ~bytes32(uint256(0xff));

    /**
     * @dev Group ID reserved for non-revocable tokens (group 0).
     * Non-revocable tokens must be assigned to this group and it cannot be revoked.
     */
    uint256 public constant NON_REVOCABLE_GROUP = 0;

    // ============================================
    // Errors
    // ============================================

    /**
     * @notice Thrown when attempting to transfer a token that belongs to a revoked group.
     * @param parentTokenId The parent token ID.
     * @param groupId The ID of the revoked group.
     */
    error GroupRevoked(uint256 parentTokenId, uint256 groupId);

    /**
     * @notice Thrown when caller is not the owner of the token.
     * @param caller The address of the caller.
     * @param tokenId The ID of the token.
     */
    error NotTokenOwner(address caller, uint256 tokenId);

    /**
     * @notice Thrown when attempting to renounce a root ownership token.
     * @param tokenId The ID of the token.
     */
    error CannotRenounceOwnershipToken(uint256 tokenId);

    /**
     * @notice Thrown when attempting to revoke a non-revocable token.
     * @param tokenId The ID of the token.
     */
    error TokenNotRevocable(uint256 tokenId);

    /**
     * @notice Thrown when subdomain expiration exceeds parent token expiration.
     * @param parentTokenId The parent token ID.
     * @param expiration The subdomain's expiration timestamp.
     * @param parentExpiration The parent token's expiration timestamp.
     */
    error ExpirationExceedsParent(
        uint256 parentTokenId,
        uint256 expiration,
        uint256 parentExpiration
    );

    /**
     * @notice Thrown when attempting to perform an operation on an expired token.
     * @param tokenId The ID of the expired token.
     * @param expiresAt The expiration timestamp of the token.
     */
    error NameTokenHasExpired(uint256 tokenId, uint256 expiresAt);

    /**
     * @notice Thrown when attempting to mint a new subdomain version while the previous version is still active.
     * @param previousTokenId The ID of the previous subdomain version that is still operational.
     */
    error SubdomainActive(uint256 previousTokenId);

    /**
     * @notice Thrown when attempting to renew a subdomain to an expiry not greater than current expiry.
     * @param tokenId The ID of the subdomain.
     * @param currentExpiry The current expiration timestamp.
     * @param newExpiry The attempted new expiration timestamp.
     */
    error RenewalMustExtendExpiry(uint256 tokenId, uint256 currentExpiry, uint256 newExpiry);

    /**
     * @notice Thrown when attempting to revoke group 0 (NON_REVOCABLE_GROUP).
     * @param groupId The group ID that cannot be revoked (always 0).
     */
    error CannotLockNonRevocableGroup(uint256 groupId);

    /**
     * @notice Thrown when a revocable token is assigned to NON_REVOCABLE_GROUP or vice versa.
     * @param parentTokenId The parent token ID.
     * @param groupId The invalid group ID.
     * @param revocable Whether the token is revocable.
     */
    error InvalidGroupAssignment(uint256 parentTokenId, uint256 groupId, bool revocable);

    /**
     * @notice Thrown when attempting to mint a synthetic subdomain token with a parent that is not an ownership token.
     * only 1 level deep to start with. We will update this in the future to support deeper hierarchies.
     * @param parentTokenId The ID of the parent token.
     */
    error ParentMustBeOwnershipToken(uint256 parentTokenId);

    /**
     * @notice Thrown when attempting to burn a token that doesn't meet burn criteria.
     * @param tokenId The ID of the token.
     */
    error CannotBurnToken(uint256 tokenId);

    // ============================================
    // Events
    // ============================================

    /**
     * @notice Emitted when a synthetic token is minted.
     * @param tokenId The ID of the minted token.
     * @param registrarIanaId IANA ID of the sponsoring registrar.
     * @param to Address receiving the token.
     * @param sld Second-level domain label.
     * @param tld Top-level domain.
     * @param expiresAt Expiration timestamp.
     * @param ownership Whether this is a root ownership token (parentTokenId == 0).
     * @param host Subdomain host string.
     * @param capabilities Domain-level capability flags.
     * @param revocable Whether the token can be revoked.
     * @param groupId Group identifier for the token.
     * @param correlationId Cross-chain operation correlation ID.
     */
    event SyntheticTokenMinted(
        uint256 indexed tokenId,
        uint256 registrarIanaId,
        address to,
        string sld,
        string tld,
        uint256 expiresAt,
        bool ownership,
        string host,
        uint256 capabilities,
        bool revocable,
        uint256 groupId,
        string correlationId
    );

    /**
     * @notice Emitted when a synthetic subdomain token is minted directly (without cross-chain call).
     * @param tokenId The ID of the minted subdomain token.
     * @param parentTokenId The ID of the parent token.
     * @param to Address receiving the token.
     * @param host Subdomain host label.
     * @param expiresAt Expiration timestamp.
     * @param capabilities Domain-level capability flags.
     * @param revocable Whether the token can be revoked.
     * @param groupId Group identifier for the token.
     * @param correlationId Correlation ID for tracking the operation.
     */
    event SyntheticSubdomainMinted(
        uint256 indexed tokenId,
        uint256 indexed parentTokenId,
        address to,
        string host,
        uint256 expiresAt,
        uint256 capabilities,
        bool revocable,
        uint256 groupId,
        string correlationId
    );

    /**
     * @notice Emitted when a group is revoked.
     * @param parentTokenId The ID of the parent token.
     * @param groupId The ID of the group that was revoked.
     * @param groupCount The number of tokens in the revoked group.
     */
    event SyntheticGroupRevoked(
        uint256 indexed parentTokenId,
        uint256 indexed groupId,
        uint256 groupCount
    );

    /**
     * @notice Emitted when a synthetic subdomain token is renounced.
     * @param tokenId The ID of the renounced token.
     * @param owner The owner who renounced the token.
     * @param parentTokenId The ID of the parent token.
     * @param groupId The ID of the group the token belonged to.
     */
    event SyntheticTokenRenounced(
        uint256 indexed tokenId,
        address indexed owner,
        uint256 indexed parentTokenId,
        uint256 groupId
    );

    /**
     * @notice Emitted when a synthetic subdomain token is revoked by parent owner.
     * @param tokenId The ID of the revoked token.
     * @param revokedFrom The address whose token was revoked.
     * @param revokedBy The parent token owner who revoked it.
     * @param parentTokenId The ID of the parent token.
     * @param groupId The ID of the group the token belonged to.
     */
    event SyntheticTokenRevoked(
        uint256 indexed tokenId,
        address indexed revokedFrom,
        address indexed revokedBy,
        uint256 parentTokenId,
        uint256 groupId
    );

    function _getSyntheticTokenStorage()
        private
        pure
        returns (SyntheticTokenStorage storage syntheticStorage)
    {
        bytes32 slot = _SYNTHETIC_TOKEN_STORAGE_SLOT;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            syntheticStorage.slot := slot
        }
    }

    /**
     * @notice Mints a synthetic ownership token.
     * @dev Can only be called by authorized minter (ProxyDomaRecord). Emits SyntheticTokenMinted event.
     * @param info Synthetic token mint information including tokenId, registrar, owner and capabilities.
     * @param correlationId Correlation ID for tracking cross-chain operations.
     */
    function mintSyntheticFromOwnership(
        SyntheticTokenMintInfo calldata info,
        string calldata correlationId
    ) external onlyMinter {
        _mint(info.registrarIanaId, info.tokenId, info.expiresAt, info.owner);

        if (info.capabilities != 0) {
            _domainCapabilities[info.tokenId] = info.capabilities;
        }

        emit SyntheticTokenMinted(
            info.tokenId,
            info.registrarIanaId,
            info.owner,
            info.sld,
            info.tld,
            info.expiresAt,
            info.parentTokenId == 0,
            info.host,
            info.capabilities,
            info.revocable,
            info.groupId,
            correlationId
        );
    }

    /**
     * @notice Mints a synthetic subdomain token.
     * @dev Can only be called by authorized minter (ProxyDomaRecord). Stores synthetic data and emits event.
     *      If expiresAt is 0, stores 0 to indicate subdomain should inherit parent expiry dynamically.
     *      Token ID is generated from global counter.
     *      Uses SyntheticSubdomainMintInfo struct without sld/tld fields (inherited from parent).
     *      Emits SyntheticSubdomainMinted event.
     * @param info Synthetic subdomain mint information.
     * @param correlationId Correlation ID for tracking operations.
     * @return tokenId The generated token ID from global counter.
     */
    function mintSyntheticSubdomain(
        SyntheticSubdomainMintInfo calldata info,
        string calldata correlationId
    ) external onlyMinter returns (uint256) {
        // Validate host label
        NameUtils.ensureValidLabel(info.host);

        // Generate baseTokenId from parent + normalized host
        uint256 baseTokenId = NameUtils.namehash(info.parentTokenId, info.host);

        // Validate subdomain expiry doesn't exceed parent expiry
        uint256 parentExpiry = _getEffectiveExpiration(info.parentTokenId);
        if (info.expiresAt != 0) {
            _validateSubdomainExpiration(info.parentTokenId, info.expiresAt, parentExpiry);
        }

        // Get storage
        SyntheticTokenStorage storage syntheticStorage = _getSyntheticTokenStorage();

        // Validate group assignment rules
        // Revocable tokens cannot use group 0
        if (info.revocable && info.groupId == NON_REVOCABLE_GROUP) {
            revert InvalidGroupAssignment(info.parentTokenId, info.groupId, info.revocable);
        }

        // Non-revocable tokens must use group 0
        if (!info.revocable && info.groupId != NON_REVOCABLE_GROUP) {
            revert InvalidGroupAssignment(info.parentTokenId, info.groupId, info.revocable);
        }

        // Determine group assignment based on revocability
        uint256 assignedGroupId = info.revocable ? info.groupId : NON_REVOCABLE_GROUP;

        // Validate group is not revoked
        if (syntheticStorage.isGroupRevoked[info.parentTokenId][assignedGroupId]) {
            revert GroupRevoked(info.parentTokenId, assignedGroupId);
        }

        if (syntheticStorage.syntheticData[info.parentTokenId].parentTokenId != 0) {
            revert ParentMustBeOwnershipToken(info.parentTokenId);
        }

        // check for duplicates
        EnumerableSet.UintSet storage existingTokens = syntheticStorage.subdomainTokenIds[
            baseTokenId
        ];
        uint256[] memory tokenList = existingTokens.values();
        for (uint256 i = 0; i < tokenList.length; i++) {
            uint256 existingTokenId = tokenList[i];
            if (_isOperational(existingTokenId, syntheticStorage)) {
                // Found an operational subdomain - prevent duplicate
                // this can be changed in the future when we have other use cases
                revert SubdomainActive(existingTokenId);
            }
        }

        // Generate unique token ID: baseTokenId + global counter
        uint256 tokenId = baseTokenId + (++syntheticStorage.currentTokenId);

        // Add new token to the set
        existingTokens.add(tokenId);

        // Get registrarIanaId from parent token
        uint256 registrarIanaId = _registrarIanaIds[info.parentTokenId];

        // Mint without validation (already validated above)
        _safeMint(info.receiver, tokenId);
        _expirations[tokenId] = info.expiresAt;
        _registrarIanaIds[tokenId] = registrarIanaId;

        if (info.capabilities != 0) {
            _domainCapabilities[tokenId] = info.capabilities;
        }

        // Store synthetic data
        SyntheticData storage data = syntheticStorage.syntheticData[tokenId];
        data.parentTokenId = info.parentTokenId;
        data.host = info.host;
        data.revocable = info.revocable;
        data.subdomainCount = 0;
        data.groupId = assignedGroupId;

        // Increment group count and parent subdomain count
        unchecked {
            syntheticStorage.groupCounts[info.parentTokenId][assignedGroupId]++;
            syntheticStorage.syntheticData[info.parentTokenId].subdomainCount++;
        }

        emit SyntheticSubdomainMinted(
            tokenId,
            info.parentTokenId,
            info.receiver,
            info.host,
            info.expiresAt,
            info.capabilities,
            info.revocable,
            assignedGroupId,
            correlationId
        );

        return tokenId;
    }

    /**
     * @notice Renews a synthetic token by extending its expiration date.
     * @dev Can only be called by authorized minter (ProxyDomaRecord). Token must exist.
     * @param tokenId The ID of the token to renew.
     * @param expiresAt New expiration timestamp.
     * @param correlationId Correlation ID for tracking operations.
     */
    function renew(
        uint256 tokenId,
        uint256 expiresAt,
        string calldata correlationId
    ) external onlyMinter {
        DateUtils.validateExpirationDate(expiresAt);

        address currentOwner = _ownerOf(tokenId);
        if (currentOwner == address(0)) {
            revert NameTokenDoesNotExist(tokenId);
        }

        // Validate subdomain expiration doesn't exceed parent expiration
        SyntheticTokenStorage storage syntheticStorage = _getSyntheticTokenStorage();
        SyntheticData storage data = syntheticStorage.syntheticData[tokenId];

        if (data.parentTokenId != 0) {
            // Get effective current expiry (inherit from parent if not explicitly set)
            uint256 currentExpiry = _getEffectiveExpiration(tokenId);

            // Validate new expiry is greater than current expiry
            if (expiresAt <= currentExpiry) {
                revert RenewalMustExtendExpiry(tokenId, currentExpiry, expiresAt);
            }

            // Validate new expiry doesn't exceed parent expiry
            uint256 parentExpiry = _getEffectiveExpiration(data.parentTokenId);
            _validateSubdomainExpiration(data.parentTokenId, expiresAt, parentExpiry);
        }

        _expirations[tokenId] = expiresAt;

        emit NameTokenRenewed(tokenId, expiresAt, correlationId);
    }

    /// @notice Returns the current version of the contract
    /// @return The version string
    function version() external pure override returns (string memory) {
        return "1.0.0";
    }

    /**
     * @notice Get the expiration timestamp for a token, respecting parent expiry for subdomains.
     * @dev For subdomains, returns the minimum of own expiry and parent expiry.
     * @param tokenId The ID of the token.
     * @return The effective expiration timestamp.
     */
    function expirationOf(uint256 tokenId) external view override returns (uint256) {
        if (!_exists(tokenId)) {
            revert NameTokenDoesNotExist(tokenId);
        }

        return _getEffectiveExpiration(tokenId);
    }

    /**
     * @notice Get the subdomain count for a synthetic token.
     * @dev Returns the number of active subdomains for the given token.
     * @param tokenId The ID of the synthetic token.
     * @return The number of active subdomains.
     */
    function subdomainCountOf(uint256 tokenId) external view returns (uint256) {
        SyntheticTokenStorage storage _storage = _getSyntheticTokenStorage();
        return _storage.syntheticData[tokenId].subdomainCount;
    }

    /**
     * @notice Check if a group is revoked.
     * @dev Returns whether a specific group for a parent token is revoked.
     * @param parentTokenId The ID of the parent token.
     * @param groupId The group identifier.
     * @return True if the group is revoked, false otherwise.
     */
    function isGroupRevoked(uint256 parentTokenId, uint256 groupId) external view returns (bool) {
        SyntheticTokenStorage storage syntheticStorage = _getSyntheticTokenStorage();
        return syntheticStorage.isGroupRevoked[parentTokenId][groupId];
    }

    /**
     * @notice Get the parent token ID for a subdomain.
     * @param tokenId The ID of the token.
     * @return The parent token ID (0 for root tokens).
     */
    function getParentTokenId(uint256 tokenId) external view returns (uint256) {
        SyntheticTokenStorage storage syntheticStorage = _getSyntheticTokenStorage();
        return syntheticStorage.syntheticData[tokenId].parentTokenId;
    }

    /**
     * @notice Get the full synthetic data for a token.
     * @param tokenId The ID of the token.
     * @return The complete synthetic data struct.
     */
    function getSyntheticData(uint256 tokenId) external view returns (SyntheticData memory) {
        SyntheticTokenStorage storage syntheticStorage = _getSyntheticTokenStorage();
        return syntheticStorage.syntheticData[tokenId];
    }

    /**
     * @notice Get the owner of a token, even if it has been burned.
     * @dev If the token exists, returns the current owner via ownerOf().
     *      If the token has been burned, returns the last owner stored before burning.
     *      Used to allow users to claim staked tokens after their subdomain NFT is revoked and burned.
     * @param tokenId The ID of the token.
     * @return The address of the current owner if token exists, or last owner if burned.
     */
    function lastOwnerOf(uint256 tokenId) external view returns (address) {
        if (_exists(tokenId)) {
            return ownerOf(tokenId);
        }
        SyntheticTokenStorage storage syntheticStorage = _getSyntheticTokenStorage();
        return syntheticStorage.lastOwner[tokenId];
    }

    /**
     * @notice Get all operational subdomain token IDs for a given parent and host.
     * @dev Computes the base token ID using namehash and returns only operational tokens.
     *      Returns empty array if no operational subdomains exist.
     *      Host is normalized to lowercase for case-insensitive matching (DNS standard).
     *      Filters out expired, burned, or group-revoked tokens.
     * @param parentTokenId The ID of the parent token.
     * @param host The subdomain host label.
     * @return Array of operational token IDs for this subdomain.
     */
    function getActiveSubdomainTokenIds(
        uint256 parentTokenId,
        string calldata host
    ) external view returns (uint256[] memory) {
        NameUtils.ensureValidLabel(host);

        // Compute base token ID from parent + normalized host
        uint256 baseTokenId = NameUtils.namehash(parentTokenId, host);

        // Get all tokens for this subdomain
        SyntheticTokenStorage storage syntheticStorage = _getSyntheticTokenStorage();
        uint256[] memory allTokens = syntheticStorage.subdomainTokenIds[baseTokenId].values();

        // First pass: count operational tokens
        uint256 operationalCount = 0;
        for (uint256 i = 0; i < allTokens.length; i++) {
            if (_isOperational(allTokens[i], syntheticStorage)) {
                operationalCount++;
            }
        }

        // Second pass: build array of operational tokens
        uint256[] memory operationalTokens = new uint256[](operationalCount);
        uint256 index = 0;
        for (uint256 i = 0; i < allTokens.length; i++) {
            if (_isOperational(allTokens[i], syntheticStorage)) {
                operationalTokens[index++] = allTokens[i];
            }
        }

        return operationalTokens;
    }

    /**
     * @notice Check if any subdomain is operational for a given parent and host.
     * @dev Returns true if at least one operational token exists in the set.
     * probably we pass in capabilities to check for specific operations in the future.
     * @param parentTokenId The ID of the parent token.
     * @param host The subdomain host label.
     * @return True if at least one subdomain token is operational, false otherwise.
     */
    function isSubdomainOperational(
        uint256 parentTokenId,
        string calldata host
    ) external view returns (bool) {
        NameUtils.ensureValidLabel(host);

        uint256 baseTokenId = NameUtils.namehash(parentTokenId, host);

        SyntheticTokenStorage storage syntheticStorage = _getSyntheticTokenStorage();
        EnumerableSet.UintSet storage tokenSet = syntheticStorage.subdomainTokenIds[baseTokenId];
        uint256 length = tokenSet.length();

        // Loop backwards: typically only 1 token exists, but if expired tokens weren't
        // burned, the active token will be at the end of the set (most recently added)
        for (uint256 i = length; i != 0; ) {
            unchecked {
                --i;
            }
            if (_isOperational(tokenSet.at(i), syntheticStorage)) {
                return true;
            }
        }

        return false;
    }

    /**
     * @notice Revoke a group, preventing transfers of all tokens in that group.
     * @dev Can only be called by the minter. Reduces parent subdomain count.
     * @param parentTokenId The ID of the parent token.
     * @param groupId The group identifier to revoke.
     */
    function revokeGroup(uint256 parentTokenId, uint256 groupId) external onlyMinter {
        // Cannot revoke NON_REVOCABLE_GROUP
        if (groupId == NON_REVOCABLE_GROUP) {
            revert CannotLockNonRevocableGroup(groupId);
        }

        SyntheticTokenStorage storage syntheticStorage = _getSyntheticTokenStorage();

        if (syntheticStorage.isGroupRevoked[parentTokenId][groupId]) {
            revert GroupRevoked(parentTokenId, groupId);
        }

        uint256 groupCount = syntheticStorage.groupCounts[parentTokenId][groupId];
        syntheticStorage.isGroupRevoked[parentTokenId][groupId] = true;

        syntheticStorage.syntheticData[parentTokenId].subdomainCount -= uint64(groupCount);

        emit SyntheticGroupRevoked(parentTokenId, groupId, groupCount);
    }

    /**
     * @notice Burn a synthetic token.
     * @dev For subdomain tokens, calls _burnSyntheticSubdomain to properly clean up parent relationships.
     *      For root tokens, performs standard burn cleanup.
     * @param tokenId The ID of the token to burn.
     * @param correlationId Correlation ID for tracking the burn operation.
     */
    function burnSynthetic(uint256 tokenId, string calldata correlationId) external onlyMinter {
        SyntheticTokenStorage storage syntheticStorage = _getSyntheticTokenStorage();
        SyntheticData storage data = syntheticStorage.syntheticData[tokenId];

        uint256 parentTokenId = data.parentTokenId;

        // For subdomain tokens, use specialized burn logic
        if (parentTokenId != 0) {
            uint256 groupId = data.groupId;
            _burnSyntheticSubdomain(tokenId, parentTokenId, groupId, correlationId);
        } else {
            // For root tokens (synthetic ownership tokens), use standard cleanup
            delete syntheticStorage.syntheticData[tokenId];
            _burnNameToken(tokenId, correlationId);
        }
    }

    /**
     * @notice Bulk burn expired or group-locked synthetic subdomain tokens.
     * @dev Can be called by anyone to burn tokens that are either expired or in a locked group.
     *      This helps reclaim storage and maintain accurate subdomain counts.
     *      Only works on subdomain tokens (parentTokenId != 0).
     *      Note: NON_REVOCABLE_GROUP cannot be locked, so group-locked tokens are always revocable.
     * @param tokenIds Array of token IDs to burn.
     * @param correlationId Correlation ID for tracking the bulk burn operation.
     */
    function bulkBurnInactiveSynthetic(
        uint256[] calldata tokenIds,
        string calldata correlationId
    ) external {
        SyntheticTokenStorage storage syntheticStorage = _getSyntheticTokenStorage();

        uint256 len = tokenIds.length;
        for (uint256 i = 0; i < len; ) {
            uint256 tokenId = tokenIds[i];

            SyntheticData storage data = syntheticStorage.syntheticData[tokenId];

            if (data.parentTokenId == 0) {
                revert CannotBurnToken(tokenId);
            }

            if (_isOperational(tokenId, syntheticStorage)) {
                revert CannotBurnToken(tokenId);
            }

            uint256 parentTokenId = data.parentTokenId;
            uint256 groupId = data.groupId;

            _burnSyntheticSubdomain(tokenId, parentTokenId, groupId, correlationId);

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Check if a synthetic token is operational.
     * @dev Returns true if token exists, is not expired, and (for revocable subdomains) not in a locked group.
     *      Accepts pre-loaded storage to avoid repeated storage pointer lookups in loops.
     * @param tokenId The ID of the synthetic token.
     * @param syntheticStorage Pre-loaded storage pointer.
     * @return True if the token is operational, false otherwise.
     */
    function _isOperational(
        uint256 tokenId,
        SyntheticTokenStorage storage syntheticStorage
    ) internal view returns (bool) {
        if (!_exists(tokenId)) {
            return false;
        }

        uint256 effectiveExpiry = _getEffectiveExpiration(tokenId);
        if (effectiveExpiry < block.timestamp) {
            return false;
        }

        SyntheticData storage data = syntheticStorage.syntheticData[tokenId];

        if (data.parentTokenId != 0 && data.revocable) {
            if (syntheticStorage.isGroupRevoked[data.parentTokenId][data.groupId]) {
                return false;
            }
        }

        return true;
    }

    /**
     * @dev Get the effective expiration timestamp for a token, respecting parent expiry for subdomains.
     * @param tokenId The ID of the token.
     * @return The effective expiration timestamp.
     */
    function _getEffectiveExpiration(uint256 tokenId) internal view returns (uint256) {
        uint256 ownExpiry = _expirations[tokenId];

        SyntheticTokenStorage storage syntheticStorage = _getSyntheticTokenStorage();
        uint256 parentTokenId = syntheticStorage.syntheticData[tokenId].parentTokenId;

        if (parentTokenId == 0) {
            return ownExpiry;
        }

        uint256 parentExpiry = _expirations[parentTokenId];

        return ownExpiry == 0 ? parentExpiry : ownExpiry;
    }

    /**
     * @dev Override to check effective expiration for tokens with dynamic inheritance.
     * For subdomains with 0 expiry, this checks parent expiration instead of stored 0 value.
     */
    function _isTokenExpired(uint256 id) internal view override returns (bool) {
        return _getEffectiveExpiration(id) < block.timestamp;
    }

    /**
     * @dev Validates that a subdomain's expiration doesn't exceed its parent's expiration.
     * @param parentTokenId The parent token ID (used for error reporting)
     * @param expiresAt The proposed expiration for the subdomain
     * @param parentExpiry The parent token's expiration
     */
    function _validateSubdomainExpiration(
        uint256 parentTokenId,
        uint256 expiresAt,
        uint256 parentExpiry
    ) private pure {
        if (expiresAt > parentExpiry) {
            revert ExpirationExceedsParent(parentTokenId, expiresAt, parentExpiry);
        }
    }

    /**
     * @dev Internal function to burn a synthetic subdomain token and clean up all associated storage.
     * @param tokenId The ID of the token to burn.
     * @param parentTokenId The parent token ID.
     * @param groupId The group ID of the token.
     * @param correlationId Correlation ID for tracking the burn operation.
     */
    function _burnSyntheticSubdomain(
        uint256 tokenId,
        uint256 parentTokenId,
        uint256 groupId,
        string memory correlationId
    ) private {
        SyntheticTokenStorage storage syntheticStorage = _getSyntheticTokenStorage();

        // Remove token from subdomain set
        string memory host = syntheticStorage.syntheticData[tokenId].host;
        uint256 baseTokenId = NameUtils.namehash(parentTokenId, host);
        syntheticStorage.subdomainTokenIds[baseTokenId].remove(tokenId);

        syntheticStorage.groupCounts[parentTokenId][groupId]--;

        // Check group revocation status internally
        bool groupRevoked = syntheticStorage.isGroupRevoked[parentTokenId][groupId];

        // Only decrement subdomain count if group is not revoked
        if (!groupRevoked) {
            syntheticStorage.syntheticData[parentTokenId].subdomainCount--;
        }

        if (parentTokenId != 0) {
            address lastOwner = _ownerOf(tokenId);
            syntheticStorage.lastOwner[tokenId] = lastOwner;
        }

        delete syntheticStorage.syntheticData[tokenId];
        _burnNameToken(tokenId, correlationId);
    }

    /**
     * @dev Override to check if token belongs to a locked group before transfer.
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 firstTokenId,
        uint256 batchSize
    ) internal override {
        super._beforeTokenTransfer(from, to, firstTokenId, batchSize);

        if (from != address(0) && to != address(0)) {
            SyntheticTokenStorage storage syntheticStorage = _getSyntheticTokenStorage();
            SyntheticData storage data = syntheticStorage.syntheticData[firstTokenId];

            if (
                data.parentTokenId != 0 &&
                syntheticStorage.isGroupRevoked[data.parentTokenId][data.groupId]
            ) {
                revert GroupRevoked(data.parentTokenId, data.groupId);
            }
        }
    }
}
