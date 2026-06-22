// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "./MasterChefJoeV3.sol";

contract MasterChefSmartCoinV3 is MasterChefJoeV3 {
    constructor(
        IMasterChef _MASTER_CHEF_V2,
        IERC20 _smartcoin,
        uint256 _MASTER_PID
    ) MasterChefJoeV3(
        _MASTER_CHEF_V2,
        _smartcoin,
        _MASTER_PID
    ) public {}
}
