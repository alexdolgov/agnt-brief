// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {VaultBase} from "src/interfaces/VaultBase.sol";

contract SnowBallAdapter is VaultBase {
    function description() public pure override returns (string memory) {
        return unicode"This vault accumulates tax. It then uses the tax to slowly buyback the '雪球' token and burn. (该 Vault 累积税费，然后使用税费缓慢回购'雪球'代币并销毁。)";
    }
}
