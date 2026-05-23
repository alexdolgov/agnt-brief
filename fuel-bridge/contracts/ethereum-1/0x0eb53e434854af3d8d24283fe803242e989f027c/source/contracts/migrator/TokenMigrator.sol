// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.24;

import "../interfaces/ITokenMigrator.sol";
import "../interfaces/IERC20Mintable.sol";
import "../interfaces/ISequencerInterface.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract TokenMigrator is
	ITokenMigrator,
	AccessControlUpgradeable,
	PausableUpgradeable,
	UUPSUpgradeable
{
	/// @custom:oz-upgrades-unsafe-allow state-variable-immutable
	address internal immutable V1_TOKEN;
	/// @custom:oz-upgrades-unsafe-allow state-variable-immutable
	address internal immutable V2_TOKEN;
	/// @custom:oz-upgrades-unsafe-allow state-variable-immutable
	uint256 internal immutable MIGRATION_MULTIPLIER;
	/// @custom:oz-upgrades-unsafe-allow state-variable-immutable
	address internal immutable LOCKUP;
	/// @custom:oz-upgrades-unsafe-allow state-variable-immutable
	uint256 internal immutable VESTING_PERIOD_MIN;
	/// @custom:oz-upgrades-unsafe-allow state-variable-immutable
	uint256 internal immutable VESTING_PERIOD_MAX;

	bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

	/// @custom:oz-upgrades-unsafe-allow state-variable-immutable
	uint256 internal immutable DECIMALS_DOWNSCALING_FACTOR;

	/// @notice Constructor disables initialization for the implementation contract
	/// @custom:oz-upgrades-unsafe-allow constructor
	constructor(
		address v1Token,
		address v2Token,
		uint256 migrationMultiplier,
		address lockup,
		uint256 vestingPeriodMin,
		uint256 vestingPeriodMax,
		uint256 decimalsDownscalingFactor
	) {
		V1_TOKEN = v1Token;
		V2_TOKEN = v2Token;
		MIGRATION_MULTIPLIER = migrationMultiplier;
		LOCKUP = lockup;
		VESTING_PERIOD_MIN = vestingPeriodMin;
		VESTING_PERIOD_MAX = vestingPeriodMax;
		DECIMALS_DOWNSCALING_FACTOR = decimalsDownscalingFactor;
		_disableInitializers();
	}

	function initialize() external initializer {
		_grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
		_grantRole(PAUSER_ROLE, _msgSender());
		__Pausable_init();
	}

	function migrate(
		uint256 amount,
		uint256 vestingPeriod
	) external virtual override whenNotPaused {
		if (vestingPeriod < VESTING_PERIOD_MIN) revert VestingPeriodBelowMin();
		if (vestingPeriod > VESTING_PERIOD_MAX) revert VestingPeriodAboveMax();

		uint amountToMint = (amount * MIGRATION_MULTIPLIER) /
			DECIMALS_DOWNSCALING_FACTOR;

		if (amountToMint == 0) {
			revert InvalidAmountToMigrate();
		}
		// No need for safeTransfer - we know the tokens revert on failure
		IERC20(V1_TOKEN).transferFrom(_msgSender(), address(0), amount);

		// Migration forwards the tokens directly to the lockup & stake contract
		IERC20Mintable(V2_TOKEN).transfer(LOCKUP, amountToMint);
		ISequencerInterface(LOCKUP).handleMigration(
			_msgSender(),
			amountToMint,
			vestingPeriod,
			address(0)
		);
	}

	function pause() external virtual onlyRole(PAUSER_ROLE) {
		_pause();
	}

	function unpause() external virtual onlyRole(PAUSER_ROLE) {
		_unpause();
	}

	function _authorizeUpgrade(
		address newImplementation
	) internal virtual override onlyRole(DEFAULT_ADMIN_ROLE) {}
}
