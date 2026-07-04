// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// Interfaces
import {IRewarder} from "./interfaces/IRewarder.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IStakedPDT} from "./interfaces/IStakedPDT.sol";

// Inheritance
import {ForeverOwnable} from "./util/ForeverOwnable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

// Libraries
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title   ParagonsDAO Sleeves ERC20AutoStakeRewarder
/// @notice  This contract allows users to claim arbitrary ERC20s from a Merkle tree. Users may optionally stake their claim amounts.
/// @author  Felix & RarityCapital & Michael
contract ERC20AutoStakeRewarder is ForeverOwnable, ReentrancyGuard, IRewarder {
    using SafeERC20 for IERC20;

    /// EVENTS ///
    /// @notice Emitted when the merkle root is updated
    /// @param merkleRoot The new merkle root
    event SetMerkleRoot(bytes32 merkleRoot);
    /// @notice Emitted when a new treasury address is set
    /// @param treasury The new treasury address
    event SetTreasury(address treasury);
    /// @notice Emitted when a claim happens
    /// @param token The token claimed
    /// @param destination The destination of claims
    /// @param amount The amount of token claimed, in wei
    /// @param autoStake If amount was staked into PDT Staking
    event Claimed(
        address indexed token,
        address indexed destination,
        uint256 amount,
        bool autoStake
    );

    /// ERRORS ///
    /// @notice Error when a Zero Address is used
    error ZeroAddress();
    /// @notice Error when a 0x0 root is used
    error InvalidMerkleRoot();
    /// @notice Error when a claim is not done by the tx origin
    error OnlyTxOrigin();
    error InvalidMerkleProof(
        IERC20 token,
        address destination,
        uint256 allocation
    );
    error NothingToClaim(IERC20 token, address destination);

    /// STATE VARIABLES ///
    bytes32 public merkleRoot;
    mapping(IERC20 => mapping(address => uint256)) public claimed;
    address public treasury;

    IStakedPDT public immutable PDTStaking;

    constructor(
        address initialOwner,
        IStakedPDT nextPDTStaking,
        address nextTreasury
    ) Ownable(initialOwner) {
        if (address(nextPDTStaking) == address(0)) revert ZeroAddress();
        if (address(nextTreasury) == address(0)) revert ZeroAddress();

        PDTStaking = nextPDTStaking;
        treasury = nextTreasury;
    }

    /// PUBLIC FUNCTIONS ///
    /// @notice Claim all remaining allocation of tokens for a destination address.
    /// @dev Note: Allocation should be strictly increasing.
    /// @param claimData abi encoded claim data
    function claim(bytes calldata claimData) public override nonReentrant {
        (
            IERC20 token,
            address destination,
            uint256 allocation,
            bytes32[] memory merkleProof,
            bool autoStake
        ) = abi.decode(claimData, (IERC20, address, uint256, bytes32[], bool));

        // solhint-disable-next-line
        if (destination != tx.origin) revert OnlyTxOrigin();

        // Verify the merkle proof.
        bytes32 leaf = keccak256(
            bytes.concat(keccak256(abi.encode(token, destination, allocation)))
        );
        if (!MerkleProof.verify(merkleProof, merkleRoot, leaf)) {
            revert InvalidMerkleProof(token, destination, allocation);
        }

        // Check there is some amount to claim
        if (allocation <= claimed[token][destination]) {
            revert NothingToClaim(token, destination);
        }

        // At this point:
        // (A) : We have allocated destination an allocation of token, by valid merkle proof.
        // (B) : destination has claimed[token][destination] already claimed
        // (C) : !(allocation <= claimed[token][destination]) LEQV allocation - claimed[token][destination] > 0, that is, there is still allocation for destination to claim.
        // => We've commited to oweing destination allocation - claimed[token][destination] of token
        uint256 pendingClaimAmount = allocation - claimed[token][destination];
        claimed[token][destination] += pendingClaimAmount;

        if (autoStake) {
            token.safeTransferFrom(treasury, address(this), pendingClaimAmount);
            token.safeIncreaseAllowance(
                address(PDTStaking),
                pendingClaimAmount
            );
            PDTStaking.stake(destination, pendingClaimAmount);
        } else {
            token.safeTransferFrom(treasury, destination, pendingClaimAmount);
        }

        emit Claimed(
            address(token),
            destination,
            pendingClaimAmount,
            autoStake
        );
    }

    /// VIEW FUNCTIONS ///
    /// @notice View remaining allocation of tokens for a destination address.
    /// @dev Note: Allocation should be strictly increasing.
    /// @param claimData abi encoded claim data
    function pendingClaim(
        bytes calldata claimData
    ) external view returns (uint256) {
        (
            IERC20 token,
            address destination,
            uint256 allocation,
            bytes32[] memory merkleProof
        ) = abi.decode(claimData, (IERC20, address, uint256, bytes32[]));

        // Verify the merkle proof.
        bytes32 leaf = keccak256(
            bytes.concat(keccak256(abi.encode(token, destination, allocation)))
        );
        if (!MerkleProof.verify(merkleProof, merkleRoot, leaf)) {
            revert InvalidMerkleProof(token, destination, allocation);
        }

        // Check there is some amount to claim
        if (allocation <= claimed[token][destination]) {
            revert NothingToClaim(token, destination);
        }

        // At this point:
        // (A) : We have allocated destination an allocation of token, by valid merkle proof.
        // (B) : destination has claimed[token][destination] already claimed
        // (C) : !(allocation <= claimed[token][destination]) LEQV allocation - claimed[token][destination] > 0, that is, there is still allocation for destination to claim.
        // => We've commited to oweing destination allocation - claimed[token][destination] of token
        return allocation - claimed[token][destination];
    }

    // PURE FUNCTIONS //
    function getClaimData(
        IERC20 token,
        address destination,
        uint256 allocation,
        bytes32[] calldata merkleProof,
        bool autoStake
    ) public pure returns (bytes memory) {
        return
            abi.encode(token, destination, allocation, merkleProof, autoStake);
    }

    function getPendingClaimData(
        IERC20 token,
        address destination,
        uint256 allocation,
        bytes32[] calldata merkleProof
    ) public pure returns (bytes memory) {
        return abi.encode(token, destination, allocation, merkleProof);
    }

    // ADMIN FUNCTIONS //
    function setMerkleRoot(bytes32 _nextMerkleRoot) public override onlyOwner {
        if (_nextMerkleRoot == bytes32(0)) revert InvalidMerkleRoot();
        merkleRoot = _nextMerkleRoot;
        emit SetMerkleRoot(_nextMerkleRoot);
    }

    function setTreasury(address _nextTreasury) public onlyOwner {
        if (address(_nextTreasury) == address(0)) revert ZeroAddress();
        treasury = _nextTreasury;
        emit SetTreasury(_nextTreasury);
    }

    function setClaimedMapping(
        IERC20[] memory tokens,
        address[] memory destinations,
        uint256[] memory amounts
    ) external onlyOwner {
        require(
            tokens.length == destinations.length &&
                destinations.length == amounts.length,
            "Arrays must have the same length!"
        );

        for (uint256 i = 0; i < tokens.length; ++i) {
            if (
                address(tokens[i]) == address(0) ||
                destinations[i] == address(0)
            ) {
                revert ZeroAddress();
            }
            claimed[tokens[i]][destinations[i]] = amounts[i];
        }
    }
}
