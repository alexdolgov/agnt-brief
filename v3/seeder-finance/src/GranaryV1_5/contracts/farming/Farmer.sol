// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "hardhat/console.sol";
import "../tokens/Leaf.sol";
import "../utils/SafeMath.sol";
import "../pancakeswap/IPancakeRouter02.sol";
import "../pancakeswap/IPancakePair.sol";


contract Farmer is OwnableUpgradeable {
    struct Field {
        address owner;
        uint256 investAmount;
        uint256 nativeBorrowAmount;
        uint256 initialPriceInBUSD;
        address loaner;
        uint startTime;
        uint finishTime;
    }

    mapping(address => uint256[]) public _fields;
    mapping(uint256 => Field) public _fieldInfos;
    
    IPancakeRouter02 public _router;
    IPancakePair public _farmingPair;
    uint256 public _killFactor;

    function initialize(IPancakeRouter02 router, IPancakePair farmingPair, uint256 killFactor) external initializer {
        __Ownable_init();

        _router = router;
        _farmingPair = farmingPair;
        _killFactor = killFactor;
    }

    function execute() external {

    }
}