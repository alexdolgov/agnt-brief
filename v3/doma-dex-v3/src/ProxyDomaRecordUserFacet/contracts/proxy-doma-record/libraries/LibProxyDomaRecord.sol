// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";
import { AggregatorV3Interface } from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import { IERC7786GatewaySource } from "../../interfaces/IERC7786.sol";
import { NameToken } from "../../NameToken.sol";
import { OwnershipToken } from "../../OwnershipToken.sol";
import { SyntheticToken } from "../../SyntheticToken.sol";
import { CAIPUtils } from "../../utils/CAIPUtils.sol";
import { GatewayUtils } from "../../utils/GatewayUtils.sol";
import { NameUtils } from "../../utils/NameUtils.sol";
import { CAPABILITY_DNS_RECORDS_MANAGEMENT } from "../../doma-record/libraries/LibDoma.sol";

library LibProxyDomaRecord {
    using Strings for uint256;

    struct ProxyDomaRecordStorage {
        /**
         * @dev List of allowed EIP-712 voucher signers for each registrar.
         * Maps signer to registrar IANA ID, to be able to lookup registrar from a current signer.
         */
        mapping(address => uint256) registrarSigners;
        /**
         * @dev List of allowed EIP-712 voucher signers for doma protocol.
         * Used to verify Doma-provided proof-of-contacts vouchers.
         */
        mapping(address => bool) domaSigners;
        /**
         * @dev Used voucher nonces.
         * Necessary to prevent replay attacks.
         */
        mapping(uint256 => bool) nonces;
        /**
         * @dev Address of a cross-chain gateway to send cross-chain messages.
         */
        IERC7786GatewaySource crossChainGateway;
        /**
         * @dev Address of an ownership token contract.
         */
        OwnershipToken defaultOwnershipToken;
        /**
         * @dev CAIP-2 Chain ID of the Doma Chain.
         */
        string domaChainId;
        /**
         * @dev CAIP-10 Address of a Doma Record Contract on Doma Chain.
         */
        string domaRecordAddress;
        /**
         * @dev Internal lists to keep track of registrar signers for enumeration.
         */
        mapping(uint256 => address[]) registrarSignerList;
        address[] domaSignerList;
        /**
         * @dev ChainLink Price Fee contract.
         */
        AggregatorV3Interface priceFeed;
        /**
         * @notice Fees per operation in USD cents (2 decimal places)
         */
        mapping(bytes32 => uint256) feesUSDCents;
        /**
         * @dev Treasury account to collect fees.
         */
        address treasury;
        /**
         * @dev Authorized cross-chain senders.
         * Maps sender address to boolean indicating if authorized.
         */
        mapping(address => bool) crossChainSenders;
        /**
         * @dev Used to generate unique correlation Id even on the same block.
         */
        uint256 correlationNonce;
        /**
         * @dev List of supported target chain IDs for bridging.
         * Maps chain ID to a boolean indicating if it's supported.
         */
        mapping(string => bool) supportedTargetChains;
        /**
         * @dev Protocol admin management.
         * Maps admin address to boolean indicating if authorized as protocol admin.
         */
        mapping(address => bool) protocolAdmins;
        /**
         * @dev Forbidden subdomain labels.
         * Maps label hash (lowercase) to boolean indicating if forbidden.
         */
        mapping(bytes32 => bool) forbiddenLabels;
        /**
         * @dev Maps Registrar IANA ID to its capabilities.
         * These are the capabilities supported by a given registrar.
         */
        mapping(uint256 => uint256) registrarCapabilities;
        /**
         * @dev Address of the default synthetic token contract.
         */
        SyntheticToken defaultSyntheticToken;
        /**
         * @dev Mapping of TLD hash to ownership token contract address.
         */
        mapping(bytes32 => OwnershipToken) tldOwnershipTokens;
        /**
         * @dev Mapping of TLD hash to synthetic token contract address.
         */
        mapping(bytes32 => SyntheticToken) tldSyntheticTokens;
        /**
         * @dev Mapping of tokenId to synthetic token contract address (set at mint).
         */
        mapping(uint256 => SyntheticToken) syntheticTokenContracts;
        /**
         * @dev Set of valid synthetic token addresses for modifier checks.
         */
        mapping(address => bool) validSyntheticTokens;
        /**
         * @dev Mapping of tokenId to ownership token contract address.
         */
        mapping(uint256 => OwnershipToken) tokenContracts;
        /**
         * @dev Set of valid ownership token addresses for modifier checks.
         */
        mapping(address => bool) validOwnershipTokens;
    }

    // Storage location for the ProxyDomaRecord storage
    bytes32 private constant _PROXY_DOMA_RECORD_STORAGE_LOCATION =
        keccak256(abi.encode(uint256(keccak256("doma.storage.ProxyDomaRecord")) - 1)) &
            ~bytes32(uint256(0xff));

    function proxyDomaRecordStorage() internal pure returns (ProxyDomaRecordStorage storage ds) {
        bytes32 position = _PROXY_DOMA_RECORD_STORAGE_LOCATION;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            ds.slot := position
        }
    }

    /**
     * @notice `requestTokenization` operation key (for fee retrieval).
     */
    bytes32 public constant REQUEST_TOKENIZATION_OPERATION = keccak256("REQUEST_TOKENIZATION");

    /**
     * @notice `claimOwnership` operation key (for fee retrieval).
     */
    bytes32 public constant CLAIM_OWNERSHIP_OPERATION = keccak256("CLAIM_OWNERSHIP");

    /**
     * @notice `bridge` operation key (for fee retrieval).
     */
    bytes32 public constant BRIDGE_OPERATION = keccak256("BRIDGE");

    /**
     * @notice `setNameservers` operation key (for fee retrieval).
     */
    bytes32 public constant SET_NAMESERVERS_OPERATION = keccak256("SET_NAMESERVERS");

    /**
     * @notice `setDSKeys` operation key (for fee retrieval).
     */
    bytes32 public constant SET_DS_KEYS_OPERATION = keccak256("SET_DS_KEYS");

    /**
     * @notice `setDNSRRSet` operation key (for fee retrieval).
     */
    bytes32 public constant SET_DNS_RRSET_OPERATION = keccak256("SET_DNS_RRSET");

    /**
     * @notice `convertToSynthetic` operation key (for fee retrieval).
     */
    bytes32 public constant CONVERT_TO_SYNTHETIC_OPERATION = keccak256("CONVERT_TO_SYNTHETIC");

    /**
     * @notice `convertToOwnership` operation key (for fee retrieval).
     */
    bytes32 public constant CONVERT_TO_OWNERSHIP_OPERATION = keccak256("CONVERT_TO_OWNERSHIP");

    error ZeroAddress();
    error InvalidOwnerAddress(address owner, address tokenOwner);
    error InvalidOperation(bytes32 operation);
    error AccessControlNotAProtocolAdmin(address user);
    error ArrayLengthMismatch();
    error TransferLocked(uint256 tokenId);
    error NameTokenHasExpired(uint256 tokenId, uint256 expiresAt);
    error TokenAlreadySynthetic(uint256 tokenId);
    error TokenNotSynthetic(uint256 tokenId);
    error HasActiveSubdomains(uint256 tokenId, uint256 subdomainCount);
    error NotSubdomain(uint256 tokenId);
    error TokenNotRevocable(uint256 tokenId);
    error GroupRevoked(uint256 parentTokenId, uint256 groupId);
    error InsufficientCapabilities(uint256 tokenId, uint256 requiredCapability);
    error MixedOwnershipTokenContracts();

    /**
     * @notice Get the ownership token contract for a specific tokenId with fallback to default.
     * @param tokenId The token ID to look up.
     * @return The ownership token contract for this tokenId, or the default if not set.
     */
    function _getOwnershipToken(uint256 tokenId) internal view returns (OwnershipToken) {
        ProxyDomaRecordStorage storage ds = proxyDomaRecordStorage();
        OwnershipToken tokenContract = ds.tokenContracts[tokenId];
        if (address(tokenContract) == address(0)) {
            return ds.defaultOwnershipToken; // fallback to default
        }
        return tokenContract;
    }

    /**
     * @notice Get the ownership token contract for a TLD with fallback to default.
     * @param tld The TLD to look up.
     * @return The ownership token contract for this TLD, or the default if not set.
     */
    function _getOwnershipTokenForTld(string memory tld) internal view returns (OwnershipToken) {
        ProxyDomaRecordStorage storage ds = proxyDomaRecordStorage();
        bytes32 tldHash = keccak256(bytes(tld));
        OwnershipToken tldToken = ds.tldOwnershipTokens[tldHash];
        if (address(tldToken) == address(0)) {
            return ds.defaultOwnershipToken; // fallback to default
        }
        return tldToken;
    }

    /**
     * @notice Get the synthetic token contract for a specific tokenId with fallback to default.
     * @param tokenId The token ID to look up.
     * @return The synthetic token contract for this tokenId, or the default if not set.
     */
    function _getSyntheticToken(uint256 tokenId) internal view returns (SyntheticToken) {
        ProxyDomaRecordStorage storage ds = proxyDomaRecordStorage();
        SyntheticToken tokenContract = ds.syntheticTokenContracts[tokenId];
        if (address(tokenContract) == address(0)) {
            return ds.defaultSyntheticToken; // fallback to default
        }
        return tokenContract;
    }

    /**
     * @notice Get the synthetic token contract for a TLD with fallback to default.
     * @param tld The TLD to look up.
     * @return The synthetic token contract for this TLD, or the default if not set.
     */
    function _getSyntheticTokenForTld(string memory tld) internal view returns (SyntheticToken) {
        ProxyDomaRecordStorage storage ds = proxyDomaRecordStorage();
        bytes32 tldHash = keccak256(bytes(tld));
        SyntheticToken tldToken = ds.tldSyntheticTokens[tldHash];
        if (address(tldToken) == address(0)) {
            return ds.defaultSyntheticToken; // fallback to default
        }
        return tldToken;
    }

    /**
     * @notice Burns a synthetic token and clears its contract mapping.
     * @param tokenId The token ID to burn.
     * @param correlationId The correlation ID for the burn operation.
     */
    function _burnSyntheticAndCleanup(uint256 tokenId, string memory correlationId) internal {
        ProxyDomaRecordStorage storage ds = proxyDomaRecordStorage();
        _getSyntheticToken(tokenId).burnSynthetic(tokenId, correlationId);
        delete ds.syntheticTokenContracts[tokenId];
    }

    /**
     * @notice Mints a single ownership token and sets the tokenContracts mapping.
     * @param ownershipToken The ownership token contract to mint on.
     * @param mintInfo The mint information for the token.
     * @param capabilities The domain capabilities for the token.
     * @param correlationId The correlation ID for the mint operation.
     */
    function _mintOwnershipTokenAndSetMapping(
        OwnershipToken ownershipToken,
        OwnershipToken.OwnershipTokenMintInfo memory mintInfo,
        uint256 capabilities,
        string memory correlationId
    ) internal {
        ProxyDomaRecordStorage storage ds = proxyDomaRecordStorage();

        OwnershipToken.OwnershipTokenMintInfo[]
            memory names = new OwnershipToken.OwnershipTokenMintInfo[](1);
        names[0] = mintInfo;

        uint256[] memory caps = new uint256[](1);
        caps[0] = capabilities;

        ownershipToken.bulkMint(names, caps, correlationId);
        ds.tokenContracts[mintInfo.tokenId] = ownershipToken;
    }

    function _useCorrelationId() internal returns (string memory) {
        ProxyDomaRecordStorage storage _storage = proxyDomaRecordStorage();
        uint256 correlationId = uint256(
            keccak256(abi.encodePacked(block.number, block.chainid, _storage.correlationNonce++))
        );
        return correlationId.toHexString();
    }

    function _relayMessage(
        bytes memory data,
        string memory correlationId,
        uint256 nonceKey
    ) internal {
        bytes[] memory attributes;

        if (bytes(correlationId).length == 0) {
            attributes = new bytes[](1);
        } else {
            attributes = new bytes[](2);
            attributes[1] = abi.encodeWithSelector(
                GatewayUtils.CORRELATION_ID_ATTRIBUTE,
                correlationId
            );
        }

        attributes[0] = abi.encodeWithSelector(GatewayUtils.NONCE_KEY_ATTRIBUTE, nonceKey);

        ProxyDomaRecordStorage storage ds = proxyDomaRecordStorage();
        ds.crossChainGateway.sendMessage(
            ds.domaChainId,
            CAIPUtils.format(ds.domaChainId, ds.domaRecordAddress),
            data,
            attributes
        );
    }

    function _verifyTokenOwnership(uint256 tokenId, address owner) internal view {
        address tokenOwner;

        if (isSyntheticToken(tokenId)) {
            tokenOwner = _getSyntheticToken(tokenId).ownerOf(tokenId);
        } else {
            tokenOwner = _getOwnershipToken(tokenId).ownerOf(tokenId);
        }

        if (owner != tokenOwner) {
            revert InvalidOwnerAddress(owner, tokenOwner);
        }
    }

    /**
     * @notice Validates that a token has not expired.
     * @dev For synthetic tokens, expirationOf returns the effective expiration which
     * accounts for parent expiry when the subdomain inherits expiration.
     * @param tokenId The ID of the token to validate.
     */
    function _requireNotExpired(uint256 tokenId) internal view {
        uint256 expiresAt;
        if (isSyntheticToken(tokenId)) {
            expiresAt = _getSyntheticToken(tokenId).expirationOf(tokenId);
        } else {
            expiresAt = _getOwnershipToken(tokenId).expirationOf(tokenId);
        }

        if (expiresAt < block.timestamp) {
            revert NameTokenHasExpired(tokenId, expiresAt);
        }
    }

    function _isValidOperation(bytes32 operation) internal pure returns (bool) {
        return
            operation == REQUEST_TOKENIZATION_OPERATION ||
            operation == CLAIM_OWNERSHIP_OPERATION ||
            operation == BRIDGE_OPERATION ||
            operation == SET_NAMESERVERS_OPERATION ||
            operation == SET_DS_KEYS_OPERATION ||
            operation == SET_DNS_RRSET_OPERATION ||
            operation == CONVERT_TO_SYNTHETIC_OPERATION ||
            operation == CONVERT_TO_OWNERSHIP_OPERATION;
    }

    function _requireTokenExists(NameToken token, uint256 tokenId) internal view {
        if (!token.exists(tokenId)) {
            revert NameToken.NameTokenDoesNotExist(tokenId);
        }
    }

    function _burnOwnershipToken(uint256 tokenId, string memory correlationId) internal {
        ProxyDomaRecordStorage storage ds = proxyDomaRecordStorage();
        OwnershipToken ownershipToken = _getOwnershipToken(tokenId);

        uint256[] memory tokenIds = new uint256[](1);
        tokenIds[0] = tokenId;
        ownershipToken.bulkBurn(tokenIds, correlationId);

        // Clear the tokenContracts mapping
        delete ds.tokenContracts[tokenId];
    }

    /**
     * @notice Check if a token is a synthetic token.
     * @dev Checks ownership token contract first, then synthetic token contract.
     * Reverts with NameTokenDoesNotExist error if token doesn't exist in either contract.
     * @param tokenId The ID of the token to check.
     * @return True if the token is a synthetic token, false if it's an ownership token.
     */
    function isSyntheticToken(uint256 tokenId) internal view returns (bool) {
        // Check ownership token first (using the mapped or default contract)
        if (_getOwnershipToken(tokenId).exists(tokenId)) {
            return false;
        }

        // Check synthetic token exists (using the mapped or default contract)
        if (!_getSyntheticToken(tokenId).exists(tokenId)) {
            revert NameToken.NameTokenDoesNotExist(tokenId);
        }

        return true;
    }

    /**
     * @notice Get domain capabilities for a token (works for both ownership and synthetic tokens).
     * @dev Checks existence in contracts to determine which one to query.
     * @param tokenId The ID of the token.
     * @return The domain capabilities bitmask for the token.
     */
    function _getDomainCapabilities(uint256 tokenId) internal view returns (uint256) {
        if (isSyntheticToken(tokenId)) {
            return _getSyntheticToken(tokenId).domainCapabilitiesOf(tokenId);
        } else {
            return _getOwnershipToken(tokenId).domainCapabilitiesOf(tokenId);
        }
    }

    /**
     * @notice Validate a synthetic token for conversion to ownership token.
     * @dev Checks that token is synthetic, caller owns it, it's not locked, not expired, has no subdomains.
     * @param tokenId The ID of the token to validate.
     * @param owner The expected owner of the token.
     */
    function _validateSyntheticTokenForConversion(uint256 tokenId, address owner) internal view {
        if (!isSyntheticToken(tokenId)) {
            revert TokenNotSynthetic(tokenId);
        }

        _verifyTokenOwnership(tokenId, owner);

        SyntheticToken syntheticToken = _getSyntheticToken(tokenId);

        bool isLocked = syntheticToken.lockStatusOf(tokenId);
        if (isLocked) {
            revert TransferLocked(tokenId);
        }

        uint256 expiresAt = syntheticToken.expirationOf(tokenId);
        if (expiresAt < block.timestamp) {
            revert NameTokenHasExpired(tokenId, expiresAt);
        }

        uint256 subdomainCount = syntheticToken.subdomainCountOf(tokenId);
        if (subdomainCount > 0) {
            revert HasActiveSubdomains(tokenId, subdomainCount);
        }
    }

    /**
     * @notice Validate an ownership token for conversion to synthetic token.
     * @dev Checks that token is not synthetic, caller owns it, has DNS_RRSET capability, it's not locked, not expired.
     * @param tokenId The ID of the token to validate.
     * @param owner The expected owner of the token.
     */
    function _validateOwnershipTokenForConversion(uint256 tokenId, address owner) internal view {
        if (isSyntheticToken(tokenId)) {
            revert TokenAlreadySynthetic(tokenId);
        }

        _verifyTokenOwnership(tokenId, owner);

        uint256 capabilities = _getDomainCapabilities(tokenId);
        if (
            (capabilities & CAPABILITY_DNS_RECORDS_MANAGEMENT) != CAPABILITY_DNS_RECORDS_MANAGEMENT
        ) {
            revert InsufficientCapabilities(tokenId, CAPABILITY_DNS_RECORDS_MANAGEMENT);
        }

        OwnershipToken ownershipToken = _getOwnershipToken(tokenId);

        bool isLocked = ownershipToken.lockStatusOf(tokenId);
        if (isLocked) {
            revert TransferLocked(tokenId);
        }

        uint256 expiresAt = ownershipToken.expirationOf(tokenId);
        if (expiresAt < block.timestamp) {
            revert NameTokenHasExpired(tokenId, expiresAt);
        }
    }

    /**
     * @notice Validates subdomain extraction parameters.
     * @dev Checks parent token state, host label format, and capability requirements.
     * @param parentTokenId The ID of the parent synthetic token.
     * @param host The subdomain host label.
     * @param capabilities The capability flags being requested.
     */
    function _validateSubdomainExtraction(
        uint256 parentTokenId,
        string calldata host,
        uint256 capabilities
    ) internal view {
        // Validate parent token exists and is synthetic
        if (!isSyntheticToken(parentTokenId)) {
            revert TokenNotSynthetic(parentTokenId);
        }

        SyntheticToken syntheticToken = _getSyntheticToken(parentTokenId);

        // Validate parent token is not locked
        bool isLocked = syntheticToken.lockStatusOf(parentTokenId);
        if (isLocked) {
            revert TransferLocked(parentTokenId);
        }

        // Validate parent token is not expired
        uint256 parentExpiresAt = syntheticToken.expirationOf(parentTokenId);
        if (parentExpiresAt < block.timestamp) {
            revert NameTokenHasExpired(parentTokenId, parentExpiresAt);
        }

        // Validate host label format
        NameUtils.ensureValidLabel(host);

        // Validate capability includes CAPABILITY_DNS_RECORDS_MANAGEMENT (4)
        if (
            (capabilities & CAPABILITY_DNS_RECORDS_MANAGEMENT) != CAPABILITY_DNS_RECORDS_MANAGEMENT
        ) {
            revert InsufficientCapabilities(parentTokenId, CAPABILITY_DNS_RECORDS_MANAGEMENT);
        }

        // Validate parent has the capabilities being delegated
        uint256 parentCapabilities = _getDomainCapabilities(parentTokenId);
        if ((parentCapabilities & capabilities) != capabilities) {
            revert InsufficientCapabilities(parentTokenId, capabilities);
        }
    }
}
