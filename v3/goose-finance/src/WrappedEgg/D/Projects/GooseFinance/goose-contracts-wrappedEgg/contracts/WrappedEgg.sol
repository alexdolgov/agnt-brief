// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.6.12;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '@openzeppelin/contracts/token/ERC20/SafeERC20.sol';

contract WrappedEgg is ERC20{
    using SafeERC20 for IERC20;

    IERC20 public constant eggToken = IERC20(0xF952Fc3ca7325Cc27D15885d37117676d25BfdA6);

    event Deposit(address indexed account, uint256 amount);
    event Withdraw(address indexed account, uint256 amount);

    constructor() public ERC20("Wrapped EGG", "WEGG") {
    }

    function deposit(uint256 amount) external returns (bool) {
        eggToken.safeTransferFrom(msg.sender, address(this), amount);
        _mint(msg.sender, amount);
        emit Deposit(msg.sender, amount);
        return true;
    }

    function withdraw(uint256 amount) external returns (bool) {
        require(balanceOf(msg.sender) >= amount);
        _burn(msg.sender, amount);
        eggToken.safeTransfer(msg.sender, amount);
        emit Withdraw(msg.sender, amount);
        return true;
    }
}
