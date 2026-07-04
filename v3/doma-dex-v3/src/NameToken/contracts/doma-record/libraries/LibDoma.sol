// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";

import { IDomaRecord } from "../../interfaces/IDomaRecord.sol";
import { IERC7786GatewaySource } from "../../interfaces/IERC7786.sol";
import { CAIPUtils } from "../../utils/CAIPUtils.sol";
import { IProxyDomaRecord } from "../../interfaces/IProxyDomaRecord.sol";
import { NameUtils } from "../../utils/NameUtils.sol";
import { GatewayUtils } from "../../utils/GatewayUtils.sol";

// Capability bit masks
uint256 constant CAPABILITY_REGISTRY_RECORDS_MANAGEMENT = 1; // 1 << 0
uint256 constant CAPABILITY_DNS_RECORDS_MANAGEMENT = 1 << 1; // 2

library LibDoma {
    using Strings for uint256;

    error ChainNotSupported(string chainId);
    error DetokenizationForbidden(string sld, string tld);
    error NameIsNotClaimed(string sld, string tld);
    error NameNotFound(string sld, string tld);
    error TldNotSupported(string tld);

    struct Registrar {
        uint256 ianaId;
        address[] operators;
        address[] complianceOperators;
        uint256 supportedCapabilities;
    }

    /**
     * @notice Tokenization request information.
     * @param registrarIanaId The IANA ID of a sponsoring registrar.
     * @param sld The second-level domain of the name. E.g. "example" in "example.com".
     * @param tld The top-level domain of the name. E.g. "com" in "example.com".
     * @param ownershipTokenChainId The chain ID on which ownership token should be minted, CAIP-2 format.
     * @param ownershipTokenOwnerAddress The address that would own the token on the target chain.
     */
    struct TokenizationRequest {
        uint256 registrarIanaId;
        string sld;
        string tld;
        string ownershipTokenChainId;
        string ownershipTokenOwnerAddress;
    }

    /**
     * @notice Claim request information.
     * @param claimedBy Token owner that performed a name claim.
     * @param proofSource Registrant handle source location. For now, only DOMA value is supported.
     * @param registrantHandle Opaque handle of a registrant. Used to fetch contacts information from the proof source.
     */
    struct ClaimRequest {
        string claimedBy;
        IDomaRecord.ProofOfContactsSource proofSource;
        uint256 registrantHandle;
    }

    /* solhint-disable-next-line gas-struct-packing */
    struct Name {
        /**
         * @dev IANA Id of a sponsoring registrar.
         */
        uint256 registrarIanaId;
        /**
         * @dev Second-Level domain. E.g. "example" in "example.com".
         */
        string sld;
        /**
         * @dev Top-Level domain. E.g. "com" in "example.com".
         */
        string tld;
        /**
         * @dev Registrar Expiration Date of a Name.
         */
        uint256 expiresAt;
        /**
         * @dev Indicates whether it's an Expression of Interest (EOI) name, or a full ICANN Domain.
         */
        bool eoi;
        /**
         * @dev List of nameservers configured for a domain.
         * Only used for ICANN domains.
         */
        string[] nameservers;
        /**
         * @dev List of DNSSEC DSKeys configured for a domain.
         * Only used for ICANN domains.
         */
        IDomaRecord.DSKey[] dsKeys;
        /**
         * @dev Current owner (claimer) of a name (CAIP-10 format).
         * For EOIs, always equals to the `ownedBy` of an ownership token.
         */
        string claimedBy;
        /**
         * @dev Registrar-supported capabilities for a current domain.
         */
        uint256 supportedCapabilities;
        /**
         * @dev List of issued name token ids.
         * Always contains at least one token (ownership token).
         */
        uint256[] nameTokens;
        /**
         * @dev Whether compliance detokenization was requested for this name.
         * Use to prevent some operations, like bridging, if forced detokenization is requested.
         */
        bool complianceDetokenizationRequested;
    }

    struct NameToken {
        /**
         * @dev Globally-unique token ID.
         */
        uint256 tokenId;
        /**
         * @dev CAIP-2 identifier of a target chain.
         */
        string chainId;
        /**
         * @dev Local-chain address of a last-known owner on a target chain.
         * Value is updated by relaying cross-chain messages.
         */
        string ownedBy;
        /**
         * @dev Whether it's an Ownership or Synthetic token type.
         */
        bool isSynthetic;
        /**
         * @dev Whether it's an Ownership token (that gives a claim right to a domain).
         */
        bool ownership;
        /**
         * @dev Capabilities included into this token.
         * Only used for Permissioned tokens.
         */
        uint256 capabilities;
        /**
         * @dev Start date when included capabilities can be used
         * Only used for Permissioned tokens.
         * 0 value means token can be used immediately after mint.
         */
        uint256 startsAt;
        /**
         * @dev End date after which included capabilities can no longer be used.
         * Only used for Permissioned tokens.
         * 0 value means unbound end date (until domain is deleted).
         */
        uint256 expiresAt;
    }

    struct ChainPolicy {
        /**
         * @dev Whether this chain only supports EOI names.
         */
        bool eoiOnly;
        /**
         * @dev List of EOI TLDs supported on this chain.
         */
        string[] eoiTlds;
    }

    struct DomaState {
        /**
         * @dev Address of a cross-chain gateway to send cross-chain messages.
         */
        IERC7786GatewaySource crossChainGateway;
        /**
         * @dev Maps CAIP-2 chain ids to Doma Proxy Contracts Address on a target chain.
         */
        mapping(string => string) proxyContracts;
        /**
         * @dev Mapping to retrieve registrar info by IANA ID.
         */
        mapping(uint256 => Registrar) registrarByIanaId;
        /**
         * @dev Maps registrar operator address to registrar IANA ID.
         * Used for efficient access control checks.
         */
        mapping(address => uint256) registrarByOperator;
        /**
         * @dev Maps registrar compliance operator address to registrar IANA ID.
         * Used for efficient access control checks.
         */
        mapping(address => uint256) registrarByComplianceOperator;
        /**
         * @dev List of accounts with protocol admin role.
         */
        mapping(address => bool) protocolAdmins;
        /**
         * @dev List of accounts with cross-chain sender role.
         */
        mapping(address => bool) crossChainSenders;
        /**
         * @dev Trusted forwarder contract address.
         */
        address trustedForwarder;
        /**
         * @dev Maps tokenization request ID to tokenization request.
         * Tokenization request ID is a namehash of a name (which is also used as ownership token id).
         */
        mapping(uint256 => TokenizationRequest) tokenizationRequests;
        /**
         * @dev Maps name id (namehash) to name info.
         */
        mapping(uint256 => Name) names;
        /**
         * @dev Maps name token id to name token info.
         */
        mapping(uint256 => NameToken) nameTokens;
        /**
         * @dev Maps name token id to name id.
         * Useful for reverse lookup of a name by token id.
         */
        mapping(uint256 => uint256) nameTokensToName;
        /**
         * @dev Maps EOI tlds to registrar IANA ID.
         * This is used to check if Registrar is allowed to issue EOI names.
         */
        mapping(string => uint256) eoiRegistrars;
        /**
         * @dev List of supported TLDs, that have been whitelisted on DOMA Protocol.
         * TLDs on this list are mutually exclusive with EOI tlds (from `eoiRegistrars`).
         */
        mapping(string => bool) tlds;
        /**
         * @dev Maps claim request ID to claim request.
         * Claim request ID is a namehash of a name (which is also used as ownership token id).
         */
        mapping(uint256 => ClaimRequest) claimRequests;
        /**
         * @dev List of precomputed TLDs namehashes.
         * Used as a performance optimization to better support eTLDs.
         */
        mapping(string => uint256) tldHashes;
        /**
         * @dev Doma-controlled nameservers. Implicitly grants CAPABILITY_DNS_RECORDS_MANAGEMENT.
         */
        mapping(string => bool) domaNameservers;
        /**
         * @dev Maps CAIP-2 chain ids to chain policies.
         * Defines which types of names (EOI/ICANN) can be tokenized on each chain.
         */
        mapping(string => ChainPolicy) chainPolicies;
    }

    function domaState() internal pure returns (DomaState storage ds) {
        // By convention, doma state is the first storage slot
        bytes32 position = 0;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            ds.slot := position
        }
    }

    function relayMessage(
        bytes memory data,
        string memory targetChainId,
        uint256 nonceKey,
        string memory correlationId
    ) internal {
        DomaState storage ds = domaState();

        string memory proxyAddress = ds.proxyContracts[targetChainId];
        if (bytes(proxyAddress).length == 0) {
            revert ChainNotSupported(targetChainId);
        }
        bytes[] memory attributes = new bytes[](2);
        attributes[0] = abi.encodeWithSelector(
            GatewayUtils.CORRELATION_ID_ATTRIBUTE,
            correlationId
        );
        attributes[1] = abi.encodeWithSelector(GatewayUtils.NONCE_KEY_ATTRIBUTE, nonceKey);

        ds.crossChainGateway.sendMessage(
            targetChainId,
            CAIPUtils.format(targetChainId, proxyAddress),
            data,
            attributes
        );
    }

    function detokenizeIfClaimed(
        uint256 nameId,
        Name memory name,
        string memory correlationId
    ) internal {
        DomaState storage ds = domaState();

        // Detokenization is forbidden if permissioned synthetic exists
        // We can check it if there's more than one token (ownership token always exists)
        if (name.nameTokens.length > 1) {
            revert LibDoma.DetokenizationForbidden(name.sld, name.tld);
        }

        LibDoma.NameToken memory ownershipToken = ds.nameTokens[nameId];
        if (isClaimedByDomaProxy(name.claimedBy)) {
            revert LibDoma.NameIsNotClaimed(name.sld, name.tld);
        }

        bytes memory detokenizeCalldata = abi.encodeCall(
            IProxyDomaRecord.detokenize,
            (nameId.toString(), ownershipToken.isSynthetic, ownershipToken.ownedBy, correlationId)
        );
        LibDoma.relayMessage(detokenizeCalldata, ownershipToken.chainId, nameId, correlationId);
    }

    function mintOwnershipToken(
        uint256 nameId,
        LibDoma.Name memory name,
        LibDoma.NameToken memory token,
        string memory correlationId
    ) internal {
        IProxyDomaRecord.OwnershipTokenInfo[]
            memory tokens = new IProxyDomaRecord.OwnershipTokenInfo[](1);
        tokens[0] = IProxyDomaRecord.OwnershipTokenInfo(
            name.sld,
            name.tld,
            token.tokenId.toString(),
            name.expiresAt
        );

        // Send only domain-level capabilities (excludes registrar-level)
        uint256[] memory domainCapabilities = new uint256[](1);
        domainCapabilities[0] = LibDoma.calculateDomainLevelCapabilities(
            name.supportedCapabilities,
            name.nameservers
        );

        bytes memory mintOwnershipTokensCalldata = abi.encodeWithSignature(
            // we have to use encodeWithSignature here to match overloaded function
            "mintOwnershipTokens(uint256,(string,string,string,uint256)[],string,uint256[],string)",
            name.registrarIanaId,
            tokens,
            token.ownedBy,
            domainCapabilities,
            correlationId
        );
        LibDoma.relayMessage(mintOwnershipTokensCalldata, token.chainId, nameId, correlationId);
    }

    function ensureTLDSupported(string memory tld) internal view {
        DomaState storage ds = domaState();
        if (!ds.tlds[tld]) {
            revert TldNotSupported(tld);
        }
    }

    function ensureChainSupported(string memory chainId) internal view {
        DomaState storage ds = domaState();
        if (bytes(ds.proxyContracts[chainId]).length == 0) {
            revert ChainNotSupported(chainId);
        }
    }

    function namehash(string memory sld, string memory tld) internal view returns (uint256) {
        DomaState storage ds = domaState();
        uint256 tldNamehash = ds.tldHashes[tld];

        // Safety check to make sure TLD hash has been precomputed
        // We can remove it once migration is done on devnet and testnet
        if (tldNamehash == 0) {
            tldNamehash = NameUtils.namehash(tld);
        }
        return NameUtils.namehash(tldNamehash, sld);
    }

    function isClaimedByDomaProxy(string memory claimedBy) internal view returns (bool) {
        return Strings.equal(claimedBy, domaProxyAddress());
    }

    function domaProxyAddress() internal view returns (string memory) {
        return
            CAIPUtils.format(CAIPUtils.caip2Local(), "0x0000000000000000000000000000000000000000");
    }

    /**
     * @dev Check if nameservers are a subset of Doma-controlled nameservers.
     * @param nameservers Domain's nameserver list to check.
     * @return True if all nameservers are Doma-controlled, false otherwise.
     */
    function isUsingDomaNameservers(string[] memory nameservers) internal view returns (bool) {
        if (nameservers.length == 0) return false;

        DomaState storage ds = domaState();
        for (uint256 i = 0; i < nameservers.length; i++) {
            if (!ds.domaNameservers[nameservers[i]]) {
                return false;
            }
        }
        return true;
    }

    /**
     * @notice Check if a specific capability is present in the capabilities bit field
     * @param capabilities The combined capabilities bit field
     * @param requiredCapability The required capability bit mask
     * @return True if the capability is present
     */
    function hasCapability(
        uint256 capabilities,
        uint256 requiredCapability
    ) internal pure returns (bool) {
        return (capabilities & requiredCapability) == requiredCapability;
    }

    /**
     * @notice Calculate effective capabilities for a name
     * @dev Combines registrar-level and domain-level capabilities with implicit DNS capability
     * @param registrarCapabilities The registrar's supported capabilities
     * @param domainCapabilities The domain's supported capabilities
     * @param nameservers The domain's nameserver list
     * @return effectiveCapabilities The combined effective capabilities
     */
    function calculateEffectiveCapabilities(
        uint256 registrarCapabilities,
        uint256 domainCapabilities,
        string[] memory nameservers
    ) internal view returns (uint256 effectiveCapabilities) {
        // Base capabilities = registrar + domain
        effectiveCapabilities = registrarCapabilities | domainCapabilities;

        // Add implicit DNS capability if using Doma nameservers
        if (isUsingDomaNameservers(nameservers)) {
            effectiveCapabilities |= CAPABILITY_DNS_RECORDS_MANAGEMENT;
        }
    }

    /**
     * @notice Calculate domain-level capabilities only (excludes registrar-level capabilities)
     * @dev Used for propagating capabilities to tokenization chains where only domain-specific
     * capabilities need to be stored. Registrar-level capabilities remain on the DOMA chain
     * and are combined during authorization checks.
     * @param domainCapabilities The domain's explicit capabilities
     * @param nameservers The domain's nameserver list
     * @return capabilities The combined domain-level capabilities (explicit + implicit)
     */
    function calculateDomainLevelCapabilities(
        uint256 domainCapabilities,
        string[] memory nameservers
    ) internal view returns (uint256 capabilities) {
        // Start with explicit domain capabilities
        capabilities = domainCapabilities;

        // Add implicit DNS capability if using Doma nameservers
        if (isUsingDomaNameservers(nameservers)) {
            capabilities |= CAPABILITY_DNS_RECORDS_MANAGEMENT;
        }
    }
}
