// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IDomaRecord {
    struct NameInfo {
        string sld;
        string tld;
    }

    struct DSKey {
        uint32 keyTag;
        uint8 algorithm;
        uint8 digestType;
        bytes digest;
    }

    enum ProofOfContactsSource {
        NONE,
        REGISTRAR,
        DOMA
    }

    function initiateTokenization(
        uint256 registrarIanaId,
        NameInfo[] calldata names,
        string calldata ownershipTokenChainId,
        string calldata ownershipTokenOwnerAddress,
        string calldata correlationId
    ) external;

    function claimOwnership(
        string calldata tokenId,
        string calldata chainId,
        string calldata claimedBy,
        ProofOfContactsSource proofSource,
        uint256 registrantHandle,
        string calldata correlationId
    ) external;

    function bridge(
        string calldata tokenId,
        string calldata targetChainId,
        string calldata targetOwnerAddress,
        string calldata correlationId
    ) external;

    function ownerDetokenize(
        string calldata tokenId,
        string calldata chainId,
        string calldata ownerAddress,
        string calldata correlationId
    ) external;

    function completeDetokenization(
        string calldata tokenId,
        string calldata correlationId
    ) external;

    function tokenTransfer(
        string calldata chainId,
        string calldata tokenId,
        string calldata oldOwnerAddress,
        string calldata newOwnerAddress,
        string calldata correlationId
    ) external;

    function setNameservers(
        uint256 tokenId,
        string[] calldata nameservers,
        string calldata correlationId
    ) external;

    function setDSKeys(
        uint256 tokenId,
        DSKey[] calldata dsKeys,
        string calldata correlationId
    ) external;

    function setDNSRRSet(
        uint256 tokenId,
        string calldata host,
        string calldata recordType,
        uint32 ttl,
        string[] calldata records,
        string calldata correlationId
    ) external;

    function convertToSynthetic(
        uint256 tokenId,
        string calldata chainId,
        string calldata owner,
        string calldata correlationId
    ) external;

    function completeSyntheticConversion(
        string calldata tokenId,
        string calldata correlationId
    ) external;

    function convertToOwnership(
        uint256 tokenId,
        string calldata chainId,
        string calldata owner,
        string calldata correlationId
    ) external;

    function completeOwnershipConversion(
        string calldata tokenId,
        string calldata correlationId
    ) external;
}
