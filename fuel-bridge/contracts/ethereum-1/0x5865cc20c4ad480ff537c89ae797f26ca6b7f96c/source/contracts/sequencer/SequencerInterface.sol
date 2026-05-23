// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { Pausable } from "../utils/Pausable.sol";
import "../interfaces/ISequencerInterface.sol";
import "../interfaces/ISequencerProxy.sol";
import "../interfaces/IVault.sol";
import "../interfaces/IRecoveryRegistry.sol";

import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract SequencerInterface is
	ISequencerInterface,
	Initializable,
	Pausable,
	UUPSUpgradeable
{
	error Auth();
	error DelegateOverflow();
	error ClaimAction();
	error WrongActionsOrder();
	error ZeroDeposit();
	error InvalidFunction();
	error TxnCountExceedsLimit();
	error Blocked();
	error InvalidRecoverer();
	error NoRecoverySetup();

	/// @custom:oz-upgrades-unsafe-allow state-variable-immutable
	address public immutable TOKEN;
	/// @custom:oz-upgrades-unsafe-allow state-variable-immutable
	address public immutable SEQUENCER;
	/// @custom:oz-upgrades-unsafe-allow state-variable-immutable
	address public immutable VAULT;

	bytes32 public constant MIGRATOR_ROLE = keccak256("MIGRATOR_ROLE");

	string public tokenCosmosDenomination;

	/// @dev Limits the number of transctions in batchAuthorize()
	uint256 public txnLimit;

	/// @notice Address of the recovery contract
	address public recoveryRegistry;

	/**
	 * @param token Address of the ERC20 token contract.
	 * @param proxy Address of the proxy contract.
	 */
	/// @custom:oz-upgrades-unsafe-allow constructor
	constructor(address token, address sequencer, address vault) {
		TOKEN = token;
		SEQUENCER = sequencer;
		VAULT = vault;
		_disableInitializers();
	}

	modifier whenNoRecoveryAddress(address from) {
		address recoveryAddress = IRecoveryRegistry(recoveryRegistry)
			.getRecoveryAddress(from);

		if (recoveryAddress != address(0)) {
			revert Blocked(); // block action
		}
		_;
	}

	function initialize(string calldata denom) external initializer {
		_grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
		_grantRole(PAUSER_ROLE, _msgSender());
		__Pausable_init();

		tokenCosmosDenomination = denom;
		txnLimit = 5; // initially set to 5
	}

	/// @inheritdoc ISequencerInterface
	function deposit(uint256 amount) external virtual override whenNotPaused {
		IERC20(TOKEN).transferFrom(_msgSender(), VAULT, amount);
		_deposit(_msgSender(), _msgSender(), amount, 0);
	}

	/// @inheritdoc ISequencerInterface
	function depositFor(
		uint256 amount,
		address recipient
	) external virtual override whenNotPaused {
		IERC20(TOKEN).transferFrom(_msgSender(), VAULT, amount);
		_deposit(_msgSender(), recipient, amount, 0);
	}

	/// @inheritdoc ISequencerInterface
	function depositAndDelegate(
		uint256 amount,
		address validator
	) external virtual override whenNotPaused {
		IERC20(TOKEN).transferFrom(_msgSender(), VAULT, amount);
		_depositAndDelegate(_msgSender(), amount, validator);
	}

	/// @inheritdoc ISequencerInterface
	function delegate(
		uint256 amount,
		address validator
	) external virtual override whenNotPaused {
		_delegate(_msgSender(), amount, validator);
	}

	/// @inheritdoc ISequencerInterface
	function redelegate(
		uint256 amount,
		address srcValidator,
		address dstValidator
	) external virtual override whenNotPaused {
		ISequencerProxy(SEQUENCER).redelegate(
			_msgSender(),
			srcValidator,
			dstValidator,
			amount
		);
	}

	/// @inheritdoc ISequencerInterface
	function claimRewards(
		address validator
	) external virtual override whenNotPaused {
		_claimRewards(_msgSender(), validator);
	}

	/// @inheritdoc ISequencerInterface
	function unbond(
		uint256 amount,
		address validator
	) external virtual override whenNotPaused {
		_unbond(_msgSender(), amount, validator);
	}

	/// @inheritdoc ISequencerInterface
	function withdraw(uint256 amount) external virtual override whenNotPaused {
		_withdraw(_msgSender(), _msgSender(), amount);
	}

	/// @inheritdoc ISequencerInterface
	function withdrawTo(
		uint256 amount,
		address recipient
	) external virtual override whenNotPaused {
		_withdraw(_msgSender(), recipient, amount);
	}

	/// @inheritdoc ISequencerInterface
	function transfer(
		address recipient,
		uint256 amount
	) external virtual override whenNotPaused {
		_transfer(_msgSender(), recipient, amount);
	}

	/// @inheritdoc ISequencerInterface
	function recoveryTransferFrom(
		address from,
		uint256 amount
	) external virtual override whenNotPaused {
		address recoveryAddress = IRecoveryRegistry(recoveryRegistry)
			.getRecoveryAddress(from);

		if (recoveryAddress == address(0)) {
			revert NoRecoverySetup();
		}

		if (recoveryAddress != _msgSender()) {
			revert InvalidRecoverer();
		}

		_transfer(from, _msgSender(), amount);
	}

	/// @inheritdoc ISequencerInterface
	function vote(
		uint64 proposalId,
		uint32 option,
		string memory metadata
	) external virtual override whenNotPaused {
		ISequencerProxy(SEQUENCER).vote(
			_msgSender(),
			proposalId,
			option,
			metadata
		);
	}

	/// @inheritdoc ISequencerInterface
	function setRewardRecipient(
		address rewardRecipient
	) external virtual override whenNotPaused {
		ISequencerProxy(SEQUENCER).setRewardRecipient(
			_msgSender(),
			rewardRecipient
		);
	}

	/// @inheritdoc ISequencerInterface
	function grantClaimRewards(
		address grantee,
		uint32 expiration
	)
		external
		virtual
		override
		whenNotPaused
		whenNoRecoveryAddress(msg.sender)
	{
		ISequencerProxy(SEQUENCER).grant(
			_msgSender(),
			grantee,
			"/cosmos.distribution.v1beta1.MsgWithdrawDelegatorReward",
			expiration
		);
	}

	/// @inheritdoc ISequencerInterface
	function revokeClaimRewards(
		address grantee
	)
		external
		virtual
		override
		whenNotPaused
		whenNoRecoveryAddress(msg.sender)
	{
		ISequencerProxy(SEQUENCER).revoke(
			_msgSender(),
			grantee,
			"/cosmos.distribution.v1beta1.MsgWithdrawDelegatorReward"
		);
	}

	/// @inheritdoc ISequencerInterface
	function handleMigration(
		address owner,
		uint256 amount,
		uint256 vestingPeriod,
		address validator
	) external virtual override whenNotPaused onlyRole(MIGRATOR_ROLE) {
		IERC20(TOKEN).transfer(VAULT, amount);

		_deposit(owner, owner, amount, vestingPeriod);

		if (validator != address(0)) {
			_delegate(owner, amount, validator);
		}
	}

	/// @inheritdoc ISequencerInterface
	function setTxnLimit(
		uint256 newTxnLimit
	) external override onlyRole(DEFAULT_ADMIN_ROLE) {
		txnLimit = newTxnLimit;
		emit TransactionLimitSet(newTxnLimit);
	}

	/// @inheritdoc ISequencerInterface
	function setTokenDenomination(
		string calldata newTokenDenomination
	) external override onlyRole(DEFAULT_ADMIN_ROLE) {
		tokenCosmosDenomination = newTokenDenomination;
		emit TokenDenominationSet(newTokenDenomination);
	}

	function setRecoveryRegistry(
		address newRecoveryRegistry
	) external onlyRole(DEFAULT_ADMIN_ROLE) {
		recoveryRegistry = newRecoveryRegistry;
	}

	/// @inheritdoc ISequencerInterface
	function onTransferReceived(
		address operator,
		address from,
		uint256 value,
		bytes calldata data
	) external virtual override whenNotPaused returns (bytes4) {
		// transferFromAndCall() not supported
		if (msg.sender != TOKEN || operator != from) {
			revert Auth();
		}
		IERC20(TOKEN).transfer(VAULT, value);
		_deposit(from, from, value, 0);

		if (data.length > 0) {
			bytes4 functionSelector = bytes4(data[:4]);

			if (functionSelector == this.delegate.selector) {
				(uint256 amount, address validator) = abi.decode(
					data[4:],
					(uint256, address)
				);
				_delegate(from, amount, validator);
			} else if (functionSelector == this.claimRewards.selector) {
				address validator = abi.decode(data[4:], (address));
				_claimRewards(from, validator);
			} else if (functionSelector == this.transfer.selector) {
				(address recipient, uint256 amount) = abi.decode(
					data[4:],
					(address, uint256)
				);
				_transfer(from, recipient, amount);
			} else {
				revert InvalidFunction();
			}
		}

		return IERC1363Receiver.onTransferReceived.selector;
	}

	function _deposit(
		address depositor,
		address recipient,
		uint256 amount,
		uint256 lockup
	) internal virtual {
		if (amount == 0) {
			revert ZeroDeposit();
		}
		ISequencerProxy(SEQUENCER).deposit(
			depositor,
			recipient,
			amount,
			lockup
		);

		IVault(VAULT).sync();

		emit Deposit(depositor, amount);
	}

	function _delegate(
		address delegator,
		uint256 amount,
		address validator
	) internal virtual {
		ISequencerProxy(SEQUENCER).delegate(delegator, validator, amount);
	}

	function _depositAndDelegate(
		address depositor,
		uint256 amount,
		address validator
	) internal virtual {
		_deposit(depositor, depositor, amount, 0);
		_delegate(depositor, amount, validator);
	}

	function _unbond(
		address sender,
		uint256 amount,
		address validator
	) internal virtual {
		ISequencerProxy(SEQUENCER).unbond(sender, validator, amount);
	}

	function _withdraw(
		address from,
		address to,
		uint256 amount
	) internal virtual whenNoRecoveryAddress(from) {
		ISequencerProxy(SEQUENCER).withdraw(from, to, amount);
	}

	function _transfer(
		address sender,
		address recipient,
		uint256 amount
	) internal virtual {
		address recoveryAddress = IRecoveryRegistry(recoveryRegistry)
			.getRecoveryAddress(sender);

		ISequencerProxy(SEQUENCER).transfer(
			sender,
			recoveryAddress == address(0) ? recipient : recoveryAddress,
			amount
		);
	}

	function _claimRewards(address delegator, address validator) internal {
		ISequencerProxy(SEQUENCER).claimRewards(delegator, validator);
	}

	function _authorizeUpgrade(
		address newImplementation
	) internal virtual override onlyRole(DEFAULT_ADMIN_ROLE) {}

	uint256[49] private __gap;
}
