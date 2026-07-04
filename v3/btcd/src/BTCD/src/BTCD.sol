// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "./interfaces/IBTCDDefinitions.sol";

/**
 * @title BTCD
 */
contract BTCD is Ownable2Step, ERC20Burnable, ERC20Permit, IBTCDDefinitions {
    address public minter;
    address public yieldMinter;

    constructor(address admin) ERC20("BTCD", "BTCD") ERC20Permit("BTCD") {
        if (admin == address(0)) revert ZeroAddressException();
        _transferOwnership(admin);
    }

    function setMinter(address newMinter) external onlyOwner {
        emit MinterUpdated(newMinter, minter);
        minter = newMinter;
    }

    function setYieldMinter(address newYieldMinter) external onlyOwner {
        emit YieldMinterUpdated(newYieldMinter, yieldMinter);
        yieldMinter = newYieldMinter;
    }

    function mint(address to, uint256 amount) external {
        if (msg.sender != minter) revert OnlyMinter();
        _mint(to, amount);
    }

    function mintYield(address to, uint256 amount) external {
        if (msg.sender != yieldMinter) revert OnlyYieldMinter();
        _mint(to, amount);
    }

    function renounceOwnership() public view override onlyOwner {
        revert CantRenounceOwnership();
    }
}
