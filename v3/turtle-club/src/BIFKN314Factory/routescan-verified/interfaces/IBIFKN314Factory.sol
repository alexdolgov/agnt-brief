// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IBIFKN314Factory {
    function feeTo() external view returns (address);

    function feeRate() external view returns (uint256);

    function feeToSetter() external view returns (address);

    function feeDistributionThreshold() external view returns (uint256);

    event TokenCreated(
        address indexed deployer,
        string name,
        string symbol,
        address ammAddress,
        address lpAddress,
        uint256 allAMMLength
    );

    event FeeDistributed(address indexed feeTo, uint256 nativeAmount);

    error InvalidAddress();
    error NameMustNotBeEmpty();
    error SymbolMustNotBeEmpty();
    error NameTooLong();
    error SymbolTooLong();
    error OnlyFeeToSetter(address sender);
    error InvalidTradingFee();
    error SupplyMustBeGreaterThanZero();
    error InsufficientDeploymentFee();
    error InvalidFeeRate();
    error InvalidMaxWalletPercent();
    error DistributionFailed();
}
