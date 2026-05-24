// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "../Dependencies/CheckContract.sol";
import "../Interfaces/ILOANStaking.sol";


contract LOANStakingScript is CheckContract {
    ILOANStaking immutable LOANStaking;

    constructor(address _loanStakingAddress) public {
        checkContract(_loanStakingAddress);
        LOANStaking = ILOANStaking(_loanStakingAddress);
    }

    function stake(uint _LOANamount) external {
        LOANStaking.stake(_LOANamount);
    }
}
// 2025 Liquid Loans