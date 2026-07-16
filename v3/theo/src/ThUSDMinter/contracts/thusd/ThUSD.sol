// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {ERC20BurnableUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import {ERC20PermitUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";

contract ThUSD is ERC20Upgradeable, ERC20BurnableUpgradeable, ERC20PermitUpgradeable, Ownable2StepUpgradeable, UUPSUpgradeable {
    address public minter;

    error OnlyMinter();

    event MinterSet(address indexed minter);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _owner) external initializer {
        __ThUSD_init(_owner);
    }

    function __ThUSD_init(address _owner) internal onlyInitializing {
        __ERC20_init("thUSD", "thUSD");
        __ERC20Burnable_init();
        __ERC20Permit_init("thUSD");
        __Ownable_init(_owner);
        __Ownable2Step_init();
        __UUPSUpgradeable_init();
    }

    function decimals() public pure override returns (uint8) {
        return 6;
    }

    function setMinter(address _minter) external onlyOwner {
        minter = _minter;
        emit MinterSet(_minter);
    }

    function mint(address to, uint256 amount) external {
        if (msg.sender != minter) revert OnlyMinter();
        _mint(to, amount);
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}
}
