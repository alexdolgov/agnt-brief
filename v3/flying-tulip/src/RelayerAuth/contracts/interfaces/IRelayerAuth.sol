// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

interface IRelayerAuth {
    function isRelayer(address) external view returns (bool);
}
