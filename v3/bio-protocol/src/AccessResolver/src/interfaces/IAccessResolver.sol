// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

interface IAccessResolver {
    function isAuthorizedSignerForIpnft(address signer, uint256 ipnftId) external view returns (bool);

    function isAuthorizedSignerForTba(address signer, address account) external view returns (bool);

    function ownersOfIpnft(uint256 ipnftId) external view returns (address[] memory);

    function isApprovedLock(address tokenAddress, address signer) external view returns (bool);

    function setLockedTokenFactory(address factoryAddress) external;
}
