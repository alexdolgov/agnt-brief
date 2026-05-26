// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import { DustRefunder } from "@radiant-v2-core/radiant/zap/helpers/DustRefunder.sol";
import { IERC20, IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import { IMultiFeeDistribution } from "@radiant-v2-core/interfaces/IMultiFeeDistribution.sol";
import { ILendingPool, DataTypes } from "@radiant-v2-core/interfaces/ILendingPool.sol";
import { IPoolHelper } from "@radiant-v2-core/interfaces/IPoolHelper.sol";
import { IPriceProvider } from "@radiant-v2-core/interfaces/IPriceProvider.sol";
import { IWETH } from "@radiant-v2-core/interfaces/IWETH.sol";
import { IPriceOracle } from "@radiant-v2-core/interfaces/IPriceOracle.sol";
import { TransferHelper } from "@radiant-v2-core/radiant/libraries/TransferHelper.sol";
import { IUniswapRouter } from "@radiant-v2-core/interfaces/uniswap/IUniswapRouter.sol";
import { ISwapRouter } from "@radiant-v2-core/interfaces/uniswap/ISwapRouter.sol";
import { IQuoter } from "@radiant-v2-core/interfaces/uniswap/IQuoter.sol";
import { RizRegistry } from "./RizRegistry.sol";
import { IOracleRouter } from "./interfaces/IOracleRouter.sol";
import { IRizLendingPool } from "./interfaces/Riz/IRizLendingPool.sol";
import { Errors } from "./libraries/Errors.sol";

/// @title RizLockZap contract
/// @author Radiant
/// @custom:security-contact security@radiant.capital
contract RizLockZap is Initializable, OwnableUpgradeable, PausableUpgradeable, DustRefunder {
    using SafeERC20 for IERC20;

    /// @notice The maximum amount of slippage that a user can set for the execution of Zaps
    /// @dev If the slippage limit of the LockZap contract is lower then that of the Compounder, transactions might fail
    /// unexpectedly.
    ///      Therefore ensure that this slippage limit is equal to that of the Compounder contract.
    uint256 public constant MAX_SLIPPAGE = 9500; // 5%

    /// @notice RATIO Divisor
    uint256 public constant RATIO_DIVISOR = 10_000;

    /// @notice Base Percent
    uint256 public constant BASE_PERCENT = 100;

    /// @notice Borrow rate mode
    uint256 public constant VARIABLE_INTEREST_RATE_MODE = 2;

    /// @notice We don't utilize any specific referral code for borrows perfomed via zaps
    uint16 public constant REFERRAL_CODE = 0;

    /// @notice The minimum length of a Uniswap V3 route
    uint256 public constant MIN_UNIV3_ROUTE_LENGTH = 43;

    /// @notice The offset of the next address in a Uniswap V3 route
    uint256 public constant UNIV3_NEXT_OFFSET = 23;

    // No public getter for _ADDR_SIZE to reduce size
    uint256 internal constant _ADDR_SIZE = 20;

    /// @notice Wrapped ETH
    IWETH public weth;

    /// @notice RDNT token address
    address public rdntAddr;

    /// @notice Multi Fee distribution contract
    IMultiFeeDistribution public mfd;

    /// @notice Lending Pool contract
    ILendingPool public lendingPool;

    /// @notice Pool helper contract used for RDNT-WETH swaps
    IPoolHelper public poolHelper;

    /// @notice Price provider contract
    IPriceProvider public priceProvider;

    /// @notice Oracle Router contract
    IOracleRouter public oracleRouter;

    /// @notice parameter to set the ratio of ETH in the LP token, can be 2000 for an 80/20 bal lp
    uint256 public ethLPRatio;

    /// @notice AMM router used for all non RDNT-WETH swaps on Arbitrum
    address public uniRouter;

    /// @notice Swap uniswap v3 routes from token0 to token1
    mapping(address => mapping(address => bytes)) internal _uniV3Route;

    IQuoter public uniV3Quoter;

    /// @notice Riz Registry contract. New variable added to the end to avoid storage slot collision
    RizRegistry public rizRegistry;

    /// @notice Emitted when zap is done
    event Zapped(
        bool _borrow,
        uint256 _ethAmt,
        uint256 _rdntAmt,
        address indexed _from,
        address indexed _onBehalf,
        uint256 _lockTypeIndex
    );

    event PriceProviderUpdated(address indexed _provider);

    event MfdUpdated(address indexed _mfdAddr);

    event PoolHelperUpdated(address indexed _poolHelper);

    /// @notice Emitted when ethLPRatio is updated
    event EthLPRatioUpdated(uint256 _ethLPRatio);

    event UniRouterUpdated(address indexed _uniRouter);

    event RoutesUniV3Updated(address indexed _tokenIn, address indexed _tokenOut, bytes _route);

    event UniV3QuoterUpdated(address indexed _uniV3Quoter);

    event OracleRouterUpdated(address indexed _oracleRouter);

    struct ZapParams {
        bool borrow;
        address lendingPool;
        address asset;
        uint256 assetAmt;
        uint256 rdntAmt;
        address from;
        address onBehalf;
        uint256 lockTypeIndex;
        address refundAddress;
        uint256 slippage;
    }

    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializer
     * @param _rndtPoolHelper Pool helper address used for RDNT-WETH swaps
     * @param _uniRouter UniV2 router address used for all non RDNT-WETH swaps
     * @param _lendingPool Lending pool
     * @param _rizRegistry Riz registry address
     * @param _weth weth address
     * @param _rdntAddr RDNT token address
     * @param _ethLPRatio ratio of ETH in the LP token, can be 2000 for an 80/20 bal lp
     * @param _oracleRouter Oracle router address
     */
    function initialize(
        IPoolHelper _rndtPoolHelper,
        address _uniRouter,
        ILendingPool _lendingPool,
        address _rizRegistry,
        IWETH _weth,
        address _rdntAddr,
        uint256 _ethLPRatio,
        IOracleRouter _oracleRouter
    ) external initializer {
        if (address(_rndtPoolHelper) == address(0)) revert Errors.AddressZero();
        if (address(_uniRouter) == address(0)) revert Errors.AddressZero();
        if (address(_lendingPool) == address(0)) revert Errors.AddressZero();
        if (address(_rizRegistry) == address(0)) revert Errors.AddressZero();
        if (address(_weth) == address(0)) revert Errors.AddressZero();
        if (_rdntAddr == address(0)) revert Errors.AddressZero();
        if (_ethLPRatio == 0 || _ethLPRatio >= RATIO_DIVISOR) revert Errors.InvalidRatio();
        if (address(_oracleRouter) == address(0)) revert Errors.AddressZero();

        __Ownable_init();
        __Pausable_init();

        lendingPool = _lendingPool;
        poolHelper = _rndtPoolHelper;
        uniRouter = _uniRouter;
        weth = _weth;
        rdntAddr = _rdntAddr;
        ethLPRatio = _ethLPRatio;
        oracleRouter = _oracleRouter;
        rizRegistry = RizRegistry(_rizRegistry);
    }

    receive() external payable { }

    /**
     * @notice Pause zapping operation.
     */
    function pause() external onlyOwner {
        _pause();
    }

    /**
     * @notice Unpause zapping operation.
     */
    function unpause() external onlyOwner {
        _unpause();
    }

    /**
     * @notice Allows owner to recover ETH locked in this contract.
     * @param to ETH receiver
     * @param value ETH amount
     */
    function withdrawLockedETH(address to, uint256 value) external onlyOwner {
        TransferHelper.safeTransferETH(to, value);
    }

    /**
     * @notice Set the ratio of ETH in the LP token
     * @dev The ratio typically doesn't change, but this function is provided for flexibility
     * when using with UniswapV3 in where the ratio can be different.
     * @param _ethLPRatio ratio of ETH in the LP token, (example: can be 2000 for an 80/20 lp)
     */
    function setEthLPRatio(uint256 _ethLPRatio) external onlyOwner {
        if (_ethLPRatio == 0 || _ethLPRatio >= RATIO_DIVISOR) revert Errors.InvalidRatio();
        ethLPRatio = _ethLPRatio;
        emit EthLPRatioUpdated(_ethLPRatio);
    }

    /**
     * @notice Set Price Provider.
     * @param _provider Price provider contract address.
     */
    function setPriceProvider(address _provider) external onlyOwner {
        if (_provider == address(0)) revert Errors.AddressZero();
        priceProvider = IPriceProvider(_provider);
        emit PriceProviderUpdated(_provider);
    }

    /// @notice Set Oracle Router.
    /// @param _oracleRouter Oracle router contract address.
    function setOracleRouter(address _oracleRouter) external onlyOwner {
        if (_oracleRouter == address(0)) revert Errors.AddressZero();
        if (oracleRouter != IOracleRouter(_oracleRouter)) {
            oracleRouter = IOracleRouter(_oracleRouter);
            emit OracleRouterUpdated(_oracleRouter);
        }
    }

    /**
     * @notice Set Multi fee distribution contract.
     * @param _mfdAddr New contract address.
     */
    function setMfd(address _mfdAddr) external onlyOwner {
        if (_mfdAddr == address(0)) revert Errors.AddressZero();
        mfd = IMultiFeeDistribution(_mfdAddr);
        emit MfdUpdated(_mfdAddr);
    }

    /**
     * @notice Set Pool Helper contract used fror WETH-RDNT swaps
     * @param _poolHelper New PoolHelper contract address.
     */
    function setPoolHelper(address _poolHelper) external onlyOwner {
        if (_poolHelper == address(0)) revert Errors.AddressZero();
        poolHelper = IPoolHelper(_poolHelper);
        emit PoolHelperUpdated(_poolHelper);
    }

    /**
     * @notice Set swap router
     * @param _uniRouter Address of swap router
     */
    function setUniRouter(address _uniRouter) external onlyOwner {
        if (_uniRouter == address(0)) revert Errors.AddressZero();
        if (uniRouter != _uniRouter) {
            uniRouter = _uniRouter;
            emit UniRouterUpdated(_uniRouter);
        }
    }

    /**
     * @notice Set UniswapV3 Quoter
     * @param _uniV3Quoter address of the UniswapV3 Quoter
     * @dev Suggest to use static quoter by eden network on production
     * https://github.com/eden-network/uniswap-v3-static-quoter
     */
    function setUniV3Quoter(address _uniV3Quoter) external onlyOwner {
        if (_uniV3Quoter == address(0)) revert Errors.AddressZero();
        uniV3Quoter = IQuoter(_uniV3Quoter);
        emit UniV3QuoterUpdated(_uniV3Quoter);
    }

    /**
     * @notice Set UniswapV3 swap routes
     * @param _tokenIn Token to swap
     * @param _tokenOut Token to receive
     * @param _route Swap route for token
     */
    function setUniV3Route(address _tokenIn, address _tokenOut, bytes memory _route) external onlyOwner {
        if (_tokenIn == address(0) || _tokenOut == address(0)) revert Errors.AddressZero();
        // 43 is the minimum length of a UniswapV3 route with encodePacked.
        // (20 bytes) _tokenIn + (3 bytes) poolFee as uint24 + (20 bytes) _tokenOut
        uint256 routeLength = _route.length;
        if (routeLength < MIN_UNIV3_ROUTE_LENGTH && (routeLength - _ADDR_SIZE) % UNIV3_NEXT_OFFSET != 0) {
            revert Errors.WrongRoute(_tokenIn, _tokenOut);
        }
        _uniV3Route[_tokenIn][_tokenOut] = _route;
        emit RoutesUniV3Updated(_tokenIn, _tokenOut, _route);
    }

    /**
     * @notice Returns the stored swap route for UniswapV2 for the given tokens
     */
    function getUniV3Route(address _tokenIn, address _tokenOut) external view returns (bytes memory) {
        return _uniV3Route[_tokenIn][_tokenOut];
    }

    /**
     * @notice Get Variable debt token address
     * @param _asset underlying.
     */
    function getVDebtToken(address _asset) external view returns (address) {
        DataTypes.ReserveData memory reserveData = lendingPool.getReserveData(_asset);
        return reserveData.variableDebtTokenAddress;
    }

    /**
     * @notice Calculate amount of specified `token` to be paired with amount of `_rdntIn`.
     * DO NOT CALL THIS FUNCTION FROM AN EXTERNAL CONTRACT; REFER TO THE FOLLOWING LINK FOR MORE INFORMATION:
     * https://github.com/Uniswap/v3-periphery/blob/464a8a49611272f7349c970e0fadb7ec1d3c1086/contracts/lens/Quoter.sol#L18
     *
     * @param _token address of the token that would be received
     * @param _rdntIn of RDNT to be sold
     * @return amount of _token received
     *
     * @dev This function is mainly used to calculate how much of the specified token is needed to match the provided
     * RDNT amount when providing liquidity to an AMM.
     */
    function quoteFromToken(address _token, uint256 _rdntIn) public returns (uint256) {
        address weth_ = address(weth);
        if (_token != weth_) {
            uint256 wethAmount = poolHelper.quoteFromToken(_rdntIn);
            return _quoteUniswap(_token, weth_, wethAmount);
        }
        return poolHelper.quoteFromToken(_rdntIn);
    }

    /**
     * @notice Zap tokens to stake LP
     * @param _borrow option to borrow ETH
     * @param _asset to be used for zapping
     * @param _assetAmt amount of weth.
     * @param _rdntAmt amount of RDNT.
     * @param _lockTypeIndex lock length index.
     * @param _slippage maximum amount of slippage allowed for any occurring trades
     * @return LP amount
     */
    function zap(
        bool _borrow,
        address _asset,
        uint256 _assetAmt,
        uint256 _rdntAmt,
        uint256 _lockTypeIndex,
        uint256 _slippage
    ) public payable whenNotPaused returns (uint256) {
        ZapParams memory params = ZapParams({
            borrow: _borrow,
            lendingPool: address(lendingPool),
            asset: _asset,
            assetAmt: _assetAmt,
            rdntAmt: _rdntAmt,
            from: msg.sender,
            onBehalf: msg.sender,
            lockTypeIndex: _lockTypeIndex,
            refundAddress: msg.sender,
            slippage: _slippage
        });
        return _zap(params);
    }

    /**
     * @notice Zap tokens to stake LP
     * @param _borrow option to borrow ETH
     * @param _lendingPool lending pool address to be used for zapping. Use only Riz lending pools
     * @param _asset to be used for zapping
     * @param _assetAmt amount of weth.
     * @param _rdntAmt amount of RDNT.
     * @param _lockTypeIndex lock length index.
     * @param _slippage maximum amount of slippage allowed for any occurring trades
     * @return LP amount
     */
    function rizZap(
        bool _borrow,
        address _lendingPool,
        address _asset,
        uint256 _assetAmt,
        uint256 _rdntAmt,
        uint256 _lockTypeIndex,
        uint256 _slippage
    ) public payable whenNotPaused returns (uint256) {
        if (_lendingPool == address(0)) revert Errors.AddressZero();
        if (_lendingPool == address(lendingPool)) revert Errors.CannotRizZap();
        // Make sure that the provided lending pool is a Riz lending pool
        if (!rizRegistry.isLendingPoolValid(_lendingPool)) revert Errors.InvalidLendingPool();
        ZapParams memory params = ZapParams({
            borrow: _borrow,
            lendingPool: _lendingPool,
            asset: _asset,
            assetAmt: _assetAmt,
            rdntAmt: _rdntAmt,
            from: msg.sender,
            onBehalf: msg.sender,
            lockTypeIndex: _lockTypeIndex,
            refundAddress: msg.sender,
            slippage: _slippage
        });
        return _zap(params);
    }

    /**
     * @notice Zap tokens to stake LP
     * @dev It will use default lock index
     * @param _borrow option to borrow ETH
     * @param _asset to be used for zapping
     * @param _assetAmt amount of weth.
     * @param _rdntAmt amount of RDNT.
     * @param _onBehalf user address to be zapped.
     * @param _slippage maximum amount of slippage allowed for any occurring trades
     * @return LP amount
     */
    function zapOnBehalf(
        bool _borrow,
        address _asset,
        uint256 _assetAmt,
        uint256 _rdntAmt,
        address _onBehalf,
        uint256 _slippage
    ) public payable whenNotPaused returns (uint256) {
        uint256 duration = mfd.defaultLockIndex(_onBehalf);
        ZapParams memory params = ZapParams({
            borrow: _borrow,
            lendingPool: address(lendingPool),
            asset: _asset,
            assetAmt: _assetAmt,
            rdntAmt: _rdntAmt,
            from: msg.sender,
            onBehalf: _onBehalf,
            lockTypeIndex: duration,
            refundAddress: msg.sender,
            slippage: _slippage
        });
        return _zap(params);
    }

    /**
     * @notice Riz Zap tokens to stake LP
     * @dev It will use default lock index
     * @param _borrow option to borrow ETH
     * @param _lendingPool lending pool address to be used for zapping. Use only Riz lending pools
     * @param _asset to be used for zapping
     * @param _assetAmt amount of weth.
     * @param _rdntAmt amount of RDNT.
     * @param _onBehalf user address to be zapped.
     * @param _slippage maximum amount of slippage allowed for any occurring trades
     * @return LP amount
     */
    function rizZapOnBehalf(
        bool _borrow,
        address _lendingPool,
        address _asset,
        uint256 _assetAmt,
        uint256 _rdntAmt,
        address _onBehalf,
        uint256 _slippage
    ) public payable whenNotPaused returns (uint256) {
        if (_lendingPool == address(0)) revert Errors.AddressZero();
        if (_lendingPool == address(lendingPool)) revert Errors.CannotRizZap();
        if (!rizRegistry.isLendingPoolValid(_lendingPool)) revert Errors.InvalidLendingPool();
        uint256 duration = mfd.defaultLockIndex(_onBehalf);
        ZapParams memory params = ZapParams({
            borrow: _borrow,
            lendingPool: _lendingPool,
            asset: _asset,
            assetAmt: _assetAmt,
            rdntAmt: _rdntAmt,
            from: msg.sender,
            onBehalf: _onBehalf,
            lockTypeIndex: duration,
            refundAddress: msg.sender,
            slippage: _slippage
        });
        return _zap(params);
    }

    /**
     * @notice Zap tokens from vesting
     * @param _borrow option to borrow ETH
     * @param _asset to be used for zapping
     * @param _assetAmt amount of _asset tokens used to create dLP position
     * @param _lockTypeIndex lock length index. cannot be shortest option (index 0)
     * @param _slippage maximum amount of slippage allowed for any occurring trades
     * @return LP amount
     */
    function zapFromVesting(bool _borrow, address _asset, uint256 _assetAmt, uint256 _lockTypeIndex, uint256 _slippage)
        public
        payable
        whenNotPaused
        returns (uint256)
    {
        if (_lockTypeIndex == 0) revert Errors.InvalidLockLength();
        uint256 rdntAmt = mfd.zapVestingToLp(msg.sender);

        ZapParams memory params = ZapParams({
            borrow: _borrow,
            lendingPool: address(lendingPool),
            asset: _asset,
            assetAmt: _assetAmt,
            rdntAmt: rdntAmt,
            from: address(this),
            onBehalf: msg.sender,
            lockTypeIndex: _lockTypeIndex,
            refundAddress: msg.sender,
            slippage: _slippage
        });
        return _zap(params);
    }

    /**
     * @notice Riz Zap tokens from vesting
     * @param _borrow option to borrow ETH
     * @param _lendingPool lending pool address to be used for zapping. Use only Riz lending pools
     * @param _asset to be used for zapping
     * @param _assetAmt amount of _asset tokens used to create dLP position
     * @param _lockTypeIndex lock length index. cannot be shortest option (index 0)
     * @param _slippage maximum amount of slippage allowed for any occurring trades
     * @return LP amount
     */
    function rizZapFromVesting(
        bool _borrow,
        address _lendingPool,
        address _asset,
        uint256 _assetAmt,
        uint256 _lockTypeIndex,
        uint256 _slippage
    ) public payable whenNotPaused returns (uint256) {
        if (_lockTypeIndex == 0) revert Errors.InvalidLockLength();
        if (_lendingPool == address(0)) revert Errors.AddressZero();
        if (_lendingPool == address(lendingPool)) revert Errors.CannotRizZap();
        if (!rizRegistry.isLendingPoolValid(_lendingPool)) revert Errors.InvalidLendingPool();
        uint256 rdntAmt = mfd.zapVestingToLp(msg.sender);

        ZapParams memory params = ZapParams({
            borrow: _borrow,
            lendingPool: _lendingPool,
            asset: _asset,
            assetAmt: _assetAmt,
            rdntAmt: rdntAmt,
            from: address(this),
            onBehalf: msg.sender,
            lockTypeIndex: _lockTypeIndex,
            refundAddress: msg.sender,
            slippage: _slippage
        });
        return _zap(params);
    }

    /**
     * @notice Calculates slippage ratio from usd value to LP
     * @param _assetValueUsd amount in USD used to create LP pair
     * @param _liquidity LP token amount
     */
    function _calcSlippage(uint256 _assetValueUsd, uint256 _liquidity) internal returns (uint256 ratio) {
        priceProvider.update();
        // Scale price provider price to 1e18, as priceProvider always returns price scaled to 1e8.
        // This was okay for the core markets as _assetValueUsd was scaled to 1e8, but Riz markets
        // Introduced OracleRouter that always returns price scaled to 1e18, so we need to scale the priceProvider price
        uint256 lpTokenPriceUsd = priceProvider.getLpTokenPriceUsd() * 1e10;
        uint256 lpAmountValueUsd = (_liquidity * lpTokenPriceUsd) / 1e18;
        ratio = (lpAmountValueUsd * (RATIO_DIVISOR)) / (_assetValueUsd);
    }

    /**
     * @notice Zap into LP
     * @param params ZapParams struct
     */
    function _zap(ZapParams memory params) internal returns (uint256 liquidity) {
        if (params.lendingPool == address(0)) revert Errors.AddressZero();
        IWETH weth_ = weth;
        if (params.asset == address(0)) {
            params.asset = address(weth_);
        }
        if (params.slippage == 0) {
            params.slippage = MAX_SLIPPAGE;
        } else {
            if (MAX_SLIPPAGE > params.slippage || params.slippage > RATIO_DIVISOR) {
                revert Errors.SpecifiedSlippageExceedLimit();
            }
        }
        bool isAssetWeth = params.asset == address(weth_);

        // Handle pure ETH
        if (msg.value > 0) {
            if (!isAssetWeth) revert Errors.ReceivedETHOnAlternativeAssetZap();
            if (params.borrow) revert Errors.InvalidZapETHSource();
            params.assetAmt = msg.value;
            weth_.deposit{ value: params.assetAmt }();
        }
        if (params.assetAmt == 0) revert Errors.AmountZero();
        uint256 assetAmountValueUsd = (params.assetAmt * oracleRouter.getAssetPrice(params.asset))
            / (10 ** IERC20Metadata(params.asset).decimals());

        // Handle borrowing logic
        if (params.borrow) {
            // Borrow the asset on the users behalf
            ILendingPool(params.lendingPool).borrow(
                params.asset, params.assetAmt, VARIABLE_INTEREST_RATE_MODE, REFERRAL_CODE, msg.sender
            );

            // If asset isn't WETH, swap for WETH
            if (!isAssetWeth) {
                params.assetAmt = _safeSwap(params.asset, address(weth_), params.assetAmt, 0);
            }
        } else if (msg.value == 0) {
            // Transfer asset from user
            IERC20(params.asset).safeTransferFrom(msg.sender, address(this), params.assetAmt);
            if (!isAssetWeth) {
                params.assetAmt = _safeSwap(params.asset, address(weth_), params.assetAmt, 0);
            }
        }

        weth_.approve(address(poolHelper), params.assetAmt);
        //case where rdnt is matched with provided ETH
        if (params.rdntAmt != 0) {
            if (params.assetAmt < poolHelper.quoteFromToken(params.rdntAmt)) revert Errors.InsufficientETH();
            // _from == this when zapping from vesting
            if (params.from != address(this)) {
                IERC20(rdntAddr).safeTransferFrom(msg.sender, address(this), params.rdntAmt);
            }

            IERC20(rdntAddr).forceApprove(address(poolHelper), params.rdntAmt);
            liquidity = poolHelper.zapTokens(params.assetAmt, params.rdntAmt);
            assetAmountValueUsd = (assetAmountValueUsd * RATIO_DIVISOR) / ethLPRatio;
        } else {
            liquidity = poolHelper.zapWETH(params.assetAmt);
        }

        if (address(priceProvider) != address(0)) {
            if (_calcSlippage(assetAmountValueUsd, liquidity) < params.slippage) revert Errors.SlippageTooHigh();
        }

        IERC20(poolHelper.lpTokenAddr()).forceApprove(address(mfd), liquidity);
        mfd.stake(liquidity, params.onBehalf, params.lockTypeIndex);
        emit Zapped(params.borrow, params.assetAmt, params.rdntAmt, params.from, params.onBehalf, params.lockTypeIndex);

        _refundDust(rdntAddr, params.asset, params.refundAddress);
    }

    /**
     * @dev Internal function that handles general swaps and can be used safely in loops to throw if
     * an intermediate swap fails
     * @param _tokenIn to be swapped
     * @param _tokenOut to be received
     * @param _amountIn to swap
     * @param _amountOutMin expected
     */
    function _safeSwap(address _tokenIn, address _tokenOut, uint256 _amountIn, uint256 _amountOutMin)
        internal
        returns (uint256)
    {
        IERC20(_tokenIn).forceApprove(uniRouter, _amountIn);
        bytes memory route = _uniV3Route[_tokenIn][_tokenOut];
        try IUniswapRouter(uniRouter).exactInput(
            ISwapRouter.ExactInputParams({
                path: route,
                recipient: address(this),
                deadline: block.timestamp,
                amountIn: _amountIn,
                amountOutMinimum: _amountOutMin
            })
        ) returns (uint256 amountOut) {
            return amountOut;
        } catch {
            revert Errors.SwapFailed(_tokenIn, _amountIn);
        }
    }

    /**
     * @dev Internal function to get `amountIn` from an exact output in UniswapV3.
     * @param _tokenIn to be swapped
     * @param _tokenOut to be received
     * @param _amountOut expected to be received
     * @return amountInRequired to get _amountOut
     */
    function _quoteUniswap(address _tokenIn, address _tokenOut, uint256 _amountOut)
        internal
        returns (uint256 amountInRequired)
    {
        // NOTE!: For `quoteExactOutput` the path must be provided in reverse order:
        // i.e. _tokenOut -> _tokenIn
        return uniV3Quoter.quoteExactOutput(_uniV3Route[_tokenOut][_tokenIn], _amountOut);
    }
}
