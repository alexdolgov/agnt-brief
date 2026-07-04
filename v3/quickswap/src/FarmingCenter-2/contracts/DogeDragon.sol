pragma solidity 0.7.6;


import '@openzeppelin/contracts/token/ERC20/ERC20.sol';


contract DogeDragon is ERC20 {

    constructor() ERC20("Doge Dragon", "DD") {

        _mint(_msgSender(), 1000000000 ether);
    }
}