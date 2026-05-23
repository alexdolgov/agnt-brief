// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IRewarderVault } from "./interfaces/IRewarderVault.sol";
import { ISpiral } from "./interfaces/ISpiral.sol";
contract RewarderVault is IRewarderVault, Ownable {
    ISpiral public immutable rewardToken;
    address public override rewarder;
    address public guardian;
    bool public stopped;
    constructor(IERC20 _rewardToken) Ownable() {
        guardian = msg.sender;
        rewardToken = ISpiral(address(_rewardToken));
    }

    function setGuardian(address newGuardian) external override onlyOwner {
        guardian = newGuardian;
        emit UpdateGuardian(newGuardian);
    }

    function mintRewards(address user, uint256 amount) external override  {
        require(msg.sender == rewarder, "not rewarder");
        require(!stopped, "stopped");
        rewardToken.mint(user, amount);
    }

    function lock(bool flag) external override {
        require(msg.sender == guardian || msg.sender == owner(), "not guardian");
        if(rewarder != address(0)) {
            stopped = flag;
        }
    }

    function updateRewarder(address newRewarder) external override onlyOwner {
        rewarder = newRewarder;
        emit UpdateRewarder(newRewarder);
    }
}

