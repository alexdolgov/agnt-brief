// SPDX-License-Identifier: MIT
pragma solidity >=0.8.10;

interface IStakingModule {
    /**
     * @notice Returns the name of the staking module.
     */
    function NAME() external view returns (string memory);

    /**
     * @notice Returns the version of the staking module.
     */
    function VERSION() external view returns (uint256);

    /**
     * @notice Returns the Manager address.
     * @dev Only this address can call the state mutating functions in this interface.
     */
    function manager() external view returns (address);

    /**
     * @notice Returns the total HYPE balance owned by this contract,
     * total across all liquid and locked/illiquid sources.
     */
    function getTotalBalance() external view returns (uint256);

    /**
     * @notice Deposit HYPE.
     * @dev Only callable by `manager`.
     * @param _data Bytes encoded context data which can be passed into this module.
     */
    function deposit(bytes calldata _data) external payable;

    /**
     * @notice Delegate HYPE across multiple accounts.
     * @dev Only callable by `manager`.
     * @param _accounts Array of account addresses to delegate to.
     * @param _amounts Array of HYPE amounts to delegate to each account.
     * @param _data Bytes encoded context data which can be passed into this module.
     */
    function delegate(address[] calldata _accounts, uint256[] calldata _amounts, bytes calldata _data) external;

    /**
     * @notice Update delegations of HYPE across multiple accounts.
     * @dev Only callable by `manager`.
     * @param _accounts Array of account addresses to update delegations for.
     * @param _changes Array of changes to the delegations for each account.
     * @param _data Bytes encoded context data which can be passed into this module.
     */
    function updateDelegations(address[] calldata _accounts, int256[] calldata _changes, bytes calldata _data) external;

    /**
     * @notice Request withdrawals of HYPE from multiple accounts.
     * @dev Only callable by `manager`.
     * @param _accounts Array of account addresses to request withdrawals from.
     * @param _amounts Array of HYPE amounts to withdraw from each account.
     * @param _data Bytes encoded context data which can be passed into this module.
     */
    function requestWithdraw(address[] calldata _accounts, uint256[] calldata _amounts, bytes calldata _data) external;

    /**
     * @notice Execute HYPE withdrawal.
     * @dev Only callable by `manager`.
     * @param _amount Amount of HYPE to withdraw.
     * @param _data Bytes encoded context data which can be passed into this module.
     */
    function withdraw(uint256 _amount, bytes calldata _data) external;
}
