// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract TestFaucet {
    mapping(address => bool) public isGiven;
    uint256 Amount = 50e18;
    IERC20 public Test1;
    IERC20 public Test2;
    IERC20 public Steer;

    constructor(address test1, address test2, address steer) {
        Test1 = IERC20(test1);
        Test2 = IERC20(test2);
        Steer = IERC20(steer);
    }

    function getTestTokens() external {
        require(!isGiven[msg.sender], "Already Given");
        isGiven[msg.sender] = true;
        Test1.transfer(msg.sender, Amount);
        Test2.transfer(msg.sender, Amount);
        Steer.transfer(msg.sender, Amount);
    }
}
