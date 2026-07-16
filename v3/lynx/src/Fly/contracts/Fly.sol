// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {ERC20BurnableUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import {ERC20PermitUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

error InvalidMinter();

contract Fly is
    Initializable,
    ERC20Upgradeable,
    ERC20BurnableUpgradeable,
    ERC20PermitUpgradeable,
    Ownable2StepUpgradeable,
    UUPSUpgradeable
{
    address public minter;

    function initialize(address currentMinter, address initialOwner)
        external
        initializer
    {
        __ERC20_init("fly.trade", "FLY");
        __ERC20Burnable_init();
        __ERC20Permit_init("fly.trade");
        __Ownable_init(initialOwner);
        __UUPSUpgradeable_init();

        minter = currentMinter;
    }

    function mint(address to, uint256 amount) public {
        if (msg.sender != minter) {
            revert InvalidMinter();
        }
        _mint(to, amount);
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}
}
