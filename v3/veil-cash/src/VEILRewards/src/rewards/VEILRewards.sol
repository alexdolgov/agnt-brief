// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.26;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

/// @title VEIL Rewards
/// @notice Airdrop contract of VEIL rewards usage
contract VEILRewards is Ownable, ReentrancyGuard {
    /// @notice Errors
    error AirdropNotActive();
    error NoClaimableAmount();
    error AlreadyClaimed();
    error ArrayLengthMismatch();
    error NoBalanceToWithdraw();
    error TransferFailed();
    error ZeroAddress();
    error InsufficientContractBalance();
    error AirdropEnded();

    /// @notice Airdrop state
    bool public airdropActive;
    uint256 public airdropEndTime;

    /// @notice VEIL token
    IERC20 public VeilToken;

    /// @notice Claimable amounts for each address
    mapping(address => uint256) public claimableAmount;
    mapping(address => bool) public hasClaimed;

    /// @notice Events
    event TokensClaimed(address indexed user, uint256 amount);
    event AirdropStateChanged(bool isActive);
    event AirdropAmountsSet(uint256 userCount);
    event UnclaimedWithdrawn(uint256 amount);

    constructor(address _veilToken) Ownable(msg.sender) {
        VeilToken = IERC20(_veilToken);
    }

    /// @notice Claims VEIL tokens
    /// @dev Claims VEIL tokens if the airdrop is active and the user has a claimable amount
    /// @dev Reverts if the airdrop is not active, the airdrop has ended, the user has already claimed, or the contract does not have enough balance
    function claim() external nonReentrant {
        uint256 amount = claimableAmount[msg.sender];

        if (!airdropActive) revert AirdropNotActive();
        if (block.timestamp > airdropEndTime) revert AirdropEnded();
        if (amount == 0) revert NoClaimableAmount();
        if (hasClaimed[msg.sender]) revert AlreadyClaimed();
        if (VeilToken.balanceOf(address(this)) < amount) revert InsufficientContractBalance();

        hasClaimed[msg.sender] = true;

        bool success = VeilToken.transfer(msg.sender, amount);
        if (!success) revert TransferFailed();

        emit TokensClaimed(msg.sender, amount);
    }

    /**
     * @notice Gets the claimable amount for a user
     * @param _user Address to check
     * @return amount Amount claimable by the user
     */
    function getClaimableAmount(address _user) external view returns (uint256) {
        return claimableAmount[_user];
    }

    /**
     * @notice Checks if a user has already claimed their tokens
     * @param _user Address to check
     * @return Whether the user has already claimed
     */
    function hasClaimedTokens(address _user) external view returns (bool) {
        return hasClaimed[_user];
    }

    /**
     * @notice Checks if a user has an airdrop allocation
     * @param _user Address to check
     * @return Whether the user has an airdrop allocated
     */
    function hasAirdropAllocation(address _user) external view returns (bool) {
        return claimableAmount[_user] > 0;
    }

    /**
     * @notice Get balance of VEIL token in this contract
     * @return balance of VEIL token in this contract
     */
    function getVeilBalance() external view returns (uint256) {
        return VeilToken.balanceOf(address(this));
    }

    /**
     * @notice Sets claimable amounts for multiple addresses at once
     * @param _users Array of user addresses
     * @param _amounts Array of corresponding amounts
     */
    function setAirdrop(address[] calldata _users, uint256[] calldata _amounts) external onlyOwner {
        if (_users.length != _amounts.length) revert ArrayLengthMismatch();

        for (uint256 i = 0; i < _users.length; i++) {
            if (_users[i] == address(0)) revert ZeroAddress();
            claimableAmount[_users[i]] = _amounts[i];
        }

        emit AirdropAmountsSet(_users.length);
    }


    /**
     * @notice Starts the airdrop and sets the end time to 7 days from now
     */
    function startAirdrop() external onlyOwner {
        airdropActive = true;
        airdropEndTime = block.timestamp + 7 days;
        emit AirdropStateChanged(airdropActive);
    }

    /**
     * @notice Ends the airdrop 
     */
    function endAirdrop() external onlyOwner {
        airdropActive = false;
        emit AirdropStateChanged(airdropActive);
    }

    /**
     * @notice Allows owner to withdraw all unclaimed tokens to the contract owner
     */
    function withdrawAll() external onlyOwner {
        uint256 balance = VeilToken.balanceOf(address(this));
        if (balance == 0) revert NoBalanceToWithdraw();

        bool success = VeilToken.transfer(owner(), balance);
        if (!success) revert TransferFailed();

        emit UnclaimedWithdrawn(balance);
    }
}
