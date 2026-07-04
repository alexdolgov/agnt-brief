pragma solidity ^0.8.20;

import { StablecoinTemplateV3 } from "../v3/StablecoinTemplateV3.sol";
import { AbstractHlAlignedStable } from "./AbstractHlAlignedStable.sol";

contract HlAlignedStableV3 is AbstractHlAlignedStable, StablecoinTemplateV3 {

    error MaxSupplyTooLarge();

    /**
     * @dev Constructor with HIP-1 parameters to facilitate easier testnet usage.
     *      This contract is only meant to be deployed for USDH and testnet tokens with
     *      the same parameters.
     *
     * @param hip1TokenIdx The token ID of USDH on HyperCore, intended to be 360
     * @param hip1ScalingFactor The scaling factor to convert from ERC-20 decimals to HIP-1
     *        decimals, intended to be `10 ** 2`
     */
    constructor(uint64 hip1TokenIdx, uint256 hip1ScalingFactor)
        AbstractHlAlignedStable(hip1TokenIdx, hip1ScalingFactor)
    { }

    /**
     * @dev Creates `amount` tokens and assigns them to `to`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     * Emits a {Minted} event with `to` set to to, `amount` set to the amount, and `sender` set to
     * the sender.
     * Emits a {RawAction} event from `CoreWriter` to reflect the supply change on HyperCore.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - The sum of `amount` and totalSupply cannot go over the maxSupply.
     * - `to` must be on the list of addresses that can accept a minted tokens
     */
    function mint(address to, uint256 amount) public override onlyRole(MINTER_ROLE) {
        super.mint(to, amount);
        _reflectSupplyChange(amount, true);
    }

    /**
     * @dev Destroys `amount` tokens from `sender`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     * Emits a {Burned} event with `amount` set to the amount, and `sender` set to the sender.
     * Emits a {RawAction} event from `CoreWriter` to reflect the supply change on HyperCore.
     *
     * Requirements:
     *
     * - `sender` must have at least `amount` tokens.
     */
    function burn(uint256 amount) public override onlyRole(MINTER_ROLE) {
        super.burn(amount);
        _reflectSupplyChange(amount, false);
    }

    /**
     * @dev Burns the entire balance of a blocked address.
     *
     * This function temporarily unblocks the address to allow the burn operation,
     * then re-blocks it after the burn is complete.
     *
     * Requirements:
     * - `account` must be blocked
     * - `account` must have a balance greater than 0
     */
    function burnFromBlockedAddress(address account)
        public
        override
        onlyRole(BLOCKED_ADDRESS_BURNER_ROLE)
    {
        uint256 accountBalance = balanceOf(account);
        super.burnFromBlockedAddress(account);
        _reflectSupplyChange(accountBalance, false);
    }

    function setMaxSupply(uint256 amount) public override onlyRole(DEFAULT_ADMIN_ROLE) {
        // check that the max supply times the scaling factor will not overflow uint64
        require(amount * HIP1_SCALING_FACTOR <= uint256(type(uint64).max), MaxSupplyTooLarge());
        super.setMaxSupply(amount);
    }

}
