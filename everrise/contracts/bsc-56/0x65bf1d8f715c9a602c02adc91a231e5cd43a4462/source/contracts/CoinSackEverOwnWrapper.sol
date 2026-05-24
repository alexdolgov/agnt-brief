//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import './interfaces/IManageable.sol';

contract CoinSackEverOwnWrapper {

    IManageable public immutable CoinSack = IManageable(0x125Ce3f13950C5fA94397927F88C352FdED680Ad);

    address private _owner;

    constructor() {
        _owner = msg.sender;
        emit OwnershipTransferred(address(0), _owner);
    }

    function transferOwnership(address newOwner) external onlyOwner() {
        require(newOwner != address(0), "Ownable: new owner is the zero address");

        CoinSack.addManager(newOwner);
        CoinSack.removeManager(_owner);

        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }

    function owner() public view returns (address) {
        return _owner;
    }

    function name() public pure returns (string memory) {
        return "Coin Sack";
    }

    function symbol() public pure returns (string memory) {
        return "CS";
    }

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


    modifier onlyOwner() {
        require(_owner == msg.sender, "Ownable: caller is not the owner");
        _;
    }

}