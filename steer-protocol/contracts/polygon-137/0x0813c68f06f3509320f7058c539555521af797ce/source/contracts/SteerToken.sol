// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.12;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-ERC20PermitUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20VotesUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/// @title Steer Protocol Governance Token
/// @author Steer Protocol
/// @dev This token is used within the governance contracts
contract SteerToken is
    Initializable,
    ERC20Upgradeable,
    ERC20BurnableUpgradeable,
    PausableUpgradeable,
    OwnableUpgradeable,
    ERC20PermitUpgradeable,
    ERC20VotesUpgradeable,
    UUPSUpgradeable
{
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer() {}

    function initialize(uint256 initialSupply) public initializer {
        __ERC20_init("Steer Protocol", "STEER");
        __ERC20Burnable_init();
        __Pausable_init();
        __Ownable_init();
        __ERC20Permit_init("Steer Protocol");
        __UUPSUpgradeable_init();

        // Mint intial supply to deployer
        _mint(msg.sender, initialSupply * 10 ** 18);
    }

    /// @dev Pause token transfers in the event of emergency
    /// @dev This will only be used for emergency situations and should not be used for any other reason
    function pause() public onlyOwner {
        _pause();
    }

    /// @dev Unpause token transfers in the event of emergency
    /// @dev This will restore token transfers after an emergency event
    function unpause() public onlyOwner {
        _unpause();
    }

    /// @dev Mints tokens to a given address
    /// @param _to The address to transfer to
    /// @param _amount The amount to transfer
    function mint(address _to, uint256 _amount) public onlyOwner {
        _mint(_to, _amount);
    }

    /// @dev Upgrade proxy support function
    /// @param newImplementation The implementation to upgrade to
    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {}

    /// @dev Before transfer hooks
    /// @dev This function is called before a transfer is made
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override whenNotPaused {
        super._beforeTokenTransfer(from, to, amount);
    }

    /// @dev After transfer hooks
    /// @dev This function is called before a transfer is made
    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override(ERC20Upgradeable, ERC20VotesUpgradeable) {
        super._afterTokenTransfer(from, to, amount);
    }

    function _mint(
        address to,
        uint256 amount
    ) internal override(ERC20Upgradeable, ERC20VotesUpgradeable) {
        super._mint(to, amount);
    }

    function _burn(
        address account,
        uint256 amount
    ) internal override(ERC20Upgradeable, ERC20VotesUpgradeable) {
        super._burn(account, amount);
    }
}
