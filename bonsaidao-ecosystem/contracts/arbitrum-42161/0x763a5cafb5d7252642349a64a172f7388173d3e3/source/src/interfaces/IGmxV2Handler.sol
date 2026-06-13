// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

import { GmxStorage } from "../libraries/GmxStorage.sol";
import { Price } from "gmx-synthetics/price/Price.sol";
import { Market } from "gmx-synthetics/market/MarketUtils.sol";

interface IGmxV2Handler {
    struct DepositRequestDetails {
        address market;
        uint256 wethAmountDeposited;
        uint256 usdcAmountDeposited;
        uint256 amountMinted;
        bool executed;
        bool success;
    }

    struct WithdrawRequestDetails {
        address market;
        uint256 gmAmountDeposited;
        uint256 usdcAmountReceived;
        uint256 wethAmountReceived;
        bool executed;
        bool success;
    }

    struct RequestDetails {
        address market;
        address withAsset;
        uint256 amount; // in case of deposit it is the
        bool isDeposit;
    }

    struct GmxV2Storage {
        mapping(bytes32 => DepositRequestDetails) depositRequests;
        mapping(bytes32 => WithdrawRequestDetails) withdrawRequests;
    }

    function getGmMidPrice(address market, GmxStorage.MarketPrices memory tokenPrices)
        external
        view
        returns (uint256 price);

    function getMaxDepositAmount(address _market, address _token) external view returns (uint256 maxDepositAmount);

    function burnGmTokens(address _market, uint256 _amount, address _receiver)
        external
        returns (bytes32 _withdrawKey);

    function mintGmTokens(address _market, uint256 _amountWeth, uint256 _amountUsdc, address _receiver)
        external
        payable
        returns (bytes32 _depositKey);

    function getDepositRequestDetails(bytes32 _key) external view returns (DepositRequestDetails memory);

    function getWithdrawRequestDetails(bytes32 _key) external view returns (WithdrawRequestDetails memory);

    function castPrice(GmxStorage.Price memory inPrice) external pure returns (Price.Props memory price);

    function getMarket(address _market) external view returns (Market.Props memory _marketProps);
}
