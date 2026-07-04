// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

// OZ imports
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Mock is ERC20 {
    uint8 internal immutable DECIMALS;

    constructor(string memory _name, string memory _symbol, uint8 _tokenDecimals) ERC20(_name, _symbol) {
        DECIMALS = _tokenDecimals;
        _mint(msg.sender, 1000000 * (10 ** uint256(DECIMALS)));
    }

    function mint(address _to, uint256 _amount) public {
        _mint(_to, _amount);
    }

    function decimals() public view virtual override returns (uint8) {
        return DECIMALS;
    }
}
