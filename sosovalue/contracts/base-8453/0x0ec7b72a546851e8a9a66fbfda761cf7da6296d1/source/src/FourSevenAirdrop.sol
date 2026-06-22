// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SignatureChecker} from "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";

contract FourSevenAirdrop is Ownable {
    using SafeERC20 for IERC20;

    uint256 public expiration;
    address public rewardToken;
    address public ticketSigner;
    uint256 public claimedTotal;
    uint256 public claimedRewardTotal;
    mapping(address => bool) public claimed;
    mapping(address => uint256) public claimedReward;

    uint256 public totalRewardLimit = 47000;
    uint256 public totalRewardAmountLimit = 906075_0;
    uint256[5] public rewardLimits = [1, 47, 470, 4700, 41782];
    uint256[5] public rewardAmounts = [47000_0, 4700_0, 470_0, 47_0, 4_7];

    event Claim(address account, uint256 reward);
    event Withdraw(address token);

    constructor(address owner_, address rewardToken_, address ticketSigner_, uint256 expiration_) Ownable(owner_) {
        require(rewardToken_ != address(0));
        require(ticketSigner_ != address(0));
        rewardToken = rewardToken_;
        ticketSigner = ticketSigner_;
        expiration = expiration_;
    }

    function claim(address account, uint256 ticket, bytes memory signature) external returns (uint256 reward) {
        require(block.timestamp < expiration, "expired");
        require(!claimed[account], "already claimed");
        bytes32 ticketHash = keccak256(abi.encodePacked(account, ticket));
        require(SignatureChecker.isValidSignatureNow(ticketSigner, ticketHash, signature), "ticket signature not valid");
        require(totalRewardLimit > 0, "airdrop end");
        uint256 rewardIdx = uint256(ticketHash) % totalRewardLimit;
        uint256 cumRewardLimit = 0;
        for (uint i = 0; i < 5; i++) {
            cumRewardLimit += rewardLimits[i];
            if (rewardIdx < cumRewardLimit) {
                reward = rewardAmounts[i] * 10 ** IERC20Metadata(rewardToken).decimals() / 10;
                emit Claim(account, reward);
                claimedTotal += 1;
                claimedRewardTotal += reward;
                claimed[account] = true;
                claimedReward[account] = reward;
                require(IERC20(rewardToken).balanceOf(address(this)) > reward, "not enough to claim");
                IERC20(rewardToken).safeTransfer(account, reward);
                rewardLimits[i] = rewardLimits[i] - 1;
                totalRewardLimit = totalRewardLimit - rewardAmounts[i];
                break;
            }
        }
    }

    function withdraw(address token) external onlyOwner {
        uint256 withdrawAmount = IERC20(token).balanceOf(address(this));
        require(withdrawAmount > 0, "nothing to withdraw");
        IERC20(token).safeTransfer(owner(), withdrawAmount);
        emit Withdraw(token);
    }
}