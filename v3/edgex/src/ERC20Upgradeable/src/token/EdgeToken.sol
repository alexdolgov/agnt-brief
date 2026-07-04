// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract EdgeToken is
    Initializable,
    ERC20Upgradeable,
    ERC20BurnableUpgradeable,
    ERC20PermitUpgradeable,
    AccessControlUpgradeable,
    UUPSUpgradeable
{
    error InvalidAdmin();
    error ArrayLengthMismatch();
    error CapExceeded();
    error TotalMintedMismatch();

    bytes32 public constant UPGRADER_ROLE = keccak256("UPGRADER_ROLE");
    uint256 public constant MAX_SUPPLY = 1_000_000_000 * 10 ** 18;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address admin_,
        address[] memory initialRecipients,
        uint256[] memory initialAmounts
    ) public initializer {
        if (admin_ == address(0)) revert InvalidAdmin();
        if (initialRecipients.length != initialAmounts.length) revert ArrayLengthMismatch();

        __ERC20_init("Edge", "EDGE");
        __ERC20Burnable_init();
        __ERC20Permit_init("Edge");
        __AccessControl_init();
        __UUPSUpgradeable_init();

        _grantRole(DEFAULT_ADMIN_ROLE, admin_);
        _grantRole(UPGRADER_ROLE, admin_);

        uint256 totalMinted;
        for (uint256 i = 0; i < initialRecipients.length; i++) {
            address to = initialRecipients[i];
            uint256 amount = initialAmounts[i];

            if (to != address(0) && amount > 0) {
                totalMinted += amount;
                if (totalMinted > MAX_SUPPLY) revert CapExceeded();
                _mint(to, amount);
            }
        }

        if (totalMinted != MAX_SUPPLY) revert TotalMintedMismatch();
    }

    // decimals() defaults to 18 from ERC20Upgradeable

    function _authorizeUpgrade(address newImplementation)
        internal
        override
        onlyRole(UPGRADER_ROLE)
    {}
    
    uint256[50] private __gap;
}
