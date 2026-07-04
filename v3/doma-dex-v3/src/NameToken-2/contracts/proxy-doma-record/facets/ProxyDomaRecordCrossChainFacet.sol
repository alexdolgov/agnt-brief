// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { IProxyDomaRecord } from "../../interfaces/IProxyDomaRecord.sol";
import { OwnershipToken } from "../../OwnershipToken.sol";
import { LibProxyDomaRecord } from "../libraries/LibProxyDomaRecord.sol";
import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";
import { IDomaRecord } from "../../interfaces/IDomaRecord.sol";
import { CAIPUtils } from "../../utils/CAIPUtils.sol";
import { ERC7786GatewayReceiver } from "../../ERC7786GatewayReceiver.sol";
import { LibDiamond } from "../../diamond/libraries/LibDiamond.sol";

contract ProxyDomaRecordCrossChainFacet is ERC7786GatewayReceiver {
    using Strings for address;
    using Strings for uint256;
    using LibProxyDomaRecord for *;

    error OnlyCrossChainSender();
    error NotImplemented();
    error InvalidCaller();

    modifier onlyCrossChainSender() {
        if (msg.sender != address(this)) {
            _checkCrossChainSender(msg.sender);
        }
        _;
    }

    modifier onlyOwner() {
        LibDiamond.enforceIsContractOwner();
        _;
    }

    modifier onlyOwnershipToken() {
        address ownershipToken = address(
            LibProxyDomaRecord.proxyDomaRecordStorage().ownershipToken
        );
        if (msg.sender != ownershipToken) {
            revert InvalidCaller();
        }
        _;
    }

    /**
     * @dev Mint ownership tokens with domain capabilities.
     * Can only be called by Doma Record contract on Doma Chain via cross-chain gateway.
     * @param registrarIanaId IANA ID of the sponsoring registrar.
     * @param tokens Array of token information to mint.
     * @param ownerAddress Owner address as string.
     * @param domainCapabilities Domain capabilities for each token (must match tokens length).
     * @param correlationId Correlation ID for tracking.
     */
    function mintOwnershipTokens(
        uint256 registrarIanaId,
        IProxyDomaRecord.OwnershipTokenInfo[] calldata tokens,
        string calldata ownerAddress,
        uint256[] memory domainCapabilities,
        string calldata correlationId
    ) public onlyCrossChainSender {
        if (tokens.length != domainCapabilities.length) {
            revert LibProxyDomaRecord.ArrayLengthMismatch();
        }

        address owner = Strings.parseAddress(ownerAddress);
        OwnershipToken ownershipToken = LibProxyDomaRecord.proxyDomaRecordStorage().ownershipToken;

        // Mint tokens with domain capabilities atomically
        OwnershipToken.OwnershipTokenMintInfo[]
            memory names = new OwnershipToken.OwnershipTokenMintInfo[](tokens.length);
        for (uint256 i = 0; i < tokens.length; i++) {
            names[i] = OwnershipToken.OwnershipTokenMintInfo(
                registrarIanaId,
                tokens[i].sld,
                tokens[i].tld,
                Strings.parseUint(tokens[i].tokenId),
                tokens[i].expiresAt,
                owner
            );
        }
        ownershipToken.bulkMint(names, domainCapabilities, correlationId);
    }

    /**
     * @dev Mint ownership tokens without domain capabilities.
     * Can only be called by Doma Record contract on Doma Chain via cross-chain gateway.
     * legacy overload, will initialize domainCapabilities to zeroes
     * @param registrarIanaId IANA ID of the sponsoring registrar.
     * @param tokens Array of token information to mint.
     * @param ownerAddress Owner address as string.
     * @param correlationId Correlation ID for tracking.
     */
    function mintOwnershipTokens(
        uint256 registrarIanaId,
        IProxyDomaRecord.OwnershipTokenInfo[] calldata tokens,
        string calldata ownerAddress,
        string calldata correlationId
    ) external {
        // onlyCrossChainSender modifier on the overloaded function
        uint256[] memory domainCapabilities = new uint256[](tokens.length);
        // Array is initialized with zero capabilities by default
        mintOwnershipTokens(
            registrarIanaId,
            tokens,
            ownerAddress,
            domainCapabilities,
            correlationId
        );
    }

    /**
     * @dev Renew ownership token (update expiration date).
     * Can only be called by a Doma Record contract on Doma Chain, using trusted cross-chain receiver.
     * @param tokenId Id of an Ownership Token.
     * @param isSynthetic Whether it's a regular or permissioned (synthetic) ownership token.
     * @param expiresAt New expiration date.
     * @param correlationId Correlation id for cross-chain operations traceability.
     */
    function renew(
        string calldata tokenId,
        bool isSynthetic,
        uint256 expiresAt,
        string calldata correlationId
    ) external onlyCrossChainSender {
        if (isSynthetic) {
            revert NotImplemented();
        }

        LibProxyDomaRecord.proxyDomaRecordStorage().ownershipToken.renew(
            Strings.parseUint(tokenId),
            expiresAt,
            correlationId
        );
    }

    /**
     * @dev Detokenize a name token.
     * Will fail if `claimedBy` does not match the current owner of a token.
     * Can only be called by a Doma Record contract on Doma Chain, using trusted cross-chain receiver.
     * @param tokenId Id of an Ownership Token.
     * @param isSynthetic Whether it's a regular or permissioned (synthetic) ownership token.
     * @param claimedBy CAIP-10 address of an expected Ownership Token owner.
     * @param correlationId Correlation id for cross-chain operations traceability.
     */
    function detokenize(
        string calldata tokenId,
        bool isSynthetic,
        string calldata claimedBy,
        string calldata correlationId
    ) external onlyCrossChainSender {
        if (isSynthetic) {
            revert NotImplemented();
        }

        uint256 tokenIdInt = Strings.parseUint(tokenId);
        address claimedByAddress = Strings.parseAddress(claimedBy);
        LibProxyDomaRecord._verifyTokenOwnership(tokenIdInt, claimedByAddress);
        LibProxyDomaRecord._burnToken(tokenIdInt, correlationId);

        _completeDetokenization(tokenIdInt, correlationId);
    }

    /**
     * @dev Detokenize a name token.
     * Similar to `detokenize`, but will not check ownership.
     * Can only be called by a Doma Record contract on Doma Chain, using trusted cross-chain receiver.
     * @param tokenId Id of an Ownership Token.
     * @param isSynthetic Whether it's a regular or permissioned (synthetic) ownership token.
     * @param correlationId Correlation id for cross-chain operations traceability.
     */
    function detokenizeUnchecked(
        string calldata tokenId,
        bool isSynthetic,
        string calldata correlationId
    ) external onlyCrossChainSender {
        if (isSynthetic) {
            revert NotImplemented();
        }

        uint256 tokenIdInt = Strings.parseUint(tokenId);

        // Only burn token if it exists
        // This could happen if the token was bridged while detokenization request was in-flight
        if (LibProxyDomaRecord.proxyDomaRecordStorage().ownershipToken.exists(tokenIdInt)) {
            LibProxyDomaRecord._burnToken(tokenIdInt, correlationId);
        }

        _completeDetokenization(tokenIdInt, correlationId);
    }

    /**
     * @dev Compliance method to lock or unlock token for transfer.
     * Can only be called by a Doma Record contract on Doma Chain, using trusted cross-chain receiver.
     * @param tokenId Id of an Ownership Token.
     * @param isSynthetic Whether it's a regular or permissioned (synthetic) ownership token.
     * @param isTransferLocked Whether to lock or unlock token transfers.
     */
    function changeLockStatus(
        string calldata tokenId,
        bool isSynthetic,
        bool isTransferLocked,
        string calldata correlationId
    ) external onlyCrossChainSender {
        if (isSynthetic) {
            revert NotImplemented();
        }

        uint256 tokenIdInt = Strings.parseUint(tokenId);
        LibProxyDomaRecord.proxyDomaRecordStorage().ownershipToken.setLockStatus(
            tokenIdInt,
            isTransferLocked,
            correlationId
        );
    }

    /**
     * @dev Update domain-level capabilities for a token.
     * Can only be called by Doma Record contract on Doma Chain via cross-chain gateway.
     * @param tokenId Token ID (as string)
     * @param capabilities New domain capabilities bitmask
     * @param correlationId Correlation ID for tracking
     */
    function updateDomainCapabilities(
        string calldata tokenId,
        uint256 capabilities,
        string calldata correlationId
    ) external onlyCrossChainSender {
        uint256 tokenIdInt = Strings.parseUint(tokenId);

        LibProxyDomaRecord.proxyDomaRecordStorage().ownershipToken.updateDomainCapabilities(
            tokenIdInt,
            capabilities,
            correlationId
        );
    }

    /**
     * @dev Handles the token transfer process for a given token ID, from the sender (from) to the recipient (to).
     * @param tokenId The ID of the token to be transferred.
     * @param from The address of the current owner (sender) of the token.
     * @param to The address of the new owner (recipient) of the token.
     */
    function tokenTransfer(uint256 tokenId, address from, address to) external onlyOwnershipToken {
        // Call the tokenTransfer function in the IDomaRecord contract via crossChainGateway
        LibProxyDomaRecord.ProxyDomaRecordStorage storage _storage = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        if (address(_storage.crossChainGateway) == address(0))
            revert LibProxyDomaRecord.ZeroAddress();

        string memory correlationId = LibProxyDomaRecord._useCorrelationId();

        // Perform the transfer logic in the DomaRecord contract via the cross-chain gateway
        bytes memory tokenTransferCalldata = abi.encodeCall(
            IDomaRecord.tokenTransfer,
            (
                CAIPUtils.caip2Local(),
                tokenId.toString(),
                from.toChecksumHexString(),
                to.toChecksumHexString(),
                correlationId
            )
        );

        // Relay the transfer message
        LibProxyDomaRecord._relayMessage(tokenTransferCalldata, correlationId, tokenId);
    }

    /**
     * @dev Enable or disable nonce checks enforcement for incoming cross-chain messages.
     */
    function setNonceEnforcementDisabled(bool disabled) external onlyOwner {
        _setNonceEnforcementDisabled(disabled);
    }

    function _completeDetokenization(uint256 tokenId, string calldata correlationId) internal {
        bytes memory completeDetokenizationCalldata = abi.encodeCall(
            IDomaRecord.completeDetokenization,
            (tokenId.toString(), correlationId)
        );

        LibProxyDomaRecord._relayMessage(completeDetokenizationCalldata, correlationId, tokenId);
    }

    /**
     * @dev Check if the sender is authorized to send cross-chain messages.
     * Required implementation for ERC7786GatewayReceiver.
     */
    function _checkCrossChainSender(address sender) internal view override {
        LibProxyDomaRecord.ProxyDomaRecordStorage storage ds = LibProxyDomaRecord
            .proxyDomaRecordStorage();
        if (!ds.crossChainSenders[sender]) {
            revert OnlyCrossChainSender();
        }
    }

    function setCurrentNonce(
        string calldata chainId,
        uint256 key,
        uint64 nonce
    ) external override onlyOwner {
        _setCurrentNonce(chainId, key, nonce);
    }
}
