// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.6.12;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '@openzeppelin/contracts/access/Ownable.sol';
import "../interfaces/IMintable.sol";

contract GooseDollarBond is ERC20, Ownable, IMintable{

    constructor() public ERC20("Goose Dollar Bond", "GDB") {
    }

    //Owner is expected to be the Goose Treasury contract
    function mint(address to, uint256 amount) external override onlyOwner returns (bool) {
        _mint(to, amount);
        return true;
    }

    //This burn function will reduce total supply
    function destroy(uint256 amount) external override onlyOwner returns (bool){
        _burn(msg.sender, amount);
        return true;
    }
}

