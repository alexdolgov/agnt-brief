// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.7.6;
pragma abicoder v2;

import { FullMath } from "@uniswap/v3-core/contracts/libraries/FullMath.sol";
import { IERC20Metadata } from "@perp/curie-contract/contracts/interface/IERC20Metadata.sol";
import { PerpSafeCast } from "@perp/curie-contract/contracts/lib/PerpSafeCast.sol";
import { SafeERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/SafeERC20Upgradeable.sol";
import { SafeMathUpgradeable } from "@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";
import { SignedSafeMathUpgradeable } from "@openzeppelin/contracts-upgradeable/math/SignedSafeMathUpgradeable.sol";

import { CommonVault } from "./CommonVault.sol";
import { IVaultConfig } from "./interface/IVaultConfig.sol";
import { IPerpPositionManager } from "./interface/IPerpPositionManager.sol";

contract BaseVault is CommonVault {
    using SafeMathUpgradeable for uint256;
    using SignedSafeMathUpgradeable for int256;
    using FullMath for uint256;
    using PerpSafeCast for uint256;
    using PerpSafeCast for int256;

    //
    // EXTERNAL NON-VIEW
    //

    function deposit(uint256 assets) external override whenNotPaused nonReentrant returns (uint256) {
        return _deposit(_msgSender(), assets);
    }

    function depositFor(address to, uint256 assets) external override whenNotPaused nonReentrant returns (uint256) {
        return _deposit(to, assets);
    }

    function swapExactOutput(SwapExactOutputParams calldata params)
        external
        override
        whenNotPaused
        nonReentrant
        returns (uint256)
    {
        revert("Not Implemented");
    }

    function deleverage(uint256 reducedPositionSizeAbs)
        external
        override
        whenNotPaused
        nonReentrant
        returns (int256 pnl)
    {
        _requireIsWhitelistedArbitrageur(_msgSender());

        uint24 deleverageRatio = IVaultConfig(_vaultConfig).getDeleverageMarginRatio(address(this));
        // BV_MSCD : margin sufficient; cannot deleverage
        require(!IPerpPositionManager(_perpPositionManager).isMarginSufficientByRatio(deleverageRatio), "BV_MSCD");

        uint256 maxDeleveragePositionSize = IPerpPositionManager(_perpPositionManager).getDeleveragedPositionSize(
            deleverageRatio
        );

        // BV_RPSTM: Reduced Position Size Too Much
        require(reducedPositionSizeAbs <= maxDeleveragePositionSize, "BV_RPSTM");

        return _deleverage(reducedPositionSizeAbs == 0 ? maxDeleveragePositionSize : reducedPositionSizeAbs);
    }

    //
    // PUBLIC VIEW
    //

    /// @dev denominated in baseToken, hence the return values are rounded to _bd, baseToken's decimals
    function totalAssets() public view override returns (uint256) {
        IERC20Metadata baseToken = IERC20Metadata(_baseToken);
        uint256 base_bd = baseToken.balanceOf(address(this));
        uint256 quote_qd = IERC20Metadata(_quoteToken).balanceOf(address(this));

        // we require quoteToken decimals == perp settlementToken decimals in initialize()
        // getAccountValueSafe_6() reverts if bankrupt
        uint256 perpAccountValue_qd = IPerpPositionManager(_perpPositionManager).getAccountValueSafe_6().toUint256();

        // NOTE: ChainlinkPriceFeedV1R1 decimals is 8,
        // however, baseToken decimals could be 18 (ETH and DAI), 6 (USDT), or 8 (WBTC)
        // scale up quoteToken's decimals _qd to baseToken's decimals _bd
        uint256 totalQuote_qd = quote_qd.add(perpAccountValue_qd);
        uint256 totalQuoteInBase_qd = totalQuote_qd.mulDiv(10**_CHAINLINK_AGGREGATOR_DECIMALS_8, getIndexPrice());
        uint256 totalQuoteInBase_bd = _formatDecimals(totalQuoteInBase_qd, _quoteTokenDecimals, _baseTokenDecimals);

        return totalQuoteInBase_bd.add(base_bd);
    }

    //
    // INTERNAL NON-VIEW
    //

    function _deposit(address to, uint256 assets) internal returns (uint256) {
        return _depositFor(to, assets);
    }

    function _redeemByShares(uint256 shares, uint256 totalSupply) internal override returns (uint256) {
        (uint256 usdcForBuyingBase_6, uint256 redeemedBase) = _getBalancesByShares(shares, totalSupply);

        uint256 usdcWithdrawnFromPerp_6 = _redeemPerpPositionByShares(shares, totalSupply);
        usdcForBuyingBase_6 = usdcForBuyingBase_6.add(usdcWithdrawnFromPerp_6);

        // if usdcForBuyingBase_6 == 0, will encounter error 'AS' in UniswapV3Pool
        if (usdcForBuyingBase_6 > 0) {
            // reduce spot on uniswap
            uint256 baseBoughtFromUni = _swapExactInputOnUni(_quoteToken, _baseToken, usdcForBuyingBase_6);

            // usdcForBuyingBase_6 = quoteToken here +
            //                       reduce position and withdraw from perp
            // redeemedBase = baseToken here (include arb profit) +
            //                buy eth with usdcForBuyingBase_6 on uniswap
            redeemedBase = redeemedBase.add(baseBoughtFromUni);
        }

        SafeERC20Upgradeable.safeTransfer(IERC20Metadata(_baseToken), _msgSender(), redeemedBase);

        return redeemedBase;
    }

    function _reducePerpPosition(uint256 reducedPositionSizeAbs)
        internal
        override
        returns (uint256 perpBase, uint256 perpQuote)
    {
        return
            IPerpPositionManager(_perpPositionManager).openPosition(
                IPerpPositionManager.OpenPositionParams({
                    isBaseToQuote: true,
                    isExactInput: true,
                    amount: reducedPositionSizeAbs
                })
            );
    }

    function _deleverage(uint256 reducedPositionSizeAbs) internal returns (int256 pnl) {
        // reduce position on perp: baseVault only has long position, reduce position means short
        // TODO: add slippage protection
        uint256 totalAssetsBefore = totalAssets();

        // ensure baseVault only has long position
        (uint256 perpBase, uint256 perpQuote) = _reducePerpPosition(reducedPositionSizeAbs);

        uint256 totalAssetsAfter = totalAssets();

        int256 pnl = totalAssetsAfter.toInt256().sub(totalAssetsBefore.toInt256());

        emit Deleverage(
            _msgSender(),
            IPerpPositionManager(_perpPositionManager).getBaseToken(),
            reducedPositionSizeAbs,
            perpBase,
            perpQuote,
            0,
            pnl
        );

        return pnl;
    }

    //
    // INTERNAL VIEW
    //

    function _getAssetDecimals() internal view override returns (uint8) {
        return _baseTokenDecimals;
    }

    function _getAsset() internal view override returns (address) {
        return _baseToken;
    }

    /// @dev baseVault should only have long position
    function _getPerpPositionSizeSafe() internal view override returns (int256) {
        int256 positionSize = IPerpPositionManager(_perpPositionManager).getTakerPositionSize();
        // BV_PSS: Position Size is Short
        require(positionSize >= 0, "BV_PSS");
        return positionSize;
    }
}
