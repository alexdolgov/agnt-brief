// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@uniswap/lib/contracts/libraries/TransferHelper.sol";

/**
 * @title AirDrop: Base contract for airdrop distribution using a Merkle tree.
 */
abstract contract AirDropBase is OwnableUpgradeable {
    struct Release {
        bytes32 merkleRoot;
        uint256 balance;
    }

    mapping(uint256 => Release) public releases;
    mapping(uint256 => mapping(address => bool)) public isClaimed;

    IERC20 public token;
    uint256 public lastReleaseId;
    uint256 public lockedReserve;

    event Claimed(
        uint256 indexed releaseId,
        address indexed claimer,
        uint256 amount
    );
    event Stopped(uint256 indexed releaseId, uint256 releaseBalance);

    error AlreadyClaimed();
    error AmountMustNotBeZero();
    error IncorrectData();
    error InsufficientContractBalance();
    error InsufficientReleaseBalance();
    error ReleaseDoesNotExist();
    error WrongToken();
    error ReleaseWithdrawn();

    /**
     * @notice Initializes the contract with the specified token.
     * @param token_ The address of the token used in airdrops.
     */
    function __AirDrop_initialize_(address token_) internal onlyInitializing {
        if (token_ == address(0)) revert WrongToken();

        __Ownable_init();
        token = IERC20(token_);
    }

    /**
     * @notice Owner: Stops an active airdrop release.
     * @param releaseId The ID of the airdrop release to stop.
     */
    function stopRelease(uint256 releaseId) external onlyOwner {
        uint256 releaseBalance = releases[releaseId].balance;
        if (releaseBalance == 0) revert ReleaseWithdrawn();

        releases[releaseId].balance = 0;
        lockedReserve -= releaseBalance;

        emit Stopped(releaseId, releaseBalance);
    }

    /**
     * @notice Owner: Withdraws a specified amount from the unlocked token reserves.
     * @param amount The amount of tokens to withdraw.
     */
    function withdrawReserve(uint256 amount) external onlyOwner {
        _checkInsufficient(amount);
        TransferHelper.safeTransfer(address(token), msg.sender, amount);
    }

    /**
     * @notice Claims tokens from a specified airdrop release.
     * @param releaseId The ID of the airdrop release.
     * @param merkleProof The Merkle proof verifying the claim.
     * @param amount The amount of tokens to claim.
     */
    function _resolve(
        uint256 releaseId,
        bytes32[] calldata merkleProof,
        uint256 amount
    ) internal {
        _checkEligibility(msg.sender, releaseId, merkleProof, amount);

        isClaimed[releaseId][msg.sender] = true;
        releases[releaseId].balance -= amount;
        lockedReserve -= amount;
    }

    /**
     * @notice Owner: Releases a new airdrop with the specified amount of tokens.
     * @param merkleRoot The root of the Merkle tree where every leaf is a 52-byte record [releaseId|address|reward]
     *        hashed with keccak-256 (see https://en.wikipedia.org/wiki/Merkle_tree).        ^32B      ^20B   ^32B
     * @param amount The total amount of tokens to be airdropped.
     * @return releaseId The ID of the newly created airdrop release.
     */
    function _release(
        bytes32 merkleRoot,
        uint256 amount
    ) internal onlyOwner returns (uint256 releaseId) {
        if (amount == 0) revert AmountMustNotBeZero();
        _checkInsufficient(amount);

        releaseId = ++lastReleaseId;
        releases[releaseId] = Release(merkleRoot, amount);
        lockedReserve += amount;
    }

    /**
     * @notice Checks the eligibility of a claim.
     * @param releaseId The ID of the airdrop release.
     * @param merkleProof The Merkle proof verifying the claim.
     * @param amount The amount of tokens to claim.
     */
    function _checkEligibility(
        address account,
        uint256 releaseId,
        bytes32[] calldata merkleProof,
        uint256 amount
    ) internal view {
        Release memory release_ = releases[releaseId];
        if (release_.merkleRoot == bytes32(0)) revert ReleaseDoesNotExist();
        if (
            !MerkleProof.verify(
                merkleProof,
                release_.merkleRoot,
                keccak256(abi.encodePacked(releaseId, account, amount))
            )
        ) revert IncorrectData();
        if (isClaimed[releaseId][account]) revert AlreadyClaimed();
        if (amount > release_.balance) revert InsufficientReleaseBalance();
    }

    /**
     * @notice Checks if the contract's available token balance is sufficient for the specified amount.
     * @param amount The amount to check.
     */
    function _checkInsufficient(uint256 amount) internal view {
        if (token.balanceOf(address(this)) < lockedReserve + amount)
            revert InsufficientContractBalance();
    }
}
