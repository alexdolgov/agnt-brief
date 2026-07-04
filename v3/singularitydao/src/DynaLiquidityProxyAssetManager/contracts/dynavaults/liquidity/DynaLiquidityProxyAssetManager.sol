// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/DynaLiquidityProxyAssetManagerAPI.sol";
import "../interfaces/DynaLiquidityAssetManagerAPI.sol";
import "../interfaces/MinimalBalancerAPI.sol";
import "../utils/Clonable.sol";

// @notice Minimal Balancer Vault interface for asset manager operations
enum PoolBalanceOpKind {
	WITHDRAW,
	DEPOSIT,
	UPDATE
}
struct PoolBalanceOp {
	PoolBalanceOpKind kind;
	bytes32 poolId;
	IERC20 token;
	uint256 amount;
}
interface IBVaultAssetManager {
	function managePoolBalance(PoolBalanceOp[] memory ops) external;
}

/**
 * @title DynaLiquidityProxyAssetManager
 * @notice Token AssetManager defaulting to HODL and can be set to proxy to an implementation
 */
contract DynaLiquidityProxyAssetManager is DynaLiquidityProxyAssetManagerAPI, Clonable {
	using SafeERC20 for IERC20;

	bytes32 public constant LIQUIDITY_GOVERNANCE = keccak256("LIQUIDITY_GOVERNANCE"); // change asset manager implementation
	bytes32 public constant ASSET_MANAGEMENT = keccak256("ASSET_MANAGEMENT"); // invest/liquidate assets into/from external strategy

	address public vault;
	address public asset;
	address public proxyImplementation;
	bytes32 public managedPoolId;

	error MissingVaultAddress();
	error MissingAssetAddress();
	error AlreadyInitialized();
	error IncorrectAsset();

	event ProxyImplementationUpdated(address newProxyImplementation);

	/**
	 * @notice Initializes the asset manager
	 * @param vaultAddress The address of the balancer vault
	 * @param poolId The balancer pool id
	 * @param assetAddress The address of the asset to manage
	 * @param liquidityGovernance The address of the liquidity governance
	 * @param assetManagement The address of the asset management
	 */
	function initialize(
		address vaultAddress,
		bytes32 poolId,
		address assetAddress,
		address liquidityGovernance,
		address assetManagement
	) external onlyRole(DEFAULT_ADMIN_ROLE) {
		if (vaultAddress == address(0)) revert MissingVaultAddress();
		if (assetAddress == address(0)) revert MissingAssetAddress();
		if (vault != address(0)) revert AlreadyInitialized();
		vault = vaultAddress;
		managedPoolId = poolId;
		asset = assetAddress;

		_grantRole(LIQUIDITY_GOVERNANCE, liquidityGovernance);
		_grantRole(ASSET_MANAGEMENT, assetManagement);
	}

	/**
	 * @notice Sets a proxy implementation
	 * @notice Must have LIQUIDITY_GOVERNANCE role
	 * @param newProxyImplementation The address of the new proxy implementation
	 */
	function setProxyImplementation(address newProxyImplementation) external onlyRole(LIQUIDITY_GOVERNANCE) {
		if (proxyImplementation != address(0)) {
			(, uint256 managedBefore, , ) = IBVault(vault).getPoolTokenInfo(managedPoolId, IERC20(asset));
			liquidate(managedBefore);
		}
		proxyImplementation = newProxyImplementation;
		if (newProxyImplementation != address(0)) {
			if (asset != address(0) && DynaLiquidityAssetManagerAPI(newProxyImplementation).asset() != asset) revert IncorrectAsset();
			uint256 availableBalance = IERC20(asset).balanceOf(address(this));
			invest(availableBalance);
		}
		emit ProxyImplementationUpdated(newProxyImplementation);
	}

	/**
	 * @notice Checks if a proxy implementation is set
	 * @return hasProxy Boolean indicator
	 */
	function hasProxyImplementation() public view returns (bool) {
		return (proxyImplementation != address(0));
	}

	/**
	 * @notice we only allow the removeToken function in the DynaLiquidity contract, which has the LIQUIDITY_GOVERNANCE, to call this
	 * @param tokenRecipient The desired recipient address of the tokens
	 */
	function removeToken(address tokenRecipient) public onlyRole(LIQUIDITY_GOVERNANCE) {
		(, uint256 managedBefore, , ) = IBVault(vault).getPoolTokenInfo(managedPoolId, IERC20(asset));
		// make sure we convert currently managed funds to cash
		depositToPool(managedPoolId, IERC20(asset), managedBefore);
		(uint256 cash, , , ) = IBVault(vault).getPoolTokenInfo(managedPoolId, IERC20(asset));

		// Tokens can be withdrawn from the Vault with a 'withdraw' operation, but that will create 'managed' balance
		// and leave the 'total' balance unchanged. We therefore have to perform two operations: one to withdraw, and
		// another to clear the 'managed' balance.
		PoolBalanceOp[] memory withdrawal = new PoolBalanceOp[](2);

		// First, we withdraw the tokens, creating a non-zero 'managed' balance in the Pool.
		withdrawal[0] = PoolBalanceOp({kind: PoolBalanceOpKind.WITHDRAW, poolId: managedPoolId, amount: cash, token: IERC20(asset)});

		// Then, we clear the 'managed' balance.
		withdrawal[1] = PoolBalanceOp({kind: PoolBalanceOpKind.UPDATE, poolId: managedPoolId, amount: 0, token: IERC20(asset)});

		IBVaultAssetManager(vault).managePoolBalance(withdrawal);
		uint256 amount = IERC20(asset).balanceOf(address(this));
		IERC20(asset).transfer(tokenRecipient, amount);
	}

	/**
	 * @notice Invests an amount of the managed token
	 * @param amount The amount of tokens to invest
	 */
	function invest(uint256 amount) public {
		withdrawFromPool(managedPoolId, IERC20(asset), amount);
	}

	/**
	 * @notice Liquidates an amount of the managed token
	 * @param amount The amount of tokens to liquidate
	 */
	function liquidate(uint256 amount) public {
		depositToPool(managedPoolId, IERC20(asset), amount);
	}

	/**
	 * @notice Withdraws tokens from pool
	 * @notice Must have ASSET_MANAGEMENT role
	 * @param poolId The balancer pool id
	 * @param token The address of the token
	 * @param amount The amount of tokens to withdraw
	 */
	function withdrawFromPool(bytes32 poolId, IERC20 token, uint256 amount) public onlyRole(ASSET_MANAGEMENT) {
		// Tokens can be withdrawn from the Vault with a 'withdraw' operation, but that will create 'managed' balance
		// and leave the 'total' balance unchanged. We therefore have to perform two operations: one to withdraw, and
		// another to clear the 'managed' balance.
		PoolBalanceOp[] memory withdrawal = new PoolBalanceOp[](2);

		// First, we withdraw the tokens, creating a non-zero 'managed' balance in the Pool.
		withdrawal[0] = PoolBalanceOp({kind: PoolBalanceOpKind.WITHDRAW, poolId: poolId, amount: amount, token: token});

		// Then, we clear the 'managed' balance.
		withdrawal[1] = PoolBalanceOp({kind: PoolBalanceOpKind.UPDATE, poolId: poolId, amount: 0, token: token});

		// transfer tokens from vault to this assets manager
		IBVaultAssetManager(vault).managePoolBalance(withdrawal);
		if (hasProxyImplementation() && amount != 0) {
			// deposit/stake into 3rd party protocol from this asset manager
			amount = IERC20(token).balanceOf(address(this));
			token.forceApprove(proxyImplementation, amount);
			DynaLiquidityAssetManagerAPI(proxyImplementation).invest(amount);
		}
	}

	/**
	 * @notice Deposits tokens in pool
	 * @notice Must have ASSET_MANAGEMENT role
	 * @param poolId The balancer pool id
	 * @param token The address of the token
	 * @param amount The amount of tokens to deposit
	 */
	function depositToPool(bytes32 poolId, IERC20 token, uint256 amount) public onlyRole(ASSET_MANAGEMENT) {
		if (hasProxyImplementation() && amount != 0) {
			// withdraw/unstake from 3rd party protocol into this asset manager
			DynaLiquidityAssetManagerAPI(proxyImplementation).liquidate(amount);
			amount = IERC20(token).balanceOf(address(this));
		}

		// Tokens can be deposited to the Vault with a 'deposit' operation, but that requires a prior 'managed'
		// balance to exist. We therefore have to perform two operations: one to set the 'managed' balance (representing
		// the new tokens which we are managing for the Pool), and another to deposit.
		PoolBalanceOp[] memory deposit = new PoolBalanceOp[](2);

		// First, we inform the Vault of the 'managed' tokens.
		deposit[0] = PoolBalanceOp({kind: PoolBalanceOpKind.UPDATE, poolId: poolId, amount: amount, token: token});

		// Then, we deposit them, clearing the 'managed' balance.
		deposit[1] = PoolBalanceOp({kind: PoolBalanceOpKind.DEPOSIT, poolId: poolId, amount: amount, token: token});

		// Before we can deposit tokens into the Vault however, we must approve them.
		token.forceApprove(vault, amount);
		// withdraw from this asset manager back into vault
		IBVaultAssetManager(vault).managePoolBalance(deposit);
	}
}
