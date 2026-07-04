// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

import {IERC20} from "./interface/IERC20.sol";
import {AccessControlUpgradeable} from "@openzeppelin-upgradeable/access/AccessControlUpgradeable.sol";
import {Initializable} from "@openzeppelin-upgradeable/proxy/utils/Initializable.sol";
import {PausableUpgradeable} from "@openzeppelin-upgradeable/utils/PausableUpgradeable.sol";
import {UUPSUpgradeable} from "./proxy/UUPSUpgradeable.sol";
import {StandDUSD} from "./StandDUSD.sol";

contract Settler is
    Initializable,
    AccessControlUpgradeable,
    PausableUpgradeable,
    UUPSUpgradeable
{
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");
    bytes32 public constant TOKEN_ADMIN_ROLE = keccak256("TOKEN_ADMIN_ROLE");

    StandDUSD public dusd;
    address private gateway;

    function initialize(
        address mgmt,
        address gatewayAddr,
        StandDUSD dusdAddr
    ) public initializer {
        __AccessControl_init();
        __Pausable_init();
        __UUPSUpgradeable_init();

        _grantRole(DEFAULT_ADMIN_ROLE, mgmt);
        _grantRole(TOKEN_ADMIN_ROLE, mgmt);
        _grantRole(PAUSER_ROLE, mgmt);
        _grantRole(UPGRADER_ROLE, mgmt);
        _grantRole(TOKEN_ADMIN_ROLE, gatewayAddr);

        gateway = gatewayAddr;
        dusd = dusdAddr;
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(UPGRADER_ROLE) {}

    function setGateway(address _gateway) public onlyRole(DEFAULT_ADMIN_ROLE) {
        _grantRole(TOKEN_ADMIN_ROLE, _gateway);
        _revokeRole(TOKEN_ADMIN_ROLE, gateway);
        gateway = _gateway;
    }

    function mintDusd(
        address user,
        uint256 amount
    ) public onlyRole(TOKEN_ADMIN_ROLE) {
        require(user != address(0), "Invalid user");
        require(amount > 0, "Invalid amount");
        dusd.mint(user, amount);
    }

    function burnDusd(
        address user,
        uint256 amount
    ) public onlyRole(TOKEN_ADMIN_ROLE) {
        require(user != address(0));
        require(amount > 0);
        dusd.burnOnBehalfOf(user, amount);
    }

    function transferToken(
        IERC20 token,
        address to,
        uint256 amount
    ) public onlyRole(TOKEN_ADMIN_ROLE) {
        require(address(token) != address(0));
        require(to != address(0));
        require(amount > 0);
        token.transfer(to, amount);
    }
}
