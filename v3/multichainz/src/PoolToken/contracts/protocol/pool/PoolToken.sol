// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import '@openzeppelin/contracts/access/Ownable.sol';
import {IPoolToken} from "./interfaces/IPoolToken.sol";

contract PoolToken is IPoolToken, ERC20, Ownable {

    address public pool;

    constructor() ERC20("Debt Token", "Debt_Token") Ownable(msg.sender) {
    }

     modifier onlyPool() {
    require(msg.sender == pool, "Not pool address!");
    _;
  }
    function setPoolAddress(address _pool) public onlyOwner {
        pool = _pool;
    }

     function mint(address to, uint256 amount) external onlyPool {
        _mint(to, amount);
    }

     function burn(address to, uint256 amount) external onlyPool {
        _burn(to, amount);
    }

    function balanceOfUser(address user) external view returns (uint256) {
        uint256 amount = balanceOf(user);
        return amount;
    }
}