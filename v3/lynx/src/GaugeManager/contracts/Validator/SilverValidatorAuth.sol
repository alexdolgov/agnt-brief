// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

// ============ Imports ============
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "../Security/ContractPermissionManager.sol";

import {ISFC} from "../interfaces/ISFC.sol";

// ============ Interfaces ============
interface StakerInfoInterface {
    function getInfo(uint256 _stakerID) external view returns (string memory);
    function updateInfo(string calldata _configUrl) external;
}

/**
 * @title SilverValidatorAuth
 * @author github.com/SifexPro
 * @notice This contract is used to create and manage validators for the SilverLsw project
 * @dev This contract should be secured with a multisig and timelock
 */
contract SilverValidatorAuth is Ownable2Step {
	// ============ Constants ============
	uint256 private constant PUBKEY_LENGTH = 48;

	// ============ Variables ============
	StakerInfoInterface public immutable stakerInfo;
	ISFC public immutable sfc;
	uint256 public validatorID;
	bool public validatorCreated;
	uint256 public withdrawIndex = 0;
	ContractPermissionManager public immutable securityManager;

	// ============ Events for validator ============
	event ValidatorCreated(uint256 indexed validatorID, uint256 stake);
	event ValidatorInfoUpdated(string configUrl);
	event ValidatorRewardsClaimed(uint256 timestamp);
	
	// ============ Events for delegation ============
	event Delegated(uint256 indexed toValidatorID, uint256 amount);
	event Undelegated(uint256 indexed toValidatorID, uint256 amount);

	// ============ Constructor ============
	constructor(
		address _multisig, 
		address _sfc, 
		address _stakerInfo,
		address _securityManager
	) Ownable(_multisig) {
		require(_sfc != address(0), "SFC address cannot be zero address");
		require(_stakerInfo != address(0), "StakerInfo address cannot be zero address");
		require(_securityManager != address(0), "ContractPermissionManager address cannot be zero address");
		
		sfc = ISFC(_sfc);
		stakerInfo = StakerInfoInterface(_stakerInfo);
		securityManager = ContractPermissionManager(_securityManager);
	}


	// ============ Validator Creation ============

	/**
	 * @notice Create a new validator
	 * @dev Only callable by the owner (multisig)
	 * @param pubkey The validator's public key
	 */
	function _createValidator(bytes calldata pubkey) public payable onlyOwner {
		require(!validatorCreated, "Validator already created");
		require(pubkey.length == PUBKEY_LENGTH, "Invalid pubkey length");

		sfc.createValidator{value: msg.value}(pubkey);
		validatorID = sfc.getValidatorID(address(this));

		validatorCreated = true;
		emit ValidatorCreated(validatorID, msg.value);
	}

	/**
	 * @notice Update validator information
	 * @dev Only callable by the owner (multisig)
	 * @param _configUrl The new configuration URL
	 */
	function _updateValidatorInfo(string calldata _configUrl) public onlyOwner {
		require(bytes(_configUrl).length > 0, "Empty config URL");
		stakerInfo.updateInfo(_configUrl);
		emit ValidatorInfoUpdated(_configUrl);
	}


	// ============ Validator Interaction ============
	
	/**
	 * @notice Claim validator rewards
	 * @dev Only callable by SilverLswManager
	 */
	function _claimRewards() public onlySilverLswManager {
		sfc.claimRewards(validatorID);

		emit ValidatorRewardsClaimed(block.timestamp);
	}

	/**
	 * @notice Delegate stake to a validator
	 * @dev Only callable by the owner (multisig)
	 * @param toValidatorID The validator ID to delegate to
	 */
	function _delegate(uint256 toValidatorID) public payable onlyOwner {
		require(msg.value > 0, "Amount must be greater than 0");
		sfc.delegate{value: msg.value}(toValidatorID);
		emit Delegated(toValidatorID, msg.value);
	}

	/**
	 * @notice Undelegate stake from a validator
	 * @dev Only callable by the owner (multisig)
	 * @param toValidatorID The validator ID to undelegate from
	 * @param amount The amount to undelegate
	 */
	function _undelegate(uint256 toValidatorID, uint256 amount) public onlyOwner {
		require(amount > 0, "Amount must be greater than 0");
		sfc.undelegate(toValidatorID, _incrementWithdrawIndex(), amount);
		emit Undelegated(toValidatorID, amount);
	}

	/**
	 * @notice Withdraw rewards from a validator
	 * @dev Only callable by the owner (multisig)
	 * @param wrID The withdrawal request ID
	 */
	function _withdraw(uint256 wrID) public onlyOwner {
		sfc.withdraw(validatorID, wrID);
	}


	// ============ Getters ============

	/**
	 * @notice Get validator information
	 * @return The validator's configuration URL
	 */
	function getValidatorInfo() public view returns (string memory) {
		return stakerInfo.getInfo(validatorID);
	}

	/**
	 * @notice Get the validator ID
	 * @return The validator ID
	 */
	function getValidatorID() public view returns (uint256) {
		return validatorID;
	}


	// ============ Internal functions ============

	/**
	 * @notice Increment and generate a new withdrawal index
	 * @return The new withdrawal index
	 */
	function _incrementWithdrawIndex() private returns (uint256) {
		unchecked {
			withdrawIndex++;
		}

		uint256 timestampComponent = uint256(block.timestamp & 0xFFFFFFFF) << 16;
		uint256 indexComponent = withdrawIndex & 0xFFFF;
		uint256 prefixComponent = 0xFFF << 48;
		
		return prefixComponent | timestampComponent | indexComponent;
	}


	// ============ Modifiers ============

	modifier onlySilverLswManager () {
		require(securityManager.hasContractRole(securityManager.SILVER_LSW_MANAGER_ROLE(), msg.sender), "Not authorized");
		_;
	}


	// ============ Receive Function ============

	receive() external payable {}
}
