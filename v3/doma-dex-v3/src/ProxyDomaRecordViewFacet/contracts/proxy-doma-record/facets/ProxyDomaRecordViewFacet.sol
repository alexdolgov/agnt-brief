// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { LibProxyDomaRecord } from "../libraries/LibProxyDomaRecord.sol";

/**
 * @title ProxyDomaRecordViewFacet
 * @notice Read-only facet exposing operation constants and version information.
 */
contract ProxyDomaRecordViewFacet {
    /// @notice Get the contract version.
    function version() external pure returns (string memory) {
        return "1.1.0";
    }

    /// @notice Get the REQUEST_TOKENIZATION operation hash.
    // solhint-disable-next-line func-name-mixedcase
    function REQUEST_TOKENIZATION_OPERATION() external pure returns (bytes32) {
        return LibProxyDomaRecord.REQUEST_TOKENIZATION_OPERATION;
    }

    /// @notice Get the CLAIM_OWNERSHIP operation hash.
    // solhint-disable-next-line func-name-mixedcase
    function CLAIM_OWNERSHIP_OPERATION() external pure returns (bytes32) {
        return LibProxyDomaRecord.CLAIM_OWNERSHIP_OPERATION;
    }

    /// @notice Get the BRIDGE operation hash.
    // solhint-disable-next-line func-name-mixedcase
    function BRIDGE_OPERATION() external pure returns (bytes32) {
        return LibProxyDomaRecord.BRIDGE_OPERATION;
    }

    /// @notice Get the SET_NAMESERVERS operation hash.
    // solhint-disable-next-line func-name-mixedcase
    function SET_NAMESERVERS_OPERATION() external pure returns (bytes32) {
        return LibProxyDomaRecord.SET_NAMESERVERS_OPERATION;
    }

    /// @notice Get the SET_DS_KEYS operation hash.
    // solhint-disable-next-line func-name-mixedcase
    function SET_DS_KEYS_OPERATION() external pure returns (bytes32) {
        return LibProxyDomaRecord.SET_DS_KEYS_OPERATION;
    }

    /// @notice Get the SET_DNS_RRSET operation hash.
    // solhint-disable-next-line func-name-mixedcase
    function SET_DNS_RRSET_OPERATION() external pure returns (bytes32) {
        return LibProxyDomaRecord.SET_DNS_RRSET_OPERATION;
    }

    /// @notice Get the CONVERT_TO_SYNTHETIC operation hash.
    // solhint-disable-next-line func-name-mixedcase
    function CONVERT_TO_SYNTHETIC_OPERATION() external pure returns (bytes32) {
        return LibProxyDomaRecord.CONVERT_TO_SYNTHETIC_OPERATION;
    }

    /// @notice Get the CONVERT_TO_OWNERSHIP operation hash.
    // solhint-disable-next-line func-name-mixedcase
    function CONVERT_TO_OWNERSHIP_OPERATION() external pure returns (bytes32) {
        return LibProxyDomaRecord.CONVERT_TO_OWNERSHIP_OPERATION;
    }

    /// @notice Get the timestamp of when tokenization was requested for a given tokenId.
    /// @param tokenId The tokenId of the domain.
    function tokenizationRequestedAt(uint256 tokenId) external view returns (uint256) {
        return LibProxyDomaRecord._tokenizationRequestedAt(tokenId);
    }

    /// @notice Get the timestamp of when claim ownership was requested for a given tokenId.
    /// @param tokenId The tokenId of the domain.
    function claimRequestedAt(uint256 tokenId) external view returns (uint256) {
        return LibProxyDomaRecord._claimRequestedAt(tokenId);
    }

    /// @notice Get the timestamp of when detokenization was requested for a given tokenId.
    /// @param tokenId The tokenId of the domain.
    function detokenizationRequestedAt(uint256 tokenId) external view returns (uint256) {
        return LibProxyDomaRecord._detokenizationRequestedAt(tokenId);
    }
}
