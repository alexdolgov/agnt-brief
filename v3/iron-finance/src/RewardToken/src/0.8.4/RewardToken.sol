// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * Mock reward
 */
contract RewardToken is ERC20 {

    constructor() ERC20("Watermelon Coin", "WMLN") {}

    function burn(uint256 _amount) public {
        _burn(msg.sender, _amount);
    }

    function mint(address _recipient, uint256 _amount) public {
        _mint(_recipient, _amount);
    }
}
