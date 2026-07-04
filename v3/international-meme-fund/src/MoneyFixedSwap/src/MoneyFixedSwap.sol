// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {IERC20} from "./interfaces/IERC20.sol";

/// @dev Contract which swaps DAI for $MONEY at a fixed rate (6.9)
///      sending any DAI it receives to the IMF Multisig
contract MoneyFixedSwap {
    IERC20 immutable public dai;
    IERC20 immutable public money;
    address immutable public imfMultisig;

    constructor(IERC20 _dai, IERC20 _money, address _imfMultisig) {
        dai = _dai;
        money = _money;
        imfMultisig = _imfMultisig;
    }

    function swap(uint256 daiAmount) external {
        dai.transferFrom(msg.sender, imfMultisig, daiAmount);
        money.transfer(msg.sender, daiAmount * 10 / 69);
    }
}
