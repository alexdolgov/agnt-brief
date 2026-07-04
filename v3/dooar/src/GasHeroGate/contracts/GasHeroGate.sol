// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./IGate.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Address.sol";

contract GasHeroGate is IGate, Ownable {

    bool private _enabled;
    bool private _contractAddressWhiteListEnabled;
    bool private _addressBlackListEnabled;

    mapping(address => bool) private _contractAddressWhiteList;
    mapping(address => bool) private _addressBlackList;

    event EnableEvent(bool enable, bool whiteListEnabled, bool blackListEnabled);
    event SetListEvent(bool isWhiteList, bool enable, address[] list);

    function enableGate(
        bool enable,
        bool contractAddressWhiteListEnabled,
        bool addressBlackListEnabled
    ) external onlyOwner {
        _enabled = enable;
        _contractAddressWhiteListEnabled = contractAddressWhiteListEnabled;
        _addressBlackListEnabled = addressBlackListEnabled;
        emit EnableEvent(enable, contractAddressWhiteListEnabled, addressBlackListEnabled);
    }

    function setContractWhiteAddress(bool enable, address addr) external onlyOwner {

        require(Address.isContract(addr), "Address is not contract");
        if (enable) {
            require(!_addressBlackList[addr], "Address is in black list");
        }
        _contractAddressWhiteList[addr] = enable;
        address[] memory addrs = new address[](1);
        addrs[0] = addr;
        emit SetListEvent(true, enable, addrs);
    }

    function setBlackAddress(bool enable, address addr) external onlyOwner {
        if (enable) {
            require(!_contractAddressWhiteList[addr], "Address is in white list");
        }
        _addressBlackList[addr] = enable;
        address[] memory addrs = new address[](1);
        addrs[0] = addr;
        emit SetListEvent(false, enable, addrs);
    }


    function setContractAddressWhiteList(bool enable, address[] memory whiteList) external onlyOwner {
        for (uint i = 0; i < whiteList.length; i++) {
            require(Address.isContract(whiteList[i]), "Address is not contract");
            if (enable) {
                require(!_addressBlackList[whiteList[i]], "Address is in black list");
            }
            _contractAddressWhiteList[whiteList[i]] = enable;
        }
        emit SetListEvent(true, enable, whiteList);
    }

    function setAddressBlackList(bool enable, address[] memory blackList) external onlyOwner {
        for (uint i = 0; i < blackList.length; i++) {
            if (enable) {
                require(!_contractAddressWhiteList[blackList[i]], "Address is in white list");
            }
            _addressBlackList[blackList[i]] = enable;
        }
        emit SetListEvent(false, enable, blackList);
    }

    function check(address addr) external view override {
        if (!_enabled) {
            return;
        }
        if (_addressBlackListEnabled) {
            require(!_addressBlackList[addr], "Address is in black list");
        }
        if (_contractAddressWhiteListEnabled) {
            if (Address.isContract(addr)) {
                require(_contractAddressWhiteList[addr], "Address is not in white list");
            }
        }
        return;
    }

    function silentCheck(address addr) external view override returns (bool) {
        if (!_enabled) {
            return true;
        }
        if (_addressBlackListEnabled && _addressBlackList[addr]) {
            return false;
        }
        if (_contractAddressWhiteListEnabled) {
            if (Address.isContract(addr) && !_contractAddressWhiteList[addr]) {
                return false;
            }
        }
        return true;
    }

    function isInContractAddressWhiteList(address addr) external view returns (bool) {
        return _contractAddressWhiteList[addr];
    }

    function isInAddressBlackList(address addr) external view returns (bool) {
        return _addressBlackList[addr];
    }
}
