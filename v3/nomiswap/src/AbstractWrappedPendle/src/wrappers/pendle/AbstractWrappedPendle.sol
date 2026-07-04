// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import "src/wrappers/AbstractBaseWrapper.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import "pendle-core/interfaces/IPActionAddRemoveLiqV3.sol";
import "pendle-core/interfaces/IPMarket.sol";
import "pendle-core/interfaces/IPPYLpOracle.sol";
import "pendle-core/oracles/PtYtLpOracle/PendlePYOracleLib.sol";

abstract contract AbstractWrappedPendle is AbstractBaseWrapper, ERC4626Upgradeable {
    using SafeERC20 for IERC20;
    using Math for uint256;

    IERC20 public immutable INVEST_TOKEN;
    IERC20 public immutable REDEEM_TOKEN; // could be same as DEPOSIT_TOKEN, depends on particular strategy
    IPMarket public immutable MARKET;
    IPActionAddRemoveLiqV3 public immutable ROUTER;
    IPPYLpOracle public immutable ORACLE;

    uint private constant EPS = 1E9;
    uint256 private constant MAX_IMPLIED_RATE_DEVIATION_RATE = 20; //5%
    uint32 public immutable oracleDuration = 30 minutes;

    constructor(
        address investToken_,
        address redeemToken_,
        address market_,
        address router_,
        address oracle_) AbstractBaseWrapper(market_)
    {
        INVEST_TOKEN = IERC20(investToken_);
        REDEEM_TOKEN = IERC20(redeemToken_);
        MARKET = IPMarket(market_);
        ROUTER = IPActionAddRemoveLiqV3(router_);
        ORACLE = IPPYLpOracle(oracle_);

        (bool increaseCardinalityRequired, , bool oldestObservationSatisfied) = ORACLE.getOracleState(market_, oracleDuration);
        require(!increaseCardinalityRequired, 'Pendle: OICR');
        require(oldestObservationSatisfied, 'Pendle: OOOS');
    }

    function __AbstractWrappedPendle_init(string memory name_, string memory symbol_, address authority_)
        internal
        onlyInitializing
    {
        __AbstractBaseWrapper_init(authority_);
        __ERC20_init(name_, symbol_);
        __ERC4626_init(IERC20Metadata(address(MARKET)));

        INVEST_TOKEN.forceApprove(address(ROUTER), type(uint256).max);
        IERC20(MARKET).forceApprove(address(ROUTER), type(uint256).max);
    }

    function asset() public view override(AbstractBaseWrapper, ERC4626Upgradeable) returns (address assetTokenAddress) {
        return AbstractBaseWrapper.asset();
    }

    function totalAssets() public view override returns (uint256)
    {
        return Math.min(_lpBalance(), _lpBalanceLimit());
    }

    function interestAssets() public view returns (uint256) {
        uint256 lpBalanceLimit = _lpBalanceLimit();
        uint256 lpBalance = _lpBalance();
        return lpBalance > lpBalanceLimit ? lpBalance - lpBalanceLimit : 0;
    }

    // Original depositRaw/redeemRaw functionality for INVEST_TOKEN/REDEEM_TOKEN
    function _depositRaw(address dustReceiver, address receiver)
    internal
    override
    returns (uint shares)
    {

        uint256 netLpOut = _mintPendleLp();
        _returnDust(dustReceiver);

        shares = previewDeposit(netLpOut);

        _mint(receiver, shares);

        _stakePendleLp(netLpOut);
        emit Deposit(msg.sender, receiver, netLpOut, shares);
    }

    function _redeemRaw(uint256 shares, address to)
    internal
    override
    returns (address[] memory tokens, uint256[] memory amounts)
    {
        uint pendleLp = previewRedeem(shares);

        _burn(msg.sender, shares);
        emit Withdraw(msg.sender, to, msg.sender, pendleLp, shares);

        (tokens, amounts) = _redeem(pendleLp, to);
    }

    function _redeem(uint256 pendleLp, address to)
    internal
    virtual
    returns (address[] memory tokens, uint256[] memory amounts)
    {
        _unstakePendleLp(pendleLp);
        require(MARKET.balanceOf(address(this)) >= pendleLp, "Pendle: IL");

        _burnPendleLp(pendleLp);

        tokens = new address[](1);
        amounts = new uint256[](1);

        tokens[0] = address(REDEEM_TOKEN);
        amounts[0] = REDEEM_TOKEN.balanceOf(address(this));

        require(amounts[0] > 0, "Pendle: IL");

        REDEEM_TOKEN.safeTransfer(to, amounts[0]);
    }

    function depositTokens() public view virtual override returns (address[] memory tokens) {
        tokens = new address[](1);
        tokens[0] = address(INVEST_TOKEN);
    }

    function ratios() external view virtual override returns(address[] memory tokens, uint256[] memory ratio) {
        tokens = new address[](1);
        tokens[0] = address(INVEST_TOKEN);

        ratio = new uint256[](1);
        ratio[0] = 1e18;
    }

    function poolTokens() public view virtual override returns (address[] memory poolTokens_) {
        (IStandardizedYield sy, ,) = MARKET.readTokens();
        (,address nativePool,) = sy.assetInfo();
        address[] memory tokens = sy.getTokensIn();

        uint8 count = 0;
        for (uint256 i = 0; i < tokens.length; i++) {
            if(tokens[i] != address(0) && tokens[i] != nativePool) {
                count++;
            }
        }
        poolTokens_ = new address[](count);
        for (uint256 i = 0; i < tokens.length; i++) {
            if(tokens[i] != address(0) && tokens[i] != nativePool) {
                count--;
                poolTokens_[count] = tokens[i];
            }
        }
    }

    function _deposit(address caller, address receiver, uint256 pendleLp, uint256 shares) internal override {
        super._deposit(caller, receiver, pendleLp, shares);
        _stakePendleLp(pendleLp);
    }

    function _withdraw(address caller, address receiver, address owner, uint256 pendleLp, uint256 shares)
        internal
        override
    {
        _unstakePendleLp(pendleLp);
        super._withdraw(caller, receiver, owner, pendleLp, shares);
    }

    function _convertToShares(uint256 pendleLp, Math.Rounding rounding) internal view override returns (uint256) {
        uint totalSupply = totalSupply();
        if (totalSupply == 0) {
            return pendleLp * _getLpToAssetRate(rounding == Math.Rounding.Ceil) / 1e18;
        }
        return super._convertToShares(pendleLp, rounding);
    }

    function _lpBalanceLimit() internal view returns (uint256) {
        return totalSupply().mulDiv(PMath.ONE, _getLpToAssetRate(true));
    }

    function _mintPendleLp() internal virtual returns(uint256 netLpOut) {
        uint256 investTokenBalance = INVEST_TOKEN.balanceOf(address(this));
        (netLpOut,,) = ROUTER.addLiquiditySingleToken(
            address(this),
            address(MARKET),
            0,
            _approxParams(),
            _tokenInput(investTokenBalance),
            _limitOrderData()
        );
    }

    function _burnPendleLp(uint256 lpAmount) internal virtual {
        if (lpAmount > 0) {
            ROUTER.removeLiquiditySingleToken(
                address(this),
                address(MARKET),
                lpAmount,
                _tokenOutput(),
                _limitOrderData()
            );
        }
    }

    function _tokenInput(uint amountIn) private view returns (TokenInput memory) {
        return TokenInput(
            address(INVEST_TOKEN),
            amountIn,
            address(INVEST_TOKEN),
            address(0),
            SwapData(SwapType.NONE, address(0), bytes(""), false)
        );
    }

    function _tokenOutput() private view returns (TokenOutput memory) {
        return TokenOutput(
            address(REDEEM_TOKEN),
            0,
            address(REDEEM_TOKEN),
            address(0),
            SwapData(SwapType.NONE, address(0), bytes(""), false)
        );
    }

    function _approxParams() private pure returns (ApproxParams memory) {
        return ApproxParams(
            0,
            type(uint256).max,
            0,
            256,
            EPS
        );
    }

    function _limitOrderData() private pure returns (LimitOrderData memory) {
        return LimitOrderData(
            address(0),
            0,
            new FillOrderParams[](0),
            new FillOrderParams[](0),
            ""
        );
    }

    function _getLpToAssetRate(bool optimistic) internal view returns (uint256 assetToLpRatio) {

        uint256 currentLpToAssetRate = _getCurrentLpToAssetRate();
        uint256 historicalLpToAssetRate = ORACLE.getLpToAssetRate(address(MARKET), oracleDuration);

        if (optimistic) {
            assetToLpRatio = Math.max(currentLpToAssetRate, historicalLpToAssetRate);
        } else {
            assetToLpRatio = Math.min(currentLpToAssetRate, historicalLpToAssetRate);
        }
    }

    function _getCurrentLpToAssetRate() private view returns (uint256 currentLpToAssetRate) {
        MarketState memory market = MARKET.readState(address(this));
        (, , IPYieldToken _YT) = MARKET.readTokens();

        uint256 index = _YT.pyIndexStored();
        MarketPreCompute memory comp = MarketMathCore.getMarketPreCompute(market, PYIndex.wrap(index), block.timestamp);

        int256 ptToAssetRate = MarketMathCore._getExchangeRate(
            market.totalPt,
            comp.totalAsset,
            comp.rateScalar,
            comp.rateAnchor,
            0
        );

        uint totalPtAndSyAsset = uint(comp.totalAsset + market.totalPt * ptToAssetRate / PMath.IONE);
        currentLpToAssetRate = PMath.divDown(totalPtAndSyAsset, uint(market.totalLp));
    }

    function _checkImpliedRates() private view returns (uint minLnImpliedRate, uint maxLnImpliedRate) {
        (,,uint96 storageLnImpliedRate,,,) = MARKET._storage();
        uint lastLnImpliedRate = storageLnImpliedRate;
        uint observationLnImpliedRate = PendlePYOracleLib.getMarketLnImpliedRate(MARKET, oracleDuration);
        minLnImpliedRate = Math.min(lastLnImpliedRate, observationLnImpliedRate);
        maxLnImpliedRate = Math.max(lastLnImpliedRate, observationLnImpliedRate);
        require(maxLnImpliedRate - minLnImpliedRate < minLnImpliedRate / MAX_IMPLIED_RATE_DEVIATION_RATE, "Pendle: volatility");
    }

    function _getImpliedLnRates() private view returns (uint lastLnImpliedRate, uint observationLnImpliedRate) {
    }

    function reserves() external override view virtual returns(address[] memory tokens, uint[] memory amounts) {
        tokens = new address[](1);
        tokens[0] = address(MARKET);
        amounts = new uint[](1);
        amounts[0] = totalAssets();
    }

    function _update(address from, address to, uint256 value) internal override {
        if (from == address(0) || to == address(0)) {
            _checkImpliedRates();
        }
        super._update(from, to, value);
    }


function _lpBalance() internal view virtual returns (uint256);

    function _stakePendleLp(uint256 lpAmount) internal virtual;

    function _unstakePendleLp(uint256 lpAmount) internal virtual;

}