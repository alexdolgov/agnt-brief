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

contract QuoteVault is CommonVault {
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
        // QV_MSCD : margin sufficient; cannot deleverage
        require(!IPerpPositionManager(_perpPositionManager).isMarginSufficientByRatio(deleverageRatio), "QV_MSCD");

        // NOTE: when deleveraging, we also sell spot and deposit usdc back to perp vault,
        //       so the final margin ratio will be higher than targetMarginRatio(deleverageMarginRatio)
        //       thus, we first divide the final result by 2 for now to reflect the above description
        uint256 maxDeleveragePositionSize = IPerpPositionManager(_perpPositionManager)
            .getDeleveragedPositionSize(deleverageRatio)
            .div(2);

        // QV_RPSTM: Reduced Position Size Too Much
        require(reducedPositionSizeAbs <= maxDeleveragePositionSize, "QV_RPSTM");

        return _deleverage(reducedPositionSizeAbs == 0 ? maxDeleveragePositionSize : reducedPositionSizeAbs);
    }

    //
    // PUBLIC VIEW
    //

    /// @dev denominated in quoteToken, hence the return values are rounded to _qd, quoteToken's decimals
    function totalAssets() public view override returns (uint256) {
        IERC20Metadata baseToken = IERC20Metadata(_baseToken);
        uint256 base_bd = baseToken.balanceOf(address(this));
        uint256 quote_qd = IERC20Metadata(_quoteToken).balanceOf(address(this));

        // we require quoteToken decimals == perp settlementToken decimals in initialize()
        // getAccountValueSafe_6() reverts if bankrupt
        uint256 perpTotalAccountValue_qd = IPerpPositionManager(_perpPositionManager)
            .getAccountValueSafe_6()
            .toUint256();

        // NOTE: ChainlinkPriceFeedV1R1 decimals is 8,
        // however, baseToken decimals could be 18 (ETH and DAI), 6 (USDT), or 8 (WBTC)
        // scale down baseToken's decimals _bd to quoteToken's decimals _qd
        uint256 baseNotional_bd = base_bd.mulDiv(getIndexPrice(), 10**_CHAINLINK_AGGREGATOR_DECIMALS_8);
        uint256 baseNotional_qd = _formatDecimals(baseNotional_bd, _baseTokenDecimals, _quoteTokenDecimals);

        uint256 totalQuote_qd = quote_qd.add(perpTotalAccountValue_qd);

        return totalQuote_qd.add(baseNotional_qd);
    }

    //
    // INTERNAL NON-VIEW
    //

    function _deposit(address to, uint256 assets) internal returns (uint256) {
        uint256 shares = _depositFor(to, assets);

        // quote vault asset == perp's settlement token, deposit all
        IPerpPositionManager(_perpPositionManager).deposit(_getAsset(), assets);
        return shares;
    }

    function _redeemByShares(uint256 shares, uint256 totalSupply) internal override returns (uint256) {
        (uint256 redeemedUsdc_6, uint256 baseForBuyingUsdc) = _getBalancesByShares(shares, totalSupply);

        uint256 usdcWithdrawnFromPerp_6 = _redeemPerpPositionByShares(shares, totalSupply);
        redeemedUsdc_6 = redeemedUsdc_6.add(usdcWithdrawnFromPerp_6);

        // if baseForBuyingUsdc == 0, will encounter error 'AS' in UniswapV3Pool
        if (baseForBuyingUsdc > 0) {
            // reduce spot on uniswap
            uint256 usdcBoughtFromUni_6 = _swapExactInputOnUni(_baseToken, _quoteToken, baseForBuyingUsdc);

            // redeemedUsdc_6 = quoteToken here (include arb profit) +
            //                  reduce position and withdraw from perp +
            //                  sell eth to usdc on uniswap
            redeemedUsdc_6 = redeemedUsdc_6.add(usdcBoughtFromUni_6);
        }

        SafeERC20Upgradeable.safeTransfer(IERC20Metadata(_quoteToken), _msgSender(), redeemedUsdc_6);

        return redeemedUsdc_6;
    }

    function _reducePerpPosition(uint256 reducedPositionSizeAbs)
        internal
        override
        returns (uint256 perpBase, uint256 perpQuote)
    {
        return
            IPerpPositionManager(_perpPositionManager).openPosition(
                IPerpPositionManager.OpenPositionParams({
                    isBaseToQuote: false,
                    isExactInput: false,
                    amount: reducedPositionSizeAbs
                })
            );
    }

    function _deleverage(uint256 reducedPositionSizeAbs) internal returns (int256 pnl) {
        _requireUint256GreaterThanZero(reducedPositionSizeAbs);

        uint256 totalAssetsBefore = totalAssets();

        // reduce position on perp: quoteVault only has short position, reduce position means long
        // TODO: add slippage protection
        (uint256 perpBase, uint256 perpQuote) = _reducePerpPosition(reducedPositionSizeAbs);

        // ensure quoteVault only has short position
        _getPerpPositionSizeSafe();

        // reduce spot on uni: swap eth to usdc
        uint256 base_bd = _formatPerpToBaseDecimals(perpBase);
        uint256 uniQuoteTokenAmountOut_6 = _swapExactInputOnUni(_baseToken, _quoteToken, base_bd);

        IPerpPositionManager(_perpPositionManager).deposit(_quoteToken, uniQuoteTokenAmountOut_6);

        uint256 totalAssetsAfter = totalAssets();

        int256 pnl = totalAssetsAfter.toInt256().sub(totalAssetsBefore.toInt256());

        emit Deleverage(
            _msgSender(),
            IPerpPositionManager(_perpPositionManager).getBaseToken(),
            reducedPositionSizeAbs,
            perpBase,
            perpQuote,
            uniQuoteTokenAmountOut_6,
            pnl
        );

        return pnl;
    }

    //
    // INTERNAL VIEW
    //

    function _getAsset() internal view override returns (address) {
        return _quoteToken;
    }

    function _getAssetDecimals() internal view override returns (uint8) {
        return _quoteTokenDecimals;
    }

    /// @dev quoteVault should only have short position
    ///      it's possible that quoteVault's positionSize < quoteVault's WETH if WETH is sent directly here,
    ///      e.g. arb contract's profit, and it's not necessary to fully hedge the extra WETH
    function _getPerpPositionSizeSafe() internal view override returns (int256) {
        int256 positionSize = IPerpPositionManager(_perpPositionManager).getTakerPositionSize();
        // QV_PSL: Position Size is Long
        require(positionSize <= 0, "QV_PSL");
        return positionSize;
    }
}
