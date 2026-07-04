// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

/// Tether's token interface.
/// @custom:security-contact security@fantom.foundation
interface ITetherToken {

    /**
     * @dev Mint `_amount` of tokens to given `_destination` account.
     * Can only be called by the current owner.
     */
    function mint(address _destination, uint256 _amount) external;

    /**
     * @dev Destroys a `value` amount of tokens from the owner.
     * Can only be called by the current owner.
     */
    function redeem(uint256 _amount) external;

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) external;

}
