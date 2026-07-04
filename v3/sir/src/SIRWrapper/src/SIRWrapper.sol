// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

import {ISIR} from "./interfaces/ISIR.sol";

contract SIRWrapper {
    ISIR public constant SIR_TOKEN = ISIR(payable(0x1278B112943Abc025a0DF081Ee42369414c3A834));

    string public constant name = "Synthetics Implemented Right";
    string public constant symbol = "SIR";
    uint8 public constant decimals = 12;

    /*//////////////////////////////////////////////////////////////
                              ERC20 STORAGE
    //////////////////////////////////////////////////////////////*/

    function totalSupply() public view returns (uint256) {
        return SIR_TOKEN.totalSupply();
    }

    function balanceOf(address account) public view returns (uint256) {
        (uint256 unlockedStake, uint256 lockedStake) = SIR_TOKEN.stakeOf(account);
        return SIR_TOKEN.balanceOf(account) + unlockedStake + lockedStake;
    }
}
