//SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "../../../interfaces/IChainlinkAggregator.sol";
import {Token, PoolInfo, UserInfo} from "../../../interfaces/IIncentivesController.sol";
import "../../../interfaces/IMiddleFeeDistribution.sol";
import "../../../interfaces/IEligibilityDataProvider.sol";
import "../../../interfaces/IMultiFeeDistribution.sol";
import "../../../interfaces/ILooper.sol";
import "../../../lending/libraries/math/MathOperations.sol";

library IncentivesControllerStorage {
	using EnumerableSet for EnumerableSet.UintSet;

	struct Layout {
		/// @notice Info of each pool.
		mapping(address => PoolInfo) poolInfo;
		/// @notice token => user => Info of each user that stakes LP tokens.
		mapping(address => mapping(address => UserInfo)) userInfo;
		/// @notice total supply of the protocol by chain eid
		mapping(uint32 => mapping(Token => uint256)) totalSupplyByChain;
		/// @notice reward token paid
		mapping(uint32 => mapping(address => uint256)) userRewardPerTokenPaid;
		/// @notice rewards by chain eid
		mapping(uint32 => mapping(address => uint256)) rewards;
		/// @notice user eligibility for rewards by chain eid
		mapping(uint32 => mapping(address => bool)) isUserEligibleForRewardsByChain;
		/// @notice balances by chain eid
		mapping(uint32 => mapping(address => mapping(Token => uint256))) balancesByChain;
		/// @notice total supply of the protocol
		mapping(Token => uint256) totalSupply;
		/// @notice tokens chainlink aggregators
		mapping(Token => IChainlinkAggregator) tokenAggregators;
		/// @notice check if token is active
		mapping(Token => bool) isTokenActive;
		/// @notice returns the token enum by address
		mapping(address => Token) tokenAddresses;
		/// @notice valid pToken by address
		mapping(address => bool) validToken;
		/// @notice user prepaid gas for lz operations
		mapping(address => uint256) userPrepaidGas;
		/// @notice protocol value by chain
		mapping(uint32 => uint256) protocolValueByChain;
		/// @notice protocol value in USD
		mapping(Token => int256) tokenValueInUSD;
		/// @notice last oracle update time
		mapping(Token => uint256) lastOracleUpdateTime;
		/// @notice Middle Fee Distribution contract
		IMiddleFeeDistribution rewardMinter;
		/// @notice Pool configurator address
		address poolConfigurator;
		/// @notice Bounty manager address
		address bountyManager;
		/// @notice Multi Fee Distributor address
		address mfd;
		/// @notice PRFI token address
		address prfiToken;
		/// @notice check if the chain is the main chain
		bool isMainChain;
		/// @notice Main chain layer zero ID (EID)
		uint32 mainChain;
		/// @notice Sidechains layer zero IDs (EIDs)
		EnumerableSet.UintSet sidechains;
		/// @notice timestamp of the finish time
		uint256 periodFinish;
		/// @notice PRFI per second
		uint256 prfiPerSecond;
		/// @notice rewards duration in seconds
		uint256 rewardsDuration;
		/// @notice last time rewards were updated
		uint256 lastUpdateTime;
		/// @notice reward per token stored
		uint256 rewardPerTokenStored;
		/// @notice total protocol value
		uint256 totalProtocolValue;
		/// @notice total alloc point
		uint256 totalAllocPoint;
		/// @notice rewards start time
		uint256 startTime;
		/// @notice update oracle period
		uint256 updateOraclePeriod;
		/// @notice list of registered tokens
		address[] registeredTokens;
		/// @notice Eligibility data provider
		IEligibilityDataProvider eligibilityDataProvider;
	}

	bytes32 internal constant STORAGE_SLOT = 0x51e1380b427ffaa53c10d686a84f093d633d4a04716c75d93b964cea6fd57999;

	function layout() internal pure returns (Layout storage l) {
		assembly {
			l.slot := STORAGE_SLOT
		}
	}
}
