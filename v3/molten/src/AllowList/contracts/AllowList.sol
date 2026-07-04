// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IAllowList} from "./IAllowList.sol";

// Uncomment this line to use console.log
// import "hardhat/console.sol";
contract AllowList is Ownable2Step, IAllowList {
    mapping(address => bool) private _list;
    bool public enabled;

    constructor(address initialOwner) 
    Ownable(initialOwner)
    {
        enabled = true;
    }

    event ListAdded(address indexed addr);
    event ListRemoved(address indexed addr);
    event EnableChanged(bool indexed enable);

    function contains(address _addr) public view returns (bool) {
        return _list[_addr];
    }

    function setEnabled(bool _enable) external onlyOwner {
        if(enabled!=_enable){
            enabled = _enable;
            emit EnableChanged(enabled);
        }
    }

    function _add(address _addr) internal {
        if(!_list[_addr]){
            _list[_addr] = true;
            emit ListAdded(_addr);
        }
    }

    function add(address _addr) public onlyOwner {
        _add(_addr);
    }

    function addBatch(address[] calldata _addresses) external onlyOwner {
        for (uint256 i = 0; i < _addresses.length; i++) {
            _add(_addresses[i]);
        }
    }

    function _remove(address _addr) internal {
        if(_list[_addr]){
            delete _list[_addr];
            emit ListRemoved(_addr);
        }
    }

    function remove(address _addr) public onlyOwner {
        _remove(_addr);
    }

    function removeBatch(address[] calldata _addresses) external onlyOwner {
        for (uint256 i = 0; i < _addresses.length; i++) {
            _remove(_addresses[i]);
        }
    }

    function reclaimToken(IERC20 _token) external onlyOwner {
        uint256 balance = _token.balanceOf((address)(this));
        SafeERC20.safeTransfer(_token, owner(), balance);
    }
}
