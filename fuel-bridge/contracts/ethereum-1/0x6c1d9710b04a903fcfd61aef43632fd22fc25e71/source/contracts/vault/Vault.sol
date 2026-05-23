// SPDX-License-Identifier: Apache 2.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { Pausable } from "../utils/Pausable.sol";
import { IAuthorizedAgents } from "../interfaces/IAuthorizedAgents.sol";
import { IVault } from "../interfaces/IVault.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";
contract Vault is
	Initializable,
	UUPSUpgradeable,
	Pausable,
	IAuthorizedAgents,
	IVault
{
	using SafeCast for int256;

	error Int128Overflow();
	error NegativeSurplus();
	error AdjustmentCannotBeZero();

	bytes32 public constant AGENT_ROLE = keccak256("AGENT_ROLE");

	/// @custom:oz-upgrades-unsafe-allow state-variable-immutable
	address public immutable TOKEN;

	uint128 public totalDeposits;
	int128 public surplus;

	/// @notice Constructor disables initialization for the implementation contract
	/// @custom:oz-upgrades-unsafe-allow constructor
	constructor(address token) {
		TOKEN = token;
		_disableInitializers();
	}

	function initialize() external initializer {
		_grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
		_grantRole(PAUSER_ROLE, _msgSender());
		__Pausable_init();
	}

	/// @inheritdoc IAuthorizedAgents
	function isAgent(
		address addr
	) external view virtual override returns (bool) {
		return hasRole(AGENT_ROLE, addr);
	}

	/// @inheritdoc IAuthorizedAgents
	function setAgent(address addr, bool value) external virtual override {
		if (value) {
			grantRole(AGENT_ROLE, addr);
			emit AgentAdded(addr);
		} else {
			revokeRole(AGENT_ROLE, addr);
			emit AgentRemoved(addr);
		}
	}

	/// @inheritdoc IVault
	function release(
		address recipient,
		uint256 amount
	) external virtual override onlyRole(AGENT_ROLE) whenNotPaused {
		if (surplus < 0) {
			revert NegativeSurplus();
		}

		totalDeposits -= uint128(amount);

		// No need for safeTransferFrom, we know the token
		IERC20(TOKEN).transfer(recipient, amount);

		emit Released(recipient, amount);
	}

	/// @inheritdoc IVault
	/// @notice "after a deposit, sync the balances"
	/// @dev token won't have a max(uint128) supply, so there is no need for overflow checks
	function sync() external virtual override whenNotPaused returns (uint256) {
		int128 _surplus = surplus;

		uint128 _currentBalance = uint128(
			IERC20(TOKEN).balanceOf(address(this))
		);

		uint128 _totalDeposits = _surplus >= 0
			? _currentBalance - uint128(_surplus)
			: _currentBalance + uint128(-_surplus);

		totalDeposits = _totalDeposits;

		return _totalDeposits;
	}

	/// @inheritdoc IVault
	/// @dev "tokens have minted (+) or burned (-) in the sequencer chain"
	function adjustSurplus(
		int256 adjustment
	) external virtual override onlyRole(AGENT_ROLE) whenNotPaused {
		if (adjustment == int256(0)) revert AdjustmentCannotBeZero();

		int128 newSurplus = surplus - adjustment.toInt128();
		uint128 newTotalDeposits = totalDeposits;

		if (adjustment > 0) newTotalDeposits += uint128(uint256(adjustment));
		else newTotalDeposits -= uint128(uint256(-adjustment));

		surplus = newSurplus;
		totalDeposits = newTotalDeposits;

		emit BalancesAdjusted(newTotalDeposits, newSurplus);
	}

	/// @inheritdoc IVault
	/// @dev "deposit new rewards"
	function increaseSurplus(
		uint256 amount
	) external virtual override whenNotPaused {
		if (amount > uint256(int256(type(int128).max))) {
			revert Int128Overflow();
		}
		int128 newSurplus = surplus + int128(int256(amount));
		surplus = newSurplus;

		IERC20(TOKEN).transferFrom(_msgSender(), address(this), amount);
		emit BalancesAdjusted(totalDeposits, newSurplus);
	}

	function balances()
		external
		view
		virtual
		override
		returns (uint256, int256)
	{
		return (totalDeposits, surplus);
	}

	function _authorizeUpgrade(
		address newImplementation
	) internal virtual override onlyRole(DEFAULT_ADMIN_ROLE) {}
}
