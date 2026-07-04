//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import '@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol';

import './SafeToken.sol';
import './Distributor.sol';

contract StakedDistributor is Distributor, ERC20Upgradeable, ERC20PermitUpgradeable {
    using SafeToken for address;
    struct Withdrawal {
        uint256 amount;
        uint256 releaseTime;
    }

    event Withdraw(address indexed user, uint256 amount);

    address public token;
    uint256 public withdrawalPendingTime = 7 * 1 days;
    mapping(address => Withdrawal) public withdrawal;

    function initialize(
        address token_,
        string memory name,
        string memory symbol
    ) public initializer {
        Distributor.__Distributor_init();
        ERC20Upgradeable.__ERC20_init(name, symbol);
        ERC20PermitUpgradeable.__ERC20Permit_init(name);
        token = token_;
        withdrawalPendingTime = 7 * 1 days;
    }

    function mint(uint256 amount) public {
        token.safeTransferFrom(msg.sender, address(this), amount);
        _mint(msg.sender, amount);
    }

    function burn(uint256 amount) public {
        if (amount > 0) {
            _burn(msg.sender, amount);
        }

        Withdrawal storage withdrawal_ = withdrawal[msg.sender];
        withdrawal_.amount = withdrawal_.amount + amount;
        withdrawal_.releaseTime = block.timestamp + withdrawalPendingTime;
    }

    function withdraw() public {
        Withdrawal storage withdrawal_ = withdrawal[msg.sender];
        require(block.timestamp >= withdrawal_.releaseTime, 'StakedDistributor: not released');
        uint256 amount = withdrawal_.amount;
        withdrawal_.amount = 0;
        token.safeTransfer(msg.sender, amount);
        emit Withdraw(msg.sender, amount);
    }

    function burnAndWithdraw(uint256 amount) public {
        burn(amount);
        withdraw();
    }

    function _afterTokenTransfer(
        address from,
        address to,
        uint256 /* amount */
    ) internal override {
        if (from != address(0)) {
            _editRecipientInternal(from, balanceOf(from));
        }

        if (to != address(0)) {
            _editRecipientInternal(to, balanceOf(to));
        }
    }

    /* Admin functions */
    function setWithdrawalPendingTime(uint256 withdrawalPendingTime_) public onlyOwner {
        withdrawalPendingTime = withdrawalPendingTime_;
    }
}
