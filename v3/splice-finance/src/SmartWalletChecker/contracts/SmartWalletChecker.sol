// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

interface ISmartWalletChecker {
    function check(address) external view returns (bool);
}

contract SmartWalletChecker is ISmartWalletChecker {
    mapping(address => bool) public wallets;
    address public immutable dao;
    address public checker;
    address public future_checker;
    
    event ApproveWallet(address);
    event RevokeWallet(address);
    
    constructor(address _dao) public {
        dao = _dao;
        wallets[0xF147b8125d2ef93FB6965Db97D6746952a133934] = true;
        emit ApproveWallet(0xF147b8125d2ef93FB6965Db97D6746952a133934);
    }
    
    function commitSetChecker(address _checker) external {
        require(msg.sender == dao, "!dao");
        future_checker = _checker;
    }
    
    function applySetChecker() external {
        require(msg.sender == dao, "!dao");
        checker = future_checker;
    }
    
    function approveWallet(address _wallet) public {
        require(msg.sender == dao, "!dao");
        wallets[_wallet] = true;
        
        emit ApproveWallet(_wallet);
    }
    function revokeWallet(address _wallet) external {
        require(msg.sender == dao, "!dao");
        wallets[_wallet] = false;
        
        emit RevokeWallet(_wallet);
    }
    
    function check(address _wallet) external override view returns (bool) {
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
