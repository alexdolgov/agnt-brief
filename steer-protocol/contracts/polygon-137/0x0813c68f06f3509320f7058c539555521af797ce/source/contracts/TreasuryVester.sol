// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.12;
import { ITreasuryVester, ISteerToken } from "./interfaces/ITreasuryVester.sol";

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract TreasuryVester is ITreasuryVester {
    using SafeERC20 for IERC20;

    address public immutable steerToken;
    uint256 public immutable vestingAmount;
    uint256 public immutable vestingDuration;
    uint256 public immutable vestingCliff;
    uint256 public immutable vestingEnd;

    address public recipient;
    address public immutable owner;
    uint256 public lastUpdate;

    constructor(
        address steerToken_,
        address recipient_,
        address _owner, // Intended to be multisig. This address can cut off funding if user leaves Steer.
        uint256 vestingAmount_,
        uint256 vestingBegin_,
        uint256 vestingCliff_,
        uint256 vestingEnd_
    ) {
        require(vestingCliff_ >= vestingBegin_, "C");
        require(vestingEnd_ > vestingCliff_, "E");

        steerToken = steerToken_;
        recipient = recipient_;
        owner = _owner;

        vestingAmount = vestingAmount_;
        vestingCliff = vestingCliff_;
        vestingEnd = vestingEnd_;
        vestingDuration = vestingEnd_ - vestingBegin_;
        lastUpdate = vestingBegin_;
    }

    /// @dev Change the recipient address. Can only be called by current recipient.
    /// @param _recipient is the new recipient address
    function setRecipient(address _recipient) external {
        require(_recipient != address(0), "Zero address, Invalid!");
        require(
            // Make sure current recipient is sending this
            msg.sender == recipient,
            "R"
        );
        recipient = _recipient;
        getVotingPowerForVestedTokens();
    }

    function claim() external {
        require(msg.sender == recipient, "R");
        _claim();
    }

    /// @dev If the user leaves steer then steer can cut off the user's funds from that point on.
    function cutOffFunds() external {
        require(msg.sender == owner, "Unauthorized");
        if (block.timestamp >= vestingCliff) {
            _claim();
        }

        IERC20(steerToken).safeTransfer(
            owner,
            IERC20(steerToken).balanceOf(address(this))
        );
    }

    /// @dev User can call this function to get the voting power of the tokens that are vested.
    function getVotingPowerForVestedTokens() public {
        ISteerToken(steerToken).delegate(recipient);
    }

    /// @dev Use this function to claim the claimable tokens.
    function _claim() internal {
        require(block.timestamp >= vestingCliff, "T");
        uint256 amount;
        if (block.timestamp >= vestingEnd) {
            amount = IERC20(steerToken).balanceOf(address(this));
        } else {
            // Amount = accrued earnings since last update
            amount =
                (vestingAmount * (block.timestamp - lastUpdate)) /
                vestingDuration;

            // Update lastUpdate to current timestamp
            lastUpdate = block.timestamp;
        }
        IERC20(steerToken).safeTransfer(recipient, amount);
    }
}
