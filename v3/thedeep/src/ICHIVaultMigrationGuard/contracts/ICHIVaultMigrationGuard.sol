// SPDX-License-Identifier: Unlicense
pragma solidity 0.7.6;

import { ICHIVaultDepositGuard } from "./ICHIVaultDepositGuard.sol";
import { IICHIVaultMigrationGuard } from "./interfaces/IICHIVaultMigrationGuard.sol";
import { IICHIVault } from "./interfaces/IICHIVault.sol";
import { IICHIVaultFactory } from "./interfaces/IICHIVaultFactory.sol";
import { IWRAPPED_NATIVE } from "./interfaces/IWRAPPED_NATIVE.sol";

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

contract ICHIVaultMigrationGuard is ICHIVaultDepositGuard, IICHIVaultMigrationGuard, Ownable {
	using SafeERC20 for IERC20;

	address private constant NULL_ADDRESS = address(0);

	address public immutable override oldFactory;
	address public immutable override newFactory;

	/// @notice Constructs the ICHIVaultMigrationGuard contract.
	/// @param _WRAPPED_NATIVE The address of the wrapped native token.
	/// @param _oldFactory The factory address for source vaults.
	/// @param _newFactory The factory address for destination vaults.
	constructor(
		address _WRAPPED_NATIVE,
		address _oldFactory,
		address _newFactory
	) ICHIVaultDepositGuard(_oldFactory, _WRAPPED_NATIVE) {
		require(_oldFactory != NULL_ADDRESS, "Invalid old factory");
		require(_newFactory != NULL_ADDRESS, "Invalid new factory");
		oldFactory = _oldFactory;
		newFactory = _newFactory;
	}

	/**
	 * @notice Migrates shares from one ICHI vault to another vault of the same type.
	 *         Withdraws from the `fromVault` (using oldFactory) and deposits allowed
	 *         tokens into the `toVault` (using newFactory), sending remaining tokens directly to the recipient.
	 * @param fromVault The source vault to withdraw shares from.
	 * @param fromVaultDeployer The deployer address used to validate `fromVault` against oldFactory.
	 * @param toVault The destination vault to deposit tokens into.
	 * @param toVaultDeployer The deployer address used to validate `toVault` against newFactory.
	 * @param shares The amount of vault shares to migrate from `fromVault`.
	 * @param minimumProceedsShares Minimum number of `toVault` shares expected from the migration.
	 * @param minimumProceedsToken0 Minimum amount of token0 sent directly to user.
	 * @param minimumProceedsToken1 Minimum amount of token1 sent directly to user.
	 * @param to Address receiving the newly minted `toVault` shares and any tokens not deposited.
	 * @return sharesOut The amount of `toVault` shares minted to `to`.
	 * @return token0Out The amount of token0 sent directly to `to`.
	 * @return token1Out The amount of token1 sent directly to `to`.
	 */
	function migrateVaultShares(
		address fromVault,
		address fromVaultDeployer,
		address toVault,
		address toVaultDeployer,
		uint256 shares,
		uint256 minimumProceedsShares,
		uint256 minimumProceedsToken0,
		uint256 minimumProceedsToken1,
		address to
	) external override nonReentrant returns (uint256 sharesOut, uint256 token0Out, uint256 token1Out) {
		_validateRecipient(to);

		// Validate both vaults and ensure they are of the same type
		_validateVaultPairCompatibilityWithFactories(
			fromVault, fromVaultDeployer, oldFactory,
			toVault, toVaultDeployer, newFactory
		);

		// Withdraw from source vault to this contract
		IERC20(fromVault).safeTransferFrom(msg.sender, address(this), shares);
		(uint256 amount0, uint256 amount1) = IICHIVault(fromVault).withdraw(shares, address(this));

		// Deposit allowed tokens into destination vault, send remaining to user
		(sharesOut, token0Out, token1Out) = _depositAllowedTokensToVaultWithFactory(
			toVault,
			toVaultDeployer,
			newFactory,
			amount0,
			amount1,
			minimumProceedsShares,
			minimumProceedsToken0,
			minimumProceedsToken1,
			to
		);

	}

	// ONLY FOR RESCUING TOKENS ACCIDENTALLY SENT TO THIS CONTRACT
	/// @notice Emergency withdraw function to rescue tokens accidentally sent to this contract
	/// @param token The token address to rescue
	/// @param to The address to send the rescued tokens to
	/// @param amount The amount of tokens to rescue
	function emergencyWithdraw(
		address token,
		address to,
		uint256 amount
	) external override onlyOwner nonReentrant {
		require(token != NULL_ADDRESS, "Invalid token");
		require(to != NULL_ADDRESS, "Invalid recipient");
		require(amount > 0, "Invalid amount");

		IERC20(token).safeTransfer(to, amount);
	}

	// ONLY FOR RESCUING NATIVE TOKENS ACCIDENTALLY SENT TO THIS CONTRACT
	/// @notice Emergency withdraw function to rescue native tokens accidentally sent to this contract
	/// @param to The address to send the rescued native tokens to
	/// @param amount The amount of native tokens to rescue
	function emergencyWithdrawNative(
		address to,
		uint256 amount
	) external override onlyOwner nonReentrant {
		require(to != NULL_ADDRESS, "Invalid recipient");
		require(amount > 0, "Invalid amount");
		require(address(this).balance >= amount, "Insufficient balance");

		payable(to).transfer(amount);
	}

	/**
	 * @notice Validates that two vaults are compatible for migration using their respective factories.
	 */
	function _validateVaultPairCompatibilityWithFactories(
		address fromVault,
		address fromVaultDeployer,
		address fromVaultFactory,
		address toVault,
		address toVaultDeployer,
		address toVaultFactory
	) internal view {
		(IICHIVault fromIchi, address fromToken0, address fromToken1) = _validateVaultWithFactory(fromVault, fromVaultDeployer, fromVaultFactory, false);
		(IICHIVault toIchi, address toToken0, address toToken1) = _validateVaultWithFactory(toVault, toVaultDeployer, toVaultFactory, false);

		require(fromToken0 == toToken0 && fromToken1 == toToken1, "Vault tokens mismatch");
		require(fromIchi.tickSpacing() == toIchi.tickSpacing(), "Tick spacing mismatch");

		// Require destination to accept at least one token type
		require(toIchi.allowToken0() || toIchi.allowToken1(), "Destination must allow at least one token");
	}

	/**
	 * @notice Validates a vault against a specific factory.
	 */
	function _validateVaultWithFactory(
		address vault,
		address vaultDeployer,
		address vaultFactory,
		bool validateNative
	) internal view returns (IICHIVault ichiVault, address token0, address token1) {
		ichiVault = IICHIVault(vault);

		token0 = ichiVault.token0();
		token1 = ichiVault.token1();

		if (validateNative) {
			require(token0 == WRAPPED_NATIVE || token1 == WRAPPED_NATIVE, "Native vault");
		}

		bytes32 factoryVaultKey = IICHIVaultFactory(vaultFactory).genKey(
			vaultDeployer,
			token0,
			token1,
			ichiVault.tickSpacing(),
			ichiVault.allowToken0(),
			ichiVault.allowToken1()
		);

		require(IICHIVaultFactory(vaultFactory).getICHIVault(factoryVaultKey) == vault, "Invalid vault");
	}

	/**
	 * @notice Deposits allowed tokens into the destination vault using a specific factory, sends remaining tokens to user.
	 */
	function _depositAllowedTokensToVaultWithFactory(
		address toVault,
		address toVaultDeployer,
		address toVaultFactory,
		uint256 amount0,
		uint256 amount1,
		uint256 minimumProceedsShares,
		uint256 minimumProceedsToken0,
		uint256 minimumProceedsToken1,
		address to
	) internal returns (uint256 sharesOut, uint256 token0Out, uint256 token1Out) {
		_validateVaultWithFactory(toVault, toVaultDeployer, toVaultFactory, false);
		IICHIVault ichiVault = IICHIVault(toVault);
		
		// Calculate what goes to user vs vault
		token0Out = (ichiVault.allowToken0() && amount0 > 0) ? 0 : amount0;
		token1Out = (ichiVault.allowToken1() && amount1 > 0) ? 0 : amount1;

		// Send tokens to user or approve for vault deposit
		if (token0Out > 0) {
			IERC20(ichiVault.token0()).safeTransfer(to, token0Out);
		} else if (amount0 > 0) {
			IERC20(ichiVault.token0()).safeIncreaseAllowance(toVault, amount0);
		}

		if (token1Out > 0) {
			IERC20(ichiVault.token1()).safeTransfer(to, token1Out);
		} else if (amount1 > 0) {
			IERC20(ichiVault.token1()).safeIncreaseAllowance(toVault, amount1);
		}

		// Deposit and validate
		require((amount0 - token0Out) > 0 || (amount1 - token1Out) > 0, "No tokens deposited");
		sharesOut = ichiVault.deposit(amount0 - token0Out, amount1 - token1Out, to);
		require(sharesOut >= minimumProceedsShares, "Slippage too great. Try again.");
		require(token0Out >= minimumProceedsToken0, "Insufficient token0 to user");
		require(token1Out >= minimumProceedsToken1, "Insufficient token1 to user");
	}
} 