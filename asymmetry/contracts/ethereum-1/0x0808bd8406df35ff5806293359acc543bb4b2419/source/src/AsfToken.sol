// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AsfToken is ERC20 {

    uint256 private constant _MAX_SUPPLY = 51_000_000 * 10 ** 18;

    address private constant _DADDY = 0x24A710ff21Dafad1FEb56f17C7cf36F6391EaCcE;

    string private constant _NAME = "Asymmetry Finance Token";
    string private constant _SYMBOL = "ASF";

    constructor() ERC20(_NAME, _SYMBOL) {
        _mint(_DADDY, _MAX_SUPPLY);
    }
}