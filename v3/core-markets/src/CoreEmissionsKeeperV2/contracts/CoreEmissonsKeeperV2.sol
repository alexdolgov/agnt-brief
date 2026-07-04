//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

interface ICoreTradeRewarder {
    function fill(uint256 day, uint256 amount) external;
}

contract CoreEmissionsKeeperV2 is OwnableUpgradeable {
    address public coreTradeRewarder;
    address public coreMultiRewarder;
    address public coreToken;
    uint256 public startTimestamp;
    mapping(uint256 => bool) public isRewardMinted;

    uint256 public lastCallFillTimestmap;
    uint256 public fillCoreCooldown;
    uint256 public fillCoreLimit;
    address public thrustedCaller;

    event FillCoreTradeRewarder(address sender, uint256 day, uint256 amount);
    event FillCoreMultiRewarder(address sender, uint256 day, uint256 amount);

    function setLimit(uint256 limit_) external onlyOwner {
        fillCoreLimit = limit_;
    }

    function setCoreCooldown(uint256 cooldown_) external onlyOwner {
        fillCoreCooldown = cooldown_;
    }

    function setThrustedCaller(address caller_) external onlyOwner {
        thrustedCaller = caller_;
    }

    function fillCoreTradeRewarder(uint256 day, uint256 amount) external {
        require(msg.sender == thrustedCaller, "ACCESS_DENIED");
        require(block.timestamp >= startTimestamp, "NOT STARTED");
        require(
            startTimestamp + (day * 1 days) < block.timestamp,
            "NOT REACHED DAY"
        );
        require(amount <= fillCoreLimit, "The amount is above the limit");
        require(
            block.timestamp >= lastCallFillTimestmap + fillCoreCooldown,
            "CALL COOLDOWN"
        );
        require(!isRewardMinted[day], "already minted");
        lastCallFillTimestmap = block.timestamp;
        isRewardMinted[day] = true;
        if (amount > 0) {
            IERC20Upgradeable(coreToken).approve(coreTradeRewarder, amount);
            ICoreTradeRewarder(coreTradeRewarder).fill(day, amount);
            emit FillCoreTradeRewarder(msg.sender, day, amount);
        }
    }
}
