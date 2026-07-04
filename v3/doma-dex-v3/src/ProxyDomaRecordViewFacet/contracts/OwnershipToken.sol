// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { NameToken } from "./NameToken.sol";
import { DateUtils } from "./utils/DateUtils.sol";

contract OwnershipToken is NameToken {
    /**
     * @notice Emitted when an ownership token is minted.
     * Emitted together with standard ERC-721 Transfer event, but contains additional information.
     * @param tokenId The ID of the ownership token.
     * @param registrarIanaId The IANA ID of a sponsoring registrar.
     * @param to The address that received the ownership token.
     * @param sld The second-level domain of the name. E.g. "example" in "example.com".
     * @param tld The top-level domain of the name. E.g. "com" in "example.com".
     * @param expiresAt The expiration date of the name (UNIX seconds).
     * @param correlationId Correlation id associated with a mint event. Used by registrars to track on-chain operations.
     */
    event OwnershipTokenMinted(
        uint256 indexed tokenId,
        uint256 registrarIanaId,
        address to,
        string sld,
        string tld,
        uint256 expiresAt,
        string correlationId
    );

    struct OwnershipTokenMintInfo {
        uint256 registrarIanaId;
        string sld;
        string tld;
        uint256 tokenId;
        uint256 expiresAt;
        address owner;
    }

    /**
     * @notice Bulk mint tokens without domain capabilities. Could be called only by a minter role.
     * @param names Names to mint.
     * @param correlationId Correlation id associated with a given mint request.
     */
    function bulkMint(
        OwnershipTokenMintInfo[] calldata names,
        string calldata correlationId
    ) public {
        // onlyMinter modifier on the overloaded function
        uint256[] memory domainCapabilities = new uint256[](names.length);
        // Array is initialized with zero capabilities by default
        bulkMint(names, domainCapabilities, correlationId);
    }

    /**
     * @notice Bulk mint tokens with domain capabilities. Could be called only by a minter role.
     * @param names Names to mint.
     * @param domainCapabilities Domain capabilities for each token (must match names length, use 0 for no capabilities).
     * @param correlationId Correlation id associated with a given mint request.
     */
    function bulkMint(
        OwnershipTokenMintInfo[] calldata names,
        uint256[] memory domainCapabilities,
        string calldata correlationId
    ) public onlyMinter {
        if (names.length != domainCapabilities.length) {
            revert ArrayLengthMismatch();
        }

        for (uint256 i = 0; i < names.length; i++) {
            OwnershipTokenMintInfo memory name = names[i];
            _mint(name.registrarIanaId, name.tokenId, name.expiresAt, name.owner);

            // Set domain capabilities atomically during mint
            if (domainCapabilities[i] != 0) {
                _domainCapabilities[name.tokenId] = domainCapabilities[i];
            }

            emit OwnershipTokenMinted(
                name.tokenId,
                name.registrarIanaId,
                name.owner,
                name.sld,
                name.tld,
                name.expiresAt,
                correlationId
            );

            // always emit even if capabilities are zero
            emit DomainCapabilitiesUpdated(name.tokenId, domainCapabilities[i], correlationId);
        }
    }

    /**
     * @notice Renew SLD token. Could be called only by a minter role.
     * @param tokenId Name token ID to renew.
     * @param expiresAt Expiration date for a token (Unix timestamp seconds).
     * @param correlationId Order id associated with a given mint.
     */
    function renew(
        uint256 tokenId,
        uint256 expiresAt,
        string calldata correlationId
    ) public onlyMinter {
        DateUtils.validateExpirationDate(expiresAt);

        address currentOwner = _ownerOf(tokenId);
        if (currentOwner == address(0)) {
            revert NameTokenDoesNotExist(tokenId);
        }

        _expirations[tokenId] = expiresAt;

        emit NameTokenRenewed(tokenId, expiresAt, correlationId);
    }

    /**
     * @notice Burn multiple ownership tokens.
     * @dev Only authorized minters can call this function.
     * @param tokenIds Array of token IDs to burn.
     * @param correlationId Correlation ID associated with the burn operation for tracking.
     */
    function bulkBurn(
        uint256[] calldata tokenIds,
        string calldata correlationId
    ) public onlyMinter {
        uint256 len = tokenIds.length;
        for (uint256 i = 0; i < len; ) {
            _burnNameToken(tokenIds[i], correlationId);
            unchecked {
                i++;
            }
        }
    }

    function version() external pure override returns (string memory) {
        return "2.1.0";
    }
}
