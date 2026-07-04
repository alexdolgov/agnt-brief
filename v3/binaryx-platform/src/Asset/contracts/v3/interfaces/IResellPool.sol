// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "../RewardsDistributor.sol";
import "../AssetPriceOracle.sol";
import "../KycStore.sol";

interface IResellPool {
    event DepositAsset(uint256 amount);
    event WithdrawAsset(uint256 amount);
    event WithdrawBuyToken(uint256 amount);
    event Invest(uint256 amount, address recipient, uint256 amountInUsd, uint256 timestamp);
    event InvestWithAmbassador(uint256 amount, address recipient, address ambassador, uint256 timestamp);
    event InvestWithReferrer(uint256 amount, address recipient, address referrer, uint256 timestamp);
    event Claim(uint256 timestamp);

    function getBuyers() external view returns (address[] memory);

    function getAssetPriceOracle() external view returns (AssetPriceOracle);

    function depositAsset(address sender, uint256 amount) external;

    function withdrawAsset(uint256 amount, address recipient) external;

    function withdrawBuyToken(uint256 amount, address recipient) external;

    function invest(uint256 amount, address recipient) external;

    function investWithAmbassador(uint256 amount, address recipient, address ambassador) external;

    function investWithReferrer(uint256 amount, address recipient, address referrer) external;

    function claim() external;
}
