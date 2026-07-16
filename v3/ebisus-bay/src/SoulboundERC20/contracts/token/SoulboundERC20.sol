// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SoulboundERC20 is ERC20, Ownable {
    bool public isSoulbound;

    constructor(
        string memory name,
        string memory symbol
    ) ERC20(name, symbol){}

    function decimals() public view virtual override returns (uint8) {
        return 0;
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        super._beforeTokenTransfer(from, to, amount);
        require(from == address(0) || to == address(0), "SoulboundERC20: Token is soulbound and cannot be transferred");
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burnFrom(address account, uint256 amount) public onlyOwner {
        _burn(account, amount);
    }
}
