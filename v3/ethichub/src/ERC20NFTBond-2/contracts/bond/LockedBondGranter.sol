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

    event CooldownStarted(uint256 tokenId, uint256 cooldown);
    event CooldownSet(uint256 cooldown);

    error BondIsLocked();
    error CooldownCanNotBeActivated();
    error CooldownLesserOrEqualZero();

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

    /**
     * ///////// [v1.0, v1.1] /////////
     * Non deployed
     * ///////// [v1.2, v2.0, v2.1] /////////
     * 1 COOLDOWN
     * 1 cooldowns
     * 23 __gap
     * 25 (v1.1 new deployed with 25 store gaps)
     * ///////// [v2.2] /////////
     * 1 cooldown
     * 1 cooldowns
     * 23 __gap
     * 25 (v1.1 deployed with same 25 store gaps)
     */
    uint256[23] private __gap; // deployed with 25 store gaps
}
