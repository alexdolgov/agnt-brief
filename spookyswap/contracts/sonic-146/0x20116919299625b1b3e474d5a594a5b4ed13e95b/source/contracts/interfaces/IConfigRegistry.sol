// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

interface IConfigRegistry {
    error Unauthorized();
    error NotGuardian();
    error OracleTimelock();
    error NoTimelock();
    error TimelockNotReached();
    error LTVTimelock();
    error OnlyIncrease();
    error HealthFactorMinimum();
    error InvalidBps();

    struct AssetCfg {
        address irm;
        uint16 ltvBps; // Loan-to-Value in bps
        uint16 reserveFactorBps; // Reserve Factor in bps
        bool enabled;
    }

    // ========== Idle/Aave configuration ==========
    struct IdleCfg {
        bool aaveEnabled; // enable supply-only strategy on Aave for this asset
        address aavePool; // Aave V3 Pool address
        address aToken; // corresponding aToken for the underlying asset
        uint256 cashBuffer; // keep at least this much underlying liquid in PM
        uint256 minRebalance; // min amount to move on a rebalance to avoid dust churn
        uint16 maxDepositBps; // cap how much of on-hand cash can be deposited per rebalance (in bps of (cash - buffer))
    }

    event OwnerChanged(address indexed o);
    event GuardianChanged(address indexed g);
    event AssetSet(address indexed asset, AssetCfg cfg);
    event IdleCfgSet(address indexed asset, IdleCfg cfg);
    event OracleSet(address indexed router);
    event HFTargetSet(uint16 bps);
    event HFSafeSet(uint16 bps);
    event DelaySet(uint32 delaySec);
    event LtvChangeProposed(address indexed asset, uint16 oldLtv, uint16 newLtv, uint64 eta);
    event LtvChangeExecuted(address indexed asset, uint16 newLtv);
    event OracleChangeProposed(address indexed next, uint64 eta);
    event OracleChangeExecuted(address indexed next);

    function getAssetCfg(address asset) external view returns (AssetCfg memory);
    function getIdleCfg(address asset) external view returns (IdleCfg memory);
    function oracleRouter() external view returns (address);
    function hfTargetBps() external view returns (uint16);
    function hfSafeBps() external view returns (uint16);
}
