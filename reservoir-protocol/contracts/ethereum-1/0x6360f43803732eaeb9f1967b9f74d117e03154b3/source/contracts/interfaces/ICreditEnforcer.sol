// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

interface ICreditEnforcer {
    /// @notice Issue the stablecoin to a recipient, check the debt cap and solvency
    /// @param to Receiver address
    /// @param amount Transfer amount of the underlying
    function mintStablecoin(address to, uint256 amount) external returns (uint256);

    // ------ Functions needed for testing ------

    /// @notice Set a ceiling for the maximum amount of underlying stablecoin
    /// that can be held in the PSM at any given time
    /// @param psmDebtMax_ Maximum underlying balance
    function setPSMDebtMax(uint256 psmDebtMax_) external;

    /// @notice Set a floor for the asset ratio
    /// @param assetRatioMin_ Value assigned to the minimum asset ratio
    function setAssetRatioMin(uint256 assetRatioMin_) external;

    /// @notice Set a floor for the equity ratio
    /// @param equityRatioMin_ Value assigned to the minimum equity ratio
    function setEquityRatioMin(uint256 equityRatioMin_) external;

    /// @notice Set a floor for the liquidity ratio
    /// @param liquidityRatioMin_ Value assigned to the minimum liquidity ratio
    function setLiquidityRatioMin(uint256 liquidityRatioMin_) external;
}
