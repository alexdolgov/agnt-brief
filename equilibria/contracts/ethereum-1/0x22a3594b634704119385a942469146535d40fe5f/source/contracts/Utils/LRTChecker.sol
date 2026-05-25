// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;
import "../Interfaces/ILRTConfig.sol";

abstract contract LRTChecker {
    ILRTConfig public lrtConfig;

    modifier onlySupportedAsset(address _asset) {
        require(lrtConfig.isSupportedAsset(_asset), "asset not supported!");

        _;
    }
}
