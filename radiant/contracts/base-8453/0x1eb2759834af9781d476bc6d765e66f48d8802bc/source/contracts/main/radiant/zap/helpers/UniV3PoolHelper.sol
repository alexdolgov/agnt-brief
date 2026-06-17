// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.12;

import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {IUniswapV3Factory} from "../../../interfaces/uniswap/IUniswapV3Factory.sol";
import {ICLFactory} from "../../../interfaces/velodrome/ICLFactory.sol";
import {UniV3TokenizedLp, UniV3PoolMath} from "./UniV3TokenizedLp.sol";
import {IPoolHelper} from "../../../interfaces/IPoolHelper.sol";
import {LockZap} from "../LockZap.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Clones} from "@openzeppelin/contracts/proxy/Clones.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IUniswapV3Quoter} from "../../../interfaces/uniswap/IUniswapRouter.sol";

/// @title Uniswap V3-like Pool Helper Contract
/// @author Radiant
contract UniV3PoolHelper is IPoolHelper, Initializable, OwnableUpgradeable {
	using SafeERC20 for IERC20;

	enum FactoryType {
		UniswapV3,
		Velodrome
	}

	struct InitializeParams {
		FactoryType factoryType;
		IUniswapV3Factory uniV3Factory;
		address tokenizedLpImpl;
		address usdRdntOracle;
		address usdWeth9Oracle;
	}

	/********************** Events ***********************/
	event LiquidityZapUpdated(address indexed _liquidityZap);

	event LockZapUpdated(address indexed _lockZap);

	event TokenizedLpInitialized(address _tokenizedLpToken);

	/********************** Errors ***********************/
	error AddressZero();
	error AlreadyInitialized();
	error InsufficientPermission();
	error AmountZero();
	error InsufficientOutputAmount();
	error SwapCallbackUnauthorized();
	error BadSwapCallbackData();

	/******************* Storage ********************/

	/// @dev The minimum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MIN_TICK)
	uint160 internal constant MIN_SQRT_RATIO = 4295128739;
	/// @dev The maximum value that can be returned from #getSqrtRatioAtTick. Equivalent to getSqrtRatioAtTick(MAX_TICK)
	uint160 internal constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342;

	uint24 internal constant DESIRED_FEE = 3000;
	int24 internal constant DESIRED_TICK_SPACING = 200;
	uint256 internal constant BROAD_PERCENT = 99 * 10 ** 16;
	uint256 internal constant ONE_PERCENT = 10 ** 16;

	uint256 public constant PRECISION = 1e18;
	uint256 public constant FULL_PERCENT = 10000;
	uint256 public constant RDNT_CL_RANGE = 1600; // Equivalent to 80 of 80:20 pool
	uint256 public constant WETH9_CL_RANGE = 400; // Equivalent to 20 of 80:20 pool

	address private _cachedMsgSender;

	UniV3TokenizedLp public tokenizedLpToken;
	address public rdntAddr;
	address public weth9Addr;
	address public token0;
	address public token1;
	IUniswapV3Pool public pool;
	IUniswapV3Quoter public uniV3Quoter;
	address public lockZap;

	modifier onlyLockZap() {
		if (msg.sender != lockZap) revert InsufficientPermission();
		_;
	}

	constructor() {
		_disableInitializers();
	}

	/**
	 * @notice Initializer
	 * @param _rdntAddr RDNT address
	 * @param _weth9Addr wrapped native token address
	 * @param uniV3LikeQuoter UniswapV3-like Quoter address
	 */
	function initialize(address _rdntAddr, address _weth9Addr, address uniV3LikeQuoter) external initializer {
		if (_rdntAddr == address(0)) revert AddressZero();
		if (_weth9Addr == address(0)) revert AddressZero();
		if (uniV3LikeQuoter == address(0)) revert AddressZero();

		__Ownable_init();
		rdntAddr = _rdntAddr;
		weth9Addr = _weth9Addr;
		uniV3Quoter = IUniswapV3Quoter(uniV3LikeQuoter);
	}

	/**
	 * @notice Initialize RDNT/WETH9 pool with tokenized LP in a UniswapV3-like pool
	 * @dev Caller must send RDNT and WETH9 tokens to this contract before calling this function
	 * The amounts sent will initialize the pool at sqrtPriceX96
	 * This init price is trivial as it will be adjusted to the external oracle in the `autoRebalance` call
	 */
	function initializePool(InitializeParams memory params) public onlyOwner {
		if (address(tokenizedLpToken) != address(0)) revert AlreadyInitialized();

		(token0, token1) = rdntAddr < weth9Addr ? (rdntAddr, weth9Addr) : (weth9Addr, rdntAddr);

		uint256 initRdntBal = IERC20(rdntAddr).balanceOf(address(this));
		uint256 initWeth9Bal = IERC20(weth9Addr).balanceOf(address(this));
		uint160 sqrtPriceX96 = UniV3PoolMath.encodePriceSqrtX96(
			rdntAddr == token0 ? initRdntBal : initWeth9Bal,
			rdntAddr == token1 ? initRdntBal : initWeth9Bal
		);

		if (params.factoryType == FactoryType.UniswapV3) {
			pool = IUniswapV3Pool(params.uniV3Factory.getPool(token0, token1, DESIRED_FEE));
			if (address(pool) == address(0)) {
				// UniswapV3 vanilla factory implementation takes desired fee
				pool = IUniswapV3Pool(params.uniV3Factory.createPool(token0, token1, DESIRED_FEE));
				pool.initialize(sqrtPriceX96);
			}
		} else if (params.factoryType == FactoryType.Velodrome) {
			ICLFactory clFactory = ICLFactory(address(params.uniV3Factory));
			pool = IUniswapV3Pool(clFactory.getPool(rdntAddr, weth9Addr, DESIRED_TICK_SPACING));
			if (address(pool) == address(0)) {
				// Velodrome factory implementation takes desired tick spacing and initializes srqtPriceX96
				pool = IUniswapV3Pool(clFactory.createPool(rdntAddr, weth9Addr, DESIRED_TICK_SPACING, sqrtPriceX96));
			}
		}

		{
			tokenizedLpToken = UniV3TokenizedLp(Clones.cloneDeterministic(params.tokenizedLpImpl, "(>'.'<)"));
			(address oracle0, address oracle1) = rdntAddr == token0
				? (params.usdRdntOracle, params.usdWeth9Oracle)
				: (params.usdWeth9Oracle, params.usdRdntOracle);
			tokenizedLpToken.initialize(address(pool), true, true, oracle0, oracle1);
			int24 tickSpacing = pool.tickSpacing();
			uint256 price = tokenizedLpToken.fetchOracle(token0, token1, PRECISION);
			uint256 rangeLower = token0 == rdntAddr ? RDNT_CL_RANGE : WETH9_CL_RANGE;
			uint256 rangeUpper = token0 == rdntAddr ? WETH9_CL_RANGE : RDNT_CL_RANGE;
			int24 baseLower_ = UniV3PoolMath.roundTick(
				UniV3PoolMath.getTickAtSqrtRatio(
					UniV3PoolMath.encodePriceSqrtX96(PRECISION, ((price * (FULL_PERCENT - rangeLower)) / FULL_PERCENT))
				),
				tickSpacing
			);
			int24 baseUpper_ = UniV3PoolMath.roundTick(
				UniV3PoolMath.getTickAtSqrtRatio(
					UniV3PoolMath.encodePriceSqrtX96(PRECISION, ((price * (FULL_PERCENT + rangeUpper)) / FULL_PERCENT))
				),
				tickSpacing
			);
			tokenizedLpToken.rebalance(baseLower_, baseUpper_, 0);
		}
		IERC20(rdntAddr).forceApprove(address(tokenizedLpToken), type(uint256).max);
		IERC20(weth9Addr).forceApprove(address(tokenizedLpToken), type(uint256).max);

		{
			// Allow generous hysteresis for initial deposit in case there is a significant mismatch between price
			// of init amounts and oracle price. Then restore it.
			tokenizedLpToken.setHysteresis(BROAD_PERCENT);
			tokenizedLpToken.deposit(
				rdntAddr == token0 ? initRdntBal : initWeth9Bal,
				rdntAddr == token1 ? initRdntBal : initWeth9Bal,
				msg.sender
			);
			tokenizedLpToken.setHysteresis(ONE_PERCENT);
		}

		tokenizedLpToken.autoRebalance();
		tokenizedLpToken.transferOwnership(msg.sender);

		emit TokenizedLpInitialized(address(tokenizedLpToken));
	}

	function lpTokenAddr() public view override returns (address) {
		return address(tokenizedLpToken);
	}

	/**
	 * @notice Gets needed WETH (ESTIMATE) for adding LP.
	 * Does not consider pending fees to be collected.
	 * @param lpAmount LP amount
	 * @return wethAmount WETH amount
	 */
	function quoteWETH(uint256 lpAmount) public view returns (uint256 wethAmount) {
		uint256 lpPriceInWeth = getLpPrice(lpAmount);
		wethAmount = (lpPriceInWeth * lpAmount) / PRECISION;
	}

	/**
	 * @notice Zap WETH into LP
	 * @param amount of WETH
	 * @return liquidity LP token amount
	 */
	function zapWETH(uint256 amount) public onlyLockZap returns (uint256 liquidity) {
		IERC20(weth9Addr).safeTransferFrom(msg.sender, address(this), amount);
		uint256 token0Amt = token0 == weth9Addr ? amount : 0;
		uint256 token1Amt = token1 == weth9Addr ? amount : 0;
		liquidity = tokenizedLpToken.deposit(token0Amt, token1Amt, msg.sender);
	}

	/**
	 * @notice Returns reserve information.
	 * @return rdntManaged RDNT amount
	 * @return wethManaged WETH amount
	 * @return lpTokenSupply LP token supply
	 */
	function getReserves() public view returns (uint256 rdntManaged, uint256 wethManaged, uint256 lpTokenSupply) {
		lpTokenSupply = tokenizedLpToken.totalSupply();
		(uint256 total0, uint256 total1) = tokenizedLpToken.getTotalAmounts();
		(wethManaged, rdntManaged) = weth9Addr == token0 ? (total0, total1) : (total1, total0);
	}

	/**
	 * @notice Returns LP price in ETH
	 * @dev Return value decimals must be 8
	 * This method does NOT account accumulated fees to maintain it as a "view" method.
	 * @return priceInEth LP price in ETH with 8 decimals precision
	 */
	function getLpPrice(uint256) public view returns (uint256 priceInEth) {
		(uint256 rdntReserve, uint256 wethReserve, uint256 lpSupply) = getReserves();
		uint256 wethForRdnt = tokenizedLpToken.fetchOracle(rdntAddr, weth9Addr, rdntReserve);
		uint256 allReservesInWeth = wethReserve + wethForRdnt;
		priceInEth = (allReservesInWeth * 1e8) / lpSupply;
	}

	/**
	 * @notice Zap WETH and RDNt into LP
	 * @param _wethAmt amount of WETH
	 * @param _rdntAmt amount of RDNT
	 * @return liquidity LP token amount
	 */
	function zapTokens(uint256 _wethAmt, uint256 _rdntAmt) public onlyLockZap returns (uint256 liquidity) {
		IERC20(weth9Addr).safeTransferFrom(msg.sender, address(this), _wethAmt);
		IERC20(rdntAddr).safeTransferFrom(msg.sender, address(this), _rdntAmt);
		uint256 token0Amt = token0 == weth9Addr ? _wethAmt : _rdntAmt;
		uint256 token1Amt = token1 == weth9Addr ? _wethAmt : _rdntAmt;
		liquidity = tokenizedLpToken.deposit(token0Amt, token1Amt, msg.sender);
	}

	/**
	 * @notice Returns proportional amount of WETH for given RDNT amount per defined `WETH9_CL_RANGE` and `RDNT_CL_RANGE` ratios.
	 * @param tokenAmount amount of RDNT
	 * @return optimalWETHAmount WETH amount
	 */
	function quoteFromToken(uint256 tokenAmount) public view returns (uint256 optimalWETHAmount) {
		uint256 wethForRdnt = tokenizedLpToken.fetchOracle(rdntAddr, weth9Addr, tokenAmount);
		optimalWETHAmount = (wethForRdnt * WETH9_CL_RANGE) / RDNT_CL_RANGE;
	}

	/**
	 * @notice Sets new LockZap address
	 * @param _lockZap LockZap address
	 */
	function setLockZap(address _lockZap) external onlyOwner {
		if (_lockZap == address(0)) revert AddressZero();
		lockZap = _lockZap;
		emit LockZapUpdated(_lockZap);
	}

	/**
	 * @notice Returns RDNT price in ETH
	 * @return priceInEth price of RDNT
	 */
	function getPrice() public view returns (uint256 priceInEth) {
		return tokenizedLpToken.fetchOracle(rdntAddr, weth9Addr, PRECISION);
	}

	/**
	 * @notice Calculate quote in WETH from token.
	 * DO NOT CALL THIS METHOD FROM WITHIN A SMART CONTRACT. IT IS NOT GAS-EFFICIENT.
	 * @param _inToken input token
	 * @param _wethAmount WETH amount
	 * @return tokenAmountIn token amount
	 */
	function quoteSwap(address _inToken, uint256 _wethAmount) public returns (uint256 tokenAmountIn) {
		bytes memory route = LockZap(payable(lockZap)).getUniV3Route(_inToken, weth9Addr);
		tokenAmountIn = uniV3Quoter.quoteExactOutput(route, _wethAmount);
	}

	/**
	 * @notice Swaps WETH to RDNT
	 * @dev This method is called by the {Compounder.sol} and pushes the `_wethAmount` to this address
	 * before the call. In this case the `payer` is this address.
	 * @param _wethAmount the amount of RDNT to sell
	 * @param _minAmountOut the minimum RDNT amount to accept without reverting, if zero there will be no minimum
	 * @return amount of RDNT received
	 */
	function swapWethToRdnt(uint256 _wethAmount, uint256 _minAmountOut) external returns (uint256) {
		if (_wethAmount == 0) revert AmountZero();
		bool zeroForOne = weth9Addr == token0;
		address payer = IERC20(weth9Addr).balanceOf(address(this)) >= _wethAmount ? address(this) : msg.sender;
		_cachedMsgSender = msg.sender;
		(int256 amount0, int256 amount1) = pool.swap(
			msg.sender,
			zeroForOne,
			int256(_wethAmount),
			zeroForOne ? MIN_SQRT_RATIO + 1 : MAX_SQRT_RATIO - 1,
			abi.encode(payer, _cachedMsgSender)
		);
		if (zeroForOne) {
			if (_minAmountOut != 0 && _safeIntToUnit256(amount1) < _minAmountOut) revert InsufficientOutputAmount();
			return _safeIntToUnit256(amount1);
		} else {
			if (_minAmountOut != 0 && _safeIntToUnit256(amount0) < _minAmountOut) revert InsufficientOutputAmount();
			return _safeIntToUnit256(amount0);
		}
	}

	/**
	 * @notice Provides a quote of how much RDNT one would receive for a given amount of WETH
	 * @param _wethAmount WETH amount to be sold
	 * @return quoted RDNT amount to be received
	 */
	function quoteWethToRdnt(uint256 _wethAmount) external view returns (uint256) {
		return tokenizedLpToken.fetchSpot(weth9Addr, rdntAddr, _wethAmount);
	}

	/// @notice Called to `msg.sender` after swapping from  IUniswapV3Pool#swap.
	/// @dev In the implementation you must pay the pool tokens owed by the swap
	/// @param amount0Delta The amount of token0 due to the pool
	/// @param amount1Delta The amount of token1 due to the pool
	/// @param data Any data passed through by the caller via the IUniswapV3PoolActions#mint call
	function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes calldata data) external {
		if (msg.sender != address(pool)) revert SwapCallbackUnauthorized();
		(address payer, address cMSender) = abi.decode(data, (address, address));
		if (cMSender != _cachedMsgSender) revert BadSwapCallbackData();

		if (amount0Delta > 0) {
			if (payer == address(this)) IERC20(token0).safeTransfer(msg.sender, uint256(amount0Delta));
			else IERC20(token0).safeTransferFrom(payer, msg.sender, uint256(amount0Delta));
		} else if (amount1Delta > 0) {
			if (payer == address(this)) IERC20(token1).safeTransfer(msg.sender, uint256(amount1Delta));
			else IERC20(token1).safeTransferFrom(payer, msg.sender, uint256(amount1Delta));
		}
		delete _cachedMsgSender;
	}

	/**
	 * @notice Unprotected uniswapV3 swap function
	 * @param swapAmount_  amount to swap
	 */
	function _safeIntToUnit256(int256 swapAmount_) internal pure returns (uint256) {
		if (swapAmount_ < 0) {
			return uint256(-swapAmount_);
		} else {
			return uint256(swapAmount_);
		}
	}
}
