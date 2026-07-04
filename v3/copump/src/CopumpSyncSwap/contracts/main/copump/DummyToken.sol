// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./ICopump.sol";

contract DummyToken is ERC20, Ownable {
    constructor(
        string memory tokenName,
        string memory tokenSymbol
    ) ERC20(tokenName, tokenSymbol) Ownable(msg.sender) {
    }

    function mint(address receiver, uint256 amount) external onlyOwner {
        _mint(receiver, amount);
    }

    function burn(address receiver, uint256 amount) external onlyOwner {
        _burn(receiver, amount);
    }

    function transfer(address to, uint256 value) public override returns (bool) {
        bool success = super.transfer(to, value);
        if (success) {
            ICopump(owner()).notifyExternalTransfer(msg.sender, to, value);
        }
        return success;
    }

    function transferFrom(
        address from,
        address to,
        uint256 value
    ) public override returns (bool) {
        bool success = super.transferFrom(from, to, value);
        if (success) {
            ICopump(owner()).notifyExternalTransfer(from, to, value);
        }
        return success;
    }
}
