// SPDX-License-Identifier: none
pragma solidity 0.8.24;

/**
 * @title Errors
 * @author Sake Finance
 * @notice A library of custom error types used in BOOM!.
 */
library Errors {
    // call errors
    /// @notice Thrown when a low level call reverts without a reason.
    error CallFailed();
    /// @notice Thrown when a low level delegatecall reverts without a reason.
    error DelegateCallFailed();
    /// @notice Thrown if the owner tries to execute an operation that is not a call.
    error OnlyCallsAllowed();
    /// @notice Thrown when a function should not be delegatecalled.
    error NoDelegateCall();
    /// @notice Thrown when using an address with no code.
    error NotAContract();
    /// @notice Thrown when a contract deployment fails.
    error ContractNotDeployed();
    /// @notice Thrown when the sender has an insufficient balance of the token they are sending.
    error InsufficientBalance();

    // ownership & authentication errors
    /// @notice Thrown when calling a function reserved for the contract owner.
    error NotContractOwner();
    /// @notice Thrown when calling a function reserved for the pending contract owner.
    error NotPendingContractOwner();
    /// @notice Thrown when calling a function reserved for the owner of a erc6551 account.
    error ERC6551InvalidSigner();
    /// @notice Thrown when attempting a function reserved for the owner of the agent.
    error NotOwnerOfAgent();
    /// @notice Thrown when a signature is invalid.
    error InvalidSignature();

    // generic input errors
    /// @notice Thrown when address zero is used where it should not be.
    error AddressZero();
    /// @notice Thrown when a nonzero address is used where the zero address is expected
    error AddressNotZero();
    /// @notice Thrown when an address is used where it should not be.
    //error AddressIllegal();
    /// @notice Thrown when a zero amount used where it should not be.
    error AmountZero();
    /// @notice Thrown when the number of elements in an array is not what was expected.
    error LengthMismatch();
    /// @notice Thrown when receiving an array of length zero.
    error LengthZero();
    /// @notice Thrown when looking up a name that is unknown.
    error UnknownName();
    /// @notice Thrown when accessing an element that is out of range.
    error OutOfRange();
    /// @notice Thrown when gas token values do not match.
    error ValueMismatch();
    /// @notice Thrown when an entry has already been registered.
    error AlreadyRegistered();
    /// @notice Thrown when a number overflows its data type.
    error Overflow();

    // execution errors
    /// @notice Thrown when a call reenters illegally.
    error ReentrancyGuard();
    /// @notice Thrown when attempting to call a contract that has not been been initialized.
    error NotInitialized();
    /// @notice Thrown when attempting to initialize a contract that has already been initialized.
    error AlreadyInitialized();

    // nft errors
    /// @notice Thrown when querying an agent that does not exist.
    error AgentDoesNotExist();
    /// @notice Thrown when transferring an agent nft to the agent account.
    error OwnershipCycle();
    /// @notice Thrown when referrencing an account that is not an agent.
    error NotAnAgent();

    // agent creation errors
    /// @notice Thrown when attempting to create an agent from an account that is not whitelisted.
    error FactoryNotWhitelisted();
    /// @notice Thrown when call a contract that has been paused.
    error ContractPaused();
    /// @notice Thrown when using a factory and a creation settings that has been paused.
    error CreationSettingsPaused();
    /// @notice Thrown when trying to freeze settings that are already frozen.
    error CreationSettingsFrozen();
    /// @notice Thrown when minting an nft over the max total supply.
    error OverMaxSupply();
    /// @notice Thrown when minting an nft over the max public mint.
    error OverMaxPublicMint();
    /// @notice Thrown when minting an nft but the mint has not been started.
    error MintNotStarted();
    /// @notice Thrown when minting via the allowlist but the period has ended.
    error AllowlistMintEnded();
    /// @notice Thrown when minting too many agents at once.
    error OverMaxMintPerTx();
    /// @notice Thrown when minting an nft over the max allowlist mint total.
    error OverMaxAllowlistMintTotal();
    /// @notice Thrown when minting an nft over the max allowlist mint per user.
    error OverMaxAllowlistMintPerAccount();
    /// @notice Thrown when minting from the treasury allocation before treasury mint starts.
    error TreasuryMintNotStarted();
    /// @notice Thrown when not paying enough to mint an nft.
    error InsufficientPayment();
    /// @notice Thrown when minting from the treasury allocation without approval.
    error NotTreasuryMinter();
    /// @notice Thrown when minting more agents than allowed per user.
    error OverMaxCreationsPerUser();
    /// @notice Thrown when minting more agents than allowed per agent.
    error OverMaxCreationsPerAgent();

    // erc2535 errors
    /// @notice Thrown when installing a function that is already installed.
    error AddFunctionDuplicate();
    /// @notice Thrown when replacing a function with itself.
    error ReplaceFunctionSame();
    /// @notice Thrown when removing a function that has not currently installed.
    error RemoveFunctionDoesNotExist();
    /// @notice Thrown when removing a function that cannot be removed.
    error RemoveFunctionImmutable();
    /// @notice Thrown when calling a function that does not exist in this contract.
    error FunctionDoesNotExist();
    /// @notice Thrown when attempting to install a module that is not whitelisted.
    error ModuleNotWhitelisted();

    // quoter errors
    /// @notice Thrown when failing to decode an error message.
    error UnknownError();
    /// @notice Thrown when a revert was intentionally thrown in order to return a value.
    error RevertForAmount(uint256 amount);

    /// @notice Thrown when calling a function on a proxy that should only be called on the implementation.
    error NotImplementation();
    /// @notice Thrown when calling a function on an implementation contract that can only be called by the gas collector.
    error NotGasCollector();
    /// @notice Thrown when trying to mint without the minter role.
    error NotMinter();
    /// @notice Thrown when calling the dispatcher without the operator role.
    error NotOperator();

    // erc6551 errors
    error InvalidOperation();
    error ContractCreationFailed();
    error NotAuthorized();
    error InvalidInput();
    error ExceedsMaxLockTime();
    error AccountLocked();
    error InvalidAccountProof();
    error InvalidGuardian();
    error InvalidImplementation();
    //error AlreadyInitialized();
    error InvalidEntryPoint();
    error InvalidMulticallForwarder();
    error InvalidERC6551Registry();
    error InvalidSender();

    //ModuleC Errors
    error PositionAlreadyExists(); // Throw if trying to create a position, but one exists
    error NoPositionFound(); // Throw if trying to operate on a position, but none exists
    error InvalidTickParam(); // Throw if tick params is invalid
    error InvalidSlippageParam(); // Throw if slippage params is invalid
    error InvalidManagerParam(); // Throw if nfp manager param is invalid

    // ModuleD errors
    /// @notice Thrown when creating an agent with an invalid mode.
    error InvalidMode();

    // processing errors
    /// @notice Thrown when processing an empty queue.
    error NoMoreItemsInQueue();

    // facilitator errors
    /// @notice Thrown when using an erc20 with too many decimals.
    error TooManyDecimals();
    /// @notice Thrown when trying to mint sone but mint mode is disabled for the agent.
    error MintModeDisabled();
    /// @notice Thrown when trying to free use an agent but free use mode is disabled for the agent.
    error FreeUseModeDisabled();
    /// @notice Throwwn when the action is disabled if the caller has debt.
    error NonZeroDebt();
    /// @notice Thrown when setting an interest rate too high.
    error InterestRateTooHigh();

    // oracle errors
    /// @notice Thrown when the oracle returns a zero value.
    error OracleZeroValue();

    // curve pool errors
    /// @notice Thrown when a swap fails in the Curve pool.
    error CurvePoolSwapFailed();
    error InvalidSwapAssetNumber();

    // pool error
    /// @notice Thrown when the LTV (Loan-to-Value) ratio is invalid.
    error InvalidLTV();

    // transfer errors
    error TransferFailed();

    /// @notice Thrown when asset balance is insufficient for an operation
    error InsufficientAssetBalance();
    /// @notice Thrown when amount to borrow is zero
    error ZeroBorrowAmount();
    /// @notice Thrown when deposit fails
    error DepositFailed();
    /// @notice Thrown when swap fails
    error SwapFailed();
    /// @notice Thrown when redeem fails
    error RedeemFailed();
    /// @notice Thrown when redeemAsATokens fails
    error RedeemAsATokensFailed();
    /// @notice Thrown when withdraw fails
    error WithdrawFailed();
    /// @notice Thrown when no LST is present in module
    error NoLSTInModule();
    /// @notice Thrown when withdrawal of borrowed token fails
    error WithdrawBorrowedTokenFailed();
    /// @notice Thrown when aLST balance is not zero
    error NonZeroALSTBalance();
    /// @notice Thrown when exchange rate is invalid
    error InvalidExchangeRate();
    /// @notice Thrown when attempting to withdraw ETH when its unsupported.
    error CannotWithdrawETH();
    /// @notice Thrown when a function is called by a pool it doesn't recognize.
    error PoolNotRecognized();
    /// @notice Thrown when the request for quote fails.
    error QuoteFailed();
    /// @notice Thrown when the request for quote using exact input fails.
    error GetQuoteExactInputFailed();
    /// @notice Thrown when the request for quote using exact output fails.
    error GetQuoteExactOutputFailed();
    /// @notice Thrown when the pool lookup fails.
    error GetPoolFailed();
    /// @notice Thrown when the data for the swap callback is invalid.
    error InvalidSwapCallbackData();
}
