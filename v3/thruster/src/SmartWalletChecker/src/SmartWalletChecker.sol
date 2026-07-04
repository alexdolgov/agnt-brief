// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";

interface ISmartWalletChecker {
    function check(address) external view returns (bool);
}

contract SmartWalletChecker is Ownable, ISmartWalletChecker {
    mapping(address => bool) public wallets;
    address public checker;
    address public future_checker;

    event ApproveWallet(address);
    event RevokeWallet(address);

    constructor(address _owner) Ownable(_owner) {}

    function commitSetChecker(address _checker) external onlyOwner {
        future_checker = _checker;
    }

    function applySetChecker() external onlyOwner {
        checker = future_checker;
    }

    function approveWallet(address _wallet) public onlyOwner {
        wallets[_wallet] = true;
        emit ApproveWallet(_wallet);
    }

    function revokeWallet(address _wallet) external onlyOwner {
        wallets[_wallet] = false;
        emit RevokeWallet(_wallet);
    }

    function check(address _wallet) external view override returns (bool) {
        bool _check = wallets[_wallet];
        if (_check) {
            return _check;
        } else {
            if (checker != address(0)) {
                return ISmartWalletChecker(checker).check(_wallet);
            }
        }
        return false;
    }
}
