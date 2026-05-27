// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.28;

import {ERC4626} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import {ArrayLib} from "@pendle/core/libraries/ArrayLib.sol";
import {FixedPointMathLib} from "@solmate/src/utils/FixedPointMathLib.sol";
import {PendleERC4626UpgSYV2} from "./PendleERC4626UpgSYV2.sol";

import {YieldSharingV2} from "@finance/YieldSharingV2.sol";
import {MintController} from "@funding/MintController.sol";
import {RedeemController} from "@funding/RedeemController.sol";
import {InfiniFiGatewayV3} from "@gateway/InfiniFiGatewayV3.sol";

contract InfiniFiStakedTokenSY is PendleERC4626UpgSYV2 {
    InfiniFiGatewayV3 public immutable gateway;

    /// @notice assetToken is infiniFi asset token not asset token of the SY
    address public immutable assetToken;
    address public immutable receiptToken;
    address public immutable stakedReceiptToken;
    address public immutable pendlePauseController; // mostly 0x2aD631F72fB16d91c4953A7f4260A97C2fE2f31e;

    error UnsupportedToken(address _token);

    constructor(address _gateway, address _pendlePauseController)
        PendleERC4626UpgSYV2(InfiniFiGatewayV3(_gateway).getAddress("stakedToken"))
    {
        gateway = InfiniFiGatewayV3(_gateway);

        assetToken = gateway.getAddress("USDC");
        receiptToken = gateway.getAddress("receiptToken");
        stakedReceiptToken = gateway.getAddress("stakedToken");

        require(assetToken != address(0), "Asset token not found");
        require(receiptToken != address(0), "Receipt token not found");
        require(stakedReceiptToken != address(0), "Staked token not found");

        pendlePauseController = _pendlePauseController;
    }

    function initialize(string memory _name, string memory _symbol) external override initializer {
        __SYBaseUpg_init(_name, _symbol);
        _safeApproveInf(receiptToken, address(gateway));
        _safeApproveInf(assetToken, address(gateway));
        _safeApproveInf(stakedReceiptToken, address(gateway));
        // sets pendle pauser as a new owner on deployment and renounces the role right away
        transferOwnership({newOwner: pendlePauseController, direct: true, renounce: true});
    }

    function _deposit(address tokenIn, uint256 amountDeposited)
        internal
        override
        returns (
            uint256 /*amountSharesOut*/
        )
    {
        if (tokenIn == receiptToken) {
            return InfiniFiGatewayV3(gateway).stake(address(this), amountDeposited);
        }

        if (tokenIn == assetToken) {
            uint256 amountBefore = ERC4626(stakedReceiptToken).balanceOf(address(this));
            InfiniFiGatewayV3(gateway).mintAndStake(address(this), amountDeposited);
            uint256 amountAfter = ERC4626(stakedReceiptToken).balanceOf(address(this));
            return amountAfter - amountBefore;
        }

        if (tokenIn == stakedReceiptToken) {
            return amountDeposited;
        }

        revert UnsupportedToken(tokenIn);
    }

    function _redeem(address receiver, address tokenOut, uint256 amountSharesToRedeem)
        internal
        override
        returns (
            uint256 /*amountTokenOut*/
        )
    {
        if (tokenOut == receiptToken) {
            return InfiniFiGatewayV3(gateway).unstake(receiver, amountSharesToRedeem);
        }

        if (tokenOut == assetToken) {
            // unstake receipt token
            uint256 receiptOut = InfiniFiGatewayV3(gateway).unstake(address(this), amountSharesToRedeem);
            address redeemController = InfiniFiGatewayV3(gateway).getAddress("redeemController");
            // convert receipt token to asset token
            uint256 assetsOut = RedeemController(redeemController).receiptToAsset(receiptOut);
            // redeem receipt token for `assetsOut` of asset token
            return InfiniFiGatewayV3(gateway).redeem(receiver, receiptOut, assetsOut);
        }

        if (tokenOut == stakedReceiptToken) {
            _transferOut(stakedReceiptToken, receiver, amountSharesToRedeem);
            return amountSharesToRedeem;
        }

        revert UnsupportedToken(tokenOut);
    }

    // returns exchange rate in receipt token
    function exchangeRate() public view override returns (uint256) {
        // PMath.ONE is 1e18
        return _convertToAssets(FixedPointMathLib.WAD);
    }

    function _previewDeposit(address tokenIn, uint256 amountTokenToDeposit)
        internal
        view
        override
        returns (
            uint256 /*amountSharesOut*/
        )
    {
        if (tokenIn == receiptToken) {
            return _convertToShares(amountTokenToDeposit);
        }

        if (tokenIn == assetToken) {
            address mintController = InfiniFiGatewayV3(gateway).getAddress("mintController");
            // preview asset token to receipt token conversion
            uint256 receiptTokens = MintController(mintController).assetToReceipt(amountTokenToDeposit);
            return _convertToShares(receiptTokens);
        }

        if (tokenIn == stakedReceiptToken) {
            return amountTokenToDeposit;
        }

        revert UnsupportedToken(tokenIn);
    }

    function _previewRedeem(address tokenOut, uint256 amountSharesToRedeem)
        internal
        view
        override
        returns (
            uint256 /*amountTokenOut*/
        )
    {
        if (tokenOut == receiptToken) {
            return _convertToAssets(amountSharesToRedeem);
        }

        if (tokenOut == assetToken) {
            // see how much receipt token we get from redeeming staked receipt token
            uint256 receiptOut = _convertToAssets(amountSharesToRedeem);
            address redeemController = InfiniFiGatewayV3(gateway).getAddress("redeemController");
            // convert receipt token to asset token
            return RedeemController(redeemController).receiptToAsset(receiptOut);
        }

        if (tokenOut == stakedReceiptToken) {
            return amountSharesToRedeem;
        }

        revert UnsupportedToken(tokenOut);
    }

    function _convertToShares(uint256 _receiptIn)
        internal
        view
        returns (
            uint256 /* _sharesOut */
        )
    {
        uint256 vested = YieldSharingV2(InfiniFiGatewayV3(gateway).getAddress("yieldSharing")).vested();
        uint256 supply = ERC4626(stakedReceiptToken).totalSupply();
        uint256 assets = ERC4626(stakedReceiptToken).totalAssets() + vested;
        return supply == 0 ? _receiptIn : ((_receiptIn * supply) / assets);
    }

    function _convertToAssets(uint256 _sharesIn)
        internal
        view
        returns (
            uint256 /* _assetsOut */
        )
    {
        uint256 vested = YieldSharingV2(InfiniFiGatewayV3(gateway).getAddress("yieldSharing")).vested();
        uint256 supply = ERC4626(stakedReceiptToken).totalSupply();
        uint256 assets = ERC4626(stakedReceiptToken).totalAssets() + vested;
        return supply == 0 ? _sharesIn : (_sharesIn * assets) / supply;
    }

    function getTokensIn() public view override returns (address[] memory res) {
        return ArrayLib.create(receiptToken, stakedReceiptToken, assetToken);
    }

    function getTokensOut() public view override returns (address[] memory res) {
        return ArrayLib.create(receiptToken, stakedReceiptToken, assetToken);
    }

    function isValidTokenIn(address token) public view override returns (bool) {
        return token == receiptToken || token == stakedReceiptToken || token == assetToken;
    }

    function isValidTokenOut(address token) public view override returns (bool) {
        return token == receiptToken || token == stakedReceiptToken || token == assetToken;
    }

    function assetInfo()
        external
        view
        override
        returns (AssetType assetType, address assetAddress, uint8 assetDecimals)
    {
        return (AssetType.TOKEN, receiptToken, 18);
    }
}
