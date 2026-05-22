// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {IAccessManager} from "../interfaces/IAccessManager.sol";
import {Errors} from "./Errors.sol";

/**
 * @title ContractBaseUpgradeable
 * @author Mu Digital
 * @notice Base contract for upgradeable contracts with access control, pausability, and reentrancy protection
 */
abstract contract ContractBaseUpgradeable is OwnableUpgradeable, UUPSUpgradeable, PausableUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    /**
     * @notice Address of the access manager contract for role-based access control
     */
    address public accessManager;

    /**
     * @notice Gap for future upgrades
     */
    uint256[49] private __gap;

    /**
     * @notice Emitted when the access manager is updated
     * @param newAccessManager The address of the new access manager
     */
    event AccessManagerUpdated(address indexed newAccessManager);

    /**
     * @notice Constructor that disables initializers for upgradeable contracts
     */
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initialize the base contract components
     */
    function _initContractBaseUpgradeable() internal onlyInitializing {
        __Ownable_init(_msgSender());
        __ReentrancyGuard_init();
    }

    /**
     * @notice Authorize the upgrade of the contract
     * @param newImplementation The address of the new implementation contract
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyUpgradableAdmin {}

    /**
     * @dev Modifier to restrict access to certain functions to the upgradable admin role.
     **/
    modifier onlyUpgradableAdmin() virtual {
        if (!IAccessManager(accessManager).hasRole(IAccessManager(accessManager).DEFAULT_ADMIN_ROLE(), _msgSender()))
            revert Errors.NotAdmin();
        _;
    }

    /**
     * @notice Update the access manager address
     * @param manager The new access manager address
     */
    function setAccessManager(address manager) external onlyOwner {
        if (manager == address(0)) revert Errors.ZeroAddress();
        accessManager = manager;
        emit AccessManagerUpdated(manager);
    }
}
