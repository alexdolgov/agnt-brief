// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import {ProxyOFTV2} from "@layerzerolabs/solidity-examples/contracts/token/oft/v2/ProxyOFTV2.sol";

contract ProxyZEROlz is ProxyOFTV2 {
    constructor(
        address _token,
        address _lzEndpoint
    ) ProxyOFTV2(_token, 8, _lzEndpoint) {
        // nothing
    }
}
