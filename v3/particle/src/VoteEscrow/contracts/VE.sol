// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ReentrancyGuard} from "../lib/openzeppelin-contracts/contracts/utils/ReentrancyGuard.sol";
import {Multicall} from "../lib/openzeppelin-contracts/contracts/utils/Multicall.sol";
import {SafeERC20} from "../lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {BlastManager} from "./libraries/BlastManager.sol";

struct Escrow {
    uint256 principal; // the principal amount
    uint256 principalTimespan; // principal amount across time
    uint256 checkpointTimestamp; // the deposit timestamp
    uint256 unlockTime; // timestamp for unlock
}

contract VoteEscrow is ReentrancyGuard, Multicall, BlastManager {
    using SafeERC20 for IERC20;

    /* Constants */
    uint256 public BASIS = 1 ether;

    /* Immutables */
    address public TOKEN;
    uint256 public RATIO;

    /* Storage */
    mapping(address => Escrow) public escrows;
    mapping(address => uint256) public rewards;

    /* Events */
    event Lock(address user, uint256 amount, uint256 duration);
    event Unlock(address user, uint256 principal, uint256 reward);

    constructor(address token, uint256 ratio) {
        require(token != address(0), "VE: invalid token address");
        TOKEN = token;

        require(ratio > 0, "VE: invalid ratio");
        RATIO = ratio;
    }

    /**
     * @notice Get this account's VE balance, which linearly decays until maturity
     * @param user The user address
     */
    function getVeBalance(address user) external view returns (uint256 ve) {
        Escrow memory escrow = escrows[user];

        uint256 timeLeft = escrow.unlockTime > block.timestamp ? escrow.unlockTime - block.timestamp : 0;

        ve = (escrow.principal * timeLeft * RATIO) / BASIS;
    }

    /**
     * @notice Get the current principal timespan of a user
     * @param user The user address
     */
    function getCurrentPrincipalTimespan(address user) public view returns (uint256) {
        Escrow memory escrow = escrows[user];

        return
            escrow.principalTimespan +
            escrow.principal * // update principal timespan until now first
            (block.timestamp - escrow.checkpointTimestamp);
    }

    /**
     * @notice Sync the current state of the stake of a user
     * @param user The user address
     */
    function _sync(address user) internal {
        escrows[user].principalTimespan = getCurrentPrincipalTimespan(user);
        escrows[user].checkpointTimestamp = block.timestamp;
    }

    /**
     * @notice Deposit tokens into the vote escrow contract to lock
     * @param amount The amount of tokens to deposit
     * @param duration duration to lock the token for
     */
    function lock(uint256 amount, uint256 duration) external nonReentrant {
        _sync(msg.sender);
        escrows[msg.sender].principal += amount;

        if (escrows[msg.sender].unlockTime == 0) {
            escrows[msg.sender].unlockTime = block.timestamp;
        }
        escrows[msg.sender].unlockTime += duration;

        // slither-disable-next-line reentrancy-no-eth
        IERC20(TOKEN).safeTransferFrom(msg.sender, address(this), amount);

        emit Lock(msg.sender, amount, duration);
    }

    /**
     * @notice Withdraw tokens from the staking contract
     */
    function unlock() external nonReentrant {
        // fetch escrowed amount
        Escrow memory escrow = escrows[msg.sender];
        require(escrow.principal > 0, "VE: no escrowed amount");
        require(block.timestamp >= escrow.unlockTime, "VE: unlock has not reached");

        // fetch reward
        uint256 reward = rewards[msg.sender];

        // remove escrow
        delete escrows[msg.sender];

        // remove reward
        delete rewards[msg.sender];

        IERC20(TOKEN).safeTransfer(msg.sender, escrow.principal + reward);

        emit Unlock(msg.sender, escrow.principal, reward);
    }

    /**
     * @notice Admin sends in reward for users
     * @param users The users to send reward to
     * @param amounts The amounts to send to each user
     */
    function sendReward(address[] calldata users, uint256[] calldata amounts) external nonReentrant {
        require(users.length == amounts.length, "VE: invalid input length");

        uint256 total_reward;
        for (uint256 i = 0; i < users.length; i++) {
            rewards[users[i]] += amounts[i];
            total_reward += amounts[i];
        }

        // transfer in amount
        IERC20(TOKEN).safeTransferFrom(msg.sender, address(this), total_reward);
    }
}
