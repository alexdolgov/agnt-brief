// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.26;

import { AccessControlDefaultAdminRules } from
    "@openzeppelin/contracts/access/extensions/AccessControlDefaultAdminRules.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { MerkleProof } from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import { Pausable } from "@openzeppelin/contracts/utils/Pausable.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { IIncentiveToken } from "./interfaces/IIncentiveToken.sol";

/// @title Distributor
/// @notice Distribute incentive tokens to users based on the on-chain merkle tree
/// @dev Implements an attestation mechanism and role-based access control
contract Distributor is AccessControlDefaultAdminRules, Pausable {
    using SafeERC20 for IERC20;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         CONSTANTS                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice The role required to set the merkle tree
    bytes32 public constant MERKLE_TREE_SETTER_ROLE = keccak256("MERKLE_TREE_SETTER_ROLE");

    /// @notice The role required to revoke a merkle tree
    bytes32 public constant MERKLE_TREE_REVOKER_ROLE = keccak256("MERKLE_TREE_REVOKER_ROLE");

    /// @notice The default attestation period
    uint256 public constant DEFAULT_ATTESTATION_PERIOD = 1 hours;

    /// @dev Since the default admin role is too powerful, we need to mitigate the risk of
    /// malicious actor hijacking the role. Therefore, when transferring the role, there is a 1 day
    /// delay before the new address can actually claim the role.
    uint48 private constant _DEFAULT_ADMIN_ROLE_TRANSFER_DELAY = 1 days;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         IMMUTABLES                         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Address of the incentive token
    address public immutable INCENTIVE_TOKEN;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                         VARIABLES                          */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Current merkle tree root
    bytes32 public merkleTreeRoot;

    /// @notice Previous merkle tree root
    bytes32 public lastMerkleTreeRoot;

    /// @notice Mapping of claimed amounts per user
    mapping(address user => uint256 claimed) public claimedAmounts;

    /// @notice Duration of the attestation period 
    uint256 public attestationPeriod;

    /// @notice Timestamp at which the current attestation period ends
    uint256 public endOfAttestationPeriod;

    /// @notice Tracks merkle roots that already consumed distributor minting budget
    mapping(bytes32 merkleTreeRoot => bool funded) public fundedMerkleTreeRoots;

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           EVENTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Emitted when the merkle tree is updated
    /// @param newMerkleTreeRoot Updated merkle tree root
    event MerkleTreeUpdated(bytes32 newMerkleTreeRoot);

    /// @notice Emitted when the merkle tree is revoked
    event MerkleTreeRevoked();

    /// @notice Emitted when a user claims their rewards
    /// @param user The address of the user
    /// @param amount The reward amount claimed
    event Claimed(address indexed user, uint256 amount);

    /// @notice Emitted when the attestation period length is updated
    /// @param oldAttestationPeriod Previous attestation period length
    /// @param newAttestationPeriod Updated attestation period length
    event AttestationPeriodUpdated(uint256 oldAttestationPeriod, uint256 newAttestationPeriod);

    /// @notice Emitted when incentive tokens have been withdrawn from the contract
    /// @param recipient Address of the recipient
    /// @param amount Amount of incentive tokens withdrawn
    event IncentiveTokenWithdrawn(address recipient, uint256 amount);

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                           ERRORS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Thrown when attempting to set an empty merkle root
    error InvalidRoot();

    /// @notice Thrown when attempting to re-use a merkle root that was already published
    error MerkleTreeAlreadyFunded();

    /// @notice Thrown when the merkle proof for a claim is invalid
    error InvalidProof();

    /// @notice Thrown when attempting to set a new merkle tree while the contract has not been
    /// set as the incentive token distributor inside the incentive token contract
    error DistributorNotSet();

    /// @notice Thrown when attempting to revoke a merkle tree outside the attestation period
    error AttestationPeriodEnded();

    /// @notice Thrown when attempting to set a new merkle tree while there's an ongoing dispute
    error AttestationPeriodNotEnded();

    /// @notice Thrown when attempting to set an identical dispute period
    error InvalidAttestationPeriod();

    /// @notice Thrown when attempting to set a zero address as a variable
    error ZeroAddress();

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                          STRUCTS                           */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Parameters for claiming incentive tokens
    struct ClaimParams {
        uint256 amount;
        bytes32[] proof;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                        CONSTRUCTOR                         */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @dev Constructor sets up the initial admin and dispute period
    /// @param defaultAdmin Address of the default admin
    /// @param incentiveToken Address of the incentive token
    constructor(address defaultAdmin, address incentiveToken)
        AccessControlDefaultAdminRules(_DEFAULT_ADMIN_ROLE_TRANSFER_DELAY, defaultAdmin)
    {
        if (incentiveToken == address(0)) {
            revert ZeroAddress();
        }

        INCENTIVE_TOKEN = incentiveToken;
        attestationPeriod = DEFAULT_ATTESTATION_PERIOD;
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                     EXTERNAL FUNCTIONS                     */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Sets a new merkle tree root and mints incentive tokens to the contract based on the total reward sum delta
    /// @param newMerkleTreeRoot New merkle tree root
    /// @param delta Total reward sum delta required to facilitate claims
    function setMerkleTree(bytes32 newMerkleTreeRoot, uint256 delta) 
        external 
        onlyRole(MERKLE_TREE_SETTER_ROLE) 
    {
        if (address(this) != IIncentiveToken(INCENTIVE_TOKEN).distributor()) {
            revert DistributorNotSet();
        }

        if (block.timestamp < endOfAttestationPeriod) {
            revert AttestationPeriodNotEnded();
        }

        if (newMerkleTreeRoot == bytes32(0)) {
            revert InvalidRoot();
        }

        if (delta > 0 && fundedMerkleTreeRoots[newMerkleTreeRoot]) {
            revert MerkleTreeAlreadyFunded();
        }

        // only mint new tokens when delta is a non-zero value; we might run into cases
        // where the merkle tree root is revoked and we have to re-set it with a different
        // composition that retains the cumulative distribution amounts
        if (delta > 0) {
            IIncentiveToken(INCENTIVE_TOKEN).mintTokensForDistribution(delta);
            fundedMerkleTreeRoots[newMerkleTreeRoot] = true;
        }

        lastMerkleTreeRoot = merkleTreeRoot;
        merkleTreeRoot = newMerkleTreeRoot;

        endOfAttestationPeriod = block.timestamp + attestationPeriod;

        emit MerkleTreeUpdated(newMerkleTreeRoot);
    }

    /// @notice Gets the current effective merkle tree root
    /// @return bytes32 Current effective merkle tree root
    function getMerkleTreeRoot() public view returns (bytes32) {
        return block.timestamp < endOfAttestationPeriod ? lastMerkleTreeRoot : merkleTreeRoot;
    }

    /// @notice Allows users to claim their rewards
    /// @param claimParams An array of claim parameters
    function claim(ClaimParams[] calldata claimParams) external whenNotPaused {
        address user = msg.sender;
        address token = INCENTIVE_TOKEN;
        bytes32 root = getMerkleTreeRoot();

        for (uint256 i = 0; i < claimParams.length; ++i) {
            ClaimParams calldata params = claimParams[i];
            uint256 amount = params.amount;
            bytes32[] calldata proof = params.proof;

            if (
                !MerkleProof.verifyCalldata(
                    proof, root, keccak256(bytes.concat(keccak256(abi.encode(block.chainid, user, amount))))
                )
            ) {
                revert InvalidProof();
            }

            uint256 owed = amount - claimedAmounts[user];
            if (owed == 0) continue;
            claimedAmounts[user] = amount;

            IERC20(token).safeTransfer(user, owed);

            emit Claimed(user, owed);
        }
    }

    /// @notice Sets the attestation period
    /// @param newAttestationPeriod New attestation period duration
    function setAttestationPeriod(uint256 newAttestationPeriod) external onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 oldAttestationPeriod = attestationPeriod;

        if (newAttestationPeriod == oldAttestationPeriod) {
            revert InvalidAttestationPeriod();
        }
     
        attestationPeriod = newAttestationPeriod;

        emit AttestationPeriodUpdated(oldAttestationPeriod, newAttestationPeriod);
    }

    /// @notice Fallback to the last version of the merkle tree immediately
    function revokeMerkleTree() external onlyRole(MERKLE_TREE_REVOKER_ROLE) {
        if (block.timestamp >= endOfAttestationPeriod) {
            revert AttestationPeriodEnded();
        }

        merkleTreeRoot = lastMerkleTreeRoot;
        endOfAttestationPeriod = 0;

        emit MerkleTreeRevoked();
    }

    /// @notice Withdraws a given amount of incentive tokens to a specified address
    /// @param recipient Address of the withdrawn incentive token recipient
    /// @param amount Amount of incentive tokens to withdraw
    function withdrawIncentiveToken(address recipient, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (recipient == address(0)) {
            revert ZeroAddress();
        }

        IERC20(INCENTIVE_TOKEN).safeTransfer(recipient, amount);
        emit IncentiveTokenWithdrawn(recipient, amount);
    }

    /*´:°•.°+.*•´.*:˚.°*.˚•´.°:°•.°•.*•´.*:˚.°*.˚•´.°:°•.°+.*•´.*:*/
    /*                   PAUSING FUNCTIONALITY                    */
    /*.•°:°.´+˚.*°.˚:*.´•*.+°.•°:´*.´•*.•°.•°:°.´:•˚°.*°.˚:*.´+°.•*/

    /// @notice Pauses the contract
    /// @dev The contract must not be paused when calling this function
    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    /// @notice Unpauses the contract
    /// @dev The contract must not be unpaused when calling this function
    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }
}
