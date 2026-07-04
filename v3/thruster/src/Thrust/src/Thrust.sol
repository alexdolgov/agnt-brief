// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

import 'src/interface/IBlast.sol';

contract Thrust is ERC20, Ownable {
    uint256 public constant ONE_YEAR = 365 days; 
    uint256 public constant FOUR_YEARS = 4 * ONE_YEAR;
    uint256 public deploymentTime;
    uint256 public lastMintTime;
    IBlast public constant BLAST = IBlast(0x4300000000000000000000000000000000000002);

    constructor(uint256 _initialSupply, address _owner) ERC20("Thruster", "THRUST") Ownable(_owner) {
        _mint(_owner, _initialSupply);
        deploymentTime = block.timestamp;
        lastMintTime = block.timestamp;
        BLAST.configureClaimableGas();
    }

    function mint(address _to) public onlyOwner {
        require(block.timestamp > deploymentTime + FOUR_YEARS, "TestToken: minting is locked for the first four years, and decided by DAO afterwards");
        require(block.timestamp - lastMintTime > ONE_YEAR, "TestToken: minting is allowed once a year at most");

        uint256 mintAmount = totalSupply() * 10 / 100; // 10% of cumulative total supply minted each time
        lastMintTime = block.timestamp;

        _mint(_to, mintAmount);
    }

    function claimGas(address _receiver) external onlyOwner {
        BLAST.claimMaxGas(address(this), _receiver);
    }
}

