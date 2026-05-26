// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.12;

import {IUniV3TokenizedLp} from "../../../interfaces/uniswap/IUniV3TokenizedLp.sol";
import {IUniswapV3MintCallback} from "@uniswap/v3-core/contracts/interfaces/callback/IUniswapV3MintCallback.sol";
import {IUniswapV3SwapCallback} from "@uniswap/v3-core/contracts/interfaces/callback/IUniswapV3SwapCallback.sol";
import {IUniswapV3Pool, IUniswapV3PoolActions} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {ICLPool} from "../../../interfaces/velodrome/ICLPool.sol";
import {UniV3PoolMath} from "../../libraries/UniV3PoolMath.sol";
import {ERC20, IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IChainlinkAdapter} from "../../../interfaces/IChainlinkAdapter.sol";

/**
 * @title UniV3TokenizedLp
 *
 * @notice A share erc20-tokenized UniswapV3-like concentrated liquidity position manager.
 *
 * @dev This contract manages liquidity in a UniswapV3-like pool and allows anyone to participate by
 * depositing single-sided (or double sided) in exchange for an erc20-share representing their
 * share of the position.
 *
 * The total shares of this contract attempt to initially approx. equal ~1:1 in value to the assets under
 * management (AUM) of this contract valued in Token1. As fees are collected, the total shares will
 * increase in value relative token1.
 *
 * The `baseLower` and `baseUpper` define the current base `ticks` of position of the pool.
 * The `baseBpsRangeLower` and `baseBpsRangeUpper` define in bps the range(%) around the
 * external oracle price at which the `baseLower` and `baseUpper` ticks should be set.
 * This allows to create the CL position in any proportion around the external oracle
 * price (i.e. 20/80, 50/50, etc).
 *
 * Quick reference to the following UniswapV3 concepts utilized in this contract:
 *  > Ticks are used in Uniswap v3 to determine the liquidity range of the position. Ticks range
 *    from -887272 to 887272.
 *  > SqrtPriceX96 is used in UniswapV3 to determine the price of the position, always given
 *    in relation of Token1/Token0 of the pool. In general it is a packed way to represent a
 *    fixed-point number with 96 bits of precision.
 *    Refer to following articles for more details:
 *      https://blog.uniswap.org/uniswap-v3-math-primer#what-is-a-q-notation
 *  > There is a conversion relationship between a given tick and a sqrtPriceX96.
 *
 * The `feeRecipient` and `affiliate` addresses receive `baseFee` portion of the swap fees collected by the pool.
 * The `baseFeeSplit` is the portion of the `baseFee` that goes to the `affiliate` address.
 *
 * NOTE:This contract rebalance the CL position relative to the external oracle references provided and assumes those
 * price feeds are externally verified, reliable and accurate.
 * NOTE: This contract is meant to be cloned after deploying an implementation.
 */
contract UniV3TokenizedLp is
	IUniV3TokenizedLp,
	IUniswapV3MintCallback,
	IUniswapV3SwapCallback,
	ERC20,
	ReentrancyGuard,
	Ownable
{
	using SafeERC20 for IERC20;

	/// =^_^= Events =^_^=
	event Initialized(uint8 version);
	event DeployUniV3TokenizedLp(
		address indexed pool,
		bool allowToken0,
		bool allowToken1,
		address owner,
		address usdOracle0Ref,
		address usdOracle1Ref
	);
	event Deposit(address indexed sender, address indexed to, uint256 shares, uint256 amount0, uint256 amount1);
	event Withdraw(address indexed sender, address indexed to, uint256 shares, uint256 amount0, uint256 amount1);
	event Rebalance(
		int24 tick,
		uint256 totalAmount0,
		uint256 totalAmount1,
		uint256 feeAmount0,
		uint256 feeAmount1,
		uint256 totalSupply
	);
	event Hysteresis(uint256 hysteresis);
	event DepositMax(uint256 deposit0Max, uint256 deposit1Max);
	event Affiliate(address affiliate);
	event ApprovedRebalancer(address rebalancer, bool isApproved);
	event FeeRecipient(address feeRecipient);
	event BaseFee(uint256 baseFee);
	event BaseFeeSplit(uint256 baseFeeSplit);
	event UsdOracleReferences(address usd0RefOracle, address usd1RefOracle);
	event BaseBpsRanges(uint256 baseBpsRangeLower, uint256 baseBpsRangeUpper);

	/// <:3)~~~~ Errors <:3)~~~~
	error UniV3TokenizedLp_alreadyInitialized();
	error UniV3TokenizedLp_ZeroAddress();
	error UniV3TokenizedLp_NoAllowedTokens();
	error UniV3TokenizedLp_ZeroValue();
	error UniV3TokenizedLp_Token0NotAllowed();
	error UniV3TokenizedLp_Token1NotAllowed();
	error UniV3TokenizedLp_MoreThanMaxDeposit();
	error UniV3TokenizedLp_UnexpectedBurn();
	error UniV3TokenizedLp_BasePositionInvalid();
	error UniV3TokenizedLp_LimitPositionInvalid();
	error UniV3TokenizedLp_FeeMustBeLtePrecision();
	error UniV3TokenizedLp_SplitMustBeLtePrecision();
	error UniV3TokenizedLp_MustBePool(uint256 line);
	error UniV3TokenizedLp_UnsafeCast();
	error UniV3TokenizedLp_PoolLocked();
	error UniV3TokenizedLp_failedToQueryPool();
	error UniV3TokenizedLp_invalidSlot0Size();
	error UniV3TokenizedLp_InvalidBaseBpsRange();
	error UniV3TokenizedLp_PositionOutOfRange();
	error UniV3TokenizedLp_SetBaseTicksViaRebalanceFirst();
	error UniV3TokenizedLp_NotAllowed();
	error UniV3TokenizedLp_NoDepositOrWithdrawLoop();

	uint256 private constant ICLPOOL_SLOT0_SIZE = 192;
	uint256 private constant IUNISWAPV3POOL_SLOT0_SIZE = 224;
	uint16 private constant CARDINALITY = 1000;
	uint32 private constant SPOT_TIME_WEIGHT_PERIOD = 5 minutes;
	string private constant NEXT_BLOCK = "try next block";

	uint256 public constant PRECISION = 10 ** 18;
	uint256 public constant FULL_PERCENT = 10000;
	address public constant NULL_ADDRESS = address(0);
	uint256 public constant DEFAULT_BASE_FEE = 10 ** 17; // 10%
	uint256 public constant DEFAULT_BASE_FEE_SPLIT = 5 * 10 ** 17; // 50%

	uint8 private _initialized;

	bool public override allowToken0;
	bool public override allowToken1;
	int24 public override tickSpacing;
	int24 public override baseLower;
	int24 public override baseUpper;

	address public override pool;
	address public override token0;
	address public override token1;
	IChainlinkAdapter public usdOracle0Ref;
	IChainlinkAdapter public usdOracle1Ref;

	uint256 public baseBpsRangeLower;
	uint256 public baseBpsRangeUpper;
	uint256 public override hysteresis;

	uint256 public override deposit0Max;
	uint256 public override deposit1Max;

	uint256 public baseFee;
	uint256 public baseFeeSplit;

	address public feeRecipient;
	address public override affiliate;

	string private _name;
	string private _symbol;

	mapping(address => uint256) private _callerLastBlockAction;
	mapping(address => bool) public approvedRebalancer;

	modifier isRebalancer() {
		if (!approvedRebalancer[msg.sender]) revert UniV3TokenizedLp_NotAllowed();
		_;
	}

	modifier checkLastBlockAction() {
		if (_callerLastBlockAction[msg.sender] == block.number) revert UniV3TokenizedLp_NoDepositOrWithdrawLoop();
		_;
		_callerLastBlockAction[msg.sender] = block.number;
	}

	constructor() ERC20("", "") {
		// NOTE:Attempting to reduce contract size a direct simple implementation
		// of initializer is done instead of using "heavier" OZ library.
		_initialized = 1;
		emit Initialized(_initialized);
	}

	/**
	 * @notice Initializes this instance of {UniV3TokenizedLp} based on the `_pool`.
	 * @param _pool Uniswap V3 pool for which liquidity is managed
	 * @param _allowToken0 flag that indicates whether token0 is accepted during deposit
	 * @param _allowToken1 flag that indicates whether token1 is accepted during deposit
	 * @param _usdOracle0Ref address of token0 USD oracle (8 decimals)
	 * @param _usdOracle1Ref address of token1 USD oracle (8 decimals)
	 * @dev `allowTokenX` params control whether this {UniV3TokenizedLp} allows one-sided or two-sided liquidity provision
	 */
	function initialize(
		address _pool,
		bool _allowToken0,
		bool _allowToken1,
		address _usdOracle0Ref,
		address _usdOracle1Ref
	) external {
		// No check to `_pool` arg since we call it during `initialize(...)` execution
		if (_initialized == 1) revert UniV3TokenizedLp_alreadyInitialized();
		_initialized = 1;

		if (!_allowToken0 && !_allowToken1) {
			revert UniV3TokenizedLp_NoAllowedTokens();
		}

		pool = _pool;
		token0 = IUniswapV3Pool(_pool).token0();
		token1 = IUniswapV3Pool(_pool).token1();
		string memory token0Symbol = ERC20(token0).symbol();
		string memory token1Symbol = ERC20(token1).symbol();
		_name = string(abi.encodePacked("UniV3 LpToken: ", token0Symbol, "-", token1Symbol));
		_symbol = string(abi.encodePacked("uV3Lp-", token0Symbol, "-", token1Symbol));

		allowToken0 = _allowToken0;
		allowToken1 = _allowToken1;
		tickSpacing = IUniswapV3Pool(_pool).tickSpacing();
		// increase pool observation cardinality
		ICLPool(_pool).increaseObservationCardinalityNext(CARDINALITY);
		// default 1% threshold
		hysteresis = (100 * PRECISION) / FULL_PERCENT;
		// default 12.5% range around the current price for base position
		baseBpsRangeLower = baseBpsRangeUpper = 1250;
		deposit0Max = deposit1Max = type(uint256).max; // max uint256
		feeRecipient = msg.sender;
		baseFee = DEFAULT_BASE_FEE;
		baseFeeSplit = DEFAULT_BASE_FEE_SPLIT;
		usdOracle0Ref = IChainlinkAdapter(_usdOracle0Ref);
		usdOracle1Ref = IChainlinkAdapter(_usdOracle1Ref);

		approvedRebalancer[msg.sender] = true;
		_transferOwnership(msg.sender);

		emit ApprovedRebalancer(msg.sender, true);
		emit Initialized(_initialized);
		emit DeployUniV3TokenizedLp(_pool, _allowToken0, _allowToken1, msg.sender, _usdOracle0Ref, _usdOracle1Ref);
	}

	/// Setter Functions

	/**
	 * @notice Sets the usdOracle0Ref and usdOracle1Ref addresses
	 * @param usdOracle0Ref_ address of token0 USD oracle
	 * @param usdOracle1Ref_ address of token1 USD oracle
	 */
	function setUsdOracles(address usdOracle0Ref_, address usdOracle1Ref_) external onlyOwner {
		if (usdOracle0Ref_ == NULL_ADDRESS || usdOracle1Ref_ == NULL_ADDRESS) {
			revert UniV3TokenizedLp_ZeroAddress();
		}
		usdOracle0Ref = IChainlinkAdapter(usdOracle0Ref_);
		usdOracle1Ref = IChainlinkAdapter(usdOracle1Ref_);
		emit UsdOracleReferences(usdOracle0Ref_, usdOracle1Ref_);
	}

	/**
	 * @notice Sets the baseBpsRangeLower and baseBpsRangeUpper values
	 * @param baseBpsRangeLower_ lower bound percent below the target price
	 * @param baseBpsRangeUpper_ upper bound percent above the target price
	 * @dev baseBpsRangeLower_ and baseBpsRangeUpper_ should be in the range [1, 10000]
	 */
	function setBaseBpsRanges(uint256 baseBpsRangeLower_, uint256 baseBpsRangeUpper_) external onlyOwner {
		if (
			baseBpsRangeLower_ > FULL_PERCENT ||
			baseBpsRangeUpper_ > FULL_PERCENT ||
			baseBpsRangeLower_ == 0 ||
			baseBpsRangeUpper_ == 0
		) {
			revert UniV3TokenizedLp_InvalidBaseBpsRange();
		}
		baseBpsRangeLower = baseBpsRangeLower_;
		baseBpsRangeUpper = baseBpsRangeUpper_;
		emit BaseBpsRanges(baseBpsRangeLower_, baseBpsRangeUpper_);
	}

	/**
	 * @notice Sets the fee recipient account address, where portion of the collected swap fees will be distributed
	 * @param _feeRecipient The fee recipient account address
	 */
	function setFeeRecipient(address _feeRecipient) external onlyOwner {
		if (_feeRecipient == address(0)) {
			revert UniV3TokenizedLp_ZeroAddress();
		}
		feeRecipient = _feeRecipient;
		emit FeeRecipient(_feeRecipient);
	}

	/**
	 * @notice Sets the fee percentage to be taken from the accumulated pool's swap fees.
	 * This percentage is distributed between the feeRecipient and affiliate accounts
	 * @param _baseFee The fee percentage to be taken from the accumulated pool's swap fee
	 */
	function setBaseFee(uint256 _baseFee) external onlyOwner {
		if (_baseFee > PRECISION) {
			revert UniV3TokenizedLp_FeeMustBeLtePrecision();
		}
		baseFee = _baseFee;
		emit BaseFee(_baseFee);
	}

	/**
	 * @notice Sets the fee split ratio between feeRecipient and affiliate accounts.
	 * @param _baseFeeSplit The fee split ratio for feeRecipient
	 * @dev _baseFeeSplit should be less than PRECISION (100%)
	 * Example
	 * If `feeRecipient` should receive 80% of the collected swap fees,
	 * then `_baseFeeSplit` should be 8e17 (80% of 1e18)
	 */
	function setBaseFeeSplit(uint256 _baseFeeSplit) external onlyOwner {
		if (_baseFeeSplit > PRECISION) {
			revert UniV3TokenizedLp_SplitMustBeLtePrecision();
		}
		baseFeeSplit = _baseFeeSplit;
		emit BaseFeeSplit(_baseFeeSplit);
	}

	/**
	 * @notice Sets the hysteresis threshold (in percentage from 1 ether unit, example: 10**16 = 1%).
	 * When difference between spot price and external Oracle exceeds the threshold, a check for a flashloan attack is executed during deposits
	 * and triggers autoRebalance position change.
	 * @param _hysteresis hysteresis threshold
	 * @dev _hysteresis should be less than PRECISION (100%)
	 */
	function setHysteresis(uint256 _hysteresis) external onlyOwner {
		if (_hysteresis >= PRECISION) {
			revert UniV3TokenizedLp_FeeMustBeLtePrecision();
		}
		hysteresis = _hysteresis;
		emit Hysteresis(_hysteresis);
	}

	/**
	 * @notice Sets the affiliate account address where portion of the collected swap fees will be distributed
	 * @param _affiliate The affiliate account address
	 * @dev If `affiliate` is set to the zero address, 100% of the baseFee will go to the `feeRecipient`
	 */
	function setAffiliate(address _affiliate) external override onlyOwner {
		affiliate = _affiliate;
		emit Affiliate(_affiliate);
	}

	/**
	 * @notice Sets the account address to be approved or not for rebalancing the position
	 */
	function setApprovedRebalancer(address account, bool approved) external onlyOwner {
		if (account == NULL_ADDRESS) revert UniV3TokenizedLp_ZeroAddress();
		approvedRebalancer[account] = approved;
		emit ApprovedRebalancer(account, approved);
	}

	/**
	 * @notice Sets the maximum token0 and token1 amounts the contract allows in a deposit call.
	 * @param _deposit0Max The maximum amount of token0 allowed in a deposit
	 * @param _deposit1Max The maximum amount of token1 allowed in a deposit
	 * @dev Use this to control incoming size and ratios of token0 and token1
	 */
	function setDepositMax(uint256 _deposit0Max, uint256 _deposit1Max) external override onlyOwner {
		deposit0Max = _deposit0Max;
		deposit1Max = _deposit1Max;
		emit DepositMax(_deposit0Max, _deposit1Max);
	}

	/// View functions

	/**
	 * @inheritdoc IERC20Metadata
	 */
	function name() public view virtual override returns (string memory) {
		return _name;
	}

	/**
	 * @inheritdoc IERC20Metadata
	 */
	function symbol() public view virtual override returns (string memory) {
		return _symbol;
	}

	/**
	 * @notice External method that calculates total quantity of token0 and token1 (AUM) of this UniV3TokenizedLp
	 * @dev Checks price has not been manipulated in this block
	 * @return total0 Quantity of token0 in both positions (and unused)
	 * @return total1 Quantity of token1 in both positions (and unused)
	 */
	function getTotalAmounts() external view override returns (uint256 total0, uint256 total1) {
		require(_checkHysteresis(), NEXT_BLOCK);
		(total0, total1) = _getTotalAmounts();
	}

	/**
	 * @notice External method that calculates amount of total liquidity in the base position
	 * @dev Checks price has not been manipulated in this block
	 *  @return liquidity Amount of total "virtual" liquidity in the base position
	 *  @return amount0 Estimated amount of token0 that could be collected by burning the base position
	 *  @return amount1 Estimated amount of token1 that could be collected by burning the base position
	 */
	function getBasePosition() external view returns (uint128 liquidity, uint256 amount0, uint256 amount1) {
		require(_checkHysteresis(), NEXT_BLOCK);
		(liquidity, amount0, amount1) = _getBasePosition();
	}

	/**
	 * @notice Returns current price tick
	 *  @param tick Uniswap pool's current price tick
	 */
	function currentTick() public view returns (int24 tick) {
		(, int24 tick_, , bool unlocked_) = _queryPoolSlot0();
		if (!unlocked_) revert UniV3TokenizedLp_PoolLocked();
		tick = tick_;
	}

	/**
	 * @notice Returns current sqrtPriceX96 of the pool
	 */
	function getCurrentSqrtPriceX96() public view returns (uint160 sqrtPriceX96) {
		(uint160 sqrtPriceX96_, , , bool unlocked_) = _queryPoolSlot0();
		if (!unlocked_) revert UniV3TokenizedLp_PoolLocked();
		sqrtPriceX96 = sqrtPriceX96_;
	}

	/**
	 * @notice Returns the time weighted sqrtPriceX96 of the pool at `SPOT_TIME_WEIGHT_PERIOD` ago
	 */
	function getTimeWeightedSqrtPriceX96() public view returns (uint160 sqrtPriceX96) {
		(, , , bool unlocked_) = _queryPoolSlot0();
		if (!unlocked_) revert UniV3TokenizedLp_PoolLocked();
		int24 timeWeightedAverageTick = UniV3PoolMath.consult(pool, SPOT_TIME_WEIGHT_PERIOD);
		sqrtPriceX96 = UniV3PoolMath.getSqrtRatioAtTick(timeWeightedAverageTick);
	}

	/**
	 * @notice returns approximate _tokenOut for _amountIn, _tokenIn
	 * using `SPOT_TIME_WEIGHT_PERIOD` pool price
	 *  @param _tokenIn token the input amount is in
	 *  @param _tokenOut token for the output amount
	 *  @param _amountIn amount in _tokenIn
	 *  @param amountOut equivalent amount in _tokenOut
	 */
	function fetchSpot(address _tokenIn, address _tokenOut, uint256 _amountIn) public view returns (uint256 amountOut) {
		int24 timeWeightedAverageTick = UniV3PoolMath.consult(pool, SPOT_TIME_WEIGHT_PERIOD);
		return
			UniV3PoolMath.getQuoteAtTick(
				timeWeightedAverageTick,
				UniV3PoolMath.uint128Safe(_amountIn),
				_tokenIn,
				_tokenOut
			);
	}

	/**
	 * @notice returns equivalent _tokenOut for _amountIn, _tokenIn using external oracle price
	 *  @param tokenIn_ token the input amount is in
	 *  @param tokenOut_ token for the output amount
	 *  @param amountIn_ amount in _tokenIn
	 *  @param amountOut equivalent amount in _tokenOut
	 */
	function fetchOracle(
		address tokenIn_,
		address tokenOut_,
		uint256 amountIn_
	) public view returns (uint256 amountOut) {
		uint256 valueIn = tokenIn_ == token0
			? _getUsdValue(tokenIn_, amountIn_, usdOracle0Ref)
			: _getUsdValue(tokenIn_, amountIn_, usdOracle1Ref);

		amountOut = tokenOut_ == token0
			? _getTokenFromUsdValue(tokenOut_, usdOracle0Ref, valueIn)
			: _getTokenFromUsdValue(tokenOut_, usdOracle1Ref, valueIn);
	}

	/// Common functions

	/**
	 * @notice Distributes shares to depositor equal to the token1 value of his deposit multiplied by
	 * the ratio of total lp shares issued divided by the pool's AUM measured in token1 value.
	 * @param deposit0 Amount of token0 transferred from sender
	 * @param deposit1 Amount of token1 transferred from sender
	 * @param to Address to which lp tokens are minted
	 * @param shares Quantity of lp tokens minted as a result of deposit
	 */
	function deposit(
		uint256 deposit0,
		uint256 deposit1,
		address to
	) external override nonReentrant checkLastBlockAction returns (uint256 shares) {
		if (!allowToken0 && deposit0 > 0) {
			revert UniV3TokenizedLp_Token0NotAllowed();
		}
		if (!allowToken1 && deposit1 > 0) {
			revert UniV3TokenizedLp_Token1NotAllowed();
		}
		if (deposit0 == 0 && deposit1 == 0) {
			revert UniV3TokenizedLp_ZeroValue();
		}
		if (deposit0 > deposit0Max || deposit1 > deposit1Max) {
			revert UniV3TokenizedLp_MoreThanMaxDeposit();
		}
		if (to == NULL_ADDRESS) revert UniV3TokenizedLp_ZeroAddress();

		// Updates pending fees in pool state for inclusion when calling `getTotalAmounts()`
		(uint128 baseLiquidity, , ) = _position(baseLower, baseUpper);
		if (baseLiquidity > 0) {
			// See IUniswapV3PoolActions.burn(...) interface docs, this call is used to update state of fees
			(uint256 burn0, uint256 burn1) = IUniswapV3Pool(pool).burn(baseLower, baseUpper, 0);
			if (burn0 != 0 || burn1 != 0) {
				revert UniV3TokenizedLp_UnexpectedBurn();
			}
		}

		// Current Spot price of token1/token0 at pool
		uint256 spotPrice = UniV3PoolMath.getQuoteAtTick(
			currentTick(),
			UniV3PoolMath.uint128Safe(PRECISION),
			token0,
			token1
		);
		// External oracle price of token1/token0
		uint256 oraclePrice = fetchOracle(token0, token1, PRECISION);

		// If difference between spot and oracle is bigger than `hysteresis`, it
		// checks the timestamp of the last `observation` at the pool
		// to confirm if price has been manipulated in this block
		uint256 delta = (spotPrice > oraclePrice)
			? ((spotPrice - oraclePrice) * PRECISION) / spotPrice
			: ((oraclePrice - spotPrice) * PRECISION) / oraclePrice;
		if (delta > hysteresis) require(_checkHysteresis(), NEXT_BLOCK);

		(uint256 pool0, uint256 pool1) = _getTotalAmounts();

		// Price the `deposit0` amount in token1 at oracle price
		uint256 deposit0PricedInToken1 = (deposit0 * oraclePrice) / PRECISION;

		if (deposit0 > 0) {
			IERC20(token0).safeTransferFrom(msg.sender, address(this), deposit0);
		}
		if (deposit1 > 0) {
			IERC20(token1).safeTransferFrom(msg.sender, address(this), deposit1);
		}

		// Shares in value of token1
		shares = deposit1 + deposit0PricedInToken1;

		if (totalSupply() != 0) {
			// Price the pool0 in token1 at oracle price
			uint256 pool0PricedInToken1 = (pool0 * oraclePrice) / PRECISION;
			// Compute ratio of total shares to pool AUM in token1
			shares = (shares * totalSupply()) / (pool0PricedInToken1 + pool1);
		}
		_mint(to, shares);
		emit Deposit(msg.sender, to, shares, deposit0, deposit1);
	}

	/**
	 * @notice Redeems shares by sending out a portion of the UniV3TokenizedLp's AUM.
	 * This portion is equal to the percentage ownership of total issued shares represented by the redeemed shares.
	 * NOTE: Amounts close to one-wei-unit (or equivalent) may be lost due to division precision in
	 * favor of all remaining depositors.
	 * @param shares Number of liquidity tokens to redeem as pool assets
	 * @param to Address to which redeemed pool assets are sent
	 * @param amount0 Amount of token0 redeemed by the submitted liquidity tokens
	 * @param amount1 Amount of token1 redeemed by the submitted liquidity tokens
	 */
	function withdraw(
		uint256 shares,
		address to
	) external override nonReentrant checkLastBlockAction returns (uint256 amount0, uint256 amount1) {
		if (shares == 0) revert UniV3TokenizedLp_ZeroValue();
		if (to == NULL_ADDRESS) revert UniV3TokenizedLp_ZeroAddress();

		// Withdraw share amount of liquidity from the Uniswap pool
		// This call also updates fee state in the pool
		(uint256 base0, uint256 base1) = _burnLiquidity(
			baseLower,
			baseUpper,
			_liquidityForShares(baseLower, baseUpper, shares),
			to,
			false
		);

		// Compute proportion of unused balances in this contract relative to `shares`
		// Note: Sending tokens directly to alter the balances of this address will result in a loss to the sender-caller.
		uint256 _totalSupply = totalSupply();
		uint256 unusedAmount0 = (IERC20(token0).balanceOf(address(this)) * (shares)) / _totalSupply;
		uint256 unusedAmount1 = (IERC20(token1).balanceOf(address(this)) * (shares)) / _totalSupply;
		if (unusedAmount0 > 0) IERC20(token0).safeTransfer(to, unusedAmount0);
		if (unusedAmount1 > 0) IERC20(token1).safeTransfer(to, unusedAmount1);

		amount0 = base0 + unusedAmount0;
		amount1 = base1 + unusedAmount1;

		_burn(msg.sender, shares);

		emit Withdraw(msg.sender, to, shares, amount0, amount1);
	}

	/**
	 * @notice Rebalance the lp position around the target external oracle price.
	 * The base position is updated to be `baseBpsRangeLower` percent and `baseBpsRangeUpper` percent around the external oracle price.
	 * If `withSwapping` is true, and the difference between the spot price and the external oracle price is larger than `hysteresis`
	 * the call will attempt to swap either side of the AUM tokens as required to match the target price.
	 * Fees are collected and distributed in the process.
	 * @dev If `withSwapping` is true and there is not enough liquidity in the pool to swap the required amount
	 * to establish sqrtPriceX96 to the target oracle price in range, this call will revert.
	 * This is an issue if this contract is not a majority holder of the `pool`'s liquidity,
	 * @param withSwapping If true, the contract will attempt to swap tokens to reach the target price
	 * @return amount0 Amount of token0 swapped
	 * @return amount1 Amount of token1 swapped
	 */
	function autoRebalance(
		bool withSwapping
	) public nonReentrant isRebalancer returns (int256 amount0, int256 amount1) {
		if (baseLower == 0 && baseUpper == 0) revert UniV3TokenizedLp_SetBaseTicksViaRebalanceFirst();

		(uint256 token0Bal, uint256 token1Bal) = _updateAndCollectPositionFees();

		// Get spot and external oracle prices
		uint256 spotTimeWeightedPrice = fetchSpot(token0, token1, PRECISION);
		uint256 oraclePrice = fetchOracle(token0, token1, PRECISION);

		// Check if difference between spot and oraclePrice is too big
		uint256 delta = (spotTimeWeightedPrice > oraclePrice)
			? ((spotTimeWeightedPrice - oraclePrice) * PRECISION) / oraclePrice
			: ((oraclePrice - spotTimeWeightedPrice) * PRECISION) / oraclePrice;

		// Calculate the new baseLower and baseUpper ticks. It is required to encode the price into sqrtPriceX96
		int24 baseLower_ = UniV3PoolMath.roundTick(
			UniV3PoolMath.getTickAtSqrtRatio(
				UniV3PoolMath.encodePriceSqrtX96(
					PRECISION,
					((oraclePrice * (FULL_PERCENT - baseBpsRangeLower)) / FULL_PERCENT)
				)
			),
			tickSpacing
		);
		int24 baseUpper_ = UniV3PoolMath.roundTick(
			UniV3PoolMath.getTickAtSqrtRatio(
				UniV3PoolMath.encodePriceSqrtX96(
					PRECISION,
					((oraclePrice * (FULL_PERCENT + baseBpsRangeUpper)) / FULL_PERCENT)
				)
			),
			tickSpacing
		);

		// Set the new baseLower and baseUpper ticks
		baseLower = baseLower_;
		baseUpper = baseUpper_;

		uint128 baseLiquidity = _liquidityForAmounts(baseLower, baseUpper, token0Bal, token1Bal);

		if ((withSwapping && (delta > hysteresis)) || baseLower != baseLower_ || baseUpper != baseUpper_) {
			// Swap tokens if required to reach the target price
			uint160 sqrtPriceRefX96 = getTimeWeightedSqrtPriceX96();
			uint160 sqrtPriceTargetX96 = UniV3PoolMath.encodePriceSqrtX96(PRECISION, oraclePrice);
			if (sqrtPriceRefX96 != sqrtPriceTargetX96) {
				// Determine if it is a token0-to-token1 or opposite swap
				bool zeroToOne = sqrtPriceRefX96 > sqrtPriceTargetX96;
				(amount0, amount1) = IUniswapV3Pool(pool).swap(
					address(this),
					zeroToOne,
					zeroToOne ? int256(token0Bal) : int256(token1Bal),
					sqrtPriceTargetX96, // Swap through ticks until the target price is reached or run out of tokens
					abi.encode(address(this))
				);
				if (!_checkPositionIsInRange(currentTick())) revert UniV3TokenizedLp_PositionOutOfRange();
			}

			// Recalculate `baseLiquidity` after swapping
			baseLiquidity = _liquidityForAmounts(
				baseLower,
				baseUpper,
				IERC20(token0).balanceOf(address(this)),
				IERC20(token1).balanceOf(address(this))
			);
		}
		_mintLiquidity(baseLower, baseUpper, baseLiquidity);
	}

	/**
	 * @notice Updates "force" the UniV3TokenizedLp's LP position at the specified ticks and performs the indicated swap.
	 *  @param _baseLower The lower tick of the base position
	 *  @param _baseUpper The upper tick of the base position
	 *  @param swapQuantity Quantity of tokens to swap; if quantity is positive, `swapQuantity` token0 are swapped for token1, if negative, `swapQuantity` token1 is swapped for token0
	 */
	function rebalance(int24 _baseLower, int24 _baseUpper, int256 swapQuantity) public nonReentrant isRebalancer {
		if (_baseLower >= _baseUpper || _baseLower % tickSpacing != 0 || _baseUpper % tickSpacing != 0) {
			revert UniV3TokenizedLp_BasePositionInvalid();
		}
		(uint256 token0Bal, uint256 token1Bal) = _updateAndCollectPositionFees();

		// Swap tokens if required as specified by `swapQuantity`
		if (swapQuantity != 0) {
			IUniswapV3Pool(pool).swap(
				address(this),
				swapQuantity > 0, // zeroToOne == true if swapQuantity is positive
				swapQuantity > 0 ? swapQuantity : -swapQuantity,
				// No limit on the price, swap through the ticks, until the `swapQuantity` is exhausted
				swapQuantity > 0 ? UniV3PoolMath.MIN_SQRT_RATIO + 1 : UniV3PoolMath.MAX_SQRT_RATIO - 1,
				abi.encode(address(this))
			);
		}

		baseLower = _baseLower;
		baseUpper = _baseUpper;

		// Mint liquidity at the new baseLower and baseUpper ticks
		uint128 baseLiquidity = _liquidityForAmounts(baseLower, baseUpper, token0Bal, token1Bal);
		_mintLiquidity(baseLower, baseUpper, baseLiquidity);
	}

	/// Internal functions

	/**
	 * @dev Query the pool's slot0 and this address balances at the pool's spot sqrtPriceX96
	 */
	function _getTotalAmounts() internal view returns (uint256 total0, uint256 total1) {
		(, uint256 base0, uint256 base1) = _getBasePosition();
		total0 = IERC20(token0).balanceOf(address(this)) + base0;
		total1 = IERC20(token1).balanceOf(address(this)) + base1;
	}

	/**
	 * @dev Query the pool's base position at the pool's spot sqrtPriceX96
	 */
	function _getBasePosition() internal view returns (uint128 liquidity, uint256 amount0, uint256 amount1) {
		(uint128 positionLiquidity, uint128 tokensOwed0, uint128 tokensOwed1) = _position(baseLower, baseUpper);
		(amount0, amount1) = _amountsForLiquidity(baseLower, baseUpper, positionLiquidity);
		liquidity = positionLiquidity;
		amount0 = amount0 + uint256(tokensOwed0);
		amount1 = amount1 + uint256(tokensOwed1);
	}

	/**
	 * @dev Contains the common flow between rebalance and autoRebalance functions
	 * - Updates fees
	 * - Burns all liquidity
	 * - Collects all fees
	 * - Distributes fees
	 * - Returns token0 and token1 balances
	 * @return token0Bal Amount of token0
	 * @return token1Bal Amount of token1
	 */
	function _updateAndCollectPositionFees() internal returns (uint256, uint256) {
		// update fees
		(uint128 baseLiquidity, , ) = _position(baseLower, baseUpper);
		if (baseLiquidity > 0) {
			IUniswapV3Pool(pool).burn(baseLower, baseUpper, 0);
		}

		// Withdraw all liquidity and collect all fees from Uniswap pool
		(, uint256 feesBase0, uint256 feesBase1) = _position(baseLower, baseUpper);
		_burnLiquidity(baseLower, baseUpper, baseLiquidity, address(this), true);
		_distributeFees(feesBase0, feesBase1);

		uint256 token0Bal = IERC20(token0).balanceOf(address(this));
		uint256 token1Bal = IERC20(token1).balanceOf(address(this));
		emit Rebalance(currentTick(), token0Bal, token1Bal, feesBase0, feesBase1, totalSupply());
		return (token0Bal, token1Bal);
	}

	/**
	 * @notice Sends portion of swap fees to feeRecipient and affiliate.
	 *  @param fees0 fees for token0
	 *  @param fees1 fees for token1
	 */
	function _distributeFees(uint256 fees0, uint256 fees1) internal {
		// if there is no affiliate 100% of the baseFee should go to feeRecipient
		uint256 baseFeeSplit_ = (affiliate == NULL_ADDRESS) ? PRECISION : baseFeeSplit;

		if (feeRecipient == NULL_ADDRESS) revert UniV3TokenizedLp_ZeroAddress();

		if (baseFee > 0) {
			if (fees0 > 0) {
				uint256 totalFee = (fees0 * baseFee) / PRECISION;
				uint256 toRecipient = (totalFee * baseFeeSplit_) / PRECISION;
				uint256 toAffiliate = totalFee - toRecipient;
				IERC20(token0).safeTransfer(feeRecipient, toRecipient);
				if (toAffiliate > 0) {
					IERC20(token0).safeTransfer(affiliate, toAffiliate);
				}
			}
			if (fees1 > 0) {
				uint256 totalFee = (fees1 * baseFee) / PRECISION;
				uint256 toRecipient = (totalFee * baseFeeSplit_) / PRECISION;
				uint256 toAffiliate = totalFee - toRecipient;
				IERC20(token1).safeTransfer(feeRecipient, toRecipient);
				if (toAffiliate > 0) {
					IERC20(token1).safeTransfer(affiliate, toAffiliate);
				}
			}
		}
	}

	/**
	 * @notice Mint liquidity in Uniswap V3 pool.
	 *  @param tickLower The lower tick of the liquidity position
	 *  @param tickUpper The upper tick of the liquidity position
	 *  @param liquidity Amount of liquidity to mint
	 *  @param amount0 Used amount of token0
	 *  @param amount1 Used amount of token1
	 */
	function _mintLiquidity(
		int24 tickLower,
		int24 tickUpper,
		uint128 liquidity
	) internal returns (uint256 amount0, uint256 amount1) {
		if (liquidity > 0) {
			(amount0, amount1) = IUniswapV3Pool(pool).mint(
				address(this),
				tickLower,
				tickUpper,
				liquidity,
				abi.encode(address(this))
			);
		}
	}

	/**
	 * @notice Burn liquidity in Uniswap V3 pool.
	 *  @param tickLower The lower tick of the liquidity position
	 *  @param tickUpper The upper tick of the liquidity position
	 *  @param liquidity amount of liquidity to burn
	 *  @param to The account to receive token0 and token1 amounts
	 *  @param collectAll Flag that indicates whether all token0 and token1 tokens should be collected or only the ones released during this burn
	 *  @param amount0 released amount of token0
	 *  @param amount1 released amount of token1
	 */
	function _burnLiquidity(
		int24 tickLower,
		int24 tickUpper,
		uint128 liquidity,
		address to,
		bool collectAll
	) internal returns (uint256 amount0, uint256 amount1) {
		if (liquidity > 0) {
			// Burn liquidity
			(uint256 owed0, uint256 owed1) = IUniswapV3Pool(pool).burn(tickLower, tickUpper, liquidity);

			// Collect amount owed
			uint128 collect0 = collectAll ? type(uint128).max : UniV3PoolMath.uint128Safe(owed0);
			uint128 collect1 = collectAll ? type(uint128).max : UniV3PoolMath.uint128Safe(owed1);
			if (collect0 > 0 || collect1 > 0) {
				(amount0, amount1) = IUniswapV3Pool(pool).collect(to, tickLower, tickUpper, collect0, collect1);
			}
		}
	}

	/**
	 * @notice Calculates the "virtual" liquidity amount for the given shares.
	 *  @param tickLower The lower tick of the liquidity position
	 *  @param tickUpper The upper tick of the liquidity position
	 *  @param shares number of shares
	 */
	function _liquidityForShares(int24 tickLower, int24 tickUpper, uint256 shares) internal view returns (uint128) {
		(uint128 position, , ) = _position(tickLower, tickUpper);
		return UniV3PoolMath.uint128Safe((uint256(position) * shares) / totalSupply());
	}

	/**
	 * @notice Returns information about the liquidity position.
	 *  @param tickLower The lower tick of the liquidity position
	 *  @param tickUpper The upper tick of the liquidity position
	 *  @param liquidity virtual liquidity amount
	 *  @param tokensOwed0 amount of token0 owed to the owner of the position
	 *  @param tokensOwed1 amount of token1 owed to the owner of the position
	 */
	function _position(
		int24 tickLower,
		int24 tickUpper
	) internal view returns (uint128 liquidity, uint128 tokensOwed0, uint128 tokensOwed1) {
		bytes32 positionKey = keccak256(abi.encodePacked(address(this), tickLower, tickUpper));
		(liquidity, , , tokensOwed0, tokensOwed1) = IUniswapV3Pool(pool).positions(positionKey);
	}

	/**
	 * @notice Checks if the last price change happened in the current block
	 */
	function _checkHysteresis() private view returns (bool) {
		(, , uint16 observationIndex, ) = _queryPoolSlot0();
		(uint32 blockTimestamp, , , ) = IUniswapV3Pool(pool).observations(observationIndex);
		return (block.timestamp != blockTimestamp);
	}

	/**
	 * @notice Checks if the `refTick` is within pool's defined
	 * baseLower and baseUpper ticks
	 */
	function _checkPositionIsInRange(int24 refTick) private view returns (bool) {
		if (refTick >= baseLower && refTick <= baseUpper) return true;
		else return false;
	}

	/**
	 * @notice Calculates token0 and token1 amounts for virtual liquidity in a position
	 *  @param tickLower The lower tick of the liquidity position
	 *  @param tickUpper The upper tick of the liquidity position
	 *  @param liquidity Amount of virtual liquidity in the position
	 */
	function _amountsForLiquidity(
		int24 tickLower,
		int24 tickUpper,
		uint128 liquidity
	) internal view returns (uint256, uint256) {
		uint160 sqrtRatioRefX96 = getCurrentSqrtPriceX96();
		return
			UniV3PoolMath.getAmountsForLiquidity(
				sqrtRatioRefX96,
				UniV3PoolMath.getSqrtRatioAtTick(tickLower),
				UniV3PoolMath.getSqrtRatioAtTick(tickUpper),
				liquidity
			);
	}

	/**
	 * @notice Calculates amount of liquidity in a position for given token0 and token1 amounts
	 *  @param tickLower The lower tick of the liquidity position
	 *  @param tickUpper The upper tick of the liquidity position
	 *  @param amount0 token0 amount
	 *  @param amount1 token1 amount
	 */
	function _liquidityForAmounts(
		int24 tickLower,
		int24 tickUpper,
		uint256 amount0,
		uint256 amount1
	) internal view returns (uint128) {
		uint160 sqrtPriceRefX96 = getCurrentSqrtPriceX96();
		return
			UniV3PoolMath.getLiquidityForAmounts(
				sqrtPriceRefX96,
				UniV3PoolMath.getSqrtRatioAtTick(tickLower),
				UniV3PoolMath.getSqrtRatioAtTick(tickUpper),
				amount0,
				amount1
			);
	}

	/**
	 * @notice Calculates USD value of a token amount
	 * @param token_ to get price
	 * @param amount_ amount
	 * @param usdOracle_  oracle to get price
	 */
	function _getUsdValue(
		address token_,
		uint256 amount_,
		IChainlinkAdapter usdOracle_
	) internal view returns (uint256) {
		return (uint256(usdOracle_.latestAnswer()) * amount_) / (10 ** uint256(ERC20(token_).decimals()));
	}

	/**
	 * @notice Calculates token amount of a USD value
	 * @param token_ amount
	 * @param usdOracle_  oracle to get price
	 * @param value_ USD value
	 */
	function _getTokenFromUsdValue(
		address token_,
		IChainlinkAdapter usdOracle_,
		uint256 value_
	) internal view returns (uint256) {
		return (value_ * 10 ** ERC20(token_).decimals()) / uint256(usdOracle_.latestAnswer());
	}

	/**
	 * @dev Internal method that queries the pool slot0 state
	 * Note: Since the pool can be either IUniswapV3Pool or ICLPool, it tries to query both
	 * @return sqrtPriceX96 The current sqrtPriceX96
	 * @return tick The current tick
	 * @return observationIndex The current observation index
	 * @return unlocked The pool's unlocked status
	 */
	function _queryPoolSlot0()
		internal
		view
		returns (uint160 sqrtPriceX96, int24 tick, uint16 observationIndex, bool unlocked)
	{
		(bool success, bytes memory returnedData) = pool.staticcall(abi.encodeWithSignature("slot0()"));
		if (!success) revert UniV3TokenizedLp_failedToQueryPool();
		if (returnedData.length == ICLPOOL_SLOT0_SIZE) {
			(sqrtPriceX96, tick, observationIndex, , , unlocked) = abi.decode(
				returnedData,
				(uint160, int24, uint16, uint16, uint16, bool)
			);
		} else if (returnedData.length == IUNISWAPV3POOL_SLOT0_SIZE) {
			(sqrtPriceX96, tick, observationIndex, , , , unlocked) = abi.decode(
				returnedData,
				(uint160, int24, uint16, uint16, uint16, uint8, bool)
			);
		} else {
			revert UniV3TokenizedLp_invalidSlot0Size();
		}
	}

	/// Uniswap V3 callback functions

	/**
	 * @notice Callback function required by the UniswapV3 pool for minting a position
	 *  @dev this is where the payer transfers required token0 and token1 amounts
	 *  @param amount0 required amount of token0
	 *  @param amount1 required amount of token1
	 *  @param data encoded payer's address
	 */
	function uniswapV3MintCallback(uint256 amount0, uint256 amount1, bytes calldata data) external override {
		if (msg.sender != address(pool)) {
			revert UniV3TokenizedLp_MustBePool(891);
		}
		address payer = abi.decode(data, (address));

		if (payer == address(this)) {
			if (amount0 > 0) IERC20(token0).safeTransfer(msg.sender, amount0);
			if (amount1 > 0) IERC20(token1).safeTransfer(msg.sender, amount1);
		} else {
			if (amount0 > 0) {
				IERC20(token0).safeTransferFrom(payer, msg.sender, amount0);
			}
			if (amount1 > 0) {
				IERC20(token1).safeTransferFrom(payer, msg.sender, amount1);
			}
		}
	}

	/**
	 * @notice Callback function required by the UniswapV3 pool for executing a swap
	 *  @dev this is where the payer transfers required token0 and token1 amounts
	 *  @param amount0Delta required amount of token0
	 *  @param amount1Delta required amount of token1
	 *  @param data encoded payer's address
	 */
	function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes calldata data) external override {
		if (msg.sender != address(pool)) {
			revert UniV3TokenizedLp_MustBePool(917);
		}
		address payer = abi.decode(data, (address));

		if (amount0Delta > 0) {
			if (payer == address(this)) {
				IERC20(token0).safeTransfer(msg.sender, uint256(amount0Delta));
			} else {
				IERC20(token0).safeTransferFrom(payer, msg.sender, uint256(amount0Delta));
			}
		} else if (amount1Delta > 0) {
			if (payer == address(this)) {
				IERC20(token1).safeTransfer(msg.sender, uint256(amount1Delta));
			} else {
				IERC20(token1).safeTransferFrom(payer, msg.sender, uint256(amount1Delta));
			}
		}
	}

	//       |\      _,,,---,,_
	// ZZZzz /,`.-'`'    -.  ;-;;,_
	//      |,4-  ) )-,_. ,\ (  `'-'
	//     '---''(_/--'  `-'\_)
}
