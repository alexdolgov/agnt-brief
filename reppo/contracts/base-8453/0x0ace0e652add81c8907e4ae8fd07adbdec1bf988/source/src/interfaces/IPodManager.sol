// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IBeacon} from "@openzeppelin/contracts/proxy/beacon/IBeacon.sol";
import {FCU} from "./types/FCU.sol";

/// @title IPodManager
/// @notice Interface for the PodManager contract that manages NFT pods, voting, revenue distribution, and emissions
/// @dev This contract serves as the central hub for a pod-based fund raising and revenue sharing system. Pods are ERC721 NFTs that can have associated Fee Claim Units (FCUs) for voting and revenue distribution.
interface IPodManager {
    /// @notice Emitted when the emission per epoch is updated
    /// @param emissionPerEpoch The new emission amount per epoch
    event EmissionPerEpochUpdated(uint256 emissionPerEpoch);

    /// @notice Emitted when a new pod NFT is minted
    /// @param podId The ID of the newly minted pod
    /// @param to The address receiving the pod NFT
    event PodMinted(uint256 indexed podId, address indexed to);

    /// @notice Emitted when a pod NFT is burned
    /// @param podId The ID of the burned pod
    event PodBurned(uint256 indexed podId);

    /// @notice Emitted when a commitment is revealed
    /// @param epoch The epoch in which the commitment was revealed
    /// @param commitId The ID of the revealed commitment
    /// @param podId The ID of the pod being voted on
    /// @param votes The number of votes revealed
    /// @param voter The address of the voter who revealed the commitment
    event CommitRevealed(uint256 indexed epoch, uint256 indexed commitId, uint256 indexed podId, uint256 votes, address voter);

    /// @notice Emitted when a pod owner claims their share of emissions for a specific epoch
    /// @param epoch The epoch for which emissions were claimed
    /// @param podId The ID of the pod for which emissions were claimed
    /// @param amount The amount of emissions claimed
    /// @param podOwner The address of the pod owner who claimed the emissions
    event PodOwnerEmissionsClaimed(uint256 indexed epoch, uint256 indexed podId, uint256 amount, address indexed podOwner);

    /// @notice Emitted when a voter claims their share of emissions for a specific pod in a specific epoch
    /// @param epoch The epoch for which emissions were claimed
    /// @param podId The ID of the pod for which emissions were claimed
    /// @param amount The amount of emissions claimed
    /// @param voter The address of the voter who claimed the emissions
    event VoterEmissionsClaimed(uint256 indexed epoch, uint256 indexed podId, uint256 amount, address indexed voter);

    /// @notice Emitted when a user withdraws their claimed emissions for a specific pod in a specific epoch
    /// @param epoch The epoch for which emissions were withdrawn
    /// @param podId The ID of the pod for which emissions were withdrawn
    /// @param amount The amount of emissions withdrawn
    /// @param user The address of the user who withdrew the emissions
    event EmissionsWithdrawn(uint256 indexed epoch, uint256 indexed podId, uint256 amount, address indexed user);

    /// @notice Emitted when the publishing fee is updated
    /// @param newPublishingFee The new publishing fee amount in REPP tokens
    event PublishingFeeUpdated(uint256 newPublishingFee);

    /// @notice Emitted when the maximum pod emission share claim percent of the pool is updated
    /// @param newMaxPercent The new maximum percentage of the emission pool that a pod can claim
    event MaxPodEmissionShareClaimPercentOfPoolUpdated(uint8 newMaxPercent);

    /// @notice Emitted when the governance reserve address is updated
    /// @param newGovernanceReserve The new governance reserve address
    event GovernanceReserveUpdated(address newGovernanceReserve);

    /// @notice Emitted when the subnet reserve address is updated
    /// @param newSubnetReserve The new subnet reserve address
    event SubnetReserveUpdated(address newSubnetReserve);

    /// @notice Emitted when the governance reserve percentage is updated
    /// @param newPercent The new governance reserve percentage
    event GovernanceReservePercentUpdated(uint8 newPercent);

    /// @notice Emitted when the subnet reserve percentage is updated
    /// @param newPercent The new subnet reserve percentage
    event SubnetReservePercentUpdated(uint8 newPercent);

    /// @notice Emitted when reserve emissions are transferred
    /// @param epoch The epoch for which reserve emissions were transferred
    /// @param podId The ID of the pod for which reserve emissions were transferred
    /// @param governanceReserveShare The amount of emissions transferred to the governance reserve
    event GovernanceReserveEmissionsTransferred(
            uint256 indexed epoch,
            uint256 indexed podId,
            uint256 governanceReserveShare
    );

    /// @notice Emitted when reserve emissions are transferred
    /// @param epoch The epoch for which reserve emissions were transferred
    /// @param podId The ID of the pod for which reserve emissions were transferred
    /// @param subnetReserveShare The amount of emissions transferred to the subnet reserve
    event SubnetReserveEmissionsTransferred(
            uint256 indexed epoch,
            uint256 indexed podId,
            uint256 subnetReserveShare
    );

    /// @notice Emitted when a commitment is registered
    /// @param commitId The ID of the registered commitment
    /// @param commitHash The hash of the registered commitment
    /// @param owner The address of the owner who registered the commitment
    event CommitRegistered(uint256 indexed commitId, bytes32 commitHash, address indexed owner);

    /// @notice Emitted when the base URI is updated
    /// @param newBaseURI The new base URI
    event BaseURIUpdated(string newBaseURI);

    /// @notice Emitted when tokens are withdrawn from the contract
    /// @param token The address of the ERC20 token withdrawn
    /// @param to The address to which the tokens were withdrawn
    /// @param amount The amount of tokens withdrawn
    event TokenWithdrawn(address indexed token, address indexed to, uint256 amount);

    /// @notice Emitted when the REPP token address is set
    /// @param reppoAddress The address of the REPP token
    event ReppoAddressSet(address reppoAddress);

    /// @notice Thrown when an unauthorized address attempts a restricted operation
    error Unauthorized();

    /// @notice Thrown when attempting to operate on a non-existent pod
    error PodNotFound();

    /// @notice Thrown when attempting to access a non-existent epoch
    error EpochNotFound();

    /// @notice Thrown when attempting to vote with zero votes
    error ZeroVotes();

    /// @notice Thrown when attempting to withdraw emissions that have already been withdrawn
    error EmissionsAlreadyWithdrawn();

    /// @notice Thrown when attempting to claim emissions that have already been claimed
    error EmissionsAlreadyClaimed();

    /// @notice Thrown when attempting to perform a pod owner operation on a pod not owned by the caller
    error PodNotOwnedByCaller();

    /// @notice Thrown when a commitment reveal is not in the reveal epoch
    error InvalidCommitRevealEpoch();

    /// @notice Thrown when a commitment reveal hash does not match the registered commitments
    error InvalidCommitReveal();

    /// @notice Thrown when a commitment reveal is attempted by an address that does not own the commitment
    error NotCommitOwner();

    /// @notice Thrown when a voter attempts to reveal more votes than they committed to
    error InsufficientVotingPower();

    /// @notice Thrown when attempting to withdraw emissions in an invalid epoch
    error InvalidEmissionWithdrawEpoch();

    /// @notice Thrown when a pod does not exist
    error PodDoesNotExist();

    /// @notice Thrown when a user attempts to vote for their own pod
    error CanNotVoteForOwnPod();

    /// @notice Thrown when a user attempts to claim emissions but has no votes revealed
    error EmissionsNotClaimed();

    /// @notice Thrown when there are no emissions available for withdrawal
    error NoEmissionsAvailableForWithdrawal();

    /// @notice Thrown when an invalid emission share percent is provided
    error InvalidEmissionSharePercent();

    /// @notice Thrown when the transfer of the pod minting fee fails
    error PodMintingFeeTransferFailed();

    /// @notice Thrown when emissions become zero after applying decay factor
    error ZeroEmissionsAfterDecay();

    /// @notice Thrown when a pod owner attempts to claim emissions before doing so
    error PodOwnerEmissionsNotClaimed();

    /// @notice Thrown when a voter attempts to claim emissions before doing so
    error InvalidReservePercent();

    /// @notice Sets the publishing fee required to mint a new pod
    /// @dev Only callable by the contract admin
    /// @param newPublishingFee The new publishing fee amount in REPP tokens
    function setPublishingFee(uint256 newPublishingFee) external;

    /// @notice Sets the emission amount per epoch
    /// @dev Only callable by authorized addresses (emission manager)
    /// @param emissionPerEpoch The new emission amount per epoch
    function setEmissionPerEpoch(uint256 emissionPerEpoch) external;

    /// @notice Registers a commitment for a voter in the current epoch
    /// @param commitment The commitment hash provided by the voter
    /// @return commitId The ID of the newly registered commitment
    function registerCommit(bytes32 commitment) external returns (uint256 commitId);

    /// @notice Reveals a previously registered commitment
    /// @param podId The ID of the pod being voted on
    /// @param votes The number of votes being revealed
    /// @param salt The salt used in the original commitment hash
    function revealCommit(uint256 epoch_, uint256 commitmentId, uint256 podId, uint256 votes, bytes32 salt) external;

    /// @notice Withdraws a specified amount of a given ERC20 token to a specified address
    /// @dev Only callable by the contract admin
    /// @param token The ERC20 token to withdraw
    /// @param to The address to send the withdrawn tokens to
    /// @param amount The amount of tokens to withdraw
    function withdrawToken(IERC20 token, address to, uint256 amount) external;

    /// @notice Mints a new pod NFT
    /// @dev Only callable by authorized addresses (pod admin)
    /// @param to The address to mint the pod to
    /// @param emissionSharePercent The percentage of emissions allocated to the pod owner (1-100)
    /// @return podId The ID of the newly minted pod
    function mintPod(address to, uint8 emissionSharePercent) external returns (uint256 podId);

    /// @notice Burns an existing pod NFT
    /// @dev Only callable by authorized addresses (pod admin)
    /// @param podId The ID of the pod to burn
    function burnPod(uint256 podId) external;

    /// @notice Returns the POD_ADMIN_ROLE constant
    /// @return The bytes32 hash of the POD_ADMIN_ROLE
    function POD_ADMIN_ROLE() external view returns (bytes32);

    /// @notice Returns the EMISSION_MANAGER_ROLE constant
    /// @return The bytes32 hash of the EMISSION_MANAGER_ROLE
    function EMISSION_MANAGER_ROLE() external view returns (bytes32);

    /// @notice Returns the UPGRADE_MANAGER_ROLE constant
    /// @return The bytes32 hash of the UPGRADE_MANAGER_ROLE
    function UPGRADE_MANAGER_ROLE() external view returns (bytes32);

    /// @notice Returns the next commit ID for current epoch
    /// @return The next commit ID for the specified epoch
    function nextCommitId() external view returns (uint256);

    /// @notice Returns the total votes revealed in a specific epoch
    /// @param epoch The epoch number to query
    /// @return The total votes revealed in the specified epoch
    function getEpochTotalVotes(uint256 epoch) external view returns (uint256);

    /// @notice Returns the commit hash for a specific epoch and commit ID
    /// @param epoch The epoch number to query
    /// @param commitId The commit ID to query
    /// @return The commit hash associated with the specified epoch and commit ID
    function getCommitHash(uint256 epoch, uint256 commitId) external view returns (bytes32);

    /// @notice Returns the owner address for a specific epoch and commit ID
    /// @param epoch The epoch number to query
    /// @param commitId The commit ID to query
    /// @return The owner address associated with the specified epoch and commit ID
    function getCommitOwner(uint256 epoch, uint256 commitId) external view returns (address);

    /// @notice Validates if a given commit reveal matches the registered commitment
    /// @param epoch The epoch number of the commitment
    /// @param commitId The commit ID of the commitment
    /// @param podId The pod ID being voted on
    /// @param votes The number of votes being revealed
    /// @param salt The salt used in the original commitment hash
    /// @return True if the reveal matches the registered commitment, false otherwise
    function isValidCommit(
        uint256 epoch,
        uint256 commitId,
        uint256 podId,
        uint256 votes,
        bytes32 salt
    ) external view returns (bool);

    /// @notice Returns the total votes revealed by a specific voter in a specific epoch
    /// @param voter The address of the voter
    /// @param epoch The epoch number to query
    /// @return The total votes revealed by the specified voter in the specified epoch
    function votesRevealedByVoterForEpoch(address voter, uint256 epoch) external view returns (uint256);

    /// @notice Returns the emission amount per epoch
    /// @return The emission amount per epoch
    function emissionPerEpoch() external view returns (uint256);

    /// @notice Returns the total votes received by a specific pod in a specific epoch
    /// @param epoch The epoch number to query
    /// @param podId The ID of the pod to query
    /// @return The total votes received by the specified pod in the specified epoch
    function getPodVotesOfEpoch(uint256 epoch, uint256 podId) external view returns (uint256);

    /// @notice Returns the number of votes a specific voter has cast for a specific pod in a specific epoch
    /// @param epoch The epoch number to query
    /// @param podId The ID of the pod to query
    /// @param voter The address of the voter
    /// @return The number of votes the specified voter has cast for the specified pod in the specified epoch
    function getVotersVotesForPodInEpoch(
        uint256 epoch,
        uint256 podId,
        address voter
    ) external view returns (uint256);

    /// @notice Returns the total emissions allocated to a specific pod for a specific epoch
    /// @param epoch The epoch number to query
    /// @param podId The ID of the pod to query
    /// @return The total emissions allocated to the specified pod for the specified epoch
    function getPodEmissionsOfEpoch(uint256 epoch, uint256 podId) external view returns (uint256);

    /// @notice Checks if the pod owner has already claimed emissions for a specific epoch
    /// @param epoch The epoch number to query
    /// @param podId The ID of the pod to query
    /// @return True if the pod owner has claimed emissions for the specified epoch, false otherwise
    function hasPodOwnerClaimedEmissions(uint256 epoch, uint256 podId) external view returns (bool);

    /// @notice Checks if a specific user has already claimed emissions for a specific pod in a specific epoch
    /// @param epoch The epoch number to query
    /// @param podId The ID of the pod to query
    /// @param user The address of the user
    /// @return True if the user has claimed emissions for the specified pod in the specified epoch
    function hasUserClaimedEmissions(uint256 epoch, uint256 podId, address user) external view returns (bool);

    /// @notice Allows the pod owner to claim their share of emissions for a specific epoch
    /// @param podId The ID of the pod for which to claim emissions
    /// @param epoch The epoch number for which to claim emissions
    /// @dev Emits a PodOwnerEmissionsClaimed event upon successful claim
    function claimPodOwnerEmissions(uint256 podId, uint256 epoch) external;

    /// @notice Allows a voter to claim their share of emissions for a specific pod in a specific epoch
    /// @param podId The ID of the pod for which to claim emissions
    /// @param epoch The epoch number for which to claim emissions
    /// @dev Emits a VoterEmissionsClaimed event upon successful claim
    function claimVoterEmissions(uint256 podId, uint256 epoch) external;

    /// @notice Allows the admin to set the governance reserve address
    /// @param newGovernanceReserve The new governance reserve address
    function setGovernanceReserve(address newGovernanceReserve) external;

    /// @notice Allows the admin to set the subnet reserve address
    /// @param newSubnetReserve The new subnet reserve address
    function setSubnetReserve(address newSubnetReserve) external;

    /// @notice Allows the admin to set the governance reserve percentage
    /// @param newPercent The new governance reserve percentage
    function setGovernanceReservePercent(uint8 newPercent) external;

    /// @notice Allows the admin to set the subnet reserve percentage
    /// @param newPercent The new subnet reserve percentage
    function setSubnetReservePercent(uint8 newPercent) external;

    /// @notice Allows the admin to set the base URI for the PodManager
    /// @param newBaseURI The new base URI
    function setBaseURI(string calldata newBaseURI) external;

}
