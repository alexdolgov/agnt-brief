// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./Adminable.sol";

abstract contract Stakable is Adminable {
    event StakerUpdated(address sender, address oldStaker, address staker);

    address public staker;

    modifier onlyStaker() {
        require(staker == msg.sender, "only staker");
        _;
    }

    function updateStaker(address staker_) external onlyAdmin {
        require(staker_ != address(0), "zero address");
        emit StakerUpdated(msg.sender, staker, staker_);
        staker = staker_;
    }
}
