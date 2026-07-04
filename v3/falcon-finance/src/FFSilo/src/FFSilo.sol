// SPDX-License-Identifier: MIT
pragma solidity >=0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract FFSilo {
    IERC20 private immutable _FF;
    address private _stakingVault;

    error OnlyStakingVault();
    error AlreadySet();

    constructor(address ff) {
        _FF = IERC20(ff);
    }

    modifier onlyStakingVault() {
        if (msg.sender != _stakingVault) {
            revert OnlyStakingVault();
        }
        _;
    }

    function setStakingVault() external {
        require(_stakingVault == address(0), AlreadySet());
        _stakingVault = msg.sender;
    }

    function withdraw(address to, uint256 amount) external onlyStakingVault {
        _FF.transfer(to, amount);
    }
}
