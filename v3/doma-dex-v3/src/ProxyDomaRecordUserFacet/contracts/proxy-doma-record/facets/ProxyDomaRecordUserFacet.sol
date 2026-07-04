// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { LibProxyDomaRecord } from "../libraries/LibProxyDomaRecord.sol";
import { EIP712Upgradeable } from "@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import { IDomaRecord } from "../../interfaces/IDomaRecord.sol";
import { CAIPUtils } from "../../utils/CAIPUtils.sol";
import { NameUtils } from "../../utils/NameUtils.sol";
import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";
import { ECDSA } from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import { OwnershipToken } from "../../OwnershipToken.sol";
import { SyntheticToken } from "../../SyntheticToken.sol";
import {
    CAPABILITY_REGISTRY_RECORDS_MANAGEMENT,
    CAPABILITY_DNS_RECORDS_MANAGEMENT
} from "../../doma-record/libraries/LibDoma.sol";

/**
 * @title ProxyDomaRecordUserFacet
 * @notice User-facing facet for the proxy DOMA record contract on tokenization chains.
 * @dev This facet handles user interactions including tokenization requests, ownership claims,
 * cross-chain bridging, and domain record management. It validates vouchers, manages fees,
 * and integrates with EIP-712 for signature verification. Supports both ownership tokens
 * and capability tokens with appropriate access controls.
 */
contract ProxyDomaRecordUserFacet is EIP712Upgradeable {
    using Strings for address;
    using Strings for uint256;
    using LibProxyDomaRecord for *;
    using ECDSA for bytes32;

    /**
     * @notice Tokenization voucher, obtained from a Registrar.
     * @param names List of names to tokenize.
     * @param nonce Unique nonce to prevent voucher reuse (replay attacks).
     * @param expiresAt Expiration date of the voucher (UNIX seconds).
     * @param ownerAddress Minted Ownership Token owner address. Must be equal to transaction sender.
     */
    struct TokenizationVoucher {
        IDomaRecord.NameInfo[] names;
        uint256 nonce;
        uint256 expiresAt;
        address ownerAddress;
    }

    /**
     * @notice Proof of Contacts voucher, obtained from a Registrar or Doma-provided storage.
     * @param registrantHandle Handle of a registrant in an off-chain storage.
     * @param proofSource Source of the proof-of-contacts voucher. 1 - Registrar, 2 - Doma.
     * @param nonce Unique nonce to prevent voucher reuse (replay attacks).
     * @param expiresAt Expiration date of the voucher (UNIX seconds).
     */
    struct ProofOfContactsVoucher {
        uint256 registrantHandle;
        IDomaRecord.ProofOfContactsSource proofSource;
        uint256 nonce;
        uint256 expiresAt;
    }

    string private constant _NAME_INFO_TYPE = "NameInfo(string sld,string tld)";
    bytes32 private constant _NAME_INFO_TYPE_HASH = keccak256(abi.encodePacked(_NAME_INFO_TYPE));

    string private constant _PROOF_OF_CONTACTS_VOUCHER_TYPE =
        "ProofOfContactsVoucher(uint256 registrantHandle,uint8 proofSource,uint256 nonce,uint256 expiresAt)";
    bytes32 private constant _PROOF_OF_CONTACTS_VOUCHER_TYPE_HASH =
        keccak256(abi.encodePacked(_PROOF_OF_CONTACTS_VOUCHER_TYPE));

    string private constant _TOKENIZATION_VOUCHER_TYPE =
        "TokenizationVoucher(NameInfo[] names,uint256 nonce,uint256 expiresAt,address ownerAddress)";
    bytes32 private constant _TOKENIZATION_VOUCHER_TYPE_HASH =
        keccak256(abi.encodePacked(_TOKENIZATION_VOUCHER_TYPE, _NAME_INFO_TYPE));

    /**
     * @notice Thrown when attempting to tokenize a name that is already tokenized.
     * @param sld The second-level domain of the name
     * @param tld The top-level domain of the name
     */
    error NameAlreadyTokenized(string sld, string tld);

    /**
     * @notice Thrown when a registrar ID doesn't match the expected registrar for an operation.
     * @param ianaId The provided registrar IANA ID
     * @param expectedIanaId The expected registrar IANA ID
     */
    error InvalidRegistrar(uint256 ianaId, uint256 expectedIanaId);

    /**
     * @notice Thrown when attempting to use an operation that is not supported for synthetic tokens.
     * @param tokenId The ID of the synthetic token
     */
    error SyntheticTokenNotSupported(uint256 tokenId);

    /**
     * @notice Thrown when attempting to set DNS records for a host that has an operational subdomain.
     * @param host The subdomain host label that is in use
     */
    error SubdomainHostInUse(string host);

    /**
     * @notice Thrown when a subdomain token is provided where a parent token is required.
     * @param tokenId The ID of the subdomain token
     */
    error InvalidTokenId(uint256 tokenId);

    /**
     * @notice Thrown when attempting to bridge to an unsupported target chain.
     * @param chainId The unsupported chain ID in CAIP-2 format
     */
    error UnsupportedTargetChain(string chainId);

    /**
     * @notice Thrown when a voucher signature is invalid or from an unauthorized signer.
     * @param signer The address that was recovered from the signature
     */
    error InvalidSigner(address signer);

    /**
     * @notice Thrown when a voucher has expired and cannot be used.
     * @param expiresAt The expiration timestamp of the voucher
     * @param currentTime The current block timestamp
     */
    error VoucherExpired(uint256 expiresAt, uint256 currentTime);

    /**
     * @notice Thrown when the price feed data is stale and cannot be trusted.
     * @param roundId The round ID from the price feed
     * @param updatedAt The timestamp when the price was last updated
     */
    error PriceFeedStalePrice(uint80 roundId, uint256 updatedAt);

    /**
     * @notice Thrown when the price feed returns an invalid price value.
     * @param price The invalid price value returned
     */
    error InvalidPrice(int256 price);

    /**
     * @notice Thrown when a native currency transfer fails.
     */
    error TransferFailed();

    /**
     * @notice Thrown when the provided fee doesn't match the expected fee for an operation.
     * @param expectedFee The expected fee amount in wei
     * @param providedFee The fee amount actually provided
     */
    error InvalidFee(uint256 expectedFee, uint256 providedFee);

    /**
     * @notice Thrown when a fee is provided for an operation that doesn't require payment.
     * @param operation The operation identifier
     * @param nameCount The number of names being processed
     */
    error FeeNotRequired(bytes32 operation, uint256 nameCount);

    /**
     * @notice Thrown when attempting to reuse a nonce that has already been consumed.
     * @param nonce The nonce that was already used
     */
    error NonceAlreadyUsed(uint256 nonce);

    /**
     * @notice Thrown when an empty array is provided where at least one element is required.
     */
    error EmptyArray();

    /**
     * @notice Emitted when a fee is collected for an operation.
     * @param feeWei The fee amount collected in wei
     * @param feeUsdCents The equivalent fee amount in USD cents
     * @param correlationId The correlation ID for tracking the operation
     */
    event FeeCollected(uint256 feeWei, uint256 feeUsdCents, string correlationId);

    /**
     * @notice Emitted when a synthetic subdomain token is renounced by its owner.
     * @param tokenId The ID of the renounced token.
     * @param owner The address who renounced the token.
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

    /**
     * @notice Modifier to prevent operations on synthetic tokens that are not yet supported.
     * @dev Reverts with SyntheticTokenNotSupported error for synthetic tokens.
     * @param tokenId The ID of the token being operated on
     */
    modifier notSynthetic(uint256 tokenId) {
        if (LibProxyDomaRecord.isSyntheticToken(tokenId)) {
            revert SyntheticTokenNotSupported(tokenId);
        }
        _;
    }

    /**
     * @notice Modifier to verify that the caller is the owner of the specified token.
     * @dev Uses LibProxyDomaRecord to verify ownership before allowing operations.
     * @param tokenId The ID of the token to verify ownership for
     */
    modifier onlyTokenOwner(uint256 tokenId) {
        LibProxyDomaRecord._verifyTokenOwnership(tokenId, msg.sender);
        _;
    }

    /**
     * @notice Modifier to verify that the token has not expired.
     * @param tokenId The ID of the token to check expiry for
     */
    modifier notExpired(uint256 tokenId) {
        LibProxyDomaRecord._requireNotExpired(tokenId);
        _;
    }

    /**
     * @notice Request tokenization of domain names using a signed voucher from a registrar.
     * @dev Validates the voucher signature, collects fees, and initiates cross-chain tokenization.
     * The voucher must be signed by an authorized registrar and not expired. Names are validated
     * for proper format and checked for existing tokenization on this chain.
     * @param voucher The tokenization voucher containing names and authorization details
     * @param signature The registrar's signature over the voucher data
     */
    function requestTokenization(
        TokenizationVoucher calldata voucher,
        bytes calldata signature
    ) external payable {
        _verifyNotExpiredVoucher(voucher.expiresAt);
        _verifyAndUpdateNonce(voucher.nonce);
        if (msg.sender != voucher.ownerAddress) {
            revert LibProxyDomaRecord.InvalidOwnerAddress(msg.sender, voucher.ownerAddress);
        }

        uint256 nameCount = voucher.names.length;
        string memory correlationId = LibProxyDomaRecord._useCorrelationId();
        _collectFee(LibProxyDomaRecord.REQUEST_TOKENIZATION_OPERATION, nameCount, correlationId);

        bytes32 voucherHash = _hashTokenizationVoucher(voucher);
        bytes32 digest = _hashTypedDataV4(voucherHash);
        uint256 registrarIanaId = _verifyRegistrarSignature(digest, signature);

        for (uint256 i = 0; i < nameCount; i++) {
            IDomaRecord.NameInfo memory name = voucher.names[i];

            // Validate SLD label format
            NameUtils.ensureValidLabel(name.sld);

            // Validate TLD format (can be eTLD with dots, but must be valid domain name)
            NameUtils.ensureValidName(name.tld);

            // Optimistic check that name isn't already tokenized
            // It's not a foolproof, since name might be tokenized on another chain, or be in progress
            // However, this would help to reject repeated tokenization requests on the same chain
            uint256 nameId = NameUtils.namehash(string(abi.encodePacked(name.sld, ".", name.tld)));

            // Check against the TLD-specific ownership token contract
            OwnershipToken ownershipToken = LibProxyDomaRecord._getOwnershipTokenForTld(name.tld);
            if (ownershipToken.exists(nameId)) {
                revert NameAlreadyTokenized(name.sld, name.tld);
            }
        }

        bytes memory initiateTokenizationCalldata = abi.encodeCall(
            IDomaRecord.initiateTokenization,
            (
                registrarIanaId,
                voucher.names,
                CAIPUtils.caip2Local(),
                voucher.ownerAddress.toChecksumHexString(),
                correlationId
            )
        );

        // Generate a unique nonce key to prevent replays of the same message
        uint256 nonceKey = uint256(
            keccak256(abi.encodePacked(initiateTokenizationCalldata, block.number))
        );
        LibProxyDomaRecord._relayMessage(initiateTokenizationCalldata, correlationId, nonceKey);
    }

    /**
     * @notice Claim ownership of a domain name using proof of contacts voucher.
     * @dev Allows token owners to establish claim over their domain by providing signed proof
     * from either the registrar or DOMA system. Validates voucher signature, collects fees,
     * and initiates cross-chain ownership claim process.
     * @param tokenId The ID of the ownership token being claimed
     * @param proofOfContactsVoucher The voucher containing proof of contact information
     * @param signature The signature over the voucher (from registrar or DOMA)
     */
    function claimOwnership(
        uint256 tokenId,
        ProofOfContactsVoucher calldata proofOfContactsVoucher,
        bytes calldata signature
    ) public payable notSynthetic(tokenId) onlyTokenOwner(tokenId) {
        _verifyNotExpiredVoucher(proofOfContactsVoucher.expiresAt);
        _verifyAndUpdateNonce(proofOfContactsVoucher.nonce);

        bytes32 voucherHash = _hashProofOfContactsVoucher(proofOfContactsVoucher);
        bytes32 digest = _hashTypedDataV4(voucherHash);

        if (proofOfContactsVoucher.proofSource == IDomaRecord.ProofOfContactsSource.REGISTRAR) {
            uint256 registrarIanaId = _verifyRegistrarSignature(digest, signature);
            uint256 tokenRegistrar = LibProxyDomaRecord._getOwnershipToken(tokenId).registrarOf(
                tokenId
            );
            if (tokenRegistrar != registrarIanaId) {
                revert InvalidRegistrar(registrarIanaId, tokenRegistrar);
            }
        } else {
            _verifyDomaSignature(digest, signature);
        }

        string memory correlationId = LibProxyDomaRecord._useCorrelationId();
        _collectFee(LibProxyDomaRecord.CLAIM_OWNERSHIP_OPERATION, 1, correlationId);

        bytes memory claimOwnershipCalldata = abi.encodeCall(
            IDomaRecord.claimOwnership,
            (
                tokenId.toString(),
                CAIPUtils.caip2Local(),
                msg.sender.toChecksumHexString(),
                proofOfContactsVoucher.proofSource,
                proofOfContactsVoucher.registrantHandle,
                correlationId
            )
        );

        LibProxyDomaRecord._relayMessage(claimOwnershipCalldata, correlationId, tokenId);
    }

    /**
     * @notice Deprecated overload with isSynthetic parameter - this parameter is ignored and will be removed in a future version.
     * @dev This overload is maintained for backward compatibility. Use claimOwnership(tokenId, proofOfContactsVoucher, signature) instead.
     */
    function claimOwnership(
        uint256 tokenId,
        bool, // isSynthetic?
        ProofOfContactsVoucher calldata proofOfContactsVoucher,
        bytes calldata signature
    ) external payable notSynthetic(tokenId) onlyTokenOwner(tokenId) {
        claimOwnership(tokenId, proofOfContactsVoucher, signature);
    }

    /**
     * @notice Deprecated overload with isSynthetic parameter - this parameter is ignored and will be removed in a future version.
     * @dev This overload is maintained for backward compatibility. Use bridge(tokenId, targetChainId, targetOwnerAddress) instead.
     */
    function bridge(
        uint256 tokenId,
        bool, // isSynthetic
        string calldata targetChainId,
        string calldata targetOwnerAddress
    ) external payable notSynthetic(tokenId) onlyTokenOwner(tokenId) {
        bridge(tokenId, targetChainId, targetOwnerAddress);
    }

    /**
     * @notice Bridge a domain token to another supported chain.
     * @dev Burns the token on this chain and initiates minting on the target chain.
     * Validates target chain support, transfer lock status, and token expiration.
     * Collects fees and relays the bridge request to the DOMA chain.
     * @param tokenId The ID of the ownership token to bridge
     * @param targetChainId The CAIP-2 chain ID of the destination chain
     * @param targetOwnerAddress The owner address on the target chain
     */
    function bridge(
        uint256 tokenId,
        string calldata targetChainId,
        string calldata targetOwnerAddress
    ) public payable notSynthetic(tokenId) onlyTokenOwner(tokenId) {
        // Verify the target chain ID is supported
        if (!isTargetChainSupported(targetChainId)) {
            revert UnsupportedTargetChain(targetChainId);
        }

        string memory correlationId = LibProxyDomaRecord._useCorrelationId();

        _collectFee(LibProxyDomaRecord.BRIDGE_OPERATION, 1, correlationId);

        OwnershipToken ownershipToken = LibProxyDomaRecord._getOwnershipToken(tokenId);

        bool isLocked = ownershipToken.lockStatusOf(tokenId);
        if (isLocked) {
            revert LibProxyDomaRecord.TransferLocked(tokenId);
        }

        uint256 expiresAt = ownershipToken.expirationOf(tokenId);
        if (expiresAt < block.timestamp) {
            revert LibProxyDomaRecord.NameTokenHasExpired(tokenId, expiresAt);
        }

        LibProxyDomaRecord._burnOwnershipToken(tokenId, correlationId);

        bytes memory bridgeCalldata = abi.encodeCall(
            IDomaRecord.bridge,
            (tokenId.toString(), targetChainId, targetOwnerAddress, correlationId)
        );

        LibProxyDomaRecord._relayMessage(bridgeCalldata, correlationId, tokenId);
    }

    /**
     * @notice Convert an ownership token to a synthetic ownership token.
     * @dev Burns the ownership token on this chain and sends a cross-chain message to DOMA chain
     * to set the synthetic flag. Once confirmed, a synthetic token will be minted to the owner.
     * The synthetic token maintains the same tokenId, expiration, and capabilities as the original.
     * @param tokenId The ID of the ownership token to convert
     */
    function convertToSynthetic(uint256 tokenId) external payable onlyTokenOwner(tokenId) {
        string memory correlationId = LibProxyDomaRecord._useCorrelationId();

        _collectFee(LibProxyDomaRecord.CONVERT_TO_SYNTHETIC_OPERATION, 1, correlationId);

        LibProxyDomaRecord._validateOwnershipTokenForConversion(tokenId, msg.sender);

        address tokenOwner = LibProxyDomaRecord._getOwnershipToken(tokenId).ownerOf(tokenId);

        bytes memory convertToSyntheticCalldata = abi.encodeCall(
            IDomaRecord.convertToSynthetic,
            (tokenId, CAIPUtils.caip2Local(), tokenOwner.toChecksumHexString(), correlationId)
        );

        LibProxyDomaRecord._relayMessage(convertToSyntheticCalldata, correlationId, tokenId);
    }

    /**
     * @notice Convert a synthetic ownership token back to a regular ownership token.
     * @dev Burns the synthetic token on this chain and sends a cross-chain message to DOMA chain
     * to update the synthetic flag. Once confirmed, a regular ownership token will be minted.
     * Requires that the synthetic token has no active subdomains (subdomainCount == 0).
     * @param tokenId The ID of the synthetic token to convert
     */
    function convertToOwnership(uint256 tokenId) external payable onlyTokenOwner(tokenId) {
        string memory correlationId = LibProxyDomaRecord._useCorrelationId();

        _collectFee(LibProxyDomaRecord.CONVERT_TO_OWNERSHIP_OPERATION, 1, correlationId);

        LibProxyDomaRecord._validateSyntheticTokenForConversion(tokenId, msg.sender);

        address tokenOwner = LibProxyDomaRecord._getSyntheticToken(tokenId).ownerOf(tokenId);

        bytes memory convertToOwnershipCalldata = abi.encodeCall(
            IDomaRecord.convertToOwnership,
            (tokenId, CAIPUtils.caip2Local(), tokenOwner.toChecksumHexString(), correlationId)
        );

        LibProxyDomaRecord._relayMessage(convertToOwnershipCalldata, correlationId, tokenId);
    }

    /**
     * @notice Deprecated overload with isSynthetic parameter - this parameter is ignored and will be removed in a future version.
     * @dev This overload is maintained for backward compatibility. Use requestDetokenization(tokenId) instead.
     */
    function requestDetokenization(
        uint256 tokenId,
        bool
    ) external notSynthetic(tokenId) onlyTokenOwner(tokenId) {
        requestDetokenization(tokenId);
    }

    /**
     * @notice Request detokenization of a domain name by the owner.
     * @dev Initiates the detokenization process on the DOMA chain, which will remove
     * the domain from the protocol and return it to traditional DNS management.
     * Only the token owner can request detokenization.
     * @param tokenId The ID of the ownership token to detokenize
     */
    function requestDetokenization(
        uint256 tokenId
    ) public notSynthetic(tokenId) onlyTokenOwner(tokenId) {
        string memory correlationId = LibProxyDomaRecord._useCorrelationId();
        bytes memory ownerDetokenizeCalldata = abi.encodeCall(
            IDomaRecord.ownerDetokenize,
            (
                tokenId.toString(),
                CAIPUtils.caip2Local(),
                msg.sender.toChecksumHexString(),
                correlationId
            )
        );

        LibProxyDomaRecord._relayMessage(ownerDetokenizeCalldata, correlationId, tokenId);
    }

    /**
     * @notice Deprecated overload with isSynthetic parameter - this parameter is ignored and will be removed in a future version.
     * @dev This overload is maintained for backward compatibility. Use setNameservers(tokenId, nameservers) instead.
     */
    function setNameservers(
        uint256 tokenId,
        string[] calldata nameservers,
        bool
    ) external payable notSynthetic(tokenId) onlyTokenOwner(tokenId) {
        setNameservers(tokenId, nameservers);
    }

    /**
     * @notice Update nameservers for a domain.
     * @dev Requires CAPABILITY_REGISTRY_RECORDS_MANAGEMENT. Relays change to Doma Chain.
     * @param tokenId The ownership token ID.
     * @param nameservers List of nameserver hostnames.
     */
    function setNameservers(
        uint256 tokenId,
        string[] calldata nameservers
    ) public payable notSynthetic(tokenId) onlyTokenOwner(tokenId) notExpired(tokenId) {
        _validateCapability(tokenId, CAPABILITY_REGISTRY_RECORDS_MANAGEMENT);

        string memory correlationId = LibProxyDomaRecord._useCorrelationId();
        _collectFee(LibProxyDomaRecord.SET_NAMESERVERS_OPERATION, 1, correlationId);

        bytes memory setNameserversCalldata = abi.encodeCall(
            IDomaRecord.setNameservers,
            (tokenId, nameservers, correlationId)
        );

        LibProxyDomaRecord._relayMessage(setNameserversCalldata, correlationId, tokenId);
    }

    /**
     * @notice Deprecated overload with isSynthetic parameter - this parameter is ignored and will be removed in a future version.
     * @dev This overload is maintained for backward compatibility. Use setDSKeys(tokenId, dsKeys) instead.
     */
    function setDSKeys(
        uint256 tokenId,
        IDomaRecord.DSKey[] calldata dsKeys,
        bool
    ) external payable notSynthetic(tokenId) onlyTokenOwner(tokenId) {
        setDSKeys(tokenId, dsKeys);
    }

    /**
     * @notice Update DNSSEC DS keys for a domain.
     * @dev Requires CAPABILITY_REGISTRY_RECORDS_MANAGEMENT. Relays change to Doma Chain.
     * @param tokenId The ownership token ID.
     * @param dsKeys Array of DS key records.
     */
    function setDSKeys(
        uint256 tokenId,
        IDomaRecord.DSKey[] calldata dsKeys
    ) public payable notSynthetic(tokenId) onlyTokenOwner(tokenId) notExpired(tokenId) {
        _validateCapability(tokenId, CAPABILITY_REGISTRY_RECORDS_MANAGEMENT);

        string memory correlationId = LibProxyDomaRecord._useCorrelationId();
        _collectFee(LibProxyDomaRecord.SET_DS_KEYS_OPERATION, 1, correlationId);

        bytes memory setDSKeysCalldata = abi.encodeCall(
            IDomaRecord.setDSKeys,
            (tokenId, dsKeys, correlationId)
        );

        LibProxyDomaRecord._relayMessage(setDSKeysCalldata, correlationId, tokenId);
    }

    /**
     * @notice Deprecated overload with isSynthetic parameter - this parameter is ignored and will be removed in a future version.
     * @dev This overload is maintained for backward compatibility. Use setDNSRRSet(tokenId, host, recordType, ttl, records) instead.
     */
    function setDNSRRSet(
        uint256 tokenId,
        string calldata host,
        string calldata recordType,
        uint32 ttl,
        string[] calldata records,
        bool
    ) external payable onlyTokenOwner(tokenId) {
        setDNSRRSet(tokenId, host, recordType, ttl, records);
    }

    /**
     * @notice Set DNS resource record set for a domain.
     * @dev Requires CAPABILITY_DNS_RECORDS_MANAGEMENT. Relays change to Doma Chain.
     * Works for both ownership and synthetic tokens (including subdomain tokens).
     * Host must be lowercase (enforced by validation).
     * @param tokenId The token ID (ownership, synthetic root, or synthetic subdomain).
     * @param host The hostname relative to the token (e.g., "www" or "" for apex).
     * @param recordType DNS record type (e.g., "A", "AAAA", "CNAME").
     * @param ttl Time-to-live in seconds.
     * @param records Array of record values. Empty array deletes the RRSet.
     */
    function setDNSRRSet(
        uint256 tokenId,
        string calldata host,
        string calldata recordType,
        uint32 ttl,
        string[] calldata records
    ) public payable {
        // Empty string is allowed for subdomain apex
        if (bytes(host).length > 0) {
            NameUtils.ensureValidHost(host);
        }

        bool isSynthetic = LibProxyDomaRecord.isSyntheticToken(tokenId);
        SyntheticToken syntheticToken = LibProxyDomaRecord._getSyntheticToken(tokenId);
        uint256 parentTokenId = isSynthetic ? syntheticToken.getParentTokenId(tokenId) : 0;

        // If using a parent token, check if a subdomain exists for this host
        // If subdomain exists and is owned by someone else, reject the operation
        if (isSynthetic && parentTokenId == 0) {
            // This is a parent synthetic token - check for subdomain conflicts
            // Extract the last label (immediate child) from the host
            string memory immediateChild = _getLastLabel(host);

            // If an operational subdomain exists for this label, caller must use the subdomain token
            if (syntheticToken.isSubdomainOperational(tokenId, immediateChild)) {
                revert SubdomainHostInUse(immediateChild);
            }
        }

        // Verify caller owns the token
        LibProxyDomaRecord._verifyTokenOwnership(tokenId, msg.sender);

        // Validate token is not expired (also checks parent if synthetic subdomain)
        LibProxyDomaRecord._requireNotExpired(tokenId);

        // Validate capability on the token
        _validateCapability(tokenId, CAPABILITY_DNS_RECORDS_MANAGEMENT);

        string memory correlationId = LibProxyDomaRecord._useCorrelationId();
        _collectFee(LibProxyDomaRecord.SET_DNS_RRSET_OPERATION, 1, correlationId);

        // Determine parent tokenId and full host for DOMA chain
        uint256 parentTokenIdForDoma;
        string memory fullHost;

        if (isSynthetic && parentTokenId != 0) {
            // This is a subdomain token
            string memory subdomainHost = syntheticToken.getSyntheticData(tokenId).host;
            parentTokenIdForDoma = parentTokenId;

            if (bytes(host).length == 0) {
                // Setting DNS for the subdomain apex
                fullHost = subdomainHost;
            } else {
                // Setting DNS for a nested record under the subdomain
                fullHost = string(abi.encodePacked(host, ".", subdomainHost));
            }
        } else {
            // This is either an ownership token or a synthetic root token
            parentTokenIdForDoma = tokenId;
            fullHost = host;
        }

        bytes memory setDNSRRSetCalldata = abi.encodeCall(
            IDomaRecord.setDNSRRSet,
            (parentTokenIdForDoma, fullHost, recordType, ttl, records, correlationId)
        );

        LibProxyDomaRecord._relayMessage(setDNSRRSetCalldata, correlationId, parentTokenIdForDoma);
    }

    /**
     * @notice Sets multiple DNS record sets across multiple hosts in a single transaction.
     * @dev Requires CAPABILITY_DNS_RECORDS_MANAGEMENT. Relays changes to Doma Chain.
     * Works for both ownership and synthetic tokens (including subdomain tokens).
     * Hosts must be lowercase (enforced by validation when non-empty).
     * `hostInputs` array must be non-empty, and each host's `recordSets` must be non-empty.
     * Empty `records` array within a recordSet deletes that RRSet.
     * @param tokenId The token ID (ownership, synthetic root, or synthetic subdomain).
     * @param hostInputs Array of hosts with their DNS record sets.
     */
    function setDNSRRSetBatch(
        uint256 tokenId,
        IDomaRecord.HostDNSInput[] calldata hostInputs
    ) external payable {
        if (hostInputs.length == 0) {
            revert EmptyArray();
        }

        bool isSynthetic = LibProxyDomaRecord.isSyntheticToken(tokenId);
        SyntheticToken syntheticToken = LibProxyDomaRecord._getSyntheticToken(tokenId);
        uint256 parentTokenId = isSynthetic ? syntheticToken.getParentTokenId(tokenId) : 0;

        for (uint256 i = 0; i < hostInputs.length; ) {
            if (hostInputs[i].recordSets.length == 0) {
                revert EmptyArray();
            }

            string calldata host = hostInputs[i].host;

            if (bytes(host).length > 0) {
                NameUtils.ensureValidHost(host);
            }

            if (isSynthetic && parentTokenId == 0 && bytes(host).length > 0) {
                string memory immediateChild = _getLastLabel(host);
                if (syntheticToken.isSubdomainOperational(tokenId, immediateChild)) {
                    revert SubdomainHostInUse(immediateChild);
                }
            }

            unchecked {
                ++i;
            }
        }

        LibProxyDomaRecord._verifyTokenOwnership(tokenId, msg.sender);
        LibProxyDomaRecord._requireNotExpired(tokenId);
        _validateCapability(tokenId, CAPABILITY_DNS_RECORDS_MANAGEMENT);

        string memory correlationId = LibProxyDomaRecord._useCorrelationId();
        _collectFee(LibProxyDomaRecord.SET_DNS_RRSET_OPERATION, 1, correlationId);

        uint256 parentTokenIdForDoma;
        string memory subdomainHost;

        if (isSynthetic && parentTokenId != 0) {
            subdomainHost = syntheticToken.getSyntheticData(tokenId).host;
            parentTokenIdForDoma = parentTokenId;
        } else {
            parentTokenIdForDoma = tokenId;
            subdomainHost = "";
        }

        IDomaRecord.HostDNSInput[] memory resolvedInputs = new IDomaRecord.HostDNSInput[](
            hostInputs.length
        );
        for (uint256 i = 0; i < hostInputs.length; ) {
            string memory fullHost;
            if (bytes(subdomainHost).length == 0) {
                fullHost = hostInputs[i].host;
            } else if (bytes(hostInputs[i].host).length == 0) {
                fullHost = subdomainHost;
            } else {
                fullHost = string(abi.encodePacked(hostInputs[i].host, ".", subdomainHost));
            }

            resolvedInputs[i] = IDomaRecord.HostDNSInput({
                host: fullHost,
                recordSets: hostInputs[i].recordSets
            });

            unchecked {
                ++i;
            }
        }

        bytes memory callData = abi.encodeCall(
            IDomaRecord.setDNSRRSetBatch,
            (parentTokenIdForDoma, resolvedInputs, correlationId)
        );
        LibProxyDomaRecord._relayMessage(callData, correlationId, parentTokenIdForDoma);
    }

    // View functions

    /**
     * @notice Get the fee in USD cents for a specific operation.
     * @param operation The operation identifier to query
     * @return The fee amount in USD cents
     */
    function feesUSDCents(bytes32 operation) public view returns (uint256) {
        return LibProxyDomaRecord.proxyDomaRecordStorage().feesUSDCents[operation];
    }

    /**
     * @notice Check if a target chain is supported for bridging operations.
     * @param targetChainId The CAIP-2 chain identifier to check
     * @return Whether the target chain is supported
     */
    function isTargetChainSupported(string calldata targetChainId) public view returns (bool) {
        return LibProxyDomaRecord.proxyDomaRecordStorage().supportedTargetChains[targetChainId];
    }

    /**
     * @notice Convert a USD cent amount to the equivalent native token amount.
     * @dev Uses Chainlink price feed to get current exchange rate. Validates price feed data.
     * @param feeUSDCents The fee amount in USD cents
     * @return nativeFee The equivalent fee in native token wei
     */
    function getNativePrice(uint256 feeUSDCents) public view returns (uint256 nativeFee) {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage _storage = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        (uint80 roundId, int256 price, , uint256 updatedAt, ) = _storage
            .priceFeed
            .latestRoundData();
        _validatePriceFeedResponse(roundId, price, updatedAt);
        return _getNativePrice(feeUSDCents, price);
    }

    /**
     * @notice Get the fee in native tokens for a specific operation.
     * @dev Combines USD cent fee lookup with current price conversion.
     * @param operation The operation identifier to query
     * @return The fee amount in native token wei (0 if operation has no fee)
     */
    function getOperationFeeInNative(bytes32 operation) public view returns (uint256) {
        if (!LibProxyDomaRecord._isValidOperation(operation)) {
            revert LibProxyDomaRecord.InvalidOperation(operation);
        }

        uint256 feeUSDCents = feesUSDCents(operation);
        if (feeUSDCents == 0) {
            return 0;
        }

        // Fetch the native token fee for the operation
        uint256 nativeFee = getNativePrice(feeUSDCents);
        return nativeFee;
    }

    function _hashTokenizationVoucher(
        TokenizationVoucher calldata voucher
    ) internal pure returns (bytes32) {
        bytes32[] memory namesHashes = new bytes32[](voucher.names.length);

        for (uint256 i = 0; i < voucher.names.length; i++) {
            IDomaRecord.NameInfo memory name = voucher.names[i];
            namesHashes[i] = keccak256(
                abi.encode(
                    _NAME_INFO_TYPE_HASH,
                    keccak256(bytes(name.sld)),
                    keccak256(bytes(name.tld))
                )
            );
        }

        return
            keccak256(
                abi.encode(
                    _TOKENIZATION_VOUCHER_TYPE_HASH,
                    keccak256(abi.encodePacked(namesHashes)),
                    voucher.nonce,
                    voucher.expiresAt,
                    voucher.ownerAddress
                )
            );
    }

    function _hashProofOfContactsVoucher(
        ProofOfContactsVoucher calldata voucher
    ) internal pure returns (bytes32) {
        uint8 proofSource = uint8(voucher.proofSource);
        return
            keccak256(
                abi.encode(
                    _PROOF_OF_CONTACTS_VOUCHER_TYPE_HASH,
                    voucher.registrantHandle,
                    proofSource,
                    voucher.nonce,
                    voucher.expiresAt
                )
            );
    }

    function _verifyNotExpiredVoucher(uint256 expiresAt) internal view {
        if (expiresAt < block.timestamp) {
            revert VoucherExpired(expiresAt, block.timestamp);
        }
    }

    function _verifyAndUpdateNonce(uint256 nonce) internal {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage _storage = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        if (_storage.nonces[nonce] == true) {
            revert NonceAlreadyUsed(nonce);
        }

        _storage.nonces[nonce] = true;
    }

    function _verifyRegistrarSignature(
        bytes32 digest,
        bytes calldata signature
    ) internal view returns (uint256) {
        address signatureSigner = digest.recover(signature);

        LibProxyDomaRecord.ProxyDomaRecordStorage storage _storage = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        uint256 ianaId = _storage.registrarSigners[signatureSigner];
        if (ianaId == 0) {
            revert InvalidSigner(signatureSigner);
        }

        return ianaId;
    }

    function _verifyDomaSignature(bytes32 digest, bytes calldata signature) internal view {
        address signatureSigner = digest.recover(signature);

        LibProxyDomaRecord.ProxyDomaRecordStorage storage _storage = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        if (!_storage.domaSigners[signatureSigner]) {
            revert InvalidSigner(signatureSigner);
        }
    }

    function _collectFee(
        bytes32 operation,
        uint256 nameCount,
        string memory correlationId
    ) internal {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage _storage = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        uint256 feeUSDCents = _storage.feesUSDCents[operation] * nameCount;
        if (feeUSDCents == 0) {
            if (msg.value > 0) {
                revert FeeNotRequired(operation, nameCount);
            }
            return;
        }

        (uint80 latestRoundId, int256 price, , uint256 updatedAt, ) = _storage
            .priceFeed
            .latestRoundData();
        _validatePriceFeedResponse(latestRoundId, price, updatedAt);
        uint256 nativeFee = _getNativePrice(feeUSDCents, price);

        if (msg.value != nativeFee) {
            // Try to use previous round data to calculate the fee
            // This could happen if transaction spent to long in the mempool, or round data change while transaction was being constructed/signed
            uint80 previousRoundId = _getPreviousRoundId(latestRoundId);
            (, int256 previousRoundPrice, , uint256 previousRoundUpdatedAt, ) = _storage
                .priceFeed
                .getRoundData(previousRoundId);
            _validatePriceFeedResponse(previousRoundId, previousRoundPrice, previousRoundUpdatedAt);

            nativeFee = _getNativePrice(feeUSDCents, previousRoundPrice);

            if (msg.value != nativeFee) {
                revert InvalidFee(nativeFee, msg.value);
            }
        }

        if (_storage.treasury == address(0)) revert LibProxyDomaRecord.ZeroAddress();

        (bool success, ) = payable(_storage.treasury).call{ value: msg.value }("");
        if (!success) revert TransferFailed();

        emit FeeCollected(msg.value, feeUSDCents, correlationId);
    }

    function _getNativePrice(
        uint256 feeUSDCents,
        int256 price
    ) internal view returns (uint256 nativeFee) {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage _storage = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        uint8 decimals = _storage.priceFeed.decimals();

        if (price <= 0) revert InvalidPrice(price);

        uint256 currentPriceInUSD = uint256(price);

        // feeUSDCents is in cents (2 decimal places)
        // We need to normalize based on the price feed decimals
        if (decimals >= 2) {
            // If price feed has more decimals than our fee (which is in cents with 2 decimals)
            // Multiply fee by 10^(decimals-2) to match price feed precision
            uint256 normalizedFee = feeUSDCents * (10 ** (decimals - 2));
            nativeFee = (normalizedFee * 1e18) / currentPriceInUSD;
        } else {
            // If price feed has fewer decimals than our fee
            // Multiply price by 10^(2-decimals) to match fee precision
            uint256 normalizedPrice = currentPriceInUSD * (10 ** (2 - decimals));
            nativeFee = (feeUSDCents * 1e18) / normalizedPrice;
        }

        return nativeFee;
    }

    function _validatePriceFeedResponse(
        uint80 roundId,
        int256 price,
        uint256 updatedAt
    ) internal view {
        if (price <= 0) revert InvalidPrice(price);

        if (updatedAt < block.timestamp - 1 days) {
            revert PriceFeedStalePrice(roundId, updatedAt);
        }
    }

    function _getPreviousRoundId(uint80 roundId) internal pure returns (uint80) {
        uint80 phaseId = roundId >> 64;
        uint64 aggregatorRoundId = uint64(roundId);

        // If it's the first round on a phase, there's no previous round
        // Unlikely to happen in actual deployments, but could happen in testnets
        // Since we don't know last round of the previous phase, we return the current round as a fallback
        if (aggregatorRoundId <= 1) {
            return roundId;
        }

        return (phaseId << 64) | (aggregatorRoundId - 1);
    }

    /**
     * @notice Get the contract version.
     * @return The version string of this contract
     */
    function version() external pure returns (string memory) {
        return "1.1.0";
    }

    /**
     * @notice Override EIP712 name to avoid initialization requirement.
     * @dev Returns the domain name used for EIP-712 signature verification.
     * @return The EIP-712 domain name
     */
    // solhint-disable-next-line func-name-mixedcase
    function _EIP712Name() internal pure override returns (string memory) {
        return "DOMA";
    }

    /**
     * @notice Override EIP712 version to avoid initialization requirement.
     * @dev Returns the domain version used for EIP-712 signature verification.
     * @return The EIP-712 domain version
     */
    // solhint-disable-next-line func-name-mixedcase
    function _EIP712Version() internal pure override returns (string memory) {
        return "1";
    }

    /**
     * @notice Override eip712Domain to work without initialization (EIP-5267 compliance).
     * @dev Returns the EIP-712 domain parameters for signature verification.
     * @return fields The fields that are set in the domain
     * @return name The EIP-712 domain name
     * @return domainVersion The EIP-712 domain version
     * @return chainId The chain ID for the domain
     * @return verifyingContract The address of this contract
     * @return salt The domain salt (unused)
     * @return extensions The domain extensions (unused)
     */
    function eip712Domain()
        public
        view
        virtual
        override
        returns (
            bytes1 fields,
            string memory name,
            string memory domainVersion,
            uint256 chainId,
            address verifyingContract,
            bytes32 salt,
            uint256[] memory extensions
        )
    {
        return (
            hex"0f", // 01111
            _EIP712Name(),
            _EIP712Version(),
            block.chainid,
            address(this),
            bytes32(0),
            new uint256[](0)
        );
    }

    /**
     * @notice Get the REQUEST_TOKENIZATION_OPERATION constant
     * @return The operation hash for request tokenization
     */
    // solhint-disable-next-line func-name-mixedcase
    function REQUEST_TOKENIZATION_OPERATION() external pure returns (bytes32) {
        return LibProxyDomaRecord.REQUEST_TOKENIZATION_OPERATION;
    }

    /**
     * @notice Get the CLAIM_OWNERSHIP_OPERATION constant
     * @return The operation hash for claim ownership
     */
    // solhint-disable-next-line func-name-mixedcase
    function CLAIM_OWNERSHIP_OPERATION() external pure returns (bytes32) {
        return LibProxyDomaRecord.CLAIM_OWNERSHIP_OPERATION;
    }

    /**
     * @notice Get the BRIDGE_OPERATION constant
     * @return The operation hash for bridge
     */
    // solhint-disable-next-line func-name-mixedcase
    function BRIDGE_OPERATION() external pure returns (bytes32) {
        return LibProxyDomaRecord.BRIDGE_OPERATION;
    }

    /**
     * @notice Get the SET_NAMESERVERS_OPERATION constant
     * @return The operation hash for set nameservers
     */
    // solhint-disable-next-line func-name-mixedcase
    function SET_NAMESERVERS_OPERATION() external pure returns (bytes32) {
        return LibProxyDomaRecord.SET_NAMESERVERS_OPERATION;
    }

    /**
     * @notice Get the SET_DS_KEYS_OPERATION constant
     * @return The operation hash for set DS keys
     */
    // solhint-disable-next-line func-name-mixedcase
    function SET_DS_KEYS_OPERATION() external pure returns (bytes32) {
        return LibProxyDomaRecord.SET_DS_KEYS_OPERATION;
    }

    /**
     * @notice Get the SET_DNS_RRSET_OPERATION constant
     * @return The operation hash for set DNS RRSet
     */
    // solhint-disable-next-line func-name-mixedcase
    function SET_DNS_RRSET_OPERATION() external pure returns (bytes32) {
        return LibProxyDomaRecord.SET_DNS_RRSET_OPERATION;
    }

    /**
     * @notice Get the CONVERT_TO_SYNTHETIC_OPERATION constant
     * @return The operation hash for convert to synthetic
     */
    // solhint-disable-next-line func-name-mixedcase
    function CONVERT_TO_SYNTHETIC_OPERATION() external pure returns (bytes32) {
        return LibProxyDomaRecord.CONVERT_TO_SYNTHETIC_OPERATION;
    }

    /**
     * @notice Get the CONVERT_TO_OWNERSHIP_OPERATION constant
     * @return The operation hash for convert to ownership
     */
    // solhint-disable-next-line func-name-mixedcase
    function CONVERT_TO_OWNERSHIP_OPERATION() external pure returns (bytes32) {
        return LibProxyDomaRecord.CONVERT_TO_OWNERSHIP_OPERATION;
    }

    /**
     * @notice Validates that a token has the required capability
     * @dev For REGISTRY_RECORDS_MANAGEMENT: checks registrar capabilities
     *      For DNS_RECORDS_MANAGEMENT: checks domain capabilities
     * @param tokenId The token ID to check
     * @param requiredCapability The required capability bit mask
     */
    function _validateCapability(uint256 tokenId, uint256 requiredCapability) private view {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();

        uint256 capabilities;

        if (requiredCapability == CAPABILITY_REGISTRY_RECORDS_MANAGEMENT) {
            // For registry records (nameservers, DS keys): check registrar capabilities
            uint256 registrarIanaId;
            if (LibProxyDomaRecord.isSyntheticToken(tokenId)) {
                registrarIanaId = LibProxyDomaRecord._getSyntheticToken(tokenId).registrarOf(
                    tokenId
                );
            } else {
                registrarIanaId = LibProxyDomaRecord._getOwnershipToken(tokenId).registrarOf(
                    tokenId
                );
            }
            capabilities = ds.registrarCapabilities[registrarIanaId];
        } else if (requiredCapability == CAPABILITY_DNS_RECORDS_MANAGEMENT) {
            // For DNS records: check domain capabilities
            capabilities = LibProxyDomaRecord._getDomainCapabilities(tokenId);
        }

        if ((capabilities & requiredCapability) != requiredCapability) {
            revert LibProxyDomaRecord.InsufficientCapabilities(tokenId, requiredCapability);
        }
    }

    /**
     * @notice Mint a synthetic subdomain token directly without cross-chain call.
     * @dev Mints subdomain token on this chain, bypassing DomaRecord on DOMA chain.
     *      Validates parent ownership, depth limits, expiration.
     *      Only CAPABILITY_DNS_RECORDS_MANAGEMENT (4) is allowed for subdomains.
     *      Uses new SyntheticSubdomainMinted event without sld/tld (use parentTokenId to lookup).
     * @param parentTokenId The ID of the parent synthetic token
     * @param host The subdomain host label (e.g., "www" or "api")
     * @param capabilities Capability flags (must be CAPABILITY_DNS_RECORDS_MANAGEMENT = 4)
     * @param expiresAt Expiration timestamp for the subdomain token (0 to inherit from parent)
     * @param revocable Whether the parent can revoke this subdomain
     * @param groupId Group identifier for batch operations
     * @param receiver The address to receive the minted subdomain token
     * @return The newly minted synthetic subdomain token ID
     */
    function mintSyntheticSubdomain(
        uint256 parentTokenId,
        string calldata host,
        uint256 capabilities,
        uint256 expiresAt,
        bool revocable,
        uint256 groupId,
        address receiver
    ) external payable onlyTokenOwner(parentTokenId) returns (uint256) {
        // Validate subdomain extraction parameters
        LibProxyDomaRecord._validateSubdomainExtraction(parentTokenId, host, capabilities);

        LibProxyDomaRecord.ProxyDomaRecordStorage storage s = LibProxyDomaRecord
            .proxyDomaRecordStorage();

        // Use parent's synthetic token contract for subdomain
        SyntheticToken syntheticToken = LibProxyDomaRecord._getSyntheticToken(parentTokenId);

        string memory correlationId = LibProxyDomaRecord._useCorrelationId();

        // Mint subdomain token directly (no cross-chain call)
        uint256 newTokenId = syntheticToken.mintSyntheticSubdomain(
            SyntheticToken.SyntheticSubdomainMintInfo({
                receiver: receiver,
                revocable: revocable,
                expiresAt: expiresAt,
                capabilities: capabilities,
                host: host,
                parentTokenId: parentTokenId,
                groupId: groupId
            }),
            correlationId
        );

        // Store tokenId → syntheticToken mapping (inherits from parent)
        s.syntheticTokenContracts[newTokenId] = syntheticToken;

        return newTokenId;
    }

    /**
     * @notice Renew a synthetic subdomain token.
     * @dev Can only be called by the parent token owner.
     *      Validates that new expiry extends current expiry and doesn't exceed parent expiry.
     *      Only works for subdomains (tokens with parentTokenId != 0).
     * @param tokenId The ID of the subdomain token to renew.
     * @param expiresAt The new expiration timestamp (must be > current expiry and <= parent expiry).
     */
    function renewSubdomain(uint256 tokenId, uint256 expiresAt) external payable {
        SyntheticToken syntheticToken = LibProxyDomaRecord._getSyntheticToken(tokenId);

        // Get subdomain's parent tokenId
        uint256 parentTokenId = syntheticToken.getParentTokenId(tokenId);

        // Verify this is a subdomain (not a root token)
        if (parentTokenId == 0) {
            revert LibProxyDomaRecord.NotSubdomain(tokenId);
        }

        // Verify caller is the parent owner
        LibProxyDomaRecord._verifyTokenOwnership(parentTokenId, msg.sender);

        // Validate parent token is not expired
        LibProxyDomaRecord._requireNotExpired(parentTokenId);

        string memory correlationId = LibProxyDomaRecord._useCorrelationId();

        // Renew the subdomain (SyntheticToken.renew will validate expiry rules)
        syntheticToken.renew(tokenId, expiresAt, correlationId);
    }

    /**
     * @notice Renounce ownership of a synthetic subdomain token.
     * @dev Burns the subdomain token and makes it available for re-minting.
     *      Can only be called by the subdomain token owner.
     *      The subdomain must not be in a locked group.
     * @param tokenId The ID of the subdomain token to renounce.
     */
    function renounceSynthetic(uint256 tokenId) external onlyTokenOwner(tokenId) {
        SyntheticToken syntheticToken = LibProxyDomaRecord._getSyntheticToken(tokenId);

        // Get token data
        SyntheticToken.SyntheticData memory data = syntheticToken.getSyntheticData(tokenId);

        // Verify this is a subdomain (not a root token)
        if (data.parentTokenId == 0) {
            revert LibProxyDomaRecord.NotSubdomain(tokenId);
        }

        // Verify group not revoked
        if (syntheticToken.isGroupRevoked(data.parentTokenId, data.groupId)) {
            revert LibProxyDomaRecord.GroupRevoked(data.parentTokenId, data.groupId);
        }

        string memory correlationId = LibProxyDomaRecord._useCorrelationId();
        LibProxyDomaRecord._burnSyntheticAndCleanup(tokenId, correlationId);

        emit SyntheticTokenRenounced(tokenId, msg.sender, data.parentTokenId, data.groupId);
    }

    /**
     * @notice Revoke a specific synthetic subdomain token.
     * @dev Burns the subdomain token and makes it available for re-minting.
     *      Can only be called by the parent token owner.
     *      The subdomain must be revocable and not in a locked group.
     * @param tokenId The ID of the subdomain token to revoke.
     */
    function revokeSynthetic(uint256 tokenId) external {
        SyntheticToken syntheticToken = LibProxyDomaRecord._getSyntheticToken(tokenId);

        // Get token data
        SyntheticToken.SyntheticData memory data = syntheticToken.getSyntheticData(tokenId);

        // Verify this is a subdomain (not a root token)
        if (data.parentTokenId == 0) {
            revert LibProxyDomaRecord.NotSubdomain(tokenId);
        }

        // Only parent token owner can revoke
        LibProxyDomaRecord._verifyTokenOwnership(data.parentTokenId, msg.sender);

        // Verify token is revocable
        if (!data.revocable) {
            revert LibProxyDomaRecord.TokenNotRevocable(tokenId);
        }

        // Verify group not revoked
        if (syntheticToken.isGroupRevoked(data.parentTokenId, data.groupId)) {
            revert LibProxyDomaRecord.GroupRevoked(data.parentTokenId, data.groupId);
        }

        // Get token owner before burning
        address tokenOwner = syntheticToken.ownerOf(tokenId);

        string memory correlationId = LibProxyDomaRecord._useCorrelationId();
        LibProxyDomaRecord._burnSyntheticAndCleanup(tokenId, correlationId);

        emit SyntheticTokenRevoked(
            tokenId,
            tokenOwner,
            msg.sender,
            data.parentTokenId,
            data.groupId
        );
    }

    /**
     * @notice Revoke a group of subdomains, preventing transfers and marking them for bulk operations.
     * @dev Can only be called by the parent token owner.
     *      Revokes all subdomain tokens in the specified group.
     *      Reduces the parent's subdomain count by the number of tokens in the group.
     * @param parentTokenId The ID of the parent synthetic token.
     * @param groupId The group identifier to revoke.
     */
    function revokeGroup(
        uint256 parentTokenId,
        uint256 groupId
    ) external onlyTokenOwner(parentTokenId) {
        // Verify this is a synthetic token (ownership tokens don't support subdomains)
        if (!LibProxyDomaRecord.isSyntheticToken(parentTokenId)) {
            revert LibProxyDomaRecord.TokenNotSynthetic(parentTokenId);
        }

        SyntheticToken syntheticToken = LibProxyDomaRecord._getSyntheticToken(parentTokenId);

        // Verify this is a root synthetic token (not a subdomain)
        uint256 grandparentTokenId = syntheticToken.getParentTokenId(parentTokenId);
        if (grandparentTokenId != 0) {
            revert InvalidTokenId(parentTokenId);
        }

        // Revoke the group (marks all tokens in group as revoked)
        syntheticToken.revokeGroup(parentTokenId, groupId);
    }

    /**
     * @dev Extract the last label from a host string (eg. "app" from "api.app").
     *      If no dot exists, returns the entire string.
     * @param host The full host string.
     * @return The last label after the final dot.
     */
    function _getLastLabel(string memory host) private pure returns (string memory) {
        bytes memory hostBytes = bytes(host);
        if (hostBytes.length == 0) {
            return host;
        }

        // Find the last occurrence of '.' by searching backwards
        for (uint256 i = hostBytes.length; i > 0; i--) {
            if (hostBytes[i - 1] == 0x2E) {
                // 0x2E is '.'
                // Found dot, extract substring after it
                bytes memory result = new bytes(hostBytes.length - i);
                for (uint256 j = 0; j < result.length; j++) {
                    result[j] = hostBytes[i + j];
                }
                return string(result);
            }
        }

        // No dot found, return the entire string
        return host;
    }
}
