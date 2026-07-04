// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IProxyDomaRecordCrossChainOperations {
    struct OwnershipTokenInfo {
        string sld;
        string tld;
        string tokenId;
        uint256 expiresAt;
    }

    struct SyntheticTokenMintInfo {
        uint256 tokenId;
        uint256 registrarIanaId;
        string owner;
        bool revocable;
        string sld;
        string tld;
        uint256 expiresAt;
        uint256 capabilities;
        string host;
        uint256 parentTokenId;
        uint256 groupId;
    }

    function mintOwnershipTokens(
        uint256 registrarIanaId,
        OwnershipTokenInfo[] calldata tokens,
        string calldata ownerAddress,
        uint256[] calldata domainCapabilities,
        string calldata correlationId
    ) external;

    function mintOwnershipTokens(
        uint256 registrarIanaId,
        OwnershipTokenInfo[] calldata tokens,
        string calldata ownerAddress,
        string calldata correlationId
    ) external;

    function mintSyntheticFromOwnership(
        SyntheticTokenMintInfo calldata info,
        string calldata correlationId
    ) external;

    function mintOwnershipFromSynthetic(
        OwnershipTokenInfo calldata info,
        string calldata ownerAddress,
        uint256 registrarIanaId,
        uint256 domainCapabilities,
        string calldata correlationId
    ) external;

    function renew(
        string calldata tokenId,
        bool isSynthetic,
        uint256 expiresAt,
        string calldata correlationId
    ) external;

    function detokenize(
        string calldata tokenId,
        bool isSynthetic,
        string calldata claimedBy,
        string calldata correlationId
    ) external;

    function detokenizeUnchecked(
        string calldata tokenId,
        bool isSynthetic,
        string calldata correlationId
    ) external;

    function changeLockStatus(
        string calldata tokenId,
        bool isSynthetic,
        bool isTransferLocked,
        string calldata correlationId
    ) external;

    function updateDomainCapabilities(
        string calldata tokenId,
        uint256 capabilities,
        string calldata correlationId
    ) external;

    function rejectTokenization(string calldata tokenId, string calldata correlationId) external;

    function rejectClaimRequest(string calldata tokenId, string calldata correlationId) external;
}
