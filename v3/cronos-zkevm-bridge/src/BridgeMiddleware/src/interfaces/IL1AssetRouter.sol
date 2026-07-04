// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface IL1AssetRouter {
    function nativeTokenVault() external view returns (address);
}
