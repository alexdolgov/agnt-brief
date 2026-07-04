pragma solidity ^0.8.0;

import "openzeppelin/token/ERC20/ERC20.sol";

contract Cherry is ERC20 {
    constructor() ERC20("CherryOnBlast", "CHERRY") {
        _mint(msg.sender, 100_000_000e18);
    }
}
