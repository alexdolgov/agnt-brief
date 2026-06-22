// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "./IHourglassLockDepositorBaseV3.sol";

/**
 * @title IHourglassVedaLockDepositorV3
 * @notice Interface for the HourglassVedaLockDepositorV3 contract
 * @dev This interface defines the Veda vault-specific functionality extending the base lock depositor
 */
interface IHourglassVedaLockDepositorV3 is IHourglassLockDepositorBaseV3 {
    /**
     * @notice Initialize the depositor with Veda vault specific parameters
     * @dev This function can only be called once due to the initializer modifier
     * @param _depositToken The deposit token address (typically a Veda vault share token)
     * @param _maturity The maturity timestamp when locked deposits can be redeemed
     * @param _nameSuffix The suffix to append to the receipt token name
     * @param _symbolSuffix The suffix to append to the receipt token symbol
     * @param _receiptImpl The receipt token implementation address
     * @param _teller The Veda vault teller address for handling deposits and withdrawals
     * @param _accountant The Veda vault accountant address for tracking balances and rates
     * @param _lens The Veda vault lens address for querying vault data
     */
    function initialize(
        address _depositToken,
        uint256 _maturity,
        string memory _nameSuffix,
        string memory _symbolSuffix,
        address _receiptImpl,
        address _teller,
        address _accountant,
        address _lens
    ) external;

    /**
     * @notice Returns whether or not a deposit is allowed account for veda share lock period
     * @return Boolean indicating if deposits can be made considering the share lock period
     */
    function canDepositConsideringShareLockPeriod() external returns (bool);

    /**
     * @notice Returns the address of the Veda vault teller component
     * @return Address of the teller contract
     */
    function vedaTeller() external view returns (address);

    /**
     * @notice Returns the address of the Veda vault accountant component
     * @return Address of the accountant contract
     */
    function vedaAccountant() external view returns (address);

    /**
     * @notice Returns the address of the Veda vault lens component
     * @return Address of the lens contract
     */
    function vedaLens() external view returns (address);

    /**
     * @notice Enables depositing into the contract via a Veda teller, which converts starting tokens to the underlying.
     *
     * @dev This function handles the following workflow:
     *      1. Transfers the starting token from the user to this contract
     *      2. Approves the Veda vault to use the starting token (if not already approved)
     *      3. Acquires the deposit lock to prevent reentrancy
     *      4. Mints Veda vault shares using the starting token via the teller
     *      5. Finalizes the deposit by minting Hourglass receipt tokens
     *
     * Security considerations:
     *  - Veda vaults have a constraint where newly minted shares are timelocked, meaning users
     *    cannot transfer them for some period of time (configurable for each vault, usually a few days).
     *  - When depositing with the deposit token for this depositor (a Veda vault share), this is not
     *    an issue as the user already has a vault share. The deposit will work if the timelock is expired
     *    or it will not work if the timelock is active.
     *  - This is an issue when a user wants to zap into an Hourglass lock depositor using some starting
     *    token that is not the deposit token. Since the zap from starting token -> deposit token (Veda vault share)
     *    creates a time locked token, we must ensure that the starting token is within this contract before
     *    using the Veda teller to perform the zap.
     *
     * @param recipientPrincipal The address that will receive the principal component of the receipt tokens
     * @param recipientPoint The address that will receive the point component of the receipt tokens
     * @param receiveSplit Whether to split the receipt tokens into principal and point components
     * @param startingToken The address of the asset to deposit into the Veda vault via the teller
     * @param amountIn The amount of starting tokens to deposit
     * @param minimumMint The minimum amount of veda shares required as output. Passed through to deposit function on teller.
     *      Should be computed by calling `previewDeposit` on the lens contract offchain and passing in to the call on-chain.
     * @return amountOut The quantity of Hourglass receipt tokens minted to end user (equals shares deposited into Veda vault).
     */
    function depositViaTeller(
        address recipientPrincipal,
        address recipientPoint,
        bool receiveSplit,
        address startingToken,
        uint256 amountIn,
        uint256 minimumMint
    ) external returns (uint256 amountOut);

    /**
     * @notice Set the Veda teller address
     * @dev Only callable by the factory contract that created this depositor
     * @param _vedaTeller The new teller address
     */
    function setVedaTeller(address _vedaTeller) external;

    /**
     * @notice Set the Veda accountant address
     * @dev Only callable by the factory contract that created this depositor
     * @param _vedaAccountant The new accountant address
     */
    function setVedaAccountant(address _vedaAccountant) external;

    /**
     * @notice Set the Veda lens address
     * @dev Only callable by the factory contract that created this depositor
     * @param _vedaLens The new lens address
     */
    function setVedaLens(address _vedaLens) external;

    /**
     * @notice Error thrown when trying to use the underlying token as the starting token
     * @dev The starting token must be different from the underlying token
     */
    error InvalidStartingTokenIsUnderlying();

    /**
     * @notice Error thrown when the input amount is zero
     * @dev The deposit amount must be greater than zero
     */
    error InvalidAmountIn();

    /**
     * @notice Error thrown when trying to deposit too close to maturity
     * @dev Deposits are not allowed when the current time plus the share lock period would exceed maturity
     */
    error InvalidTooCloseToMaturity();

    /**
     * @notice Error thrown when the starting token pull fails
     * @dev The starting token pull must succeed to continue with the deposit
     */
    error StartingTokenPullFailed(uint256 expected, uint256 actual);
}
