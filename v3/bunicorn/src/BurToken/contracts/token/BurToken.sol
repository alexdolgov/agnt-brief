// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "../interfaces/IBurToken.sol";
import "./HasMinters.sol";

contract BurToken is IBurToken, HasMinters, ERC20 {
    using SafeMath for uint256;

    constructor() public ERC20("Buni Universal Reward", "BUR") {
        address[] memory _minters = new address[](1);
        _minters[0] = msg.sender;
        addMinters(_minters);
    }

    function mint(address _to, uint256 _value) public override onlyMinter {
        require(_to != address(0), "ERC20Mintable: Invalid mint address");
        require(_value > 0, "Value must greater than 0");
        _mint(_to, _value);
    }

    function burn(uint256 amount) public override {
        _burn(_msgSender(), amount);
    }

    function burnFrom(address account, uint256 amount) public override {
        uint256 decreasedAllowance = allowance(account, _msgSender()).sub(amount, "ERC20: burn amount exceeds allowance");

        _approve(account, _msgSender(), decreasedAllowance);
        _burn(account, amount);
    }
}