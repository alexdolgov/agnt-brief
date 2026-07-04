// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "./interfaces/ISymmioSwapHelper.sol";
import "./interfaces/ICurveStableSwap.sol";
import "./interfaces/IUniSwapRouter.sol";

import "hardhat/console.sol";

contract SymmioSwapHelper is AccessControlEnumerable, Pausable, ISymmioSwapHelper {
	bytes32 public constant BALANCER_ROLE = keccak256("BALANCER_ROLE");
	bytes32 public constant SETTER_ROLE = keccak256("SETTER_ROLE");
	bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
	bytes32 public constant UNPAUSER_ROLE = keccak256("UNPAUSER_ROLE");

	mapping(address => address[]) public curvePools;

	constructor() {
		_grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
		_grantRole(BALANCER_ROLE, msg.sender);
		_grantRole(SETTER_ROLE, msg.sender);
		_grantRole(PAUSER_ROLE, msg.sender);
		_grantRole(UNPAUSER_ROLE, msg.sender);
	}

	function addCurvePoolTokens(address[] memory tokens, address pool) external onlyRole(SETTER_ROLE) {
		require(pool != address(0), "SymmioSwapHelper: Invalid pool address");
		curvePools[pool] = tokens;
		emit CurvePoolAdded(tokens, pool);
	}

	function swapWithConfigCurve(uint256 amount, CurveConfig memory config) public override onlyRole(BALANCER_ROLE) whenNotPaused {
		checkCurveConfig(config);
		address[] memory POOL_TOKENS = curvePools[config.pool];

		address tokenA = POOL_TOKENS[config.pairA_index];
		address tokenB = POOL_TOKENS[config.pairB_index];

		IERC20(tokenA).transferFrom(msg.sender, address(this), amount);
		IERC20(tokenA).approve(config.pool, amount);

		int128 _i = typeConvert(config.pairA_index);
		int128 _j = typeConvert(config.pairB_index);

		uint256 decimalA = IERC20Metadata(tokenA).decimals();
		uint256 decimalB = IERC20Metadata(tokenB).decimals();

		uint256 oldBalanceOfPairB = IERC20(tokenB).balanceOf(address(this));

		uint256 amountWith18Decimals = (amount * (10 ** (18 - decimalA)));

		IStableSwap(config.pool).exchange(_i, _j, amount, (amount - (amount * config.slippage) / 1e18));

		uint256 newBalanceOfPairB = IERC20(tokenB).balanceOf(address(this));
		uint256 netBalanceOFPairB = newBalanceOfPairB - oldBalanceOfPairB;
		uint256 netBalanceOFPairBWith18Decimals = (netBalanceOFPairB * (10 ** (18 - decimalB)));

		require(
			netBalanceOFPairBWith18Decimals >= amountWith18Decimals - ((amountWith18Decimals * config.slippage) / 1e18),
			"SymmioSwapHelper: Amount out exceeds slippage"
		);

		IERC20(tokenB).transfer(msg.sender, netBalanceOFPairB);
		emit SwappedWithCurve(amount, netBalanceOFPairB, config);
	}

	function swapWithConfigUniSwap(uint256 amount, UniSwapConfig memory config) public override onlyRole(BALANCER_ROLE) whenNotPaused {
		checkUniSwapConfig(config);

		IERC20(config.pairA).transferFrom(msg.sender, address(this), amount);
		IERC20(config.pairA).approve(config.router, amount);

		uint256 decimalA = IERC20Metadata(config.pairA).decimals();
		uint256 decimalB = IERC20Metadata(config.pairB).decimals();

		uint256 amountOutMinimum = ((amount - ((amount * config.slippage) / 1e18)) * (10 ** (decimalB))) / (10 ** (decimalA));

		uint256 oldBalanceOfPairB = IERC20(config.pairB).balanceOf(address(this));

		ISwapRouter.ExactInputSingleParams memory params = ISwapRouter.ExactInputSingleParams({
			tokenIn: config.pairA,
			tokenOut: config.pairB,
			fee: config.fee,
			recipient: config.recipient,
			deadline: block.timestamp,
			amountIn: amount,
			amountOutMinimum: amountOutMinimum,
			sqrtPriceLimitX96: config.sqrtPriceLimitX96
		});
		uint256 amountOut = ISwapRouter(config.router).exactInputSingle(params);

		uint256 newBalanceOfPairB = IERC20(config.pairB).balanceOf(address(this));
		uint256 netBalanceOFPairB = newBalanceOfPairB - oldBalanceOfPairB;

		require(netBalanceOFPairB >= amountOut, "SymmioSwapHelper: Something went wrong with swap");
		require(netBalanceOFPairB >= amountOutMinimum, "SymmioSwapHelper: Output Amount Exceeds Permissible Slippage");

		emit SwappedWithUniSwap(amount, netBalanceOFPairB, config);
	}

	function checkUniSwapConfig(UniSwapConfig memory config) public pure {
		require(config.slippage > 0 && config.slippage <= 1e18, "SymmioSwapHelper: wrong percent");
		require(config.pairB != address(0), "SymmioSwapHelper: pair zero address");
		require(config.pairA != address(0), "SymmioSwapHelper: pair zero address");
		require(config.recipient != address(0), "SymmioSwapHelper: recipient zero address");
		require(config.router != address(0), "SymmioSwapHelper: router zero address");
		require(config.pairA != config.pairB, "SymmioSwapHelper: same pair");
	}

	function checkCurveConfig(CurveConfig memory config) public view {
		require(config.slippage > 0 && config.slippage <= 1e18, "SymmioSwapHelper: wrong percent");
		require(config.pool != address(0), "SymmioSwapHelper: pool zero address");
		require(config.pairA_index != config.pairB_index, "SymmioSwapHelper: same pair");
		require(curvePools[config.pool].length > 0, "SymmioSwapHelper: pool not defined");
	}

	function typeConvert(uint256 val) internal pure returns (int128) {
		return int128(uint128(val));
	}

	function pause() public onlyRole(PAUSER_ROLE) {
		_pause();
	}

	function unpause() public onlyRole(UNPAUSER_ROLE) {
		_unpause();
	}
}
