// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface ILegacyLBTC {
    function mint(bytes calldata payload, bytes calldata proof) external;

    function getTreasury() external view returns (address);
}
