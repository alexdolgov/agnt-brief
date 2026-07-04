// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.28;

import {ArrayLib} from "@pendle/core/libraries/ArrayLib.sol";
import {IStandardizedYieldAdapter} from "@pendle-public/interfaces/IStandardizedYieldAdapter.sol";

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {MintController} from "@funding/MintController.sol";
import {RedeemController} from "@funding/RedeemController.sol";
import {InfiniFiGatewayV3} from "@gateway/InfiniFiGatewayV3.sol";

contract InfiniFiReceiptTokenSYAdapter is IStandardizedYieldAdapter {
    using SafeERC20 for ERC20;

    InfiniFiGatewayV3 public immutable gateway;

    address public immutable msig;
    address public immutable assetToken;
    address public immutable receiptToken;

    address public immutable PIVOT_TOKEN;

    bool allowRedeem;

    constructor(address _msig, address _gateway) {
        msig = _msig;
        gateway = InfiniFiGatewayV3(_gateway);
        assetToken = gateway.getAddress("USDC");
        receiptToken = gateway.getAddress("receiptToken");

        PIVOT_TOKEN = receiptToken;

        ERC20(receiptToken).forceApprove(_gateway, type(uint256).max);
        ERC20(assetToken).forceApprove(_gateway, type(uint256).max);
    }

    modifier onlyAssetToken(address _token) {
        require(_token == assetToken, "Expected asset token");
        _;
    }

    function setAllowRedeem(bool _enabled) external {
        require(msg.sender == msig, "Sender not authorized");
        allowRedeem = _enabled;
    }

    function convertToDeposit(address tokenIn, uint256 amountTokenIn)
        external
        override
        onlyAssetToken(tokenIn)
        returns (uint256)
    {
        return gateway.mint(msg.sender, amountTokenIn);
    }

    function convertToRedeem(address tokenOut, uint256 amountYieldTokenIn)
        external
        override
        onlyAssetToken(tokenOut)
        returns (uint256)
    {
        uint256 assetAmountOut = _receiptToAsset(amountYieldTokenIn);
        return gateway.redeem(msg.sender, amountYieldTokenIn, assetAmountOut);
    }

    function previewConvertToDeposit(address tokenIn, uint256 amountTokenIn)
        external
        view
        override
        onlyAssetToken(tokenIn)
        returns (
            uint256 /*amountOut*/
        )
    {
        return _assetToReceipt(amountTokenIn);
    }

    function previewConvertToRedeem(address tokenOut, uint256 amountYieldTokenIn)
        external
        view
        override
        onlyAssetToken(tokenOut)
        returns (
            uint256 /*amountOut*/
        )
    {
        return _receiptToAsset(amountYieldTokenIn);
    }

    function getAdapterTokensDeposit() external view override returns (address[] memory) {
        return ArrayLib.create(assetToken);
    }

    function getAdapterTokensRedeem() external view override returns (address[] memory) {
        return allowRedeem ? ArrayLib.create(assetToken) : new address[](0);
    }

    function _receiptToAsset(uint256 amountReceipt) internal view returns (uint256) {
        address redeemController = gateway.getAddress("redeemController");
        return RedeemController(redeemController).receiptToAsset(amountReceipt);
    }

    function _assetToReceipt(uint256 amountAsset) internal view returns (uint256) {
        address mintController = gateway.getAddress("mintController");
        return MintController(mintController).assetToReceipt(amountAsset);
    }
}
