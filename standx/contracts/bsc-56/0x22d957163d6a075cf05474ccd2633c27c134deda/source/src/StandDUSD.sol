// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

import {AccessControlUpgradeable} from "@openzeppelin-upgradeable/access/AccessControlUpgradeable.sol";
import {ERC20Upgradeable} from "@openzeppelin-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {ERC20BurnableUpgradeable} from "@openzeppelin-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import {ERC20PausableUpgradeable} from "@openzeppelin-upgradeable/token/ERC20/extensions/ERC20PausableUpgradeable.sol";
import {Initializable} from "@openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "./proxy/UUPSUpgradeable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

contract StandDUSD is
    Initializable,
    ERC20Upgradeable,
    ERC20BurnableUpgradeable,
    ERC20PausableUpgradeable,
    AccessControlUpgradeable,
    UUPSUpgradeable
{
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");

    address private settler;
    EnumerableSet.AddressSet private holderList;

    function initialize(
        string memory name,
        string memory symbol,
        address defaultAdmin,
        address initSettler
    ) public initializer {
        __ERC20_init(name, symbol);
        __ERC20Burnable_init();
        __ERC20Pausable_init();
        __AccessControl_init();
        __UUPSUpgradeable_init();

        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _grantRole(PAUSER_ROLE, defaultAdmin);
        _grantRole(MINTER_ROLE, defaultAdmin);
        _grantRole(UPGRADER_ROLE, defaultAdmin);

        _grantRole(MINTER_ROLE, initSettler);
        settler = initSettler;
    }

    function setSettler(
        address newSettler
    ) public onlyRole(DEFAULT_ADMIN_ROLE) {
        _grantRole(MINTER_ROLE, newSettler);
        _revokeRole(MINTER_ROLE, settler);
        settler = newSettler;
    }

    function pause() public onlyRole(PAUSER_ROLE) {
        _pause();
    }

    function unpause() public onlyRole(PAUSER_ROLE) {
        _unpause();
    }

    function decimals() public pure override returns (uint8) {
        return 6;
    }

    function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE) {
        _mint(to, amount);
        EnumerableSet.add(holderList, to);
    }

    function transfer(
        address to,
        uint256 value
    ) public override returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, value);
        EnumerableSet.add(holderList, to);
        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 value
    ) public override returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, value);
        _transfer(from, to, value);
        EnumerableSet.add(holderList, to);
        return true;
    }

    function getHolderAmount() public view returns (uint256) {
        return EnumerableSet.length(holderList);
    }

    function getHolders(
        uint256 from_index,
        uint256 count
    ) public view returns (address[] memory) {
        address[] memory list = new address[](count);
        for (uint256 i = 0; i < count; i++)
            list[i] = EnumerableSet.at(holderList, from_index + i);
        return list;
    }

    function getAllHolders() public view returns (address[] memory) {
        return EnumerableSet.values(holderList);
    }

    function burnOnBehalfOf(
        address account,
        uint256 value
    ) public onlyRole(MINTER_ROLE) {
        _burn(account, value);
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(UPGRADER_ROLE) {}

    function _update(
        address from,
        address to,
        uint256 value
    ) internal override(ERC20Upgradeable, ERC20PausableUpgradeable) {
        super._update(from, to, value);
    }
}
