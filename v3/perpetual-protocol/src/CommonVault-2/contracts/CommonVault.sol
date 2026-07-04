// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.7.6;
pragma abicoder v2;

import { FullMath } from "@uniswap/v3-core/contracts/libraries/FullMath.sol";
import { ISwapRouter } from "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import { IPriceFeed } from "@perp/perp-oracle-contract/contracts/interface/IPriceFeed.sol";
import { IERC20Metadata } from "@perp/curie-contract/contracts/interface/IERC20Metadata.sol";
import { OwnerPausable } from "@perp/curie-contract/contracts/base/OwnerPausable.sol";
import { PerpSafeCast } from "@perp/curie-contract/contracts/lib/PerpSafeCast.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import { SafeMathUpgradeable } from "@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";
import { SignedSafeMathUpgradeable } from "@openzeppelin/contracts-upgradeable/math/SignedSafeMathUpgradeable.sol";
import { SafeERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/SafeERC20Upgradeable.sol";
import { PerpMath } from "@perp/curie-contract/contracts/lib/PerpMath.sol";
import { AddressUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol";

import { IVaultConfig } from "./interface/IVaultConfig.sol";
import { IVaultToken } from "./interface/IVaultToken.sol";
import { ICommonVault } from "./interface/ICommonVault.sol";
import { IPerpPositionManager } from "./interface/IPerpPositionManager.sol";
import { CommonVaultStorageV3 } from "./storage/CommonVaultStorage.sol";
import { IRouter } from "./interface/IRouter.sol";
import { IRouterStruct } from "./interface/IRouterStruct.sol";
import { IShowerRoom } from "./interface/IShowerRoom.sol";

abstract contract CommonVault is ICommonVault, OwnerPausable, ReentrancyGuardUpgradeable, CommonVaultStorageV3 {
    using AddressUpgradeable for address;
    using FullMath for uint256;
    using SafeMathUpgradeable for uint256;
    using SignedSafeMathUpgradeable for int256;
    using PerpMath for int256;
    using PerpMath for uint256;
    using PerpSafeCast for uint256;
    using PerpSafeCast for int256;

    struct InternalOpenPerpPositionParams {
        bool isBaseToQuote;
        uint256 spotIn;
        uint256 spotOutMinimum;
        uint256 deadline;
        uint160 sqrtPriceLimitX96;
    }

    uint8 internal constant _CHAINLINK_AGGREGATOR_DECIMALS_8 = 8;
    uint8 internal constant _PERP_DECIMALS_18 = 18;

    //
    // EXTERNAL NON-VIEW
    //

    function initialize(
        address vaultTokenArg,
        address quoteTokenArg,
        address baseTokenArg,
        address vaultConfigArg,
        address perpPositionManagerArg
    ) external initializer {
        __OwnerPausable_init();
        __ReentrancyGuard_init();

        _vaultToken = vaultTokenArg;
        _perpPositionManager = perpPositionManagerArg;
        _vaultConfig = vaultConfigArg;

        // CV_QTMBST: QuoteToken must be SettlementToken
        require(quoteTokenArg == IPerpPositionManager(perpPositionManagerArg).getSettlementToken(), "CV_QTMBST");
        _quoteToken = quoteTokenArg;
        _quoteTokenDecimals = _getDecimalsSafe(quoteTokenArg);

        // ex: WETH decimals is 18, WBTC decimals is 8
        _baseToken = baseTokenArg;
        _baseTokenDecimals = _getDecimalsSafe(baseTokenArg);

        IERC20Metadata(quoteTokenArg).approve(perpPositionManagerArg, type(uint256).max);
    }

    function setRouter(address routerArg) external onlyOwner {
        address oldRouter = _router;

        // revoke approvals for old router
        if (oldRouter != address(0)) {
            IERC20Metadata(_quoteToken).approve(oldRouter, 0);
            IERC20Metadata(_baseToken).approve(oldRouter, 0);
        }

        // CV_RNC: router is not a contract
        require(routerArg.isContract(), "CV_RNC");
        _router = routerArg;

        IERC20Metadata(_quoteToken).approve(routerArg, type(uint256).max);
        IERC20Metadata(_baseToken).approve(routerArg, type(uint256).max);

        emit UpdateRouterAddress(oldRouter, routerArg);
    }

    function setQuoteUsdPriceFeed(address quoteUsdPriceFeedArg) external onlyOwner {
        require(quoteUsdPriceFeedArg.isContract(), "CV_QUPNC");

        address oldQuoteUsdPriceFeed = _quoteUsdPriceFeed;
        _quoteUsdPriceFeed = quoteUsdPriceFeedArg;

        emit UpdateQuoteUsdPriceFeed(oldQuoteUsdPriceFeed, quoteUsdPriceFeedArg);
    }

    function setBaseUsdPriceFeed(address baseUsdPriceFeedArg) external onlyOwner {
        require(baseUsdPriceFeedArg.isContract(), "CV_BUPNC");

        address oldBaseUsdPriceFeed = _baseUsdPriceFeed;
        _baseUsdPriceFeed = baseUsdPriceFeedArg;

        emit UpdateBaseUsdPriceFeed(oldBaseUsdPriceFeed, baseUsdPriceFeedArg);
    }

    function setShowerRoom(address showerRoomArg) external onlyOwner {
        _showerRoom = showerRoomArg;
        emit UpdateShowerRoom(showerRoomArg);
    }

    function redeem(uint256 shares, uint256 minRedeemedAmount)
        external
        override
        whenNotPaused
        nonReentrant
        returns (uint256 redeemed)
    {
        _requireUint256GreaterThanZero(shares);

        address msgSender = _msgSender();
        uint256 totalSupplyBeforeBurn = _getTotalSupply();
        IVaultToken(_vaultToken).burn(msgSender, shares);

        redeemed = _redeemByShares(shares, totalSupplyBeforeBurn);
        // CV_RALTMRA: RedeemedAmount is Less Than MinRedeemedAmount
        require(redeemed >= minRedeemedAmount, "CV_RALTMRA");

        emit Redeem(msgSender, redeemed, shares);

        return redeemed;
    }

    function swapExactInput(SwapExactInputParams calldata params)
        external
        override
        whenNotPaused
        nonReentrant
        returns (uint256 amountOut)
    {
        address msgSender = _msgSender();
        _requireIsWhitelistedArbitrageur(msgSender);
        _requireTokens(params.tokenIn, params.tokenOut);

        int256 perpPositionSizeBeforeSwap = _getPerpPositionSizeSafe();
        bool isBaseToQuote = params.tokenIn == _baseToken;

        // quoteVault positionSize <= 0, short on perp => quoteVault increase position
        // baseVault positionSize >= 0, long on perp => baseVault increase position
        // copied from Exchange
        bool isReducingPosition = perpPositionSizeBeforeSwap == 0
            ? false
            : perpPositionSizeBeforeSwap < 0 != isBaseToQuote;

        // we should check margin ratio if
        // 1. withdraw
        // 2. increase position
        // which will both lower the margin ratio
        if (!isReducingPosition) {
            _requireMarginRatioGreaterThanSwapRestriction();
        }

        SafeERC20Upgradeable.safeTransferFrom(
            IERC20Metadata(params.tokenIn),
            msgSender,
            address(this),
            params.amountIn
        );

        uint256 fee = params.amountIn.mulRatio(
            IVaultConfig(_vaultConfig).getExchangeFeeRatioByTrader(msgSender, address(this))
        );

        (uint256 perpBase, uint256 perpQuote) = _openPerpPosition(
            InternalOpenPerpPositionParams({
                isBaseToQuote: isBaseToQuote,
                spotIn: params.amountIn.sub(fee),
                spotOutMinimum: params.amountOutMinimum,
                deadline: params.deadline,
                sqrtPriceLimitX96: params.sqrtPriceLimitX96OnPerp
            })
        );

        if (isBaseToQuote) {
            // quoteToken == perp.settlementToken is asserted during initialization
            amountOut = _formatPerpToQuoteDecimals(perpQuote);

            // if Vault has no enough freeCollateral for the specified amountOut of usdc for withdraw(),
            // tx will be reverted with "V_NEFC"
            IPerpPositionManager(_perpPositionManager).withdraw(_quoteToken, amountOut);

            // if withdraw() is successful, there will be enough quoteToken to be sent out to users
            // and thus we don't need another check for the balance of quoteToken
        } else {
            // quote to base

            amountOut = _formatPerpToBaseDecimals(perpBase);
            // require there is enough amountOut as Vault can run out of BaseToken
            // CV_ILB: insufficient liquidity: baseToken
            require(amountOut <= IERC20Metadata(_baseToken).balanceOf(address(this)), "CV_ILB");
        }

        if (!isReducingPosition) {
            _requireMarginRatioGreaterThanDeleverage();
        }

        SafeERC20Upgradeable.safeTransfer(IERC20Metadata(params.tokenOut), params.recipient, amountOut);
        emit Swap(msgSender, params.tokenIn, params.tokenOut, params.amountIn, amountOut, params.recipient, fee);

        return amountOut;
    }

    //
    // EXTERNAL VIEW
    //

    function getQuoteToken() external view returns (address) {
        return _quoteToken;
    }

    function getBaseToken() external view returns (address) {
        return _baseToken;
    }

    function getVaultConfig() external view returns (address) {
        return _vaultConfig;
    }

    function getRouter() external view override returns (address) {
        return _router;
    }

    function getQuoteUsdPriceFeed() external view override returns (address) {
        return _quoteUsdPriceFeed;
    }

    function getBaseUsdPriceFeed() external view override returns (address) {
        return _baseUsdPriceFeed;
    }

    function getPerpPositionManager() external view returns (address) {
        return _perpPositionManager;
    }

    //
    // PUBLIC VIEW
    //

    function totalAssets() public view virtual override returns (uint256);

    /// @dev convert Base/USD and Quote/USD to Base/Quote
    function getIndexPrice() public view override returns (uint256) {
        // NOTE: we're using ChainlinkPriceFeedV1R1 for price feeds instead of PriceFeedDispatcher,
        // and ChainlinkPriceFeedV1R1 is using Chainlink aggregator's decimals which is 8
        IPriceFeed quoteUsdPriceFeed = IPriceFeed(_quoteUsdPriceFeed);
        IPriceFeed baseUsdPriceFeed = IPriceFeed(_baseUsdPriceFeed);
        uint8 quoteUsdPriceFeedDecimals = quoteUsdPriceFeed.decimals();
        uint8 baseUsdPriceFeedDecimals = baseUsdPriceFeed.decimals();

        // CV_PFDNE: PriceFeed Decimals Not Equal
        require(
            quoteUsdPriceFeedDecimals == _CHAINLINK_AGGREGATOR_DECIMALS_8 &&
                quoteUsdPriceFeedDecimals == baseUsdPriceFeedDecimals,
            "CV_PFDNE"
        );

        uint256 quoteUsdIndexPrice = quoteUsdPriceFeed.getPrice(0);
        uint256 baseUsdIndexPrice = baseUsdPriceFeed.getPrice(0);
        uint256 chainedIndexPrice = baseUsdIndexPrice.mulDiv(10**_CHAINLINK_AGGREGATOR_DECIMALS_8, quoteUsdIndexPrice);

        return chainedIndexPrice;
    }

    //
    // INTERNAL NON-VIEW
    //

    /// @param totalSupply is cached before the redeemer's shares are burnt
    function _redeemByShares(uint256 shares, uint256 totalSupply) internal virtual returns (uint256 redeemed);

    /// @dev reduce position on perp, which settles funding & unrealizedPnl to owedRealizedPnl
    function _reducePerpPosition(uint256 reducePositionSizeAbs)
        internal
        virtual
        returns (uint256 perpBase, uint256 perpQuote);

    function _depositFor(address to, uint256 assets) internal returns (uint256 shares) {
        _requireUint256GreaterThanZero(assets);

        address msgSender = _msgSender();

        // CV_SRNE: shower room not empty
        if (_showerRoom.isContract() && !IShowerRoom(_showerRoom).isNextDepositIndexEndOfWaitList()) {
            require(msgSender == _showerRoom, "CV_SRNE");
        }

        // calculate shares first as the below transferFrom() changes totalAssets()
        shares = _convertToShares(assets);

        SafeERC20Upgradeable.safeTransferFrom(IERC20Metadata(_getAsset()), msgSender, address(this), assets);

        IVaultToken(_vaultToken).mint(to, shares);
        emit Deposit(to, assets, shares);

        return shares;
    }

    function _openPerpPosition(InternalOpenPerpPositionParams memory params)
        internal
        returns (uint256 perpBase, uint256 perpQuote)
    {
        (uint256 amountIn, uint256 amountOutMinimum) = _formatSwapExactInputFromSpotToPerp(
            params.spotIn,
            params.spotOutMinimum,
            params.isBaseToQuote
        );

        IPerpPositionManager perp = IPerpPositionManager(_perpPositionManager);
        if (!params.isBaseToQuote) {
            // if tokenIn is quoteToken, deposit it anyway as it's perp's settlement token
            perp.deposit(_quoteToken, params.spotIn);
        }

        // tx can be reverted with "CH_NEFCI" if there's no enough freeCollateral, i.e.
        // no enough quoteToken, since quoteToken will always be deposited in the above step
        (perpBase, perpQuote) = perp.openPosition(
            IPerpPositionManager.OpenPositionFullParams({
                isBaseToQuote: params.isBaseToQuote,
                isExactInput: true,
                amount: amountIn,
                oppositeAmountBound: amountOutMinimum,
                deadline: params.deadline,
                sqrtPriceLimitX96: params.sqrtPriceLimitX96
            })
        );

        // ensure vault only has the right side of the position
        _getPerpPositionSizeSafe();
        return (perpBase, perpQuote);
    }

    function _redeemPerpPositionByShares(uint256 shares, uint256 totalSupply)
        internal
        returns (uint256 usdcWithdrawnFromPerp_6)
    {
        int256 perpPositionSize = _getPerpPositionSizeSafe();
        uint256 reducedPositionSizeAbs = perpPositionSize.abs().mulDiv(shares, totalSupply);

        IPerpPositionManager perp = IPerpPositionManager(_perpPositionManager);

        int256 accountValueBefore_6 = perp.getAccountValueSafe_6();
        // accountValueDiff is the diff between realizedPnl & unrealizedPnl after reducing position
        int256 accountValueDiff_6;

        // if reducedPositionSizeAbs == 0, will encounter error 'AS' in UniswapV3Pool
        if (reducedPositionSizeAbs > 0) {
            _reducePerpPosition(reducedPositionSizeAbs);
            // 1. funding isn't included as it's already in accountValueBefore
            // 2. diff between accountValue before & now is the extra pnl caused by mark & market price inconsistency
            accountValueDiff_6 = perp.getAccountValueSafe_6().sub(accountValueBefore_6);
        }

        // the extra pnl (accountValueDiff) belongs to the redeemer only and thus the redeemer gets shares + extra pnl
        usdcWithdrawnFromPerp_6 = accountValueBefore_6
            .mulDiv(shares.toInt256(), totalSupply)
            .add(accountValueDiff_6)
            .toUint256();

        // withdraw from perp; tx can fail if margin ratio is too low
        perp.withdraw(_quoteToken, usdcWithdrawnFromPerp_6);

        return usdcWithdrawnFromPerp_6;
    }

    // TODO: add slippage protection, just in case we set a low liquidity pool unintentionally
    function _swapExactInputOnUni(
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) internal returns (uint256 amountOut) {
        return
            IRouter(_router).uniswapV3ExactInput(
                IRouterStruct.UniswapV3ExactInputParams({
                    tokenIn: tokenIn,
                    tokenOut: tokenOut,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: amountIn,
                    amountOutMinimum: 0
                })
            );
    }

    //
    // INTERNAL VIEW
    //

    function _getAsset() internal view virtual returns (address);

    function _getAssetDecimals() internal view virtual returns (uint8);

    function _getPerpPositionSizeSafe() internal view virtual returns (int256);

    /// @dev get quote & base token balance * share ratio
    function _getBalancesByShares(uint256 shares, uint256 totalSupply)
        internal
        view
        returns (uint256 quoteByShares_6, uint256 baseByShares)
    {
        return (
            IERC20Metadata(_quoteToken).balanceOf(address(this)).mulDiv(shares, totalSupply),
            IERC20Metadata(_baseToken).balanceOf(address(this)).mulDiv(shares, totalSupply)
        );
    }

    function _requireTokens(address tokenIn, address tokenOut) internal view {
        // CV_ITI: invalid tokenIn
        require(tokenIn == _quoteToken || tokenIn == _baseToken, "CV_ITI");
        // CV_ITO: invalid tokenOut
        require(tokenOut == _quoteToken || tokenOut == _baseToken, "CV_ITO");
        // CV_ITP: invalid token pair
        require(tokenIn != tokenOut, "CV_ITP");
    }

    function _requireIsWhitelistedArbitrageur(address account) internal view {
        // CV_IARB: invalid arbitrageur
        require(IVaultConfig(_vaultConfig).isWhitelistedArbitrageur(account), "CV_IARB");
    }

    function _requireMarginRatioGreaterThanSwapRestriction() internal view {
        // CV_MIBS: margin insufficient before swap
        require(
            IPerpPositionManager(_perpPositionManager).isMarginSufficientByRatio(
                IVaultConfig(_vaultConfig).getSwapRestrictionMarginRatio(address(this))
            ),
            "CV_MIBS"
        );
    }

    function _requireMarginRatioGreaterThanDeleverage() internal view {
        // CV_MIAS: margin insufficient after swap
        require(
            IPerpPositionManager(_perpPositionManager).isMarginSufficientByRatio(
                IVaultConfig(_vaultConfig).getDeleverageMarginRatio(address(this))
            ),
            "CV_MIAS"
        );
    }

    function _getDecimalsSafe(address token) internal view returns (uint8) {
        uint8 decimals = IERC20Metadata(token).decimals();

        // CV_ID: invalid decimals
        require(decimals > 0 && decimals <= 18, "CV_ID");
        return decimals;
    }

    function _getTotalSupply() internal view returns (uint256) {
        return IERC20Metadata(_vaultToken).totalSupply();
    }

    /// @dev must calculate before updating totalSupply and totalAssets
    function _convertToShares(uint256 assets) internal view returns (uint256) {
        // vaultTokenDecimals = 36 or 24 (or others, we didn't restrict it inside the contract),
        // assetsDecimals = underlying asset = USDC(6) or wETH(18) or wBTC(8)
        // if vaultTokenDecimals ~= assetsDecimals, hacker can do inflation attack easily
        uint256 totalSupply = _getTotalSupply();
        return
            totalSupply == 0
                ? assets.mul(10**(IERC20Metadata(_vaultToken).decimals() - _getAssetDecimals()))
                : assets.mulDiv(totalSupply, totalAssets());
    }

    function _formatBaseToPerpDecimals(uint256 base) internal view returns (uint256) {
        return _formatDecimals(base, _baseTokenDecimals, _PERP_DECIMALS_18);
    }

    function _formatQuoteToPerpDecimals(uint256 quote) internal view returns (uint256) {
        return _formatDecimals(quote, _quoteTokenDecimals, _PERP_DECIMALS_18);
    }

    function _formatPerpToBaseDecimals(uint256 perp) internal view returns (uint256) {
        return _formatDecimals(perp, _PERP_DECIMALS_18, _baseTokenDecimals);
    }

    function _formatPerpToQuoteDecimals(uint256 perp) internal view returns (uint256) {
        return _formatDecimals(perp, _PERP_DECIMALS_18, _quoteTokenDecimals);
    }

    function _formatSwapExactInputFromSpotToPerp(
        uint256 spotAmountIn,
        uint256 spotAmountOutMinimum,
        bool isBaseToQuote
    ) internal view returns (uint256 perpAmountIn, uint256 perpAmountOutMinimum) {
        if (isBaseToQuote) {
            // amountIn = base
            perpAmountIn = _formatBaseToPerpDecimals(spotAmountIn);

            // amountOut = quote
            perpAmountOutMinimum = _formatQuoteToPerpDecimals(spotAmountOutMinimum);
        } else {
            // amountIn = quote
            perpAmountIn = _formatQuoteToPerpDecimals(spotAmountIn);

            // amountOut = base
            perpAmountOutMinimum = _formatBaseToPerpDecimals(spotAmountOutMinimum);
        }
        return (perpAmountIn, perpAmountOutMinimum);
    }

    //
    // INTERNAL PURE
    //

    function _requireUint256GreaterThanZero(uint256 uintArg) internal pure {
        // CV_ZU: zero uint
        require(uintArg > 0, "CV_ZU");
    }

    function _requireNonZeroAddress(address addressArg) internal pure {
        // CV_ZA: Zero Address
        require(addressArg != address(0), "CV_ZA");
    }

    function _formatDecimals(
        uint256 num,
        uint8 fromDecimals,
        uint8 toDecimals
    ) internal pure returns (uint256) {
        if (fromDecimals == toDecimals) {
            return num;
        }
        return
            fromDecimals >= toDecimals ? num / 10**(fromDecimals - toDecimals) : num * 10**(toDecimals - fromDecimals);
    }

    // copied from SettlementTokenMath.convertTokenDecimals()
    function _formatDecimals(
        int256 num,
        uint8 fromDecimals,
        uint8 toDecimals
    ) internal pure returns (int256) {
        if (fromDecimals == toDecimals) {
            return num;
        }

        if (fromDecimals < toDecimals) {
            return num.mul(int256(10**(toDecimals - fromDecimals)));
        }

        uint256 denominator = 10**(fromDecimals - toDecimals);
        int256 rounding = 0;
        if (num < 0 && uint256(-num) % denominator != 0) {
            rounding = -1;
        }
        return num.div(int256(denominator)).add(rounding);
    }
}
