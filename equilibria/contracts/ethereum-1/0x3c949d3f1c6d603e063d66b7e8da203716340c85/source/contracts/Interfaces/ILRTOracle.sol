// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface ILRTOracle {
    function getAssetPrice(address _asset) external view returns (uint256);

    function elETHPrice() external view returns (uint256);

    event ElETHSet(address indexed elETH);
    event DepositPoolSet(address indexed depositPool);
    event LRTConfigSet(address indexed lrtConfig);
    event AssetPriceOracleUpdate(
        address indexed asset,
        address indexed priceOracle
    );
}
