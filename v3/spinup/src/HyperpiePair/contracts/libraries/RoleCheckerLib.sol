// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.21;

import { IHyperpieConfig } from "../utils/HyperpieConfigRoleChecker.sol";
import { HyperpieConstants } from "../utils/HyperpieConstants.sol";
import { IAccessControl } from "@openzeppelin/contracts/access/IAccessControl.sol";


library RoleCheckerLib {

  
    /*//////////////////////////////////////////////////////////////
                                MODIFIERS
    //////////////////////////////////////////////////////////////*/
    function onlyRole(bytes32 role, address hyperpieConfig) external view {
        if (!IAccessControl(hyperpieConfig).hasRole(role, msg.sender)) {
            string memory roleStr = string(abi.encodePacked(role));
            revert IHyperpieConfig.CallerNotHyperpieConfigAllowedRole(roleStr);
        }
    }

    function onlyPriceProvider(address hyperpieConfig) external view {
        if (!IAccessControl(hyperpieConfig).hasRole(HyperpieConstants.PRICE_PROVIDER_ROLE, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpieConfigPriceProvider();
        }
    }

    function onlyHyperpieManager(address hyperpieConfig) external view {
        if (!IAccessControl(hyperpieConfig).hasRole(HyperpieConstants.MANAGER, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpieConfigManager();
        }
    }

    function onlyDefaultAdmin(address hyperpieConfig) external view {
        if (!IAccessControl(hyperpieConfig).hasRole(HyperpieConstants.DEFAULT_ADMIN_ROLE, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpieConfigAdmin();
        }
    }

    function onlyMinter(address hyperpieConfig) external view {
        if (!IAccessControl(hyperpieConfig).hasRole(HyperpieConstants.MINTER_ROLE, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpieConfigMinter();
        }
    }

    function onlyBurner(address hyperpieConfig) external view {
        if (!IAccessControl(hyperpieConfig).hasRole(HyperpieConstants.BURNER_ROLE, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpieConfigBurner();
        }
    }

    function onlyOracleAdmin(address hyperpieConfig) external view {
        if (!IAccessControl(hyperpieConfig).hasRole(HyperpieConstants.ORACLE_ADMIN_ROLE, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpieConfigOracleAdmin();
        }
    }

    function onlyOracle(address hyperpieConfig) external view {
        if (!IAccessControl(hyperpieConfig).hasRole(HyperpieConstants.ORACLE_ROLE, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpieConfigOracle();
        }
    }

    function onlyPauser(address hyperpieConfig) external view {
        if (!IAccessControl(hyperpieConfig).hasRole(HyperpieConstants.PAUSER_ROLE, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpiePauser();
        }
    }

    function onlyAllowedBot(address hyperpieConfig) external view {
        if (!IAccessControl(hyperpieConfig).hasRole(HyperpieConstants.ALLOWED_BOT_ROLE, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpieConfigAllowedBot();
        }
    }

    function onlyFeeManager(address hyperpieConfig) external view {
        if (!IAccessControl(hyperpieConfig).hasRole(HyperpieConstants.FEE_MANAGER_ROLE, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpieConfigFeeManager();
        }
    }

    function onlyMetaConfigRole(address hyperpieConfig) external view {
        if (!IAccessControl(hyperpieConfig).hasRole(HyperpieConstants.HYPERPIE_V2_META_CONFIG_ROLE, msg.sender)) {
            revert IHyperpieConfig.CallerNotHyperpieConfigMetaConfig();
        }
    }
}
