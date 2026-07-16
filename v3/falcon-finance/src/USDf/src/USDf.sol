// SPDX-License-Identifier: MIT
pragma solidity >=0.8.28;

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ERC20PermitUpgradeable} from
    "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";

import {IUSDf} from "src/interfaces/IUSDf.sol";

contract USDf is IUSDf, ERC20PermitUpgradeable, AccessControlUpgradeable {

    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

    /// @inheritdoc IUSDf
    mapping(address => bool) public isRestricted;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address admin) external initializer {
        __AccessControl_init();
        __ERC20_init("Falcon USD", "USDf");
        __ERC20Permit_init("Falcon USD");

        require(admin != address(0), ZeroAddress());
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
    }

    /// @inheritdoc IUSDf
    function setRestriction(address account, bool restricted) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(account != address(0), ZeroAddress());
        require(isRestricted[account] != restricted, StatusNotChanged());

        isRestricted[account] = restricted;
        emit AddressRestrictionSet(account, restricted);
    }

    /// @inheritdoc IUSDf
    function mint(address to, uint256 amount) external onlyRole(MINTER_ROLE) {
        _mint(to, amount);
    }

    /// @inheritdoc IUSDf
    function burn(address from, uint256 amount) external onlyRole(BURNER_ROLE) {
        _burn(from, amount);
    }

    function _update(address from, address to, uint256 amount) internal override {
        require(!isRestricted[from], AddressRestricted(from));
        require(!isRestricted[to], AddressRestricted(to));

        super._update(from, to, amount);
    }

}
