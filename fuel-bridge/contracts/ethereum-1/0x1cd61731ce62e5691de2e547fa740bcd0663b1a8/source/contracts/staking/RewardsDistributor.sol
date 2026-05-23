// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import { IRewardsDistributor } from "../interfaces/IRewardsDistributor.sol";
import { ISequencerInterface } from "../interfaces/ISequencerInterface.sol";
import { IERC1363 } from "@openzeppelin/contracts/interfaces/IERC1363.sol";
import { IFuelERC20Gateway } from "../interfaces/IFuelERC20Gateway.sol";

contract RewardsDistributor is
	IRewardsDistributor,
	Initializable,
	AccessControlUpgradeable,
	UUPSUpgradeable
{
	bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
	bytes32 public constant ORACLE_ROLE = keccak256("ORACLE_ROLE");

	/// @custom:oz-upgrades-unsafe-allow state-variable-immutable
	ISequencerInterface public immutable sequencerInterface;
	/// @custom:oz-upgrades-unsafe-allow state-variable-immutable
	IERC1363 public immutable fuelToken;
	/// @custom:oz-upgrades-unsafe-allow state-variable-immutable
	bytes32 public l2StakingContractId;
	/// @custom:oz-upgrades-unsafe-allow state-variable-immutable
	address public immutable fuelERC20Gateway;

	/// @dev total staked amount by the foundation
	uint256 public collateral;

	/// @dev L2 user deposits
	uint256 public userDeposits;

	/// @dev Address to receive a portion of staking rewards
	address public foundationAddress;

	/// @custom:oz-upgrades-unsafe-allow constructor
	constructor(
		address _sequencerInterface,
		address _fuelToken,
		bytes32 _l2StakingContractId,
		address _fuelERC20Gateway
	) {
		sequencerInterface = ISequencerInterface(_sequencerInterface);
		fuelToken = IERC1363(_fuelToken);
		l2StakingContractId = _l2StakingContractId;
		fuelERC20Gateway = _fuelERC20Gateway;
		_disableInitializers();
	}

	function initialize() public initializer {
		__AccessControl_init();
		__UUPSUpgradeable_init();

		_grantRole(DEFAULT_ADMIN_ROLE, _msgSender());
		_grantRole(OPERATOR_ROLE, _msgSender());
	}

	/// @inheritdoc IRewardsDistributor
	function claim(
		address[] calldata validators,
		uint256 withdrawAmount
	) external onlyRole(OPERATOR_ROLE) {
		uint256 validatorsLength = validators.length;
		if (validatorsLength > 0) {
			for (uint256 i = 0; i < validatorsLength; i++) {
				sequencerInterface.claimRewards(validators[i]);
			}
		}

		if (withdrawAmount > 0) {
			sequencerInterface.withdraw(withdrawAmount);
		}

		emit RewardsClaimed(validators, withdrawAmount);
	}

	/// @inheritdoc IRewardsDistributor
	function distribute() external onlyRole(OPERATOR_ROLE) {
		uint256 tokenBalance = fuelToken.balanceOf(address(this));
		uint256 amountToDistribute = tokenBalance;

		if (amountToDistribute == 0) revert NoRewardsToDistribute();

		// Calculate shares based on amount being distributed

		uint256 userShare = userDeposits > 0
			? (amountToDistribute * userDeposits) / collateral
			: 0;

		uint256 foundationShare = amountToDistribute - userShare;

		if (userShare > 0) {
			bytes memory rewardsMessage = abi.encodePacked(uint256(0));

			fuelToken.approve(fuelERC20Gateway, userShare);
			IFuelERC20Gateway(fuelERC20Gateway).depositWithData(
				l2StakingContractId,
				address(fuelToken),
				userShare,
				rewardsMessage
			);
		}

		if (foundationShare > 0) {
			fuelToken.transfer(foundationAddress, foundationShare);
		}

		emit RewardsDistributed(amountToDistribute, userShare, foundationShare);
	}

	/// @inheritdoc IRewardsDistributor
	/// @dev Note that this is not additive, it overwrites the value
	function updateUserDeposits(
		uint256 _userDeposits
	) external override onlyRole(ORACLE_ROLE) {
		if(_userDeposits > collateral) revert UserDepositsHigherThanCollateral();
		userDeposits = _userDeposits;
		emit UserDepositsUpdated(_userDeposits);
	}

	/// @inheritdoc IRewardsDistributor
	/// @dev Note that this is not additive, it overwrites the value
	function updateCollateral(
		uint256 _collateral
	) external onlyRole(OPERATOR_ROLE) {
		if(_collateral < userDeposits) revert CollateralLessThanUserDeposits();
		collateral = _collateral;
		emit CollateralUpdated(_collateral);
	}

	/// @inheritdoc IRewardsDistributor
	function setFoundationAddress(
		address _foundationAddress
	) external onlyRole(DEFAULT_ADMIN_ROLE) {
		foundationAddress = _foundationAddress;
		emit FoundationAddressUpdated(_foundationAddress);
	}

	function setL2StakingContractId(
		bytes32 _l2StakingContractId
	) external onlyRole(DEFAULT_ADMIN_ROLE) {
		l2StakingContractId = _l2StakingContractId;
	}

	function _authorizeUpgrade(
		address newImplementation
	) internal virtual override onlyRole(DEFAULT_ADMIN_ROLE) {}

	uint256[50] private __gap;
}
