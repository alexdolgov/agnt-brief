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
        OwnershipToken ownershipToken;
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
         * @dev Address of a synthetic token contract.
         */
        SyntheticToken syntheticToken;
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
        ProxyDomaRecordStorage storage ds = proxyDomaRecordStorage();
        address tokenOwner;

        if (isSyntheticToken(tokenId)) {
            tokenOwner = ds.syntheticToken.ownerOf(tokenId);
        } else {
            tokenOwner = ds.ownershipToken.ownerOf(tokenId);
        }

        if (owner != tokenOwner) {
            revert InvalidOwnerAddress(owner, tokenOwner);
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
        uint256[] memory tokenIds = new uint256[](1);
        tokenIds[0] = tokenId;
        ds.ownershipToken.bulkBurn(tokenIds, correlationId);
    }

    /**
     * @notice Check if a token is a synthetic token.
     * @dev Checks ownership token contract first, then synthetic token contract.
     * Reverts with NameTokenDoesNotExist error if token doesn't exist in either contract.
     * @param tokenId The ID of the token to check.
     * @return True if the token is a synthetic token, false if it's an ownership token.
     */
    function isSyntheticToken(uint256 tokenId) internal view returns (bool) {
        ProxyDomaRecordStorage storage ds = proxyDomaRecordStorage();

        // Check ownership token first
        if (ds.ownershipToken.exists(tokenId)) {
            return false;
        }

        // Check synthetic or ownership token exists
        if (!ds.syntheticToken.exists(tokenId)) {
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
        ProxyDomaRecordStorage storage ds = proxyDomaRecordStorage();

        if (isSyntheticToken(tokenId)) {
            return ds.syntheticToken.domainCapabilitiesOf(tokenId);
        } else {
            return ds.ownershipToken.domainCapabilitiesOf(tokenId);
        }
    }

    /**
     * @notice Validate a synthetic token for conversion to ownership token.
     * @dev Checks that token is synthetic, caller owns it, it's not locked, not expired, has no subdomains.
     * @param tokenId The ID of the token to validate.
     * @param owner The expected owner of the token.
     */
    function _validateSyntheticTokenForConversion(uint256 tokenId, address owner) internal view {
        ProxyDomaRecordStorage storage ds = proxyDomaRecordStorage();

        if (!isSyntheticToken(tokenId)) {
            revert TokenNotSynthetic(tokenId);
        }

        _verifyTokenOwnership(tokenId, owner);

        bool isLocked = ds.syntheticToken.lockStatusOf(tokenId);
        if (isLocked) {
            revert TransferLocked(tokenId);
        }

        uint256 expiresAt = ds.syntheticToken.expirationOf(tokenId);
        if (expiresAt < block.timestamp) {
            revert NameTokenHasExpired(tokenId, expiresAt);
        }

        uint256 subdomainCount = ds.syntheticToken.subdomainCountOf(tokenId);
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
        ProxyDomaRecordStorage storage ds = proxyDomaRecordStorage();

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

        bool isLocked = ds.ownershipToken.lockStatusOf(tokenId);
        if (isLocked) {
            revert TransferLocked(tokenId);
        }

        uint256 expiresAt = ds.ownershipToken.expirationOf(tokenId);
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
        ProxyDomaRecordStorage storage ds = proxyDomaRecordStorage();

        // Validate parent token exists and is synthetic
        if (!isSyntheticToken(parentTokenId)) {
            revert TokenNotSynthetic(parentTokenId);
        }

        // Validate parent token is not locked
        bool isLocked = ds.syntheticToken.lockStatusOf(parentTokenId);
        if (isLocked) {
            revert TransferLocked(parentTokenId);
        }

        // Validate parent token is not expired
        uint256 parentExpiresAt = ds.syntheticToken.expirationOf(parentTokenId);
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
