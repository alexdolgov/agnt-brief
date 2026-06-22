// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

import '@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol';

/**
 * @title IRBToken
 * @dev Interface for the RBToken contract, extending IERC20Metadata and including custom errors and events.
 */
interface IRBToken is IERC20Metadata {
    // Custom errors
    error E_ZeroAddr(); // Error for zero address
    error E_Rebase(); // Error for rebase operation failure
    error E_AllowanceInvalid(); // Error for invalid allowance
    error E_TransferRBContract(); // Error for transfer to RBToken contract itself
    error E_BalanceInvalid(); // Error for invalid balance
    error E_AmountInvalid(); // Error for invalid amount

    // Events
    event TransferShares(address indexed from, address indexed to, uint256 sharesValue); // Event for shares transfer
    event SharesBurnt(
        address indexed account,
        uint256 preRebaseTokenAmount,
        uint256 postRebaseTokenAmount,
        uint256 sharesAmount
    ); // Event for shares burnt during rebase
    event Rebase(address asset, uint256 originTotalSupply, uint256 newTotalSupply); // Event for rebase operation

    /**
     * @dev Mints new tokens for a recipient.
     * @param _recipient The address of the recipient.
     * @param _tokenAmount The amount of tokens to mint.
     */
    function mint(address _recipient, uint256 _tokenAmount) external;

    /**
     * @dev Mints new tokens with a limit and service fee.
     * @param _recipient The address of the recipient.
     * @param _tokenAmount The amount of tokens to mint.
     * @param _srvFeeAddr The addresses for the service fee.
     * @param _srvFeeRatio The ratio for the service fee.
     */
    function mintWithFee(
        address _recipient,
        uint256 _tokenAmount,
        address[] memory _srvFeeAddr,
        uint16 _srvFeeRatio
    ) external returns (uint256 recipientTokenAmount);

    /**
     * @dev Burns tokens from a specified address.
     * @param _from The address from which to burn tokens.
     * @param _tokenAmount The amount of tokens to burn.
     */
    function burnFrom(address _from, uint256 _tokenAmount) external;

    /**
     * @dev Rebases the pooled tokens to a new total.
     * @param _newTotalSupply The new total of pooled tokens.
     */
    function rebase(uint256 _newTotalSupply) external;

    /**
     * @dev Returns the total shares in the pool.
     */
    function totalShare() external view returns (uint256);

    /**
     * @dev Returns the shares of a specific account.
     * @param _account The address of the account.
     * @return The shares of the account.
     */
    function sharesOf(address _account) external view returns (uint256);

    /**
     * @dev Transfers shares to the recipient and returns the corresponding token amount.
     * @param _recipient The address of the recipient.
     * @param _sharesAmount The amount of shares to transfer.
     * @return The corresponding token amount.
     */
    function transferShares(address _recipient, uint256 _sharesAmount) external returns (uint256);

    /**
     * @dev Transfers shares from the sender to the recipient using an allowance mechanism, and returns the corresponding token amount.
     * @param _sender The address of the sender.
     * @param _recipient The address of the recipient.
     * @param _sharesAmount The amount of shares to transfer.
     * @return The corresponding token amount.
     */
    function transferSharesFrom(address _sender, address _recipient, uint256 _sharesAmount) external returns (uint256);
}
