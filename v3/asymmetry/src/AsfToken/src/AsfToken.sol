// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract AsfToken is ERC20, Ownable {

    uint256 private constant _INITIAL_SUPPLY = 51_000_000 * 10 ** 18;

    address private constant _DADDY = 0x0EF268A2421F490A2d14A955d9d7325054f2918e;
    address private constant _MOMMY = 0x263b03BbA0BbbC320928B6026f5eAAFAD9F1ddeb;

    string private constant _NAME = "Asymmetry Finance Token";
    string private constant _SYMBOL = "ASF";

    constructor() ERC20(_NAME, _SYMBOL) Ownable(_MOMMY) {
        _mint(_DADDY, _INITIAL_SUPPLY);
    }

    function mint(address _to, uint256 _amount) external onlyOwner {
        _mint(_to, _amount);
    }
}