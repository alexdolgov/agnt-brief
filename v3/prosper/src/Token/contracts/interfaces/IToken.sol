// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { IOFT, MessagingFee } from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { BurnRequest } from "../types/Types.sol";

/// @title IToken
/// @dev interface for Token contract containing all events, errors and external/public functions
interface IToken is IOFT, IERC20 {
    /////////////////////////////////
    ////////////  EVENTS  ///////////
    /////////////////////////////////

    /// @notice emitted when a burn is requested for an account
    /// @param account address of account
    /// @param amount amount requested to burn
    event BurnRequested(address account, uint256 amount);

    /////////////////////////////////
    ////////////  ERRORS  ///////////
    /////////////////////////////////

    /// @notice thrown when the accounts and amounts input arrays for batchMint
    /// have different lengths
    error BatchMint__InputArrayMismatch();

    /// @notice Thrown when attempting to execute a batch burn with an empty array
    error BatchExecuteBurn__EmptyArray();

    /// @notice thrown when attempting to burn tokens from an address which is not in the
    /// isBurnable mapping
    error Burn__AccountNotBurnable();

    /// @notice thrown when attempting to execute a burn without a pending burn request
    error ExecuteBurn__NoBurnRequest();

    /// @notice thrown when attempting to request a burn with an amount of zero
    error RequestBurn__AmountIsZero();

    /// @notice thrown when attempting to send tokens with a zero address
    error Send__ZeroAddress();

    /// @notice thrown when attempting to send tokens with a zero amount
    error Send__ZeroAmount();

    /// @notice thrown when attempting to withdraw swappables when swappable token is not set
    error WithdrawSwappables__TokenDoesNotExist();

    //////////////////////////////////
    //////////// FUNCTIONS ///////////
    //////////////////////////////////

    /// @notice initializer function for Token contract
    /// @param initialOwner address of initial owner
    /// @param name ERC20 token name
    /// @param symbol ERC20 token symbol
    function __Token_init(
        address initialOwner,
        string calldata name,
        string calldata symbol
    ) external;

    /// @notice gated minting function for multople accounts, callable only by owner
    /// @param accounts addresses to mint to
    /// @param amounts amounts to mint
    function batchMint(
        address[] calldata accounts,
        uint256[] calldata amounts
    ) external;

    /// @notice executes a burn for the account
    /// @param account address to execute burn for
    function executeBurn(address account) external;

    /// @notice executes a batch burn for multiple accounts
    /// @notice Skips accounts with no burn requests instead of reverting
    /// @param accounts addresses to execute burn for
    function batchExecuteBurn(address[] calldata accounts) external;

    /// @notice gated minting function, callable only by owner
    /// @param account address to mint to
    /// @param amount amount to mint
    function mint(address account, uint256 amount) external;

    /// @notice pauses the Token, callable only by owner
    function pause() external;

    /// @notice requests an amount of `Token` to be burnt, for the _msgSender()
    /// @param amount amount to burn
    function requestBurn(uint256 amount) external;

    /// @notice unpauses the Token, callable only by owner
    function unpause() external;

    /// @notice withdraws entire SWAPPABLE_TOKEN balance from contract
    /// @param receiver address to receive SWAPPABLE_TOKEN balance
    function withdrawSwappables(address receiver) external;

    /// @notice returns amount of tokens requested to burn for an account
    /// @param account address of account
    /// @return amount amount of tokens requested to burn
    function getBurnRequest(
        address account
    ) external view returns (uint256 amount);

    /// @notice returns all pending burn requests
    /// @return requests array of BurnRequest structs containing accounts and amounts
    function getPendingBurnRequests()
        external
        view
        returns (BurnRequest[] memory requests);

    /// @notice returns the number of pending burn requests
    /// @return amount number of pending burn requests
    function getPendingBurnRequestsCount()
        external
        view
        returns (uint256 amount);
}
