// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import { IVodkaVault } from '../interfaces/IVodkaVault.sol';
import '@openzeppelin/contracts/access/Ownable.sol';

contract VaultkaResolver {
    IVodkaVault public immutable vodkaVault;

    constructor(IVodkaVault _vodkaVault) {
        vodkaVault = _vodkaVault;
    }

    function checker() external view returns (bool canExec, bytes memory execPayload) {
        canExec = vodkaVault.isValidRebalance();
        execPayload = abi.encodeCall(IVodkaVault.rebalance, ());
    }
}
