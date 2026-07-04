// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title TokenVesting
/// @notice Linear vesting contract with cliff period
/// @dev Modern version without SafeMath (Solidity 0.8+) and without funder functionality
contract TokenVesting {
    using SafeERC20 for IERC20;

    /// @notice The token being vested
    address public immutable token;

    /// @notice The recipient of vested tokens
    address public recipient;

    /// @notice Total amount to be vested
    uint256 public immutable vestingAmount;

    /// @notice Timestamp when vesting begins
    uint256 public immutable vestingBegin;

    /// @notice Timestamp when cliff ends and vesting becomes claimable
    uint256 public immutable vestingCliff;

    /// @notice Timestamp when vesting fully completes
    uint256 public immutable vestingEnd;

    /// @notice Last timestamp when tokens were claimed
    uint256 public lastUpdate;

    /// @notice Emitted when the recipient is changed
    event RecipientChanged(address indexed oldRecipient, address indexed newRecipient);

    /// @notice Emitted when tokens are claimed
    event TokensClaimed(address indexed recipient, uint256 amount);

    /// @param _token Address of the token to vest
    /// @param _recipient Address that can claim vested tokens
    /// @param _vestingAmount Total amount of tokens to vest
    /// @param _vestingCliff Timestamp when cliff period ends (6 months)
    /// @param _vestingEnd Timestamp when vesting fully completes (2 years)
    constructor(
        address _token,
        address _recipient,
        uint256 _vestingAmount,
        uint256 _vestingCliff,
        uint256 _vestingEnd
    ) {
        require(_vestingCliff >= block.timestamp, "Cliff must be in future");
        require(_vestingEnd > _vestingCliff, "End must be after cliff");
        require(_recipient != address(0), "Invalid recipient");
        require(_token != address(0), "Invalid token");

        token = _token;
        recipient = _recipient;
        vestingAmount = _vestingAmount;
        vestingBegin = block.timestamp;
        vestingCliff = _vestingCliff;
        vestingEnd = _vestingEnd;
        lastUpdate = block.timestamp;
    }

    /// @notice Change the recipient address
    /// @dev Can only be called by current recipient
    /// @param _recipient New recipient address
    function setRecipient(address _recipient) external {
        require(msg.sender == recipient, "Only recipient can change");
        require(_recipient != address(0), "Invalid recipient");

        address oldRecipient = recipient;
        recipient = _recipient;

        emit RecipientChanged(oldRecipient, _recipient);
    }

    /// @notice Claim vested tokens
    /// @dev Can only be called by recipient
    function claim() external {
        require(msg.sender == recipient, "Only recipient can claim");
        require(block.timestamp >= vestingCliff, "Still in cliff period");

        uint256 amount;

        if (block.timestamp >= vestingEnd) {
            // After vesting end, claim all remaining tokens
            amount = IERC20(token).balanceOf(address(this));
        } else {
            // Calculate vested amount since last update
            uint256 elapsed = block.timestamp - lastUpdate;
            uint256 duration = vestingEnd - vestingBegin;
            amount = (vestingAmount * elapsed) / duration;
            lastUpdate = block.timestamp;
        }

        require(amount > 0, "No tokens to claim");

        IERC20(token).safeTransfer(recipient, amount);

        emit TokensClaimed(recipient, amount);
    }

    /// @notice Calculate claimable amount at current time
    /// @return uint256 Amount of tokens that can be claimed now
    function claimableAmount() external view returns (uint256) {
        if (block.timestamp < vestingCliff) {
            return 0;
        }

        if (block.timestamp >= vestingEnd) {
            return IERC20(token).balanceOf(address(this));
        }

        uint256 elapsed = block.timestamp - lastUpdate;
        uint256 duration = vestingEnd - vestingBegin;
        return (vestingAmount * elapsed) / duration;
    }

    /// @notice Get total vested amount up to current time
    /// @return uint256 Total amount vested (including already claimed)
    function vestedAmount() external view returns (uint256) {
        if (block.timestamp < vestingCliff) {
            return 0;
        }

        if (block.timestamp >= vestingEnd) {
            return vestingAmount;
        }

        uint256 elapsed = block.timestamp - vestingBegin;
        uint256 duration = vestingEnd - vestingBegin;
        return (vestingAmount * elapsed) / duration;
    }

    /// @notice Recover tokens accidentally sent to this contract
    /// @dev Cannot recover the vesting token itself
    /// @param _token Token to recover
    function recoverToken(address _token) external {
        require(_token != token, "Cannot recover vesting token");
        uint256 balance = IERC20(_token).balanceOf(address(this));
        IERC20(_token).safeTransfer(recipient, balance);
    }
}
