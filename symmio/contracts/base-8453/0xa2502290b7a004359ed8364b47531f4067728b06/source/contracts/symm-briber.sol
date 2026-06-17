// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import { ISymmBriber } from "./interfaces/ISymmBriber.interface.sol";
import { IAerodrome } from "./interfaces/IAerodrome.interface.sol";
import { AccessControlEnumerableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/extensions/AccessControlEnumerableUpgradeable.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract SymmBriber is ISymmBriber, Initializable, AccessControlEnumerableUpgradeable, PausableUpgradeable {
	using SafeERC20 for IERC20;

	bytes32 public constant SETTER_ROLE = keccak256("SETTER_ROLE");
	bytes32 public constant WITHDRAWER_ROLE = keccak256("WITHDRAWER_ROLE");
	bytes32 public constant BRIBER_ROLE = keccak256("BRIBER_ROLE");
	bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
	bytes32 public constant UNPAUSER_ROLE = keccak256("UNPAUSER_ROLE");

	IERC20 public symm;
	IAerodrome public aerodrome;

	uint256 public bribeAmount;
	uint256 public lastBribeRound;

	uint256 public constant WEEK = 1 weeks;

	function initialize(address _adminAddress, address _symmAddress, address _aerodromeAddress) external initializer {
		__Pausable_init();
		__AccessControlEnumerable_init();

		if (_adminAddress == address(0) || _symmAddress == address(0) || _aerodromeAddress == address(0)) {
			revert ZeroAddress();
		}

		_grantRole(DEFAULT_ADMIN_ROLE, _adminAddress);
		aerodrome = IAerodrome(_aerodromeAddress);
		symm = IERC20(_symmAddress);
	}

	function payBribe() external onlyRole(BRIBER_ROLE) whenNotPaused {
		if (block.timestamp / WEEK <= lastBribeRound) revert BribeAlreadyPaid();
		if (bribeAmount == 0) revert BribeAmountNotSet();

		symm.approve(address(aerodrome), bribeAmount);
		aerodrome.notifyRewardAmount(address(symm), bribeAmount);

		lastBribeRound = block.timestamp / WEEK;
	}

	function setBribeAmount(uint256 _amount) external onlyRole(SETTER_ROLE) {
		if (_amount == 0) revert InvalidAmount();
		bribeAmount = _amount;
	}

	function pause() external onlyRole(PAUSER_ROLE) {
		_pause();
	}

	function unpause() external onlyRole(UNPAUSER_ROLE) {
		_unpause();
	}

	function rescueFunds(address token, uint256 amount) external onlyRole(WITHDRAWER_ROLE) {
		IERC20(token).safeTransfer(msg.sender, amount);
	}
}
