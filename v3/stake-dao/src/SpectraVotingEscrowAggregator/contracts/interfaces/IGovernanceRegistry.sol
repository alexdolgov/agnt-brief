// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {IVotingEscrow} from "./IVotingEscrow.sol";
import {IRewardsDistributor} from "./IRewardsDistributor.sol";

interface IGovernanceRegistry {
    error InvalidVotingEscrow(address votingEscrowAddress);
    error InvalidVotingEscrowHistoryTimestamp(address votingEscrowAddress, uint256 timestamp);
    /* STRUCTS
     *****************************************************************************************************************/
    struct PoolNetworkData {
        address poolAddress;
        uint256 chainId;
        bool isRegistered;
    }

    struct VotingEscrowData {
        IVotingEscrow votingEscrow;
        uint256 votingWeight;
        uint256 registeredAt;
        IRewardsDistributor distributor;
    }

    struct VotingEscrowDataPoint {
        uint256 timestamp;
        uint256 votingWeight;
    }

    /* EVENTS
     *****************************************************************************************************************/
    event VotingRewardsFactoryChange(
        address indexed previousVotingRewardsFactory,
        address indexed newVotingRewardsFactory
    );
    event ManagedVotingRewardsFactoryChange(
        address indexed previousManagedVotingRewardsFactory,
        address indexed newManagedVotingRewardsFactory
    );
    event PoolRegistered(address indexed pool, uint256 indexed chainId, bool indexed isRegistered);
    event VotingEscrowRegistered(
        address indexed votingEscrow,
        uint256 indexed votingWeight,
        address indexed distributor
    );
    event VotingEscrowDisabled(address indexed votingEscrow);
    event VotingEscrowWeightChange(
        address indexed votingEscrow,
        uint256 indexed oldVotingWeight,
        uint256 indexed newVotingWeight
    );
    event VotingEscrowDistributorChange(
        address indexed votingEscrow,
        address indexed oldDistributor,
        address indexed newDistributor
    );
    event VeAggregatorChange(address indexed oldVeAggregator, address indexed newVeAggregator);
    event VoterChange(address indexed oldVoter, address indexed newVoter);
    event DistributorNotSet(address indexed votingEscrow);

    /* GETTERS
     *****************************************************************************************************************/

    /// @notice Get the VotingReward factory.
    function votingRewardsFactory() external view returns (address);

    /// @notice Get the Managed VotingReward factory.
    function managedVotingRewardsFactory() external view returns (address);

    /// @notice Get the locked managed rewards beacon.
    function lockedManagedRewardsBeacon() external view returns (address);

    /// @notice Get the free managed rewards beacon.
    function freeManagedRewardsBeacon() external view returns (address);

    /// @notice Get the fees voting rewards beacon.
    function feesVotingRewardsBeacon() external view returns (address);

    /// @notice Get the bribe voting rewards beacon.
    function bribeVotingRewardsBeacon() external view returns (address);

    /// @notice Get the veAggregator.
    function veAggregator() external view returns (address);

    /// @notice Get the voter.
    function voter() external view returns (address);

    /// @notice Get the pool data.
    /// @param _poolId The pool ID
    /// @return The pool address
    /// @return The chainId of the network on which the pool is deployed
    /// @return Boolean value, true if the pool is registered
    function poolsData(uint160 _poolId) external view returns (address, uint256, bool);

    /// @notice Get the voting escrows.
    /// @return The voting escrows
    function votingEscrows() external view returns (address[] memory);

    /// @notice Get the voting escrows at a specific timestamp.
    /// @param _timestamp The timestamp at which to get the voting escrows
    /// @return The voting escrows at the specified timestamp
    /// @return The count of voting escrows at the specified timestamp
    function votingEscrowsAt(uint256 _timestamp) external view returns (address[] memory, uint256);

    /// @notice Get the count of voting escrows.
    /// @return The count of voting escrows
    function getVotingEscrowsCount() external view returns (uint256);

    /// @notice Get the voting escrow data.
    /// @param _votingEscrowAddress The voting escrow address
    /// @return The voting escrow
    /// @return The voting weight of the voting escrow
    /// @return The registered at timestamp of the voting escrow
    /// @return The distributor of the voting escrow
    function votingEscrowData(
        address _votingEscrowAddress
    ) external view returns (IVotingEscrow, uint256, uint256, IRewardsDistributor);

    /// @notice Get the historical voting escrow data.
    /// @param _votingEscrowAddress The voting escrow address
    /// @param _index The index of the historical data
    /// @return The timestamp of the historical data
    /// @return The voting weight of the historical data
    function votingEscrowHistory(address _votingEscrowAddress, uint256 _index) external view returns (uint256, uint256);

    /// @notice Get the pool id for the given pool.
    /// @dev The pool ID is computed by XORing the pool address with the chainId of the network on which the pool is deployed.
    function getPoolId(address _pool, uint256 _chainId) external view returns (uint160);

    /// @notice Returns wether the pool is registered.
    /// @param _poolId The pool ID
    function isPoolRegistered(uint160 _poolId) external view returns (bool);

    /// @notice Returns wether the pool is registered.
    /// @param _pool The pool address
    /// @param _chainId The chainId of the network on which the pool is deployed
    function isPoolRegistered(address _pool, uint256 _chainId) external view returns (bool);

    /// @notice Returns wether the voting escrow is valid.
    /// @param _votingEscrowAddress The voting escrow address
    function isValidVotingEscrow(address _votingEscrowAddress) external view returns (bool);

    /// @notice Get the voting weight of a voting escrow.
    /// @param _votingEscrowAddress The voting escrow address
    function getVeWeight(address _votingEscrowAddress) external view returns (uint256);

    /// @notice Get the voting weight of a voting escrow at a specific timestamp.
    /// @param _votingEscrowAddress The voting escrow address
    /// @param _timestamp The timestamp at which to get the weight
    /// @return The voting weight at the specified timestamp
    function getVeWeightAt(address _votingEscrowAddress, uint256 _timestamp) external view returns (uint256);

    /// @notice Get the distributor of a voting escrow.
    /// @param _votingEscrowAddress The voting escrow address
    function getVeDistributor(address _votingEscrowAddress) external view returns (address);

    /* SETTERS
     *****************************************************************************************************************/

    /// @notice Set the VotingReward factory.
    /// @param _votingRewardsFactory .
    function setVotingRewardsFactory(address _votingRewardsFactory) external;

    /// @notice Set the pool registration.
    /// @param _pool The pool address
    /// @param _chainId The chainId of the network on which the pool is deployed
    /// @param _isRegistered True if pool needs to be registered, false otherwise
    function setPoolRegistration(address _pool, uint256 _chainId, bool _isRegistered) external;

    /// @notice Set the registration for multiple pools.
    /// @dev Utility to batch pool registrations.
    /// @param _pools The array of pools
    /// @param _chainIds The chainIds of the respective networks on which each pool is deployed
    /// @param _isRegistered True if pool needs to be registered, false otherwise
    function setPoolsRegistration(address[] calldata _pools, uint256[] calldata _chainIds, bool _isRegistered) external;

    /// @notice Register a voting escrow.
    /// @param _votingEscrowAddress The voting escrow address
    /// @param _votingWeight The voting weight of the voting escrow
    /// @param _distributor The distributor address
    function registerVotingEscrow(address _votingEscrowAddress, uint256 _votingWeight, address _distributor) external;

    /// @notice Disable a voting escrow.
    /// @param _votingEscrowAddress The voting escrow address
    function disableVotingEscrow(address _votingEscrowAddress) external;

    /// @notice Set the voting weight of a voting escrow.
    /// @param _votingEscrowAddress The voting escrow address
    /// @param _votingWeight The voting weight of the voting escrow
    function setVotingEscrowWeight(address _votingEscrowAddress, uint256 _votingWeight) external;

    /// @notice Set the distributor of a voting escrow.
    /// @param _votingEscrowAddress The voting escrow address
    /// @param _distributor The distributor address
    function setVotingEscrowDistributor(address _votingEscrowAddress, address _distributor) external;

    /// @notice Set the veAggregator.
    /// @param _veAggregator The veAggregator address
    function setVeAggregator(address _veAggregator) external;

    /// @notice Set the voter.
    /// @param _voter The voter address
    function setVoter(address _voter) external;

    /// @notice Set the managed rewards beacons.
    /// @param _lockedManagedRewardsBeacon The locked managed rewards beacon address
    /// @param _freeManagedRewardsBeacon The free managed rewards beacon address
    function setManagedRewardsBeacons(address _lockedManagedRewardsBeacon, address _freeManagedRewardsBeacon) external;

    /// @notice Set the voting rewards beacons.
    /// @param _feesVotingRewardsBeacon The fees voting rewards beacon address
    /// @param _bribeVotingRewardsBeacon The bribe voting rewards beacon address
    function setVotingRewardsBeacons(address _feesVotingRewardsBeacon, address _bribeVotingRewardsBeacon) external;

    /// @notice Set the managed voting rewards factory.
    /// @param _managedVotingRewardsFactory The managed voting rewards factory address
    function setManagedVotingRewardsFactory(address _managedVotingRewardsFactory) external;
}
