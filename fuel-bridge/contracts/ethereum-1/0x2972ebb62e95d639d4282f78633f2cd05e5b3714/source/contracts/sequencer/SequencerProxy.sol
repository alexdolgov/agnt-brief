// SPDX-License-Identifier: Apache 2.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import { ISequencerProxy } from "../interfaces/ISequencerProxy.sol";
import { Pausable } from "../utils/Pausable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract SequencerProxy is
	ISequencerProxy,
	Initializable,
	AccessControlUpgradeable,
	Pausable,
	UUPSUpgradeable
{
	bytes32 public constant INTERFACE_ROLE = keccak256("INTERFACE_ROLE");

	/// @custom:oz-upgrades-unsafe-allow constructor
	constructor() {
		_disableInitializers();
	}

	function initialize() external initializer {
		_grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
		_grantRole(PAUSER_ROLE, _msgSender());
		__Pausable_init();
	}

	/// @inheritdoc ISequencerProxy
	function deposit(
		address depositor,
		address recipient,
		uint256 amount,
		uint256 lockup
	) external whenNotPaused onlyRole(INTERFACE_ROLE) {
		emit Deposit(depositor, recipient, amount, lockup);
	}

	/// @inheritdoc ISequencerProxy
	function delegate(
		address delegator,
		address validator,
		uint256 amount
	) external whenNotPaused onlyRole(INTERFACE_ROLE) {
		emit Delegate(delegator, validator, amount);
	}

	/// @inheritdoc ISequencerProxy
	function redelegate(
		address delegator,
		address srcValidator,
		address dstValidator,
		uint256 amount
	) external whenNotPaused onlyRole(INTERFACE_ROLE) {
		emit Redelegate(delegator, srcValidator, dstValidator, amount);
	}

	/// @inheritdoc ISequencerProxy
	function claimRewards(
		address delegator,
		address validator
	) external whenNotPaused onlyRole(INTERFACE_ROLE) {
		emit ClaimRewards(delegator, validator);
	}

	/// @inheritdoc ISequencerProxy
	function unbond(
		address delegator,
		address validator,
		uint256 amount
	) external whenNotPaused onlyRole(INTERFACE_ROLE) {
		emit Unbond(delegator, validator, amount);
	}

	/// @inheritdoc ISequencerProxy
	function withdraw(
		address sender,
		address recipient,
		uint256 amount
	) external whenNotPaused onlyRole(INTERFACE_ROLE) {
		emit Withdraw(sender, recipient, amount);
	}

	/// @inheritdoc ISequencerProxy
	function transfer(
		address sender,
		address recipient,
		uint256 amount
	) external whenNotPaused onlyRole(INTERFACE_ROLE) {
		emit Transfer(sender, recipient, amount);
	}

	/// @inheritdoc ISequencerProxy
	function vote(
		address voter,
		uint64 proposalId,
		uint32 option,
		string memory metadata
	) external whenNotPaused onlyRole(INTERFACE_ROLE) {
		emit Vote(voter, proposalId, option, metadata);
	}

	/// @inheritdoc ISequencerProxy
	function setRewardRecipient(
		address delegator,
		address recipient
	) external whenNotPaused onlyRole(INTERFACE_ROLE) {
		emit SetRewardRecipient(delegator, recipient);
	}

	/// @inheritdoc ISequencerProxy
	function grant(
		address granter,
		address grantee,
		string memory msgTypeUrl,
		uint32 expiration
	) external whenNotPaused onlyRole(INTERFACE_ROLE) {
		emit Grant(granter, grantee, msgTypeUrl, expiration);
	}

	/// @inheritdoc ISequencerProxy
	function revoke(
		address granter,
		address grantee,
		string memory msgTypeUrl
	) external whenNotPaused onlyRole(INTERFACE_ROLE) {
		emit Revoke(granter, grantee, msgTypeUrl);
	}

	/// @inheritdoc ISequencerProxy
	function authorize(
		address sender,
		bytes calldata data
	) external whenNotPaused onlyRole(INTERFACE_ROLE) {
		emit Authorize(sender, data);
	}

	function _authorizeUpgrade(
		address newImplementation
	) internal virtual override onlyRole(DEFAULT_ADMIN_ROLE) {}
}
