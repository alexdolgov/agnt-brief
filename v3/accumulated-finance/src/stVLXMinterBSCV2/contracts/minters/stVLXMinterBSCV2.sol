// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.4;

import "../MinterV204.sol";

contract stVLXMinterBSCV2 is ERC20MinterRedeem {

    constructor(address _baseToken, address _stakingToken) ERC20MinterRedeem(_baseToken, _stakingToken) {
    }

}