// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

interface IAccessResolver {
    function isAuthorizedSignerForIpnft(address signer, uint256 ipnftId) external view returns (bool);
    function isAuthorizedSignerForTba(address signer, address account) external view returns (bool);
}
