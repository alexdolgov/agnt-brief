// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IProxyDomaRecordNameTokenOperations {
    function tokenTransfer(uint256 tokenId, address from, address to) external;
}
