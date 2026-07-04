// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Address } from "@openzeppelin/contracts/utils/Address.sol";

contract DomaTreasury is UUPSUpgradeable, AccessControlUpgradeable {
    using SafeERC20 for IERC20;
    using Address for address payable;

    // Events
    event FundsReceived(address indexed from, uint256 amount);

    // Errors
    error ZeroAddress();

    modifier onlyOwner() {
        _checkRole(DEFAULT_ADMIN_ROLE);
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address initialOwner) public initializer {
        __AccessControl_init();
        __UUPSUpgradeable_init();

        if (initialOwner == address(0)) {
            revert ZeroAddress();
        }

        _grantRole(DEFAULT_ADMIN_ROLE, initialOwner);
    }

    /// @notice Restricts upgrades to the owner
    /* solhint-disable-next-line no-empty-blocks */
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    receive() external payable {
        emit FundsReceived(msg.sender, msg.value);
    }

    function withdraw(address payable to, uint256 amount) external onlyOwner {
        if (to == address(0)) {
            revert ZeroAddress();
        }
        to.sendValue(amount);
    }

    function withdrawERC20(address to, IERC20 token, uint256 amount) external onlyOwner {
        if (to == address(0)) {
            revert ZeroAddress();
        }
        token.safeTransfer(to, amount);
    }
}
