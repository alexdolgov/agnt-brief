// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface ISubAccount {
    /// @notice Returns the name of the contract.
    function NAME() external view returns (string memory);

    /// @notice Returns the version of the contract.
    function VERSION() external view returns (string memory);

    /// @notice Returns the account address that this sub-account belongs to.
    function account() external view returns (address);

    /// @notice Returns the account initializer address (deployer who can call setAccount).
    function accountInitializer() external view returns (address);

    /// @notice Allows the account initializer to set the Account address for this sub-account.
    /// @param _account The Account contract address to link this sub-account to.
    function setAccount(address _account) external;

    /**
     * @dev Allows caller (Account) to execute a call.
     * @param _accountSender msg.sender calling Account.execute() or Account.executeOwner().
     * @param _token The token sent to the subAccount. address(0) for native token.
     * @param _amount The amount sent to the subAccount.
     *        If 0, `_token` should be ignored.
     * @param _data Calldata payload.
     * @param _isExecuteOwner True if Account.executeOwner() is being called,
     *         false if Account.execute() is being called.
     */
    function execute(
        address _accountSender,
        address _token,
        uint256 _amount,
        bytes calldata _data,
        bool _isExecuteOwner
    ) external;
}
