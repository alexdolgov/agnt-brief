pragma solidity 0.7.5;

import "./types/ERC20.sol";

contract TestToken is ERC20 {

    constructor() ERC20 ("Whale.loans TEST BUSD", "BUSD", 18){
    }

    function mint(address account, uint256 amount) public {
        require(account != address(0), "ERC20: mint to the zero address");
        _mint(account, amount);
    }
}
