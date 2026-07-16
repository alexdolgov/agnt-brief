// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

interface IConfigRegistry {
    struct AssetCfg {
        address irm;
        uint16 mmBps; /// @notice Maintenance margin rate per asset (bps). E.g. 125 => 1.25% maintenance.
        bool enabled;
        address ftYieldWrapper;
        bool borrowable;
        bool collateral;
    }

    event GuardianChanged(address indexed g);
    event AssetSet(address indexed asset, AssetCfg cfg);
    event OracleSet(address indexed router);
    event MarginHFTargetSet(uint16 bps);
    event MarginHFSafeSet(uint16 bps);
    event MarginMinEquitySet(uint256 minEquityUSDWad);
    event MMChanged(address indexed asset, uint16 newMM);
    event OracleChanged(address indexed next);
    event BorrowableChanged(address indexed asset, bool borrowable);
    event CollateralChanged(address indexed asset, bool collateral);

    function getAssetCfg(address asset) external view returns (AssetCfg memory);
    function oracleRouter() external view returns (address);
    function marginHfTargetBps() external view returns (uint16);
    function marginHfSafeBps() external view returns (uint16);
    function marginMinEquityUSDWad() external view returns (uint256);
}
