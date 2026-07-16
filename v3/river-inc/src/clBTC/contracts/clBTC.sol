// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

interface IToken {
    function mint(address to, uint256 amount) external;

    function burn(address from, uint256 amount) external;
}

contract clBTC is ERC20, Ownable {
    mapping(address => bool) public isManager;

    constructor(
        address initialOwner,
        string memory name,
        string memory symbol
    ) ERC20(name, symbol) Ownable(initialOwner) {
         isManager[initialOwner] = true;
    }

    function setManager(address _addr, bool _is) external onlyOwner {
        isManager[_addr] = _is;
    }

    function mint(address to, uint256 amount) external {
        require(isManager[msg.sender], "Not the manager");
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) external {
        require(isManager[msg.sender], "Not the manager");
        _burn(from, amount);
    }
}