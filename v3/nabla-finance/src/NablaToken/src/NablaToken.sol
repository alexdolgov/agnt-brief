// SPDX-License-Identifier: MIT

pragma solidity 0.8.22;

import {ERC20} from "@solmate/src/tokens/ERC20.sol";

contract NablaToken is ERC20 {
    constructor(address _receiver) ERC20("Nabla", "NABLA", 18) {
        _mint(_receiver, 1000000000 * 10 ** decimals);
    }

    function burn(uint256 _amount) external returns (bool success) {
        _burn(msg.sender, _amount);

        return true;
    }
}