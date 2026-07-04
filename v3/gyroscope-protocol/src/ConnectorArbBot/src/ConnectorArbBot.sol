// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {IConnectorArbBot} from "./IConnectorArbBot.sol";
import {IGyro2CLPPool} from "gyro-pools/IGyro2CLPPool.sol";
import {IStaticATokenLM} from "static-a-token-v3/IStaticATokenLM.sol";

import {IVault} from "balancer-v2/vault/IVault.sol";
import {IAsset} from "balancer-v2/vault/IAsset.sol";

import {IERC20} from "forge-std/interfaces/IERC20.sol";
import {IERC4626} from "forge-std/interfaces/IERC4626.sol";

import "forge-std/console.sol";

// super ridiculous fix to avoid compiler errors.
import {IERC20 as IERC20Balancer} from "balancer-v2/solidity-utils/openzeppelin/IERC20.sol";

import {IDolomiteMargin} from "dolomite-margin/contracts/protocol/interfaces/IDolomiteMargin.sol";
// import {Decimal} from "dolomite-margin/contracts/protocol/lib/Decimal.sol";
import {Account as DAccount} from "dolomite-margin/contracts/protocol/lib/Account.sol";
import {Types as DTypes} from "dolomite-margin/contracts/protocol/lib/Types.sol";
import {Actions as DActions} from "dolomite-margin/contracts/protocol/lib/Actions.sol";
import {ICallee as DICallee} from "dolomite-margin/contracts/protocol/interfaces/ICallee.sol";

import {FixedPoint} from "gyro-pools/FixedPoint.sol";
import {Gyro2CLPMath} from "gyro-pools/Gyro2CLPMath.sol";
import {GyroPoolMath} from "gyro-pools/GyroPoolMath.sol";

/* Note on scaling and variable naming rules for amounts:
* - 'U' indicates non-rate-scaled amounts. No marker means rate-scaled. 'D' means Dolomite flashloan
units,
 *   which for some reason are not the same as the actual units of the underlying we get (OPEN).
* - 'Wei' indicates 18 decimals, 'Par' indicates whatever decimals the respective token uses. All scaling
/
*   adjustment factors / rates are in 18 decimals. Note that this works just fine with standard
FixedPoint
 *   functions because:
 *   - divDown(Par, Par) = Wei. divDown(Par, Wei) = Par.
 *   - mulDown(Par, Wei) = Par.
 */

contract ConnectorArbBot is IConnectorArbBot, DICallee {
    using FixedPoint for uint256;

    IERC20 public immutable override stataToken;
    IERC20 public immutable override underlying;

    address public immutable override pool;

    bytes32 public immutable poolId;
    // Same as pool, to save ourselves some typing.
    IGyro2CLPPool private immutable _pool;
    IVault public immutable balancerVault;

    // Index of the stataToken in the pool.
    uint8 internal immutable _ixAToken;

    // Decimal scaling factor of the underlying, to Wei, the factor itself in 18 decimals.
    uint256 internal immutable scalingFactorUnderlying;

    address internal constant DOLOMITE_ADDRESS = 0x6Bd780E7fDf01D77e4d475c821f1e7AE05409072;

    uint256 internal constant ONE = 1e18;

    // There's a hack to probe how much we need to *tell* Dolomite to take out to actually take out the
    // amount we want: we take out *two* flashloans here, the first one to understand that conversion
    // factor and the second one to do the actual operation. There's only one callback, so we need to
    // tell it which one it is.
    enum FlashloanCallbackOpType {
        PROBE,
        EXECUTE_ARBITRAGE
    }

    struct FlashloanCallbackArgs {
        FlashloanCallbackOpType optype;
        // Balancer of the underlying before the flashloan. Safety feature to make sure our accounting
        // doesn't break in case someone accidentally transfers underlying to this. (don't do that
        // though!)
        uint256 preLoanBalancePar;
        // Only used for optype == EXECUTE_ARBITRAGE:
        bool isBuyAToken;
        uint256 sellAmountPar;
        address beneficiary;
    }

    /// @notice Return value(s) from callback. We can't pass these back up the call tree, so we use
    /// storage instead. (ideally this would use transient storage)
    struct FlashloanCallbackReturn {
        // If optype == PROBE, we abuse this for the amount of flashloan we actually got.
        uint256 profitPar;
    }

    FlashloanCallbackReturn flashloanCallbackReturn;

    // Amount to probe with. Should be small-ish but not dust.
    uint256 PROBE_AMOUNT_WEI = 100e18;

    constructor(address stataToken_, address underlying_, address pool_) {
        stataToken = IERC20(stataToken_);
        underlying = IERC20(underlying_);
        pool = pool_;
        _pool = IGyro2CLPPool(pool_);

        // Hacky way to make sure it's the right pool type.
        _pool.getSqrtParameters();

        scalingFactorUnderlying = calcScalingFactor(underlying);

        poolId = IGyro2CLPPool(pool).getPoolId();
        balancerVault = IVault(IGyro2CLPPool(pool).getVault());

        (IERC20Balancer[] memory tokens,,) = balancerVault.getPoolTokens(poolId);
        require(tokens.length == 2);
        _ixAToken = address(tokens[0]) == address(stataToken) ? 0 : 1;
        if (_ixAToken == 0) {
            require(
                (address(tokens[0]) == address(stataToken) && address(tokens[1]) == address(underlying)),
                "Wrong tokens"
            );
        } else {
            require(
                (address(tokens[1]) == address(stataToken) && address(tokens[0]) == address(underlying)),
                "Wrong tokens"
            );
        }
    }

    /// @inheritdoc IConnectorArbBot
    function dryRun() external view override returns (uint256) {
        uint256 maxFlashloanWei = getFlashloanAvailablePar().mulDown(scalingFactorUnderlying);
        TradeInfo memory trade = calcTrade(maxFlashloanWei);
        uint256 profitPar = trade.expectedProfitWei.divDown(scalingFactorUnderlying);
        return profitPar;
    }

    /// @inheritdoc IConnectorArbBot
    function dryRunVerbose() external view returns (TradeInfo memory) {
        uint256 maxFlashloanWei = getFlashloanAvailablePar().mulDown(scalingFactorUnderlying);
        TradeInfo memory trade = calcTrade(maxFlashloanWei);
        return trade;
    }

    /// @inheritdoc IConnectorArbBot
    function run() external returns (uint256) {
        return run(msg.sender);
    }

    /// @inheritdoc IConnectorArbBot
    /// @dev SOMEDAY For the case where we're constrained by the available flashloan, we trade that
    /// amount. We could instead iteratively take out flashloans in succession and do multiple trades
    /// with multiple flashloans. In principle, we'd have to recompute trade sizes after each trade (or
    /// do smarter math) b/c the fees accrue *after* the trade was made, giving additional price impact
    /// that what's felt during the trade. In practice, this likely won't matter b/c fees on these pools
    /// are currently tiny (0.05bp).
    function run(address beneficiary) public returns (uint256) {
        uint256 maxFlashloanPar = getFlashloanAvailablePar();
        uint256 maxFlashloanWei = maxFlashloanPar.mulDown(scalingFactorUnderlying);

        TradeInfo memory trade = calcTrade(maxFlashloanWei);

        if (trade.sellAmountWei == 0) {
            revert NoProfit();
        }

        FlashloanCallbackArgs memory args = FlashloanCallbackArgs({
            optype: FlashloanCallbackOpType.EXECUTE_ARBITRAGE,
            preLoanBalancePar: underlying.balanceOf(address(this)),
            sellAmountPar: trade.sellAmountWei.divDown(scalingFactorUnderlying),
            isBuyAToken: trade.isBuyAToken,
            beneficiary: beneficiary
        });

        // We just take out the whole available amount. It doesn't hurt anyone and we pay no interest.
        uint256 flashloanAmountPar = maxFlashloanPar;

        // Work around Dolomite issue (OPEN)
        uint256 flashloanConversionFactor = probeFlashloanConversionFactor();
        uint256 flashloanAmountDPar = flashloanAmountPar.mulDown(flashloanConversionFactor);

        executeFlashloan(flashloanAmountDPar, args);

        uint256 ret = flashloanCallbackReturn.profitPar;
        delete flashloanCallbackReturn;
        return ret;
    }

    function calcTrade(uint256 maxFlashloanWei) internal view returns (TradeInfo memory trade) {
        trade.maxFlashloanWei = maxFlashloanWei;

        (, uint256[] memory balancesUPar,) = balancerVault.getPoolTokens(poolId);

        uint256[] memory balancesWei = new uint256[](2);
        balancesWei[_ixAToken] = IERC4626(address(stataToken)).convertToAssets(balancesUPar[_ixAToken])
            .mulDown(scalingFactorUnderlying);
        balancesWei[1 - _ixAToken] = balancesUPar[1 - _ixAToken].mulDown(scalingFactorUnderlying);

        uint256[2] memory sqrtBounds = _pool.getSqrtParameters();
        uint256 invariant = Gyro2CLPMath._calculateInvariant(balancesWei, sqrtBounds[0], sqrtBounds[1]);
        uint256[2] memory virtualParams = [
            Gyro2CLPMath._calculateVirtualParameter0(invariant, sqrtBounds[1]),
            Gyro2CLPMath._calculateVirtualParameter1(invariant, sqrtBounds[0])
        ];

        // Current pool price of asset 0, quoted in units of asset 1, after rate-scaling.
        uint256 price = Gyro2CLPMath._calcSpotPriceAinB(
            balancesWei[0], virtualParams[0], balancesWei[1], virtualParams[1]
        );
        trade.startPriceAToken = (_ixAToken == 0 ? price : ONE.divDown(price));

        // TODO should this have a bound where we're still making profit (against rounding errors)?
        uint256 feeFactor = ONE - _pool.getSwapFeePercentage();
        uint8 ixBuy;
        if (price < feeFactor) {
            ixBuy = 0;
        } else if (price > ONE.divDown(feeFactor)) {
            ixBuy = 1;
        } else {
            // Price too close to 1. No profitable arbitrage and no trading.
            return trade;
        }
        uint8 ixSell = 1 - ixBuy;

        // Optimal arbitrage with fees formulas, see docs.
        uint256 sqrtFeeFactor = GyroPoolMath._sqrt(feeFactor, 5);
        uint256 buyAmountWei = balancesWei[ixBuy] + virtualParams[ixBuy] - invariant.divUp(sqrtFeeFactor);
        uint256 sellAmountWei = invariant.divDown(sqrtFeeFactor)
            - (balancesWei[ixSell] + virtualParams[ixSell]).divDown(feeFactor);

        // Math tells us we'll make a profit, o/w we should've exited above.
        assert(buyAmountWei > sellAmountWei);

        // For info
        trade.idealBuyAmountWei = buyAmountWei;
        trade.idealSellAmountWei = sellAmountWei;

        // Cap by flashloan amount. This wouldn't *need* to be here, but it's nice to have it so we can
        // report correct buy amounts and profit estimates in `dryRunVerbose()`.
        if (sellAmountWei > maxFlashloanWei) {
            sellAmountWei = maxFlashloanWei;
            buyAmountWei = Gyro2CLPMath._calcOutGivenIn(
                balancesWei[ixSell],
                balancesWei[ixBuy],
                sellAmountWei,
                virtualParams[ixSell],
                virtualParams[ixBuy]
            ).mulDown(feeFactor);
        }

        // Handle Aave liquidity caps.
        if (ixBuy == _ixAToken) {
            // TODO leave a gap? 1 or so?
            uint256 aaveMaxWithdrawWei = getAaveMaxWithdrawPar().mulDown(scalingFactorUnderlying);
            if (buyAmountWei > aaveMaxWithdrawWei) {
                buyAmountWei = aaveMaxWithdrawWei;
                sellAmountWei = Gyro2CLPMath._calcInGivenOut(
                    balancesWei[ixSell],
                    balancesWei[ixBuy],
                    buyAmountWei,
                    virtualParams[ixSell],
                    virtualParams[ixBuy]
                ).divDown(feeFactor);
            }
            trade.aaveLiquidityWei = aaveMaxWithdrawWei;
        } else {
            // TODO leave a gap? 1 or so?
            uint256 aaveMaxDepositWei = getAaveMaxDepositPar().mulDown(scalingFactorUnderlying);
            if (sellAmountWei > aaveMaxDepositWei) {
                sellAmountWei = aaveMaxDepositWei;
                buyAmountWei = Gyro2CLPMath._calcOutGivenIn(
                    balancesWei[ixSell],
                    balancesWei[ixBuy],
                    sellAmountWei,
                    virtualParams[ixSell],
                    virtualParams[ixBuy]
                ).mulDown(feeFactor);
            }
            trade.aaveLiquidityWei = aaveMaxDepositWei;
        }

        // We should still make a profit here.
        assert(buyAmountWei > sellAmountWei);

        trade.isBuyAToken = (ixBuy == _ixAToken);
        trade.sellAmountWei = sellAmountWei;
        trade.buyAmountWei = buyAmountWei;
        trade.expectedProfitWei = buyAmountWei - sellAmountWei;
    }

    function getAaveMaxDepositPar() internal view returns (uint256) {
        // NB the argument to maxDeposit() is ignored.
        return IERC4626(address(stataToken)).maxDeposit(address(this));
    }

    function getAaveMaxWithdrawPar() internal view returns (uint256) {
        // Took this from the StaticATokenLM implementation for `maxRedeem(address)`, and simplified.
        // This is in underlying, not shares, though.
        IERC20 aToken = IStaticATokenLM(address(stataToken)).aToken();
        return underlying.balanceOf(address(aToken));
    }

    /**
     * @notice Execute a flashloan through dolomite. Return values are returned in storage (!) in
     *         `flashloanCallbackReturn`, if any.
     * @param amountDPar Amount of flashloan of `underlying` to take out. It's *not* checked if this
     *        amount is actually available. Because of Dolomite weirdness, the actual amount taken
     *        out may be higher.
     * @param args Callback args passed to the flashloan callback.
     */
    function executeFlashloan(uint256 amountDPar, FlashloanCallbackArgs memory args) internal {
        IDolomiteMargin dolomite = IDolomiteMargin(DOLOMITE_ADDRESS);
        uint256 dMarketId = dolomite.getMarketIdByTokenAddress(address(underlying));

        // Dolomite uses "accounts". We only use one, for this contract, which can be referenced by
        // `accountId` index 0 in the actions below.
        DAccount.Info[] memory accounts = new DAccount.Info[](1);
        accounts[0] = DAccount.Info({owner: address(this), number: 0});

        // To take out a flashloan on Dolomite, we submit a sequence of predefined "actions". We
        // first withdraw, then call our callback, then deposit the loan amount again to zero out our
        // balance.
        // The callback writes info to our own storage b/c we can't pass data back through Dolomite.
        // For the meaning of these structures see:
        // https://docs.dolomite.io/developer-documentation/dolomite-margin-glossary#operations
        DActions.ActionArgs[] memory actions = new DActions.ActionArgs[](3);
        actions[0] = DActions.ActionArgs({
            actionType: DActions.ActionType.Withdraw,
            accountId: 0,
            // Withdrawals need negative sign!
            amount: DTypes.AssetAmount({
                sign: false,
                denomination: DTypes.AssetDenomination.Par,
                ref: DTypes.AssetReference.Delta,
                value: amountDPar
            }),
            primaryMarketId: dMarketId,
            // Different from the docs, this is the address that receives the tokens.
            // (see `parseWithdrawArgs()` in the code)
            otherAddress: address(this),
            // Other fields unused.
            secondaryMarketId: 0,
            otherAccountId: 0,
            data: ""
        });
        actions[1] = DActions.ActionArgs({
            actionType: DActions.ActionType.Call,
            accountId: 0,
            otherAddress: address(this),
            data: abi.encode(args),
            // Other fields unused.
            amount: DTypes.AssetAmount({
                sign: true,
                denomination: DTypes.AssetDenomination.Par,
                ref: DTypes.AssetReference.Delta,
                value: 0
            }),
            primaryMarketId: 0,
            secondaryMarketId: 0,
            otherAccountId: 0
        });
        actions[2] = DActions.ActionArgs({
            actionType: DActions.ActionType.Deposit,
            accountId: 0,
            amount: DTypes.AssetAmount({
                sign: true,
                denomination: DTypes.AssetDenomination.Par,
                ref: DTypes.AssetReference.Delta,
                value: amountDPar
            }),
            primaryMarketId: dMarketId,
            // Different from the docs, this is the address that deposits the tokens.
            // (see `parseDepositArgs()` in the code)
            otherAddress: address(this),
            // Other fields unused.
            secondaryMarketId: 0,
            otherAccountId: 0,
            data: ""
        });

        dolomite.operate(accounts, actions);
    }

    /// @notice Flashloan callback, from ICallee from Dolomite.
    function callFunction(address sender, DAccount.Info memory, bytes memory data) external {
        require(msg.sender == DOLOMITE_ADDRESS);
        require(sender == address(this));

        FlashloanCallbackArgs memory args = abi.decode(data, (FlashloanCallbackArgs));

        // Because of some weird behavior in Dolomite, we can't really know upfront how much of a loan we
        // get. We estimate it pretty well but better be safe, so this function assumes that we have no
        // idea upfront how much we'd get.
        uint256 flashloanAmountPar = underlying.balanceOf(address(this)) - args.preLoanBalancePar;
        underlying.approve(DOLOMITE_ADDRESS, flashloanAmountPar);

        if (args.optype == FlashloanCallbackOpType.PROBE) {
            flashloanCallbackReturn.profitPar = flashloanAmountPar;
            return;
        }
        assert(args.optype == FlashloanCallbackOpType.EXECUTE_ARBITRAGE);

        args.sellAmountPar =
            flashloanAmountPar >= args.sellAmountPar ? args.sellAmountPar : flashloanAmountPar;

        executeArbitrage(args.isBuyAToken, args.sellAmountPar);

        uint256 balancePostArbPar = underlying.balanceOf(address(this));
        assert(balancePostArbPar > flashloanAmountPar);
        uint256 profitPar = balancePostArbPar - flashloanAmountPar;

        bool ok = underlying.transfer(args.beneficiary, profitPar);
        require(ok, "Profit transfer failed"); // ?!?

        flashloanCallbackReturn.profitPar = profitPar;

        emit Ran(args.isBuyAToken, args.sellAmountPar, profitPar);
    }

    function executeArbitrage(bool isBuyAToken, uint256 sellAmountPar) internal {
        // Needed below, nothing deep here.
        IVault.FundManagement memory fundManagement = IVault.FundManagement({
            sender: address(this),
            fromInternalBalance: false,
            recipient: payable(address(this)),
            toInternalBalance: false
        });

        if (isBuyAToken) {
            underlying.approve(address(balancerVault), sellAmountPar);
            IVault.SingleSwap memory singleSwap = IVault.SingleSwap({
                poolId: poolId,
                kind: IVault.SwapKind.GIVEN_IN,
                assetIn: IAsset(address(underlying)),
                assetOut: IAsset(address(stataToken)),
                amount: sellAmountPar,
                userData: ""
            });
            uint256 aTokenAmountUPar =
                balancerVault.swap(singleSwap, fundManagement, 0, type(uint256).max);

            // Return value would tell me how much I got, but I'm not using this here.
            IStaticATokenLM(address(stataToken)).redeem(
                aTokenAmountUPar, address(this), address(this), true
            );
        } else {
            underlying.approve(address(stataToken), sellAmountPar);
            uint256 aTokenAmountUPar =
                IStaticATokenLM(address(stataToken)).deposit(sellAmountPar, address(this), 0, true);

            stataToken.approve(address(balancerVault), aTokenAmountUPar);
            IVault.SingleSwap memory singleSwap = IVault.SingleSwap({
                poolId: poolId,
                kind: IVault.SwapKind.GIVEN_IN,
                assetIn: IAsset(address(stataToken)),
                assetOut: IAsset(address(underlying)),
                amount: aTokenAmountUPar,
                userData: ""
            });

            // Return value would tell me how much I got, but I'm not using this here.
            balancerVault.swap(singleSwap, fundManagement, 0, type(uint256).max);
        }
    }

    function getFlashloanAvailablePar() internal view returns (uint256) {
        // We reduce by 1 for... reasons. (e.g. our estimation how much to ask for is weird)
        return underlying.balanceOf(DOLOMITE_ADDRESS) - ONE.divDown(scalingFactorUnderlying);
    }

    /**
     * @notice Work around Dolomite's unclear loan amounts by probing with a small amount and seeing how
     *         much we get. (I know this is crazy)
     * @return Factor to convert from Par amounts to "DPar" amounts, i.e., how much you need to
     *         indicate.
     */
    function probeFlashloanConversionFactor() internal returns (uint256) {
        uint256 probeAmountPar = PROBE_AMOUNT_WEI.divDown(scalingFactorUnderlying);
        FlashloanCallbackArgs memory args;
        args.optype = FlashloanCallbackOpType.PROBE;
        args.preLoanBalancePar = underlying.balanceOf(address(this));
        // other members unused.

        executeFlashloan(probeAmountPar, args);

        uint256 receivedAmountPar = flashloanCallbackReturn.profitPar;
        return probeAmountPar.divDown(receivedAmountPar);
    }

    /// @notice Scaling factor to get from Par to Wei. Scaling factor in 18 decimals.
    function calcScalingFactor(IERC20 token) internal view returns (uint256) {
        uint256 bonusDecimals = 18 - token.decimals();
        return 10 ** bonusDecimals * ONE;
    }
}
