// SPDX-License-Identifier: GPLv3.0
pragma solidity ^0.8.28;

import './BondGranter.sol';

/**
 * @title LockedBondGranter
 * @dev This contract contains functions related cooldown of the bonds
 * @author Ethichub
 */
abstract contract LockedBondGranter is BondGranter {
    uint256 public cooldown;
    mapping(uint256 => uint256) public cooldowns;
    uint256 public exitCooldown;
    mapping(uint256 => uint256) public exitCooldowns;

    event CooldownStarted(uint256 tokenId, uint256 cooldown);
    event CooldownSet(uint256 cooldown);
    event ExitRequested(uint256 indexed tokenId, uint256 exitTimestamp);
    event ExitCooldownSet(uint256 exitCooldown);

    error BondIsLocked();
    error CooldownCanNotBeActivated();
    error CooldownLesserOrEqualZero();
    error ExitCooldownNotConfigured();
    error ExitAlreadyRequested();
    error ExitNotRequested();
    error ExitNotAllowed();
    error ExitCooldownNotExpired();

    function __LockedBondGranter_init(
        uint256 _cooldown,
        uint256[] calldata _interests,
        uint256[] calldata _maturities
    ) internal initializer {
        cooldown = _cooldown;
        __BondGranter_init(_interests, _maturities);
    }

    /**
     * @dev editable the cooldown seconds
     * @param _cooldown cooldown seconds
     */
    function setCooldown(uint256 _cooldown) external onlyRole(BOND_ADMIN) {
        if (_cooldown <= 0) revert CooldownLesserOrEqualZero();
        cooldown = _cooldown;
        emit CooldownSet(cooldown);
    }

    function activateCooldown(uint256 tokenId) public virtual {
        Bond memory bond = bonds[tokenId];
        if (cooldowns[tokenId] != 0 || (bond.maturity + bond.mintingDate) >= block.timestamp || _isUnlocked(tokenId)) revert CooldownCanNotBeActivated();
        cooldowns[tokenId] = block.timestamp + cooldown;

        emit CooldownStarted(tokenId, block.timestamp);
    }

    /**
     * @dev Function to redeem bond
     * @param tokenId uint256
     */
    function _redeemBond(uint256 tokenId) internal virtual override returns (uint256) {
        if (!_isUnlocked(tokenId)) revert BondIsLocked();
        uint256 bondValue = super._redeemBond(tokenId);
        Bond memory bond = bonds[tokenId];
        uint256 timeElapsed = cooldowns[tokenId] - bond.mintingDate;
        bondValue = _bondValue(bond.principal, bond.interest, timeElapsed);
        return bondValue;
    }

    /**
     * @dev Checks if bond is unlock to redeemed
     * @param tokenId uint256
     */
    function _isUnlocked(uint256 tokenId) internal view returns (bool) {
        if (cooldowns[tokenId] != 0 && block.timestamp > cooldowns[tokenId]) {
            return true;
        }
        return false;
    }

    function setExitCooldown(uint256 _exitCooldown) external onlyRole(BOND_ADMIN) {
        exitCooldown = _exitCooldown;
        emit ExitCooldownSet(_exitCooldown);
    }

    /**
     * @dev Starts the early-exit process. After exitCooldown expires the owner
     * can call exitBond to recover the principal (no interest).
     * Ownership and pause checks are added by NFTBond override.
     */
    function requestExit(uint256 tokenId) public virtual {
        if (exitCooldown == 0) revert ExitCooldownNotConfigured();
        Bond memory bond = bonds[tokenId];
        if (bond.redeemed) revert AlreadyRedeemed();
        if (exitCooldowns[tokenId] != 0) revert ExitAlreadyRequested();
        if (cooldowns[tokenId] != 0) revert ExitNotAllowed();
        exitCooldowns[tokenId] = block.timestamp + exitCooldown;
        emit ExitRequested(tokenId, exitCooldowns[tokenId]);
    }

    /**
     * @dev Completes the early exit after exitCooldown has expired.
     * Returns only the principal; no interest is paid.
     * Ownership and pause checks are added by NFTBond override.
     */
    function exitBond(uint256 tokenId) public virtual {
        Bond memory bond = bonds[tokenId];
        if (bond.redeemed) revert AlreadyRedeemed();
        if (exitCooldowns[tokenId] == 0) revert ExitNotRequested();
        if (block.timestamp < exitCooldowns[tokenId]) revert ExitCooldownNotExpired();
        bonds[tokenId].redeemed = true;
        _afterBondExited(tokenId, bond.principal, _exitBeneficiary(tokenId));
    }

    function _exitBeneficiary(uint256 tokenId) internal view virtual returns (address) {}

    /**
     * ///////// [v1.0, v1.1] /////////
     * Non deployed
     * ///////// [v1.2, v2.0, v2.1] /////////
     * 1 COOLDOWN
     * 1 cooldowns
     * 23 __gap
     * 25 (v1.1 new deployed with 25 store gaps)
     * ///////// [v2.2, v2.2.1, v2.2.2, v2.3.1, v2.3.2] /////////
     * 1 cooldown
     * 1 cooldowns
     * 23 __gap
     * 25 (v1.1 deployed with same 25 store gaps)
     * ///////// [v2.4.1, v2.4.2] /////////
     * 1 cooldown
     * 1 cooldowns
     * 1 exitCooldown
     * 1 exitCooldowns
     * 21 __gap
     * 25 (v1.1 deployed with same 25 store gaps)
     */
    uint256[21] private __gap; // deployed with 25 store gaps — v2.4.*: exitCooldown/exitCooldowns consume 2 slots
}
