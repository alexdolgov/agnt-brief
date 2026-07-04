pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MintableToken is ERC20 {
    constructor(string memory name, string memory symbol) ERC20(name, symbol) {}

    function mint(uint amount) public {
        _mint(msg.sender, amount);
    }

    function burn(uint amount) public {
        _burn(msg.sender, amount);
    }
}
