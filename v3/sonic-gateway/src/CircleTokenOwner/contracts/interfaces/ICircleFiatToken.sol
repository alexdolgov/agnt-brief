// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.27;

/// Circle's FiatToken interface.
/// @custom:security-contact security@fantom.foundation
interface ICircleFiatToken {

    /**
     * @dev Mint `amount` of tokens to given `account`.
     */
    function mint(address _to, uint256 _amount) external returns (bool);

    /**
     * @dev Destroys a `value` amount of tokens from the caller.
     */
    function burn(uint256 _amount) external;

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
     * @dev Changes the admin of the AdminUpgradeabilityProxy.
     * Only the current admin can call this function.
     * @param newAdmin Address to transfer proxy administration to.
     */
    function changeAdmin(address newAdmin) external;

    /**
     * @dev Allows the current owner to transfer control of the contract to a newOwner.
     * @param newOwner The address to transfer ownership to.
     */
    function transferOwnership(address newOwner) external;

    /**
     * @notice Updates the master minter address.
     * Only the token owner can call this function.
     * @param _newMasterMinter The address of the new master minter.
     */
    function updateMasterMinter(address _newMasterMinter) external;

    /**
     * @notice Removes a minter.
     * Only the master minter can call this function.
     * @param minter The address of the minter to remove.
     * @return True if the operation was successful.
     */
    function removeMinter(address minter) external returns (bool);

    /**
     * @return The address of the proxy admin.
     */
    function admin() external view returns (address);

    /**
     * @dev Tells the address of the (token) owner
     * @return the address of the owner
     */
    function owner() external view returns (address);

}
