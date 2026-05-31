// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable, Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";

contract dASF is ERC20, Ownable2Step {
    using SafeERC20 for ERC20;

    event Mint(address indexed to, address indexed caller, uint256 amount);
    event SetPayee(address indexed payee);

    error ZeroAddress();

    address public payee;

    ERC20 public constant ASF = ERC20(0x59a529070fBb61e6D6c91f952CcB7f35c34Cf8Aa);

    constructor(address owner_) ERC20("Discount ASF", "dASF") Ownable(owner_) {}

    function mint(address _to, uint256 _amount) external {
        if (payee == address(0)) revert ZeroAddress();
        _mint(_to, _amount);
        ASF.safeTransferFrom(msg.sender, payee, _amount);
        emit Mint(_to, msg.sender, _amount);
    }

    function burn(uint256 _amount) external {
        _burn(msg.sender, _amount);
    }

    function burn(address owner_, uint256 _amount) external {
        _spendAllowance(owner_, msg.sender, _amount);
        _burn(owner_, _amount);
    }

    function setPayee(address _payee) external onlyOwner {
        if (_payee == address(0)) revert ZeroAddress();
        payee = _payee;
        emit SetPayee(_payee);
    }
}
