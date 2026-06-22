// SPDX-License-Identifier: GPLv3-or-later

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface ISHct {
    function notifyRewardAmount(uint256 reward) external;
}

contract RewardHelper is Ownable {
    address WAVAX;
    address sHct;
    uint256 public sHctReward;
    address xHct;
    uint256 public xHctReward;
    address hct;

    constructor (address wavax_, address sHct_, address xHct_, address hct_) {
        WAVAX = wavax_;
        sHct = sHct_;
        xHct = xHct_;
        hct = hct_;
    }

    function sendSHctReward(uint256 reward) public onlyOwner {
        IERC20(WAVAX).transferFrom(msg.sender, sHct, reward);
        ISHct(sHct).notifyRewardAmount(reward);

        sHctReward += reward;
    }

    function sendXHctReward(uint256 amount) public onlyOwner {
        IERC20(hct).transferFrom(msg.sender, xHct, amount);
        xHctReward += amount;
    }
}
