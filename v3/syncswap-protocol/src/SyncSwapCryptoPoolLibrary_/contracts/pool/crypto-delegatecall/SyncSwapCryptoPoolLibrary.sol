// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.0;

import "../../libraries/Math.sol";
import "../../libraries/UnsafeMath.sol";
import "../../libraries/TransferHelper.sol";
import "../../libraries/ERC20Permit2.sol";
import "../../libraries/MetadataHelper.sol";
import "../../libraries/ReentrancyGuard.sol";

import "../../interfaces/IWETH.sol";
import "../../interfaces/IOwnable.sol";
import "../../interfaces/ICallback.sol";
import "../../interfaces/vault/IVault.sol";
import "../../interfaces/pool/ICryptoPool.sol";
import "../../interfaces/master/IPoolMaster.sol";
import "../../interfaces/master/IFeeRecipient.sol";
import "../../interfaces/master/IFeeManagerV2.sol";

import "../PoolFlashLoans.sol";

import "../crypto/ICryptoMath.sol";
import "../crypto/ICryptoView.sol";

error Overflow();
error InsufficientLiquidityMinted();
error Loss();

interface ICryptoPoolFactory {
    function master() external view returns (address);
    function cryptoMath() external view returns (address);
    function cryptoView() external view returns (address);
    function getDeployData() external view returns (bytes memory);
}

// Implementation contract 2 to handle delegate calls from SyncSwapCryptoPool
contract SyncSwapCryptoPoolLibrary_ is UnsafeMath, ERC20Permit2, PoolFlashLoans {

    ////////////////////////////////////////////////////////
    /////////////// CONSTANTS AND IMMUTABLES ///////////////
    address private WETH = 0xe5D7C2a44FfDDf6b295A15c148167daaAf5Cf34f; // Linea WETH
    address private vault = 0x7160570BB153Edd0Ea1775EC2b2Ac9b65F1aB61B; // Linea Vault
    address private master = 0xeE8790cE315c0871ec612f0A6EbB5471A955b3A0; // Linea V2 Pool Master

    uint24 private constant MAX_FEE = 20000;
    /////////////// CONSTANTS AND IMMUTABLES ///////////////
    ////////////////////////////////////////////////////////

    ICryptoMath private MATH;

    /// @dev Pool reserve of each pool token as of immediately after the most recent balance event.
    /// The value is used to measure growth in invariant on mints and input tokens on swaps.
    uint128 private reserve0_;
    uint128 private reserve1_;

    function reserve0() external view returns (uint _reserve0) {
        _reserve0 = reserve0_;
    }

    function reserve1() external view returns (uint _reserve1) {
        _reserve1 = reserve1_;
    }

    /// @dev Invariant of the pool as of immediately after the most recent liquidity event.
    uint public invariantLast;

    /// @dev Price scale determines the price band around which liquidity is concentrated.
    uint public priceScale;

    /// @dev Price target given by moving average.
    /// The oracle is an exponential moving average, with a periodicity determined by MA time.
    /// The aggregated prices are cached state prices (dy/dx) calculated AFTER the latest trade.
    uint public cachedPriceOracle;

    /// @dev The quote by the AMM for an infinitesimally small swap after the last trade.
    /// It is not equivalent to the last traded price, and is computed by taking
    /// the partial differential of `x` w.r.t `y`.
    uint public lastPrices;
    uint public lastPricesTimestamp;

    /// @dev Cached (fast to read) virtual price. The cached `virtualPrice` is also used internally.
    uint public virtualPrice;

    /// @dev Current pool profits.
    uint public xcpProfit;
    /// @dev Full profit at last claim of protocol fees.
    uint public xcpProfitLast;

    //uint public initialParams;
    //uint public futureParams;

    struct PoolParams {
        uint32 initialA;
        uint32 futureA;

        uint64 initialGamma;
        uint64 futureGamma;

        uint32 initialTime;
        /// @dev Time when ramping is finished.
        /// This value is 0 (default) when pool is first deployed, and only gets
        /// populated in `rampParams` when the ramping process is initiated.
        /// After ramping is finished (i.e. futureParamsTime < block.timestamp),
        /// the variable is left and not set to 0.
        uint32 futureTime;
    }
    PoolParams public poolParams;

    struct RebalancingParams {
        uint64 allowedExtraProfit;
        uint64 adjustmentStep;
        uint32 maTime;
        uint16 requiredProfit;
        uint8 checkLastProfit;
    }
    RebalancingParams public rebalancingParams;

    struct TokenAmount {
        address token;
        uint amount;
    }

    event Mint(
        address indexed sender,
        uint amount0,
        uint amount1,
        uint liquidity,
        address indexed to
    );

    event Sync(
        uint reserve0,
        uint reserve1
    );

    event RampParams(
        uint currentA,
        uint futureA,
        uint currentGamma,
        uint futureGamma,
        uint currentTime,
        uint futureTime
    );

    event StopRampParams(
        uint currentA,
        uint currentGamma,
        uint stopTime
    );

    event SetRebalancingParams(
        uint allowedExtraProfit,
        uint adjustmentStep,
        uint maTime,
        uint requiredProfit,
        uint checkLastProfit
    );

    event UpdatePoolProfit(
        uint xcpProfit,
        uint virtualPrice
    );

    event UpdateInvariant(
        uint newInvariant
    );

    event UpdatePriceScale(
        uint newPriceScale
    );

    event MintProtocolFee(
        address indexed feeRecipient,
        uint24 protocolFee,
        uint liquidity,
        uint totalSupply
    );

    event Fee(
        uint amount0,
        uint amount1
    );

    constructor() {}

    function getAssets() external view returns (address[] memory assets) {
        assets = new address[](2);
        assets[0] = ICryptoPool(address(this)).token0();
        assets[1] = ICryptoPool(address(this)).token1();
    }

    /// @dev Returns the verified sender address otherwise `address(0)`.
    function _getVerifiedSender(address _sender) private view returns (address) {
        if (_sender != msg.sender) {
            // The sender from non-forwarder is invalid.
            try IPoolMaster(master).isForwarder(msg.sender) returns (bool _isTrustedForwarder) {
                return _isTrustedForwarder ? _sender : msg.sender;
            } catch {
                return msg.sender;
            }
        }
        return msg.sender;
    }

    function _balances() private view returns (uint balance0, uint balance1) {
        balance0 = IERC20(ICryptoPool(address(this)).token0()).balanceOf(address(this));
        balance1 = IERC20(ICryptoPool(address(this)).token1()).balanceOf(address(this));
    }

    function _updateReserves(uint _balance0, uint _balance1) private {
        if (_balance0 > type(uint128).max) {
            revert Overflow();
        }
        if (_balance1 > type(uint128).max) {
            revert Overflow();
        }
        (reserve0_, reserve1_) = (uint128(_balance0), uint128(_balance1));
        emit Sync(_balance0, _balance1);
    }

    struct MintArgs {
        uint a;
        uint gamma;
        uint xp0;
        uint xp1;
        uint oldXp0;
        uint oldXp1;
        uint futureTime;
    }

    /// @dev Mints LP tokens - should be called via the router after transferring pool tokens.
    /// The router should ensure that sufficient LP tokens are minted.
    function mint(
        bytes memory _data,
        address _sender,
        address _callback,
        bytes memory _callbackData
    ) public nonReentrant returns (uint) {
        ICallback.BaseMintCallbackParams memory params;

        (params.to) = abi.decode(_data, (address));
        (params.reserve0, params.reserve1) = getReserves();
        (params.balance0, params.balance1) = _balances();

        params.amount0 = params.balance0 - params.reserve0;
        params.amount1 = params.balance1 - params.reserve1;
        require(params.amount0 != 0 || params.amount1 != 0);

        MintArgs memory it;
        (it.a, it.gamma, it.futureTime) = _params();

        // Updates reserves with new balances.
        _updateReserves(params.balance0, params.balance1);

        uint _priceScale = priceScale;
        uint _xp1PriceScale = _priceScale * ICryptoPool(address(this)).token1PrecisionMultiplier();
        it.xp0 = params.balance0 * ICryptoPool(address(this)).token0PrecisionMultiplier();
        it.xp1 = Math.mulDivUnsafeLast(params.balance1, _xp1PriceScale, 1e18);

        it.oldXp0 = unsafe_mul(params.reserve0, ICryptoPool(address(this)).token0PrecisionMultiplier()); // already safe_mul for _xp0
        it.oldXp1 = unsafe_div(unsafe_mul(params.reserve1, _xp1PriceScale), 1e18); // already safe_mul for _xp1

        ICryptoMath _MATH = MATH;
        // Recalculates the invariant if A or gamma are undergoing a ramp.
        if (it.futureTime > block.timestamp) {
            //params.oldInvariant = MATH.computeD(it.a, it.gamma, it.oldXp0, it.oldXp1);

            // Don't block deposit if ramp not success (can caused by small `oldXp`).
            try _MATH.computeD(it.a, it.gamma, it.oldXp0, it.oldXp1, 0) returns (uint _invariant) {
                params.oldInvariant = _invariant;
            } catch {
                params.oldInvariant = invariantLast;
            }
        } else {
            params.oldInvariant = invariantLast;
        }

        params.newInvariant = _MATH.computeD(it.a, it.gamma, it.xp0, it.xp1, 0);
        params.totalSupply = totalSupply;

        if (params.totalSupply != 0 && params.oldInvariant != 0) {
            params.liquidity = Math.mulDivUnsafeLast(params.totalSupply, params.newInvariant, params.oldInvariant) - params.totalSupply;
        } else {
            params.liquidity = _getXCP(params.newInvariant, _priceScale); // making initial virtual price equal to 1
        }

        if (params.liquidity == 0) {
            revert InsufficientLiquidityMinted();
        }

        // Gets swap fee for the sender.
        _sender = _getVerifiedSender(_sender);
        uint _amount1Optimal = params.reserve0 == 0 ? 0 : Math.mulDivUnsafeLast(params.amount0, params.reserve1, params.reserve0);

        // Mints liquidity for recipient.
        if (params.totalSupply != 0 && params.oldInvariant != 0) {
            params.swapFee = _getMintFee(
                _sender,
                params.amount1 < _amount1Optimal,
                it.xp0 - it.oldXp0,
                it.xp1 - it.oldXp1,
                it.xp0,
                it.xp1
            );
            uint fee = Math.mulDivUnsafeFirstLast(params.liquidity, params.swapFee, 1e5) + 1;

            params.fee0 = Math.mulDivUnsafeLast(params.amount0, params.swapFee, 1e5);
            params.fee1 = Math.mulDivUnsafeLast(params.amount1, params.swapFee, 1e5);
            emit Fee(params.fee0, params.fee1);

            params.liquidity -= fee;
            _mint(params.to, params.liquidity);

            unchecked {
                params.totalSupply += params.liquidity;
            }

            (params.newInvariant, _priceScale) = _tweakPrice(
                it.a, it.gamma, it.xp0, it.xp1, params.newInvariant, it.futureTime, 0, _MATH
            );

            // Mints protocol fees on deposit.
            params.totalSupply = _mintProtocolFee(params.totalSupply, params.newInvariant, _priceScale);
        } else {
            invariantLast = params.newInvariant;
            emit UpdateInvariant(params.newInvariant);

            virtualPrice = 1e18;
            xcpProfit = 1e18;
            xcpProfitLast = 1e18;
            emit UpdatePoolProfit(1e18, 1e18);

            // Ensures ratio between price scale and reserves.
            uint newPriceScale = Math.mulDivUnsafeFirst(1e18, it.xp0, unsafe_mul(params.balance1, ICryptoPool(address(this)).token1PrecisionMultiplier()));
            if (newPriceScale > Math.mulUnsafeFirst(2, _priceScale) || newPriceScale < Math.divUnsafeLast(_priceScale, 2)) {
                revert Loss();
            }

            if (params.liquidity < 1000) {
                revert InsufficientLiquidityMinted();
            }

            _mint(params.to, params.liquidity);
        }

        // Calls callback with data.
        if (_callback != address(0)) {
            // Fills additional values for callback params.
            params.sender = _sender;
            params.callbackData = _callbackData;

            ICallback(_callback).syncSwapBaseMintCallback(params);
        }

        emit Mint(msg.sender, params.amount0, params.amount1, params.liquidity, params.to);

        return params.liquidity;
    }

    struct GetAmountOutArgs {
        uint xp0;
        uint xp1;
        uint invariant;
        uint xp1PriceScale;
        uint y;
    }

    struct GetAmountOutInputParams {
        address sender;
        uint a;
        uint gamma;
        uint balance0;
        uint balance1;
        uint reserve0;
        uint reserve1;
        bool token0In;
        uint futureTime;
    }

    function _transferTokens(address token, address to, uint amount, uint8 withdrawMode) private {
        if (withdrawMode == 0) {
            TransferHelper.safeTransfer(token, vault, amount);
            IVault(vault).deposit(token, to);
        } else {
            if (withdrawMode == 1 && token == WETH) {
                IWETH(WETH).withdraw(amount);
                TransferHelper.safeTransferETH(to, amount);
            } else {
                TransferHelper.safeTransfer(token, to, amount);
            }
        }
    }

    function getReserves() internal view returns (uint _reserve0, uint _reserve1) {
        (_reserve0, _reserve1) = (reserve0_, reserve1_);
    }

    function getAmountOut(address tokenIn, uint amountIn, address sender) external view returns (uint amountOut) {
        amountOut = ICryptoView(ICryptoPoolFactory(ICryptoPool(address(this)).factory()).cryptoView()).getAmountOut(address(this), tokenIn, amountIn, sender, abi.encode(msg.sender));
    }

    function getAmountIn(address, uint, address) external pure returns (uint) {
        revert();
    }
    /// @notice Returns the fee charged by the pool at current state.
    /// @dev Not to be confused with the fee charged at liquidity action, since
    /// there the fee is calculated on `xp` AFTER liquidity is added or removed.
    function getSwapFee(address _sender, address _tokenIn, address _tokenOut, bytes memory data) external view returns (uint24 _swapFee) {
        (uint _reserve0, uint _reserve1) = getReserves();
        (uint xp0, uint xp1) = _xp(_reserve0, _reserve1);
        _swapFee = _getFeeWithData(_sender, _tokenIn, _tokenOut, xp0, xp1, data);
    }

    function _getFeeData(
        address _sender,
        address _tokenIn,
        address _tokenOut,
        bytes memory data
    ) private view returns (IFeeManagerV2.FeeData memory) {
        address _feeManager;
        try IPoolMaster(master).feeManager() returns (address __feeManager) {
            _feeManager = __feeManager;
        } catch {
            // leave `_feeManager` as `address(0)` and return default fee data below
        }

        if (_feeManager != address(0)) {
            try IFeeManagerV2(_feeManager).getSwapFeeData(
                address(this), _sender, _tokenIn, _tokenOut, data
            ) returns (IFeeManagerV2.FeeData memory feeData) {
                return feeData;
            } catch {
                // return default fee data, see below
            }
        }

        // return the default fee data here, if fee manager not exists or catch an error
        return IFeeManagerV2.FeeData({
            gamma: 230000000000000,
            minFee: 260, // 0.26%
            maxFee: 450  // 0.45%
        });
        //return IFeeManagerV2(_feeManager).getSwapFeeData(address(this), _sender, _tokenIn, _tokenOut, data);
    }

    function _getFee(
        address _sender,
        address _tokenIn,
        address _tokenOut,
        uint xp0,
        uint xp1
    ) internal view returns (uint24 _fee) {
        _fee = _getFeeWithData(_sender, _tokenIn, _tokenOut, xp0, xp1, abi.encode(msg.sender));
    }

    function _getFeeWithData(
        address _sender,
        address _tokenIn,
        address _tokenOut,
        uint xp0,
        uint xp1,
        bytes memory data
    ) internal view returns (uint24 _fee) {
        IFeeManagerV2.FeeData memory feeData = _getFeeData(_sender, _tokenIn, _tokenOut, data);
        uint f = xp0 + xp1;
        f = unsafe_mul(feeData.gamma, 1e18) / (
            unsafe_add(feeData.gamma, 1e18) - unsafe_div(4e18 * xp0 / f * xp1, f)
        );
        _fee = uint24(unsafe_div(
            feeData.minFee * f + feeData.maxFee * (1e18 - f),
            1e18
        ));
        if (_fee > MAX_FEE) {
            _fee = MAX_FEE;
        }
    }

    function getProtocolFee() public view returns (uint24) {
        try IPoolMaster(master).getProtocolFee(address(this)) returns (uint24 _protocolFee) {
            return _protocolFee;
        } catch {
            return 50000; // 50%
        }
    }

    function _updateInvariantWithBalances(uint balance0, uint balance1) private returns (uint newInvariant) {
        (uint a, uint gamma,) = _params();
        (uint xp0, uint xp1) = _xp(balance0, balance1);
        newInvariant = MATH.computeD(a, gamma, xp0, xp1, 0);
        invariantLast = newInvariant;
        emit UpdateInvariant(newInvariant);
    }

    function _getFeeRecipient() internal override view returns (address) {
        try IPoolMaster(master).getFeeRecipient() returns (address _feeRecipient) {
            return _feeRecipient;
        } catch {
            return address(0);
        }
    }

    struct MintProtocolFeeArgs {
        uint24 protocolFee;
        //uint16 requiredProfit;
        uint8 checkLastProfit;
        uint fees;
    }

    function _mintProtocolFee(uint _totalSupply, uint _invariant, uint _priceScale) private returns (uint) {
        // Do not claim admin fees if:
        // 1. insufficient profits accrued since last claim, and
        // 2. there are less than 10**18 (or 1 unit of) lp tokens, else it can lead
        //    to manipulated virtual prices.
        if (_totalSupply <= 1e18) {
            return _totalSupply;
        }

        uint _xcpProfit = xcpProfit; // Current pool profits.
        uint _xcpProfitLast = xcpProfitLast; // Profits at previous claim.
        if (_xcpProfit <= _xcpProfitLast) {
            return _totalSupply;
        }

        // Disable fee claiming if pool parameters are being ramped.
        if (poolParams.futureTime > block.timestamp) {
            return _totalSupply;
        }

        // Admin fees are calculated as follows.
        // 1. Calculate accrued profit since last claim. `_xcpProfit`
        //    is the current profits. `_xcpProfitLast` is the profits
        //    at the previous claim.
        // 2. Take out admin's share, which is `_protocolFee`.
        // 3. Since half of the profits go to rebalancing the pool, we
        //    are left with half; so divide by 2.

        MintProtocolFeeArgs memory it;

        it.protocolFee = getProtocolFee();
        //it.requiredProfit = rebalancingParams.requiredProfit;
        it.checkLastProfit = rebalancingParams.checkLastProfit;

        it.fees = unsafe_div(
            unsafe_sub(_xcpProfit, _xcpProfitLast) * it.protocolFee,
            /*2e5*/ // Note - unbalancing fees
            1e5
        );

        if (it.fees != 0) {
            address _feeRecipient = _getFeeRecipient();

            if (_feeRecipient != address(0)) {
                uint _virtualPrice = virtualPrice;
                uint _frac = Math.mulDivUnsafeFirst(1e18, _virtualPrice, _virtualPrice - it.fees) - 1e18;
                uint _liquidity = Math.mulDivUnsafeLast(_totalSupply, _frac, 1e18);

                if (_liquidity != 0) {
                    uint newTotalSupply = unsafe_add(_totalSupply, _liquidity);
                    uint newVirtualPrice = Math.mulDivUnsafeFirst(1e18, _getXCP(_invariant, _priceScale), newTotalSupply);

                    // Do not claim fees if doing so causes virtual price to drop below 10**18.
                    if (newVirtualPrice < 1e18) {
                        return _totalSupply;
                    }

                    // Claim admin fees by minting admin's share
                    // of the pool in LP tokens.
                    _mint(_feeRecipient, _liquidity);

                    // Notifies the fee recipient.
                    try
                    IFeeRecipient(_feeRecipient).notifyFees(3, address(this), _liquidity, it.protocolFee, abi.encode(2))
                    {} catch {}

                    /*
                    _xcpProfit -= unsafe_mul(
                        fees,
                        //2 // Note - unbalancing fees
                        1e4 / (1e4 - _rebalancingParams.requiredProfit)
                    ); // `_xcpProfit` is up-to-date.
                    */
                    _xcpProfit -= it.fees; // `_xcpProfit` is up-to-date.
                    xcpProfit = _xcpProfit;
                    //xcpProfitLast = _xcpProfit;
                    emit UpdatePoolProfit(_xcpProfit, newVirtualPrice);

                    if (it.checkLastProfit != 0 || _xcpProfit > _xcpProfitLast) {
                        xcpProfitLast = _xcpProfit;
                    }

                    // Update `virtualPrice` following admin fee claim.
                    // In this instance we do not check if current virtual price is greater
                    // than old virtual price, since the claim process can result
                    // in a small decrease in pool's value.
                    virtualPrice = newVirtualPrice;

                    emit MintProtocolFee(_feeRecipient, it.protocolFee, _liquidity, newTotalSupply);

                    return newTotalSupply;
                }
            }
        }

        return _totalSupply;
    }

    function _xp(uint _reserve0, uint _reserve1) private view returns (uint xp0, uint xp1) {
        xp0 = _reserve0 * ICryptoPool(address(this)).token0PrecisionMultiplier();
        xp1 = Math.mulDivUnsafeFirstLast(ICryptoPool(address(this)).token1PrecisionMultiplier(), priceScale * _reserve1, 1e18);
    }
    function getParams() external view returns (uint a, uint gamma, uint futureTime) {
        (a, gamma, futureTime) = _params();
    }

    function _params() private view returns (uint a, uint gamma, uint futureTime) {
        PoolParams memory params = poolParams;

        gamma = params.futureGamma;
        a = params.futureA;
        futureTime = params.futureTime;

        if (futureTime > block.timestamp) {
            uint duration = futureTime - params.initialTime;
            uint elapsed = block.timestamp - params.initialTime;
            uint remaining = duration - elapsed;

            a = (params.initialA * remaining + a * elapsed) / duration;
            gamma = (params.initialGamma * remaining + gamma * elapsed) / duration;
        }
    }

    function _getXCP(uint _invariant, uint _priceScale) private pure returns (uint) {
        return Math.geometricMean(
            unsafe_div(_invariant, 2),
            Math.mulDivUnsafeFirst(1e18, _invariant, Math.mulUnsafeFirst(2, _priceScale))
        );
    }

    function _getMintFee(
        address _sender,
        bool _swap0For1,
        uint amount0,
        uint amount1,
        uint xp0,
        uint xp1
    ) internal view returns (uint24) {
        uint _fee;
        if (_swap0For1) {
            _fee = unsafe_div(_getFee(_sender, ICryptoPool(address(this)).token0(), ICryptoPool(address(this)).token1(), xp0, xp1), 2);
        } else {
            _fee = unsafe_div(_getFee(_sender, ICryptoPool(address(this)).token1(), ICryptoPool(address(this)).token0(), xp0, xp1), 2);
        }

        uint sum = amount0 + amount1;
        uint avg = unsafe_div(sum, 2);

        uint sdiff;
        if (amount0 > avg) {
            sdiff = unsafe_sub(amount0, avg);
        } else {
            sdiff = unsafe_sub(avg, amount0);
        }
        if (amount1 > avg) {
            sdiff += unsafe_sub(amount1, avg);
        } else {
            sdiff += unsafe_sub(avg, amount1);
        }

        return uint24(_fee * sdiff / sum) + 1;
    }

    struct TweakPriceArgs {
        uint priceScale;
        uint priceOracle;
        uint lastPrices;
        uint lastPricesTimestamp;
        uint totalSupply;
        uint xcpProfit;
        uint virtualPrice;
        uint oldVirtualPrice;
        uint newInvariant;
        uint norm;
    }

    /// @notice Tweaks `priceOracle`, `lastPrices` and conditionally adjusts `priceScale`.
    /// This is called whenever there is an unbalanced liquidity operation: swap, mint, or burnSingle.
    /// @dev Contains main liquidity rebalancing logic, by tweaking `priceScale`.
    function _tweakPrice(
        uint a,
        uint gamma,
        uint xp0,
        uint xp1,
        uint invariantUnadjusted,
        uint _futureTime,
        uint _k0_prev,
        ICryptoMath _MATH
    ) private returns (uint, uint) { // returns (newInvariant, newPriceScale)
        TweakPriceArgs memory it;

        // ---------------------------- Read storage ------------------------------

        RebalancingParams memory _rebalancingParams = rebalancingParams;

        it.priceOracle = cachedPriceOracle;
        it.priceScale = priceScale;
        it.lastPricesTimestamp = lastPricesTimestamp;

        it.totalSupply = totalSupply;
        it.oldVirtualPrice = virtualPrice;

        // ----------------------- Update MA if needed ----------------------------

        if (it.lastPricesTimestamp < block.timestamp) {
            // The moving average price oracle is calculated using the `lastPrices`
            // of the trade at the previous block, and the price oracle logged
            // before that trade. This can happen only once per block.

            // ------------------ Calculate moving average params -----------------

            // ---------------------------------------------- Update price oracles.

            // ----------------- We cap state price that goes into the EMA with
            //                                                  2 x priceScale.

            it.priceOracle = _MATH.getPriceOracle(
                it.lastPricesTimestamp,
                _rebalancingParams.maTime,
                lastPrices,
                it.priceScale,
                it.priceOracle
            );

            cachedPriceOracle = it.priceOracle;
            lastPricesTimestamp = block.timestamp;
        }

        // `priceOracle` is used further on to calculate its vector
        // distance from `priceScale`. This distance is used to calculate
        // the amount of adjustment to be done to the `priceScale`.

        //  ---------------- If `invariantUnadjusted` is 0, calculate it -----------------

        if (invariantUnadjusted == 0) {
            invariantUnadjusted = _MATH.computeD(a, gamma, xp0, xp1, _k0_prev);
        }

        // ----------------- Calculate and update `lastPrices` --------------------

        lastPrices = _MATH.getLastPrices(
            a, gamma, xp0, xp1, invariantUnadjusted, it.priceScale
        );

        // ------------------------- Update `xcpProfit` ---------------------------

        uint _xp0;
        uint _xp1;
        if (it.oldVirtualPrice != 0) {
            _xp0 = Math.divUnsafeLast(invariantUnadjusted, 2);
            _xp1 = Math.mulDivUnsafeFirst(1e18, invariantUnadjusted, Math.mulUnsafeFirst(2, it.priceScale));

            it.virtualPrice = Math.mulDivUnsafeFirst(1e18, Math.geometricMean(_xp0, _xp1), it.totalSupply);
            it.xcpProfit = Math.divUnsafeLast(xcpProfit * it.virtualPrice, it.oldVirtualPrice);

            // If A and gamma are NOT undergoing ramps (t < block.timestamp),
            // ensure new `virtualPrice` is not less than `oldVirtualPrice`,
            // else the pool suffers a loss.
            if (_futureTime < block.timestamp) {
                if (it.virtualPrice <= it.oldVirtualPrice) {
                    revert Loss();
                }
            }
        } else {
            it.xcpProfit = 1e18;
            it.virtualPrice = 1e18;
        }

        xcpProfit = it.xcpProfit;

        // ------------ Rebalance liquidity if there's enough profits to adjust it:
        //if (Math.mulUnsafeFirst(2, it.virtualPrice) - 1e18 > it.xcpProfit + unsafe_mul(_rebalancingParams.allowedExtraProfit, 2)) {
        if (it.virtualPrice > 1e18 && it.xcpProfit > 1e18 && Math.mulUnsafeFirst(1e4, it.virtualPrice - 1e18) > Math.mulUnsafeFirst(_rebalancingParams.requiredProfit, it.xcpProfit + _rebalancingParams.allowedExtraProfit - 1e18)) {

            // ------------------- Get adjustment step ----------------------------

            // Calculate the vector distance between `priceScale` and `priceOracle`.
            it.norm = Math.mulDivUnsafeFirst(1e18, it.priceOracle, it.priceScale);
            if (it.norm > 1e18) {
                it.norm = unsafe_sub(it.norm, 1e18);
            } else {
                it.norm = unsafe_sub(1e18, it.norm);
            }

            // Reuse `_futureTime` as `_adjustmentStep` here to avoid stake too deep errors.
            _futureTime = Math.max(_rebalancingParams.adjustmentStep, Math.divUnsafeLast(it.norm, 5));

            // We only adjust prices if the vector distance between `priceOracle`
            // and `priceScale` is large enough.
            // This check ensures that no rebalancing occurs if the distance is low
            // i.e. the pool prices are pegged to the oracle prices.
            if (it.norm > _futureTime) {

                // ------------------------------------- Calculate new price scale.

                // Reuse `_futureTime` as `newPriceScale` to avoid stake too deep errors.
                _futureTime = Math.divUnsafeLast(
                    it.priceScale * unsafe_sub(it.norm, _futureTime) + (_futureTime * it.priceOracle),
                    it.norm
                ); // <- norm is non-zero and gt adjustment_step; unsafe = safe

                // --------------- Update stale xp (using price_scale) with p_new.

                _xp0 = xp0;
                _xp1 = Math.mulDivUnsafeLast(xp1, _futureTime, it.priceScale);
                // unsafe_div because we did safediv before -----^

                // ------------------------------------------ Update D with new xp.

                // Calculate "extended constant product" invariant xCP and virtual price.
                it.newInvariant = _MATH.computeD(a, gamma, _xp0, _xp1, 0);

                // ------------------------------------- Convert xp to real prices.
                _xp0 = Math.divUnsafeLast(it.newInvariant, 2);
                _xp1 = Math.mulDivUnsafeFirst(
                    1e18, it.newInvariant, Math.mulUnsafeFirst(2, _futureTime)
                );

                // ---------- Calculate new virtual price using new xp and D.
                //            Reuse `oldVirtualPrice` (but it has new virtual price).
                it.oldVirtualPrice = Math.mulDivUnsafeFirst(
                    1e18, Math.geometricMean(_xp0, _xp1), it.totalSupply
                );

                // ---------------------------- Proceed if we've got enough profit.
                if (it.oldVirtualPrice > 1e18) {
                    //if (Math.mulUnsafeFirst(2, it.oldVirtualPrice) - 1e18 > it.xcpProfit) { // Note - rebalancing fees
                    if (Math.mulUnsafeFirst(1e4, it.oldVirtualPrice - 1e18) > Math.mulUnsafeFirst(_rebalancingParams.requiredProfit, it.xcpProfit - 1e18)) {
                        priceScale = _futureTime; // `newPriceScale`
                        emit UpdatePriceScale(_futureTime);

                        invariantLast = it.newInvariant;
                        emit UpdateInvariant(it.newInvariant);

                        virtualPrice = it.oldVirtualPrice;
                        emit UpdatePoolProfit(it.xcpProfit, it.oldVirtualPrice);

                        return (it.newInvariant, _futureTime);
                    }
                }
            }
        }

        // --------- `priceScale` was not adjusted. Update the profit counter and D.

        // If we are here, the `priceScale` adjustment did not happen,
        // Still need to update the profit counter and D.
        invariantLast = invariantUnadjusted;
        emit UpdateInvariant(invariantUnadjusted);

        virtualPrice = it.virtualPrice;
        emit UpdatePoolProfit(it.xcpProfit, it.virtualPrice);

        return (invariantUnadjusted, it.priceScale);
    }

    modifier onlyGovernance() {
        require(IOwnable(master).owner() == msg.sender);
        _;
    }

    function rampParams(uint32 _futureA, uint64 _futureGamma, uint32 _futureTime) external onlyGovernance {
        require(_futureA >= 4000 && _futureA <= 4e9);
        require(_futureGamma >= 1e10 && _futureGamma <= 2e16);
        require(_futureTime >= block.timestamp + 600);

        (uint a, uint gamma,) = _params();
        poolParams = PoolParams({
            initialA: uint32(a),
            futureA: _futureA,

            initialGamma: uint64(gamma),
            futureGamma: _futureGamma,

            initialTime: uint32(block.timestamp),
            futureTime: _futureTime
        });

        emit RampParams(a, _futureA, gamma, _futureGamma, block.timestamp, _futureTime);
    }

    function stopRampParams() external onlyGovernance {
        (uint a, uint gamma,) = _params();

        poolParams = PoolParams({
            initialA: uint32(a),
            futureA: uint32(a),

            initialGamma: uint64(gamma),
            futureGamma: uint64(gamma),

            initialTime: uint32(block.timestamp),
            futureTime: uint32(block.timestamp)
        });

        emit StopRampParams(a, gamma, block.timestamp);
    }

    function setRebalancingParams(uint64 _allowedExtraProfit, uint64 _adjustmentStep, uint32 _maTime, uint16 _requiredProfit, uint8 _checkLastProfit) external onlyGovernance {
        require(_allowedExtraProfit <= 1e18 && _adjustmentStep <= 1e18 && _maTime > 86 && _maTime < 872542 && _requiredProfit != 0 && _requiredProfit <= 1e4);
        rebalancingParams = RebalancingParams(_allowedExtraProfit, _adjustmentStep, _maTime, _requiredProfit, _checkLastProfit);
        emit SetRebalancingParams(_allowedExtraProfit, _adjustmentStep, _maTime, _requiredProfit, _checkLastProfit);
    }

    function claimProtocolFee() external nonReentrant onlyGovernance {
        (uint balance0, uint balance1) = _balances();
        _updateReserves(balance0, balance1);

        // Recalculates invariant as reserves updated.
        uint newInvariant = _updateInvariantWithBalances(balance0, balance1);

        uint _totalSupply = totalSupply;
        if (_totalSupply <= 1e18) {
            revert Loss();
        }

        _mintProtocolFee(_totalSupply, newInvariant, priceScale);
    }

    function updateCryptoMath() external onlyGovernance {
        MATH = ICryptoMath(ICryptoPoolFactory(ICryptoPool(address(this)).factory()).cryptoMath());
    }

    // force reserves to match balances
    function sync() external nonReentrant onlyGovernance {
        (uint balance0, uint balance1) = _balances();
        _updateReserves(balance0, balance1);

        // Recalculates invariant as reserves updated.
        _updateInvariantWithBalances(balance0, balance1);
    }

    // force balances to match reserves
    function skim(address to) external nonReentrant onlyGovernance {
        TransferHelper.safeTransfer(
            ICryptoPool(address(this)).token0(),
            to,
            IERC20(ICryptoPool(address(this)).token0()).balanceOf(address(this)) - reserve0_
        );
        TransferHelper.safeTransfer(
            ICryptoPool(address(this)).token1(),
            to,
            IERC20(ICryptoPool(address(this)).token1()).balanceOf(address(this)) - reserve1_
        );
    }
}