// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

import "../lib/Token.sol";



struct PoolData {
    address pool;
    string poolType;
    // lp tokens
    Token[] lpTokens;
    uint256[] mintedLPTokens;
    // tokens constituting the lp token
    Token[] listedTokens;
    uint256[] reserves;
    bytes poolParams;
}

interface IVault {
    function queryPool(address pool) external view returns (PoolData memory ret) ;
}


contract VelocoreLens{
     IVault public lens;

    constructor(address _lens)  {
        lens = IVault(_lens);
    }

  function queryPool(address pool) external view returns (PoolData memory ret) {
        return lens.queryPool(pool);
    }

}