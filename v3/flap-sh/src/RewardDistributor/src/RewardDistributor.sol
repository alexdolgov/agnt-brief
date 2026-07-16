// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Ownable} from "@openzeppelin/access/Ownable.sol";
import {EIP712} from "@openzeppelin/utils/cryptography/EIP712.sol";
import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {ECDSA} from "@openzeppelin/utils/cryptography/ECDSA.sol";

/// @title Simple Reward Distributor
/// @author  The Flap Team
/// @notice Distribute reward based on offchain sig proof
contract RewardDistributor is Ownable, EIP712 {
    /// @dev our simple proof type hash
    bytes32 public constant PROOF_TYPEHASH = keccak256("Proof(address user)");

    /// @dev the signer of the proof
    address public immutable signer;

    /// @dev reward amount per claim
    uint256 public rewardAmt;

    /// @dev reward token addresses
    IERC20[] internal rewardTokens;

    /// @dev next token index
    /// this is an auto-incremented index for the rewardTokens array
    /// each time, we will first try to reward the user the token at nextTokenIndex % rewardTokens.length
    /// if the balance of the token is not enough, we will try the next token
    uint256 public nextTokenIndex;

    // mapping from user's address to whether the user has claimed the reward
    mapping(address => bool) public claimed;

    //
    // Events
    //

    //
    // Custom Errors
    //

    /// @notice emit when the user has already claimed the reward
    error AlreadyClaimed();

    /// @notice emit when no rewards are available to claim
    error NoRewardsAvailableYouAreTooLate();

    /// @notice emit when the proof is invalid
    error InvalidProof();

    constructor(uint256 _rewardAmt, address _proofSigner) EIP712("RewardDistributor", "1") {
        rewardAmt = _rewardAmt;
        signer = _proofSigner;
    }

    /// claim reward
    /// @param proof The proof that the msg.sender is eligible for claiming the reward once
    function claim(bytes memory proof) external {
        if (claimed[msg.sender]) {
            revert AlreadyClaimed();
        }

        // verify proof
        verifyProof(msg.sender, proof);

        for (uint256 i = 0; i < rewardTokens.length; i++) {
            IERC20 token = rewardTokens[nextTokenIndex % rewardTokens.length];
            nextTokenIndex += 1;

            uint256 balance = token.balanceOf(address(this));
            if (balance >= rewardAmt) {
                token.transfer(msg.sender, rewardAmt);
                claimed[msg.sender] = true;
                return;
            }
        }

        revert NoRewardsAvailableYouAreTooLate();
    }

    //
    //  View functions
    //

    /// get the list of reward tokens
    /// @param offset The offset of the reward token list
    /// @param limit The limit of the reward token list
    /// @return total The total number of reward tokens
    /// @return tokens The reward token list
    function getRewardTokens(uint256 offset, uint256 limit)
        external
        view
        returns (uint256 total, IERC20[] memory tokens)
    {
        total = rewardTokens.length;
        if (offset >= total) {
            return (total, new IERC20[](0));
        }

        uint256 end = offset + limit;
        if (end > total) {
            end = total;
        }

        tokens = new IERC20[](end - offset);
        for (uint256 i = offset; i < end; i++) {
            tokens[i - offset] = rewardTokens[i];
        }
    }

    //
    //  Admin functions
    //

    /// recycle unclaimed reward
    /// @dev only owner can recycle
    function recycle() external onlyOwner {
        // recycle all unclaimed rewards
        for (uint256 i = 0; i < rewardTokens.length; i++) {
            IERC20 token = rewardTokens[i];
            uint256 balance = token.balanceOf(address(this));
            if (balance > 0) {
                token.transfer(owner(), balance);
            }
        }
    }

    /// Add RewardToken to the rewardTokens array
    /// @param token The reward token to be added
    /// @dev The same token can be added more than once
    function addRewardToken(IERC20 token) external onlyOwner {
        rewardTokens.push(token);
    }

    /// Change the reward amount
    /// @param _rewardAmt The new reward amount
    function setRewardAmt(uint256 _rewardAmt) external onlyOwner {
        rewardAmt = _rewardAmt;
    }

    /// remove RewardToken from the rewardTokens array
    /// @param index The index of the reward token to be removed
    function removeRewardToken(uint256 index) external onlyOwner {
        require(index < rewardTokens.length, "index out of range");
        rewardTokens[index] = rewardTokens[rewardTokens.length - 1];
        rewardTokens.pop();
    }

    //
    // Proof Helpers
    //

    /// helper function to verify the proof
    function verifyProof(address user, bytes memory proof) public view {
        bytes32 digest = hashProofStruct(user);

        // recover signer
        if (signer != ECDSA.recover(digest, proof)) {
            revert InvalidProof();
        }
    }

    // a helper function to hash the proof struct
    function hashProofStruct(address user) public view returns (bytes32) {
        // hash struct
        bytes32 structHash = keccak256(abi.encode(PROOF_TYPEHASH, user));

        // hash typed data
        bytes32 digest = _hashTypedDataV4(structHash);

        return digest;
    }
}
