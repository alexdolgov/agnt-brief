// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.21;

import { UtilLib } from "./UtilLib.sol";
import { HyperpieConstants } from "./HyperpieConstants.sol";

import { IHyperpieConfig } from "../interfaces/IHyperpieConfig.sol";

import { IAccessControl } from "@openzeppelin/contracts/access/IAccessControl.sol";

/// @title HyperpieConfigRoleChecker - Role checker for Hyperpie Config
/// @notice Provides role checking functionality for Hyperpie Config
abstract contract HyperpieConfigRoleChecker {
    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/
    IHyperpieConfig public hyperpieConfig;
    uint256[49] private __gap; // reserve for upgrade

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/
    event UpdatedHyperpieConfig(address indexed hyperpieConfig);

    /*//////////////////////////////////////////////////////////////
                                MODIFIERS
    //////////////////////////////////////////////////////////////*/
    modifier onlyRole(bytes32 role) {
        if (!IAccessControl(address(hyperpieConfig)).hasRole(role, msg.sender)) {
            string memory roleStr = string(abi.encodePacked(role));
            revert IHyperpieConfig.CallerNotHyperpieConfigAllowedRole(roleStr);
        }
        _;
    }

    modifier onlyPriceProvider() {
        if (!IAccessControl(address(hyperpieConfig)).hasRole(HyperpieConstants.PRICE_PROVIDER_ROLE, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpieConfigPriceProvider();
        }
        _;
    }

    modifier onlyHyperpieManager() {
        if (!IAccessControl(address(hyperpieConfig)).hasRole(HyperpieConstants.MANAGER, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpieConfigManager();
        }
        _;
    }

    modifier onlyDefaultAdmin() {
        if (!IAccessControl(address(hyperpieConfig)).hasRole(HyperpieConstants.DEFAULT_ADMIN_ROLE, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpieConfigAdmin();
        }
        _;
    }

    modifier onlyMinter() {
        if (!IAccessControl(address(hyperpieConfig)).hasRole(HyperpieConstants.MINTER_ROLE, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpieConfigMinter();
        }
        _;
    }

    modifier onlyBurner() {
        if (!IAccessControl(address(hyperpieConfig)).hasRole(HyperpieConstants.BURNER_ROLE, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpieConfigBurner();
        }
        _;
    }

    modifier onlyOracleAdmin() {
        if (!IAccessControl(address(hyperpieConfig)).hasRole(HyperpieConstants.ORACLE_ADMIN_ROLE, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpieConfigOracleAdmin();
        }
        _;
    }

    modifier onlyOracle() {
        if (!IAccessControl(address(hyperpieConfig)).hasRole(HyperpieConstants.ORACLE_ROLE, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpieConfigOracle();
        }
        _;
    }

    modifier onlyPauser() {
        if (!IAccessControl(address(hyperpieConfig)).hasRole(HyperpieConstants.PAUSER_ROLE, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpiePauser();
        }
        _;
    }

    modifier onlyAllowedBot() {
        if (!IAccessControl(address(hyperpieConfig)).hasRole(HyperpieConstants.ALLOWED_BOT_ROLE, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpieConfigAllowedBot();
        }
        _;
    }

    modifier onlyOracleOrHyperpieStaking() {
        address hyperpieStaking = hyperpieConfig.getAddress(HyperpieConstants.HYPERPIE_STAKING);
        bool isOracle = IAccessControl(address(hyperpieConfig)).hasRole(HyperpieConstants.ORACLE_ROLE, msg.sender);
        bool isHyperpieStaking = msg.sender == hyperpieStaking;
        
        if (!isOracle && !isHyperpieStaking) {
            revert IHyperpieConfig.CallerNotHyperpieConfigOracle();
        }
        _;
    }

    /*//////////////////////////////////////////////////////////////
                            ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /// @notice Updates the Hyperpie config contract
    /// @dev only callable by Hyperpie default
    /// @param hyperpieConfigAddr the new Hyperpie config contract Address
    function updateHyperpieConfig(address hyperpieConfigAddr) external virtual onlyDefaultAdmin {
        UtilLib.checkNonZeroAddress(hyperpieConfigAddr);
        hyperpieConfig = IHyperpieConfig(hyperpieConfigAddr);
        emit UpdatedHyperpieConfig(hyperpieConfigAddr);
    }
}
