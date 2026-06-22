pragma solidity 0.8.20;

import {IERC20, SafeERC20} from "@openzeppelin4/contracts/token/ERC20/utils/SafeERC20.sol";
import {Delegatable, OwnableUpgradeable} from "./Delegatable.sol";

contract CFDVault is OwnableUpgradeable {
    using SafeERC20 for IERC20;

    address public immutable collateral;
    address public vaultAuthority;

    event Deposit(address indexed from, uint256 amount, address token);
    event Withdrawal(address indexed to, uint256 amount, address token);

    constructor(address collateral_) {
        _disableInitializers();
        collateral = collateral_;
    }

    function initialize(
    ) public initializer {
        OwnableUpgradeable.__Ownable_init();
    }

    function setAuthority(
        address vaultAuthority_
    ) public onlyOwner {
        vaultAuthority = vaultAuthority_;
    }

    function deposit(uint256 amount) external {
        depositTo(amount, _msgSender());
    }

    function depositTo(uint256 amount, address from) public {
        IERC20(collateral).safeTransferFrom(_msgSender(), address(this), uint256(amount));
        emit Deposit(from, amount, collateral);
    }

    function withdraw(uint256 amount, address to) public {
        require(_msgSender() == vaultAuthority, "NOA");
        IERC20(collateral).safeTransfer(to, uint256(amount));
        emit Withdrawal(to, amount, collateral);
    }
}