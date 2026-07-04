// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

// ============ Imports ============
import "@openzeppelin/contracts/access/Ownable2Step.sol";

import {GaugeManager} from "../Gauge/GaugeManager.sol";
import {SilverLswManager} from "./SilverLswManager.sol";
import "../Security/ContractPermissionManager.sol";
import "../Security/TimelockProtection.sol";

// ============ Structs ============
struct GaugeVoteInfo {
	uint256 totalVoters;	// Total voters for this gauge
	address[] voters;		// List of voters (need to reset)
}

struct UserVoteInfo {
	address poolGauge;
	uint256 timestamp;
}

/**
 * @title SilverVoteLSW
 * @author github.com/SifexPro
 * @notice Contract for managing gauge voting in the LSW system
 */
contract SilverVoteLSW is Ownable2Step, TimelockProtection {
	// ============ Interfaces ============
	GaugeManager public gaugeManager;
	SilverLswManager public silverLswManager;
	ContractPermissionManager public immutable securityManager;

	// ============ Storage ============
	mapping(address => GaugeVoteInfo) public voteInfoByGauge;
	mapping(address => UserVoteInfo) public voteInfoByUser;
	address[] public votedGauges;

	// ============ Events for voting ============
	event GaugeVoted(address indexed gauge, address indexed voter);
	event VoteCleared(address indexed gauge, address indexed voter);
	
	// ============ Events for setters ============
	event GaugeManagerSet(address indexed newGaugeManager);
	event SilverLswManagerSet(address indexed newSilverLswManager);


	// ============ Constructor ============
	constructor(
		address _gaugeManager, 
		address _securityManager,
		address _timelockMain,
		address _timelockAdmin
	) Ownable(msg.sender) TimelockProtection(_timelockMain, _timelockAdmin) {
		gaugeManager = GaugeManager(payable(_gaugeManager));
		securityManager = ContractPermissionManager(_securityManager);
	}

	// ============ Vote functions ============

	/**
	 * @notice Vote on a gauge
	 * @param _poolGauge The gauge address
	 */
	function voteOnGauge(address _poolGauge) external eligibleUser {
		require(!silverLswManager.isLswLocked(), "Lsw system is locked");
		require(_poolGauge != address(0), "Zero address");
		require(gaugeManager.isGaugeActive(_poolGauge), "Gauge not active for voting");
		require(getUserVotedGauge(msg.sender) != _poolGauge, "User already voted on this gauge");
		
		address previousGauge = getUserVotedGauge(msg.sender);
		if (previousGauge != address(0)) {
			_removeVoterFromGauge(previousGauge, msg.sender);
		}

		require(gaugeManager.getUserVotingPower(msg.sender) > 0, "User has no voting power");
		
		_addVoterToGauge(_poolGauge, msg.sender);
		_addVotedGauge(_poolGauge);
		
		emit GaugeVoted(_poolGauge, msg.sender);
	}


	// ============ SilverLswManager functions ============

	/**
	 * @notice Clear all vote information
	 * @dev Only callable by SilverLswManager
	 */
	function clearVoteInfo() public onlySilverLswManager {
		if (votedGauges.length == 0) return;
		
		uint256 length = votedGauges.length;
		for (uint256 i = 0; i < length;) {
			address gauge = votedGauges[i];
			voteInfoByGauge[gauge].voters = new address[](0);
			voteInfoByGauge[gauge].totalVoters = 0;
			unchecked { ++i; }
		}
		delete votedGauges;
	}


	// ============ Internal functions ============

	/**
	 * @notice Add a voter to a gauge's voter list
	 * @param gauge The gauge address
	 * @param voter The voter address to add
	 */
	function _addVoterToGauge(address gauge, address voter) private {
		voteInfoByGauge[gauge].voters.push(voter);
		voteInfoByGauge[gauge].totalVoters++;
		voteInfoByUser[voter].poolGauge = gauge;
		voteInfoByUser[voter].timestamp = block.timestamp;
	}

	/**
	 * @notice Remove a voter from a gauge's voter list
	 * @param gauge The gauge address
	 * @param voter The voter address to remove
	 */
	function _removeVoterFromGauge(address gauge, address voter) private {
		address[] storage voters = voteInfoByGauge[gauge].voters;
		uint256 length = voters.length;
		
		for (uint256 i = 0; i < length;) {
			if (voters[i] == voter) {
				if (i < length - 1) {
					voters[i] = voters[length - 1];
				}
				voters.pop();
				voteInfoByUser[voter].poolGauge = address(0);
				voteInfoByGauge[gauge].totalVoters--;

				if (voteInfoByGauge[gauge].totalVoters == 0) {
					_removeVotedGauge(gauge);
				}
				emit VoteCleared(gauge, voter);
				break;
			}
			unchecked { ++i; }
		}
	}

	/**
	 * @notice Check if a gauge has been voted on
	 * @param gauge The gauge address
	 * @return bool Whether the gauge has been voted on
	 */
	function _isGaugeVoted(address gauge) public view returns (bool) {
		uint256 length = votedGauges.length;
		for (uint256 i = 0; i < length;) {
			if (votedGauges[i] == gauge) {
				return true;
			}
			unchecked { ++i; }
		}
		return false;
	}

	/**
	 * @notice Add a gauge to the voted gauges list
	 * @param gauge The gauge address
	 */
	function _addVotedGauge(address gauge) private {
		if (!_isGaugeVoted(gauge)) {
			votedGauges.push(gauge);
		}
	}

	/**
	 * @notice Remove a gauge from the voted gauges list
	 * @param gauge The gauge address
	 */
	function _removeVotedGauge(address gauge) private {
		uint256 length = votedGauges.length;
		for (uint256 i = 0; i < length;) {
			if (votedGauges[i] == gauge) {
				if (i < length - 1) {
					votedGauges[i] = votedGauges[length - 1];
				}
				votedGauges.pop();
				break;
			}
			unchecked { ++i; }
		}
	}


	// ============ Setters ============

	function setSilverLswManager(address _silverLswManager) public requireTimelockMain {
		silverLswManager = SilverLswManager(payable(_silverLswManager));
		emit SilverLswManagerSet(_silverLswManager);
	}

	function setGaugeManager(address _gaugeManager) public requireTimelockMain {
		gaugeManager = GaugeManager(payable(_gaugeManager));
		emit GaugeManagerSet(_gaugeManager);
	}


	// ============ Getters ============

	/**
	 * @notice Get the total number of voters for a gauge
	 * @param gauge The gauge address
	 * @return The total number of voters
	 */
	function getGaugeTotalVoters(address gauge) public view returns (uint256) {
		return voteInfoByGauge[gauge].totalVoters;
	}

	/**
	 * @notice Get the voters for a gauge
	 * @param gauge The gauge address
	 * @return The voters
	 */
	function getGaugeVoters(address gauge) public view returns (address[] memory) {
		return voteInfoByGauge[gauge].voters;
	}

	/**
	 * @notice Get the voted gauge for a user
	 * @param user The user address
	 * @return The voted gauge
	 */
	function getUserVotedGauge(address user) public view returns (address) {
		if (voteInfoByUser[user].timestamp > silverLswManager.getLastExecutionTimestamp()) {
			return voteInfoByUser[user].poolGauge;
		}
		return address(0);
	}

	/**
	 * @notice Get all voted gauges
	 * @return Array of voted gauge addresses
	 */
	function getVotedGauges() public view returns (address[] memory) {
		return votedGauges;
	}


	// ============ Modifiers ============

	/**
	 * @notice Ensures only the SilverLswManager contract can call the function
	 */
	modifier onlySilverLswManager() {
		require(securityManager.hasContractRole(securityManager.SILVER_LSW_MANAGER_ROLE(), msg.sender), "Not authorized");
		_;
	}

	modifier eligibleUser() {
		require(gaugeManager.getUserTotalAgsDeposits(msg.sender) > 0, "User has no voting power");
		_;
	}
}