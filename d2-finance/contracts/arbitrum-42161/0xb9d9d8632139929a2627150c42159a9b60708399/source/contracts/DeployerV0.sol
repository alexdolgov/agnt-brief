// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.17;

import { ERC20 } from "solmate/src/tokens/ERC20.sol";
import { VaultV0 } from "contracts/VaultV0.sol";

contract DeployerV0 {
    function deploy(string calldata name, string calldata symbol, uint max, address token,address trader, address owner, address depositor, uint startDeposit, uint startTrade, uint end) public {
        VaultV0 v = new VaultV0(ERC20(token), name, symbol, trader, max);
        v.startEpoch(startDeposit, startTrade, end);
        v.setWhitelistStatus(depositor, true);
        v.transferOwnership(owner);
    }
}

