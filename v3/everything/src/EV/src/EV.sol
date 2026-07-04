// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.25;

import { IERC20Permit } from "@openzeppelin-contracts-5/token/ERC20/extensions/IERC20Permit.sol";
import {
    AccessControlDefaultAdminRulesUpgradeable
} from "@openzeppelin-contracts-upgradeable-5/access/extensions/AccessControlDefaultAdminRulesUpgradeable.sol";
import { UUPSUpgradeable } from "@openzeppelin-contracts-upgradeable-5/proxy/utils/UUPSUpgradeable.sol";
import { ERC20Upgradeable } from "@openzeppelin-contracts-upgradeable-5/token/ERC20/ERC20Upgradeable.sol";
import {
    ERC20CappedUpgradeable
} from "@openzeppelin-contracts-upgradeable-5/token/ERC20/extensions/ERC20CappedUpgradeable.sol";
import {
    ERC20PermitUpgradeable
} from "@openzeppelin-contracts-upgradeable-5/token/ERC20/extensions/ERC20PermitUpgradeable.sol";

import { IEV } from "./interfaces/IEV.sol";

/// @title EV Token Contract
contract EV is
    IEV,
    AccessControlDefaultAdminRulesUpgradeable,
    ERC20CappedUpgradeable,
    ERC20PermitUpgradeable,
    UUPSUpgradeable
{
    /* -------------------------------------------------------------------------- */
    /*                                  CONSTANTS                                 */
    /* -------------------------------------------------------------------------- */

    /// @inheritdoc IEV
    uint256 public constant MAIN_EV_CHAIN_ID = 1;
    /// @inheritdoc IEV
    bytes32 public constant REVOKE_MINTER_ROLE = keccak256("REVOKE_MINTER_ROLE");
    /// @inheritdoc IEV
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    /* -------------------------------------------------------------------------- */
    /*                                 CONSTRUCTOR                                */
    /* -------------------------------------------------------------------------- */

    constructor() {
        _disableInitializers();
    }

    /* -------------------------------------------------------------------------- */
    /*                                  EXTERNALS                                 */
    /* -------------------------------------------------------------------------- */

    /// @inheritdoc IEV
    function initialize(address owner, address receiver) public initializer {
        __ERC20_init("Everything", "EV");
        __ERC20Permit_init("Everything");
        __ERC20Capped_init(100_000_000_000 ether); // 100B
        __AccessControlDefaultAdminRules_init(0, owner);

        if (block.chainid == MAIN_EV_CHAIN_ID) {
            _mint(receiver, cap());
        }
    }

    /// @inheritdoc IEV
    function burn(uint256 value) external {
        _burn(msg.sender, value);
    }

    /// @inheritdoc IEV
    function mint(address account, uint256 amount) external onlyRole(MINTER_ROLE) {
        _mint(account, amount);
    }

    /// @inheritdoc IEV
    function revokeMinterRole(address minter) external onlyRole(REVOKE_MINTER_ROLE) {
        _revokeRole(MINTER_ROLE, minter);
    }

    /* -------------------------------------------------------------------------- */
    /*                                  INTERNAL                                  */
    /* -------------------------------------------------------------------------- */

    /// @inheritdoc ERC20Upgradeable
    function _update(address from, address to, uint256 value)
        internal
        virtual
        override(ERC20Upgradeable, ERC20CappedUpgradeable)
    {
        ERC20CappedUpgradeable._update(from, to, value);
    }

    /// @inheritdoc IERC20Permit
    function nonces(address owner)
        public
        view
        virtual
        override(IERC20Permit, ERC20PermitUpgradeable)
        returns (uint256 userNonce_)
    {
        userNonce_ = ERC20PermitUpgradeable.nonces(owner);
    }

    /// @inheritdoc UUPSUpgradeable
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) { }
}
