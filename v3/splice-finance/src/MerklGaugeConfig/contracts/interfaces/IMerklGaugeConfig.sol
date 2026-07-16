// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

interface IMerklGaugeConfig {
    struct MerklConfig {
        bool isSet;
        uint32 propToken0;
        uint32 propToken1;
        uint32 propFees;
        uint32 isOutOfRangeIncentivized;
    }

    function getPositionWrappers() external view returns (address[] memory);

    function getWrapperTypes() external view returns (uint32[] memory);

    function getConfig(address) external view returns (MerklConfig memory);
}
