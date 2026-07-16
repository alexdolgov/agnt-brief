// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {MerkleProof} from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title NativeDistributor
/// @author NativeOrg
/// @notice This contract allows for the distribution of ERC20 tokens based on a Merkle tree proof.
contract NativeDistributor is Ownable2Step, ReentrancyGuard {
    using SafeERC20 for IERC20;

    /// @notice Struct to store campaign data
    /// @param token The address of the ERC20 token for the campaign
    /// @param root The Merkle root for the campaign
    /// @param amountTotal The total amount of tokens allocated for the campaign
    /// @param amountUnclaimed The amount of tokens remaining unclaimed for the campaign
    struct CampaignData {
        address token;
        bytes32 root;
        uint256 amountTotal;
        uint256 amountUnclaimed;
    }

    /// @notice Mapping of campaign ID to campaign data
    /// @dev campaignId => CampaignData
    mapping(uint256 => CampaignData) public campaignData;

    /// @notice Mapping to track if a user has claimed for a particular campaign
    /// @dev user => campaignId => hasClaimed
    mapping(address => mapping(uint256 => bool)) public hasClaimed;

    /// @dev Emitted when a user initiates a claim
    /// @param user The address of the user claiming tokens
    /// @param campaignId The ID of the campaign being claimed for
    /// @param amount The amount of tokens being claimed
    event Claim(address user, uint256 campaignId, uint256 amount);

    /// @dev Emitted when the owner sets a Merkle root for a campaign
    /// @param campaignId The ID of the campaign
    /// @param root The Merkle root being set
    event Root(uint256 campaignId, bytes32 root);

    /// @dev Emitted when a deposit is made for a campaign
    /// @param campaignId The ID of the campaign
    /// @param token The address of the ERC20 token being deposited
    /// @param amount The amount of tokens being deposited
    event Deposit(uint256 campaignId, address token, uint256 amount);

    /// @dev Emitted when the campaign owner withdraws tokens set aside for a campaign
    /// @param campaignId The ID of the campaign
    /// @param token The address of the ERC20 token being withdrawn
    /// @param amount The amount of tokens being withdrawn
    event Withdraw(uint256 campaignId, address token, uint256 amount);

    error InvalidCampaign();
    error UserAlreadyClaimed();
    error InvalidProof();
    error InsufficientBalance();
    error NonZero();
    error RootSet();

    /// @notice Main claim function for users to claim tokens
    /// @param campaignId The ID of the campaign being claimed for
    /// @param proof The Merkle proof for the claim
    /// @param amount The amount of tokens being claimed
    function claim(uint256 campaignId, bytes32[] calldata proof, uint256 amount) external nonReentrant {
        if (campaignId == 0) revert NonZero();
        CampaignData memory data = campaignData[campaignId];
        if (data.root == bytes32(0)) revert InvalidCampaign();
        if (data.amountTotal == 0) revert InvalidCampaign();
        if (amount > data.amountUnclaimed) revert InsufficientBalance();
        if (hasClaimed[msg.sender][campaignId]) revert UserAlreadyClaimed();
        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(msg.sender, campaignId, amount))));
        if (!MerkleProof.verify(proof, data.root, leaf)) revert InvalidProof();
        hasClaimed[msg.sender][campaignId] = true;
        campaignData[campaignId].amountUnclaimed = campaignData[campaignId].amountUnclaimed - amount;
        IERC20(data.token).safeTransfer(msg.sender, amount);
        emit Claim(msg.sender, campaignId, amount);
    }

    //Admin functions

    /// @notice Allows the owner to deposit tokens for a campaign
    /// @param token The address of the ERC20 token being deposited
    /// @param campaignId The ID of the campaign
    /// @param amount The amount of tokens being deposited
    /// @param root The Merkle root being set
    function depositForCampaign(address token, uint256 campaignId, uint256 amount, bytes32 root) external onlyOwner {
        if (campaignId == 0) revert NonZero();
        _deposit(token, campaignId, amount);
        _setRoot(campaignId, root);
    }

    /// @notice Allows the owner to withdraw unclaimed tokens and ends a campaign
    /// @param campaignId The ID of the campaign
    function withdrawForCampaign(uint256 campaignId) external onlyOwner {
        CampaignData memory data = campaignData[campaignId];
        IERC20(data.token).safeTransfer(owner(), data.amountUnclaimed);
        campaignData[campaignId].amountUnclaimed = 0;
        emit Withdraw(campaignId, data.token, data.amountUnclaimed);
    }

    function _deposit(address token, uint256 campaignId, uint256 amount) internal {
        if (amount == 0) revert NonZero();
        CampaignData storage data = campaignData[campaignId];
        /// @dev validation that the campaign already exists
        if (data.amountTotal > 0) revert InvalidCampaign();
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        data.token = token;
        data.amountTotal = amount;
        data.amountUnclaimed = amount;
        emit Deposit(campaignId, token, amount);
    }

    function _setRoot(uint256 campaignId, bytes32 root) internal {
        if (root == bytes32(0)) revert NonZero();
        if (campaignData[campaignId].root != bytes32(0)) revert RootSet();
        campaignData[campaignId].root = root;
        emit Root(campaignId, root);
    }

    /// @notice Allows the owner to perform an emergency withdrawal of any ERC20 token
    /// @param token The address of the ERC20 token being withdrawn
    /// @param amount The amount of tokens being withdrawn
    function emergencyWithdraw(address token, uint256 amount) external onlyOwner {
        IERC20(token).safeTransfer(owner(), amount);
    }
}
