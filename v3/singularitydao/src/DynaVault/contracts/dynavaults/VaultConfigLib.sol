// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/utils/math/Math.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "./interfaces/VaultManagerAPI.sol";
import "./interfaces/IReferenceAssetOracle.sol";
import "./utils/Checks.sol";

/**
 * @title VaultConfigLib is part of DynaVault and explicitly handles the storage of contract addresses.
 * @notice It includes several necessary setter functions which allow governance to adjust max loss/deviation variables.
 */
library VaultConfigLib {
	using Checks for address;
	using Math for uint256;
	using SafeERC20 for IERC20;

	/// @dev The storage slot follows EIP1967 to avoid storage collision
	bytes32 private constant CONFIG_STORAGE_POSITION = bytes32(uint256(keccak256("DynaVault.configStorage")) - 1);
	uint256 private constant MAX_BPS = 1e2; // 100.00%
	uint256 private constant DEFAULT_MAX_LOSS = 100; // default 1.00% max loss protection
	uint256 private constant MAX_LOSS_LIMIT = 2000; // 10.00% max loss protection

	struct ConfigStorage {
		address token;
		address manager;
		address dynaRouter;
		address referenceAssetOracle;
		address referenceAsset;
		uint256 depositDecimals;
		uint256 maxLoss; // max loss BPS for loss protection
	}

	/**
	 * @notice returns the library storage
	 * @return cs storage pointer for accessing the state variables
	 */
	function configStorage() private pure returns (ConfigStorage storage cs) {
		bytes32 position = CONFIG_STORAGE_POSITION;
		assembly {
			cs.slot := position
		}
	}

	/**
	 * @notice returns the address of the vault manager
	 * @return manager address of the vault manager
	 */
	function manager() external view returns (address) {
		return configStorage().manager;
	}

	/**
	 * @notice returns the address of the deposit token
	 * @return asset address of the deposit token
	 */
	function asset() external view returns (address) {
		return configStorage().token;
	}

	/**
	 * @notice returns the address of the dyna router
	 * @return dynaRouter address of the dyna router
	 */
	function dynaRouter() external view returns (address) {
		return configStorage().dynaRouter;
	}

	/**
	 * @notice returns the address of the reference oracle
	 * @return referenceAssetOracle address of the reference oracle
	 */
	function referenceAssetOracle() external view returns (address) {
		return configStorage().referenceAssetOracle;
	}

	/**
	 * @notice returns the decimals of the deposit token
	 * @return decimals of the deposit token
	 */
	function depositDecimals() external view returns (uint256) {
		return configStorage().depositDecimals;
	}

	/**
	 * @notice initializes the config library
	 * @param managerAddress address of the manager
	 * @param dynaRouterAddress address of the dyna router
	 * @param referenceAssetOracleAddress address of the reference asset oracle
	 */
	function initialize(address managerAddress, address dynaRouterAddress, address referenceAssetOracleAddress) external {
		managerAddress.requireNonZeroAddress();
		dynaRouterAddress.requireNonZeroAddress();
		referenceAssetOracleAddress.requireNonZeroAddress();

		ConfigStorage storage _storage = configStorage();
		require(_storage.manager == address(0), "ERR_REINIT");
		_storage.manager = managerAddress;
		_storage.token = VaultManagerAPI(managerAddress).token();
		_storage.depositDecimals = IERC20Metadata(_storage.token).decimals();
		IERC20(_storage.token).safeIncreaseAllowance(managerAddress, type(uint256).max); // set max allowance assuming it was 0

		_storage.dynaRouter = dynaRouterAddress;
		_storage.referenceAssetOracle = referenceAssetOracleAddress;
		address _referenceAsset = IReferenceAssetOracle(referenceAssetOracleAddress).referenceAsset();
		_storage.referenceAsset = _referenceAsset;
		_storage.maxLoss = DEFAULT_MAX_LOSS;
	}

	/**
	 * @notice checks if caller is manager
	 */
	function onlyManager() external view {
		require(address(msg.sender) == configStorage().manager, "!manager");
	}

	/**
	 * @notice set the dyna router address
	 * @param _dynaRouter address of the new dyna router
	 */
	function setRouter(address _dynaRouter) external {
		VaultManagerAPI(configStorage().manager).checkGovernance(msg.sender);
		_dynaRouter.requireNonZeroAddress();
		configStorage().dynaRouter = _dynaRouter;
	}

	/**
	 * @notice sets the reference asset oracle address
	 * @param _upgradedReferenceAssetOracle address of the new reference asset oracle
	 */
	function setReferenceAssetOracle(address _upgradedReferenceAssetOracle) external {
		VaultManagerAPI(configStorage().manager).checkGovernance(msg.sender);
		_upgradedReferenceAssetOracle.requireNonZeroAddress();
		ConfigStorage storage _storage = configStorage();
		_storage.referenceAssetOracle = _upgradedReferenceAssetOracle;
		address _referenceAsset = IReferenceAssetOracle(_upgradedReferenceAssetOracle).referenceAsset();
		require(_storage.referenceAsset == _referenceAsset, "!sameReferenceAsset");
		_storage.referenceAsset = _referenceAsset;
	}

	/**
	 * @notice returns the reference asset address
	 * @return referenceAsset address of the reference assets
	 */
	function referenceAsset() external view returns (address) {
		return configStorage().referenceAsset;
	}

	/**
	 * @notice returns the current max loss limit
	 * @return maxLoss the current max loss limit
	 */
	function maxLoss() external view returns (uint256) {
		return configStorage().maxLoss;
	}

	/**
	 * @notice set max loss
	 * @param _maxLoss the new max loss limit
	 */
	function setMaxLoss(uint256 _maxLoss) external {
		VaultManagerAPI(configStorage().manager).checkGovernance(msg.sender);
		require(_maxLoss <= MAX_LOSS_LIMIT, "ERR_MAX_LOSS_LIMIT");
		configStorage().maxLoss = _maxLoss;
	}

	/**
	 * @notice approve manager for swapping token
	 * @param tokenAddress address of the token to approve
	 */
	function approveAddedToken(address tokenAddress) external {
		address _manager = configStorage().manager;
		require(msg.sender == _manager, "!authorized");
		if (IERC20(tokenAddress).allowance(address(this), _manager) == 0) {
			IERC20(tokenAddress).safeIncreaseAllowance(_manager, type(uint256).max);
		}
	}
}
