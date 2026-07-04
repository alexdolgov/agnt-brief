// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ReentrancyGuard} from "../../lib/openzeppelin-contracts/contracts/security/ReentrancyGuard.sol";
import {Multicall} from "../../lib/openzeppelin-contracts/contracts/utils/Multicall.sol";
import {SafeERC20} from "../../lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "../../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";
import {BlastManager} from "../libraries/BlastManager.sol";

address constant USDE = 0x5d3a1Ff2b6BAb83b63cd9AD0787074081a52ef34;

struct Stake {
    uint256 principal; // the principal amount
    uint256 principalTimespan; // principal amount across time (for yield estimation)
    uint256 checkpointTimestamp; // the deposit timestamp
}

contract USDeVault is ReentrancyGuard, Multicall, BlastManager {
    using SafeERC20 for IERC20;

    /* Storage */
    mapping(address => Stake) public stakes;

    /* Events */
    event Deposit(address indexed user, uint256 amount);
    event Withdraw(address indexed user, uint256 amount);

    function getCurrentPrincipalTimespan(address user) public view returns (uint256) {
        Stake memory stake = stakes[user];

        return
            stake.principalTimespan +
            stake.principal * // update principal timespan until now first
            (block.timestamp - stake.checkpointTimestamp);
    }

    function _syncStake(address user) internal {
        stakes[user].principalTimespan = getCurrentPrincipalTimespan(user);
        stakes[user].checkpointTimestamp = block.timestamp;
    }

    function deposit(uint256 amount) external nonReentrant {
        IERC20(USDE).safeTransferFrom(msg.sender, address(this), amount);

        _syncStake(msg.sender);
        stakes[msg.sender].principal += amount;

        emit Deposit(msg.sender, amount);
    }

    function withdraw(uint256 amount) external nonReentrant {
        Stake memory stake = stakes[msg.sender];

        require(stake.principal >= amount, "USDeVault: insufficient balance");

        _syncStake(msg.sender);
        stakes[msg.sender].principal -= amount;

        IERC20(USDE).safeTransfer(msg.sender, amount);

        emit Withdraw(msg.sender, amount);
    }
}
