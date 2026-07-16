// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SuzakuToken is ERC20 {
    constructor() ERC20("Suzaku Token", "SUZ") {
        _mint(
            0x578313AE93e0984D75De83e199A689775D28748F,
            100000000 * 10 ** decimals()
        );
    }
}
