// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";

import "./interfaces/IAvantCoinDefinitions.sol";

contract AvantCoin is
    Ownable2Step,
    ERC20Burnable,
    ERC20Permit,
    IAvantCoinDefinitions
{
    mapping(address => bool) public minters;

    constructor(
        address admin
    ) ERC20("avBTC", "avBTC") ERC20Permit("avBTC") Ownable(admin) {
        /// @dev zero address will be checked on the Ownable constructor
        // if (admin == address(0)) revert ZeroAddressException();
        /// @dev Ownable constructor will assign initial ownership
        // _transferOwnership(admin);
    }

    function setMinter(address minter, bool isMinter) external onlyOwner {
        emit MinterUpdated(minter, isMinter);
        minters[minter] = isMinter;
    }

    function mint(address to, uint256 amount) external {
        if (!minters[msg.sender]) revert OnlyMinter();
        _mint(to, amount);
    }

    function renounceOwnership() public view override onlyOwner {
        revert CannotRenounceOwnership();
    }
}
