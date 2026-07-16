// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

interface IConfigRegistry {
    struct AssetCfg {
        address irm;
        uint16 mmBps;
        bool enabled;
        address ftYieldWrapper;
        bool borrowable;
        bool collateral;
    }

    function getAssetCfg(address asset) external view returns (AssetCfg memory);
    function oracleRouter() external view returns (address);
    function marginHfTargetBps() external view returns (uint16);
    function marginHfSafeBps() external view returns (uint16);
    function marginMinEquityUSDWad() external view returns (uint256);
}
