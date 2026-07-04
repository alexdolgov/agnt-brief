// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract LiquidityHelperPigsV2 is ReentrancyGuard, Ownable {
	using SafeERC20 for ERC20;

	// Token Address
	address public pigsTokenAddress;

	// PigsCredit Address
	address public pigsCreditAddress;

	// Pancakeswap Router
	address public router = 0x10ED43C718714eb63d5aA57B78B54704E256024E;

	receive() external payable {}

	fallback() external payable {}

	event SetPigsV2Address(address indexed pigsV2TokenAddress);
	event SetPigsCreditAddress(address indexed pigsCreditAddress);
	event UpdateRouterAddress(address indexed router);
	event StringError(string reason);

	modifier onlyPigsCredit() {
		require(pigsCreditAddress == msg.sender, "ERROR: Can only be called by PigsCredit!");
		_;
	}

	function addPigsETHLiquidity(uint256 nativeAmount) external payable nonReentrant {
		IUniswapV2Router02 pancakeswapRouter = IUniswapV2Router02(router);
		require(msg.value > 0, "addPigsETHLiquidity: Insufficient funds!");

		ERC20(pigsTokenAddress).safeTransferFrom(msg.sender, address(this), nativeAmount);

		// approve router to transfer tokens
		ERC20(pigsTokenAddress).approve(address(pancakeswapRouter), nativeAmount);

		// add liquidity
		pancakeswapRouter.addLiquidityETH{ value: msg.value }(
			pigsTokenAddress,
			nativeAmount,
			0, // slippage is unavoidable
			0, // slippage is unavoidable
			msg.sender,
			block.timestamp
		);

		if (address(this).balance > 0) {
			(bool success, ) = payable(msg.sender).call{ value: address(this).balance }("");
			if (!success) {
				emit StringError("Error while transfering change!");
			}
		}

		if (ERC20(pigsTokenAddress).balanceOf(address(this)) > 0) {
			ERC20(pigsTokenAddress).transfer(msg.sender, ERC20(pigsTokenAddress).balanceOf(address(this)));
		}
	}

	function addPigsLiquidity(
		address baseTokenAddress,
		uint256 baseAmount,
		uint256 nativeAmount
	) external nonReentrant {
		(uint256 baseTokenChange, uint256 pigsTokenChange, ) = _addLiquidity(baseTokenAddress, baseAmount, nativeAmount);

		if (baseTokenChange > 0) {
			ERC20(baseTokenAddress).safeTransfer(msg.sender, baseTokenChange);
		}
		if (pigsTokenChange > 0) {
			ERC20(pigsTokenAddress).transfer(msg.sender, pigsTokenChange);
		}
	}

	// Overloaded with an address to receive the change
	function addPigsLiquidity(
		address baseTokenAddress,
		uint256 baseAmount,
		uint256 nativeAmount,
		address changeAddress
	) external nonReentrant {
		(uint256 baseTokenChange, uint256 pigsTokenChange, ) = _addLiquidity(baseTokenAddress, baseAmount, nativeAmount);

		if (baseTokenChange > 0) {
			ERC20(baseTokenAddress).safeTransfer(changeAddress, baseTokenChange);
		}
		if (pigsTokenChange > 0) {
			ERC20(pigsTokenAddress).transfer(changeAddress, pigsTokenChange);
		}
	}

	// Add Liquidity to be used by the PigsCredit contract
	function addPigsLiquidityFromPigsCredit(
		address baseTokenAddress,
		uint256 baseAmount,
		uint256 nativeAmount,
		address changeAddress
	)
		external
		onlyPigsCredit
		nonReentrant
		returns (
			uint256,
			uint256,
			uint256
		)
	{
		(uint256 baseTokenChange, uint256 pigsTokenChange, uint256 liquidity) = _addLiquidity(baseTokenAddress, baseAmount, nativeAmount);

		// Due to PigsCredit mechanism, only BUSD change is sent back to the user.
		if (baseTokenChange > 0) {
			ERC20(baseTokenAddress).safeTransfer(changeAddress, baseTokenChange);
		}
		if (pigsTokenChange > 0) {
			ERC20(pigsTokenAddress).transfer(msg.sender, pigsTokenChange);
		}

		return (baseTokenChange, pigsTokenChange, liquidity);
	}

	function _addLiquidity(
		address baseTokenAddress,
		uint256 baseAmount,
		uint256 nativeAmount
	)
		internal
		returns (
			uint256,
			uint256,
			uint256
		)
	{
		IUniswapV2Router02 pancakeswapRouter = IUniswapV2Router02(router);

		ERC20(baseTokenAddress).safeTransferFrom(msg.sender, address(this), baseAmount);
		ERC20(pigsTokenAddress).safeTransferFrom(msg.sender, address(this), nativeAmount);

		// approve router to transfer tokens
		ERC20(baseTokenAddress).approve(address(pancakeswapRouter), baseAmount);
		ERC20(pigsTokenAddress).approve(address(pancakeswapRouter), nativeAmount);

		// add to liquidity
		(uint256 amountA, uint256 amountB, uint256 liquidity) = pancakeswapRouter.addLiquidity(
			baseTokenAddress,
			pigsTokenAddress,
			baseAmount,
			nativeAmount,
			0, // slippage is unavoidable
			0, // slippage is unavoidable
			msg.sender,
			block.timestamp
		);

		// Calculate change
		uint256 baseTokenChange = baseAmount - amountA;
		uint256 pigsTokenChange = nativeAmount - amountB;

		return (baseTokenChange, pigsTokenChange, liquidity);
	}

	/**
	 * @dev set the PIGS address.
	 * Can only be called by the current owner.
	 */
	function setPigsV2Address(address _pigsTokenAddress) external onlyOwner {
		require(_pigsTokenAddress != address(0), "setPigsV2Address: pigsV2TokenAddress cannot be the 0 address");
		require(_pigsTokenAddress != pigsTokenAddress, "setPigsV2Address: pigsV2TokenAddress already exists!");
		pigsTokenAddress = _pigsTokenAddress;
		emit SetPigsV2Address(pigsTokenAddress);
	}

	/**
	 * @dev set the PIGS address.
	 * Can only be called by the current owner.
	 */
	function setPigsCreditAddress(address _pigsCreditAddress) external onlyOwner {
		require(_pigsCreditAddress != address(0), "setPigsCreditAddress: pigsCreditAddress cannot be the 0 address");
		require(_pigsCreditAddress != pigsCreditAddress, "setPigsCreditAddress: pigsCreditAddress already exists!");
		pigsCreditAddress = _pigsCreditAddress;
		emit SetPigsCreditAddress(pigsCreditAddress);
	}

	/**
	 * @dev set the router address.
	 * Can only be called by the current owner.
	 */
	function updateRouterAddress(address _router) external onlyOwner {
		require(_router != address(0), "updateRouterAddress: Router Address Invalid!");
		require(router != _router, "updateRouterAddress: Router Address already exists!");
		router = _router;
		emit UpdateRouterAddress(_router);
	}
}
