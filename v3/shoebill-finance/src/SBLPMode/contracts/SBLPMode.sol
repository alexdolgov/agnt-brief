// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import "./SFS.sol";

contract SBLPMode is ERC20 {
    address public dev;

    constructor() ERC20("SBL Point", "SBL.P") {
        dev = msg.sender;

        Register sfsContract = Register(0x8680CEaBcb9b56913c519c069Add6Bc3494B7020);
        sfsContract.register(msg.sender); //
    }

    function devBurn(address target, uint256 amount) external {
        require(msg.sender == dev, "dev: wut?");
        _burn(target, amount);
    }

    function devMint(address target, uint256 amount) external {
        require(msg.sender == dev, "dev: wut?");
        _mint(target, amount);
    }

    function setDev(address _dev) external {
        require(msg.sender == dev, "dev: wut?");
        dev = _dev;
    }
}
