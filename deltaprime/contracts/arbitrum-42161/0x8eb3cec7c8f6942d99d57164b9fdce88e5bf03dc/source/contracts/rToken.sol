// SPDX-License-Identifier: BUSL-1.1
// Last deployed from commit: 9ca20ca3522705e40ae7ceaae5107ba7d8c43a3e;
pragma solidity ^0.8.17;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract RTKNDP is Initializable, ERC20Upgradeable, OwnableUpgradeable {
    function initialize() public initializer {
        __ERC20_init("ReimbursementTokenDeltaPrime", "rTKNDP");
        __Ownable_init();
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}