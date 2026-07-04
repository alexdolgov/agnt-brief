// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import "../MinterV201.sol";

contract eSEIMinterWithdrawal is NativeMinterWithdrawal {

    string public BASE_URI = "https://api.accumulated.finance/v1/nft";

    constructor(address _stakingToken) NativeMinterWithdrawal(_stakingToken, "uneSEI", "uneSEI", BASE_URI) {
    }

}