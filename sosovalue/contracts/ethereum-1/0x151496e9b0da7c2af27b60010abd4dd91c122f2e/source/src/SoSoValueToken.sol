// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";

contract SoSoValueToken is
    Initializable,
    UUPSUpgradeable,
    OwnableUpgradeable,
    ERC20BurnableUpgradeable,
    ERC20PermitUpgradeable,
    PausableUpgradeable
{
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address owner, address ecosystem, address investor, address teamPartner, address foundation)
        public
        initializer
    {
        __UUPSUpgradeable_init();
        __Ownable_init(owner);
        __ERC20_init("SoSoValue", "SOSO");
        uint256 totalSupply = 1_000_000_000 * 10 ** decimals();
        uint256 ecosystemShares = 30_00;
        uint256 investorShares = 16_50;
        uint256 teamPartnerShares = 36_50;
        uint256 foundationShares = 17_00;
        uint256 totalShares = ecosystemShares + investorShares + teamPartnerShares + foundationShares;
        _mint(ecosystem, totalSupply * ecosystemShares / totalShares);
        _mint(investor, totalSupply * investorShares / totalShares);
        _mint(teamPartner, totalSupply * teamPartnerShares / totalShares);
        _mint(foundation, totalSupply * foundationShares / totalShares);
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    //// pausable

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    //// add modifier in _update and _approve

    function _update(address from, address to, uint256 value)
        internal
        override
        whenNotPaused
    {
        super._update(from, to, value);
    }

    function _approve(address owner, address spender, uint256 value, bool emitEvent)
        internal
        override
        whenNotPaused
    {
        super._approve(owner, spender, value, emitEvent);
    }
}
