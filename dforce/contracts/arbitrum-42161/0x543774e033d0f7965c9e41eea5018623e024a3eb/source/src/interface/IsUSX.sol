// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface IsUSX {
    function finalizeInboundTransferShares(uint256 _shares, address _receiver) external;
    function outboundTransferShares(uint256 _shares, address _owner) external;
}
