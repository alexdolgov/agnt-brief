pragma solidity 0.8.6;

import "openzeppelin-solidity/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";

contract TestToken is ERC20Permit {
    constructor(string memory name, string memory symbol) ERC20Permit(name) ERC20(name, symbol) public {
        _mint(msg.sender, 10000000000 ether);
    }
}