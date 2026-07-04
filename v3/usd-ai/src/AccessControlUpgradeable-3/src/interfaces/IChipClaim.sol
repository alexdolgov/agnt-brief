// SPDX-License-Identifier: MIT
pragma solidity 0.8.33;

/**
 * @title IChipClaim
 * @notice Interface for the Chip Claim contract
 * @author USD.AI Foundation
 */
interface IChipClaim {
    /*------------------------------------------------------------------------*/
    /* Errors                                                                 */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Error when address is blacklisted
     * @param account Blacklisted address
     */
    error BlacklistedAddress(address account);

    /**
     * @notice Error when claims
     */
    error InvalidClaim();

    /**
     * @notice Error when claim amount is invalid
     */
    error InvalidAmount();

    /**
     * @notice Error when merkle proof verification fails
     */
    error InvalidMerkleProof();

    /*------------------------------------------------------------------------*/
    /* Events                                                                 */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Emitted when a user claims tokens
     * @param account Address of the account claiming tokens
     * @param vault Address of the vault claiming tokens
     * @param amount Amount of tokens claimed
     */
    event Claimed(address indexed account, address indexed vault, uint256 amount);

    /**
     * @notice Emitted when claimable status is updated
     * @param claimable New claimable status
     */
    event ClaimableSet(bool claimable);

    /**
     * @notice Emitted when merkle root is updated
     * @param merkleRoot New merkle root
     */
    event MerkleRootSet(bytes32 merkleRoot);

    /**
     * @notice Emitted when CHIP is deposited
     * @param amount Amount of CHIP deposited
     */
    event Deposited(uint256 amount);

    /**
     * @notice Emitted when CHIP is withdrawn
     * @param amount Amount of CHIP withdrawn
     */
    event Withdrawn(uint256 amount);

    /*------------------------------------------------------------------------*/
    /* Structs                                                                */
    /*------------------------------------------------------------------------*/

    /**
     * @custom:storage-location erc7201:claim.config
     */
    struct Config {
        bool claimable;
        bytes32 merkleRoot;
    }

    /**
     * @custom:storage-location erc7201:claim.claims
     */
    struct Claims {
        mapping(bytes32 => bool) claimed;
    }

    /*------------------------------------------------------------------------*/
    /* View Functions                                                         */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Get the current merkle root
     * @return Merkle root
     */
    function merkleRoot() external view returns (bytes32);

    /**
     * @notice Check if claims are currently enabled
     * @return True if claims are enabled
     */
    function claimable() external view returns (bool);

    /**
     * @notice Check if claim has been made
     * @return True if claim has been made
     */
    function claimed(
        address account,
        address vault,
        uint256 amount
    ) external view returns (bool);

    /*------------------------------------------------------------------------*/
    /* Public API                                                             */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Claim tokens using merkle proof
     * @param merkleProof Merkle proof for verification
     * @param amount Amount of tokens to claim
     */
    function claim(
        bytes32[] calldata merkleProof,
        uint256 amount
    ) external;

    /**
     * @notice Claim tokens using merkle proof
     * @param merkleProof Merkle proof for verification
     * @param account Address of the account claiming tokens
     * @param amount Amount of tokens to claim
     */
    function claimByVault(
        bytes32[] calldata merkleProof,
        address account,
        uint256 amount
    ) external;

    /*------------------------------------------------------------------------*/
    /* Permissioned API                                                       */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Set claimable status (admin only)
     * @param claimable New claimable status
     */
    function setClaimable(
        bool claimable
    ) external;

    /**
     * @notice Set new merkle root (admin only)
     * @param merkleRoot New merkle root
     */
    function setMerkleRoot(
        bytes32 merkleRoot
    ) external;

    /**
     * @notice Deposit CHIP (admin only)
     * @param amount Amount of CHIP to deposit
     */
    function deposit(
        uint256 amount
    ) external;

    /**
     * @notice Withdraw CHIP (admin only)
     * @param amount Amount of CHIP to withdraw
     */
    function withdraw(
        uint256 amount
    ) external;
}
