// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { IPool } from "@aave-v3/contracts/interfaces/IPool.sol";
import { IERC20 } from "@openzeppelin-contracts-5/token/ERC20/IERC20.sol";

import "../UniPoolTypes.sol";
import { IUniPoolFactory } from "./IUniPoolFactory.sol";
import { IUniPoolPair } from "./IUniPoolPair.sol";

/**
 * @title IUniPoolVault
 * @notice Interface for the `UniPoolVault` contract that manages user collateral and Aave yield management.
 */
interface IUniPoolVault {
    /**
     * @notice The storage struct for the `UniPoolVault` contract.
     * @param factory The address of the factory contract.
     * @param aave The Aave v3 lending pool used for supplying supported collateral.
     * @param assets Asset information, like the total number of shares and whether it's idle.
     * @param loanShares A mapping of loan IDs to their associated shares balance.
     * @param tickShares A mapping of a unique tick hash to the total shares balance for loans on that tick.
     */
    struct Storage {
        IUniPoolFactory factory;
        IPool aave;
        mapping(IERC20 => AssetData) assets;
        mapping(LoanHash => uint256) loanShares;
        mapping(TickHash => uint256) tickShares;
    }

    /* -------------------------------------------------------------------------- */
    /*                                   Events                                   */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Emitted when collateral is deposited for a loan.
     * @param pair The address of the `UniPoolPair` that initiated the loan.
     * @param asset The address of the token used as collateral.
     * @param loanId The loan ID from the pair.
     * @param collateral The amount of collateral deposited.
     */
    event DepositCollateral(address indexed pair, address indexed asset, LoanId indexed loanId, uint256 collateral);

    /**
     * @notice Emitted when collateral is withdrawn from the vault.
     * @param pair The address of the `UniPoolPair` that requests the withdrawal.
     * @param asset The address of the token used as collateral.
     * @param loanId The loan ID from the pair.
     * @param to The address which received the funds.
     * @param collateral The amount of collateral withdrawn.
     */
    event WithdrawCollateral(
        address indexed pair, address indexed asset, LoanId indexed loanId, address to, uint256 collateral
    );

    /**
     * @notice Emitted when a tick is liquidated and collateral sent to the pair.
     * @param pair The address of the pair requesting the collateral for the liquidation.
     * @param asset The address of the token used as collateral.
     * @param liquidatedCollateral The amount of collateral that is sent to the pair.
     * @param tickNumber The tick number for the liquidation price.
     * @param tickVersion The version of the tick at the time of the loan creation.
     */
    event TickCollateralLiquidated(
        address pair, address asset, uint256 liquidatedCollateral, int16 tickNumber, uint232 tickVersion
    );

    /**
     * @notice Emitted when an asset is migrated between the vault and Aave.
     * @param asset The address of the token used as collateral.
     * @param toAave True if collateral is moved to Aave, and false when moved to the vault.
     * @param amount The amount of collateral migrated.
     */
    event MigratedCollateral(address indexed asset, bool toAave, uint256 amount);

    /**
     * @notice Emitted when an Aave integration of an asset is changed.
     * @param token The address of the token.
     * @param forceIdle True when disabling Aave integration, false otherwise.
     */
    event ForceAssetIdle(address token, bool forceIdle);

    /* -------------------------------------------------------------------------- */
    /*                                   Errors                                   */
    /* -------------------------------------------------------------------------- */

    /// @notice Thrown when an asset on Aave is frozen.
    error UniPoolVaultAssetIsFrozen();

    /// @notice Thrown when an asset on Aave is paused.
    error UniPoolVaultAssetIsPaused();

    /// @notice Thrown when an invalid pair tries to deposit collateral.
    error UniPoolVaultInvalidPair();

    /// @notice Thrown when the `UniPoolPair` sends the incorrect amount to the vault.
    error UniPoolVaultInvalidAmountReceived();

    /// @notice Thrown during a liquidation if the tick was never initialized.
    error UniPoolVaultInvalidTick();

    /// @notice Thrown during a withdrawal if the position was never initialized.
    error UniPoolVaultInvalidLoan();

    /// @notice Thrown when tick data collateral is zero.
    error UniPoolVaultEmptyTickCollateral();

    /// @notice Thrown when `UniPoolPair` tries to deposit more into an existing loan.
    error UniPoolVaultLoanAlreadyExists();

    /// @notice Thrown when the collateral amount corresponds to zero shares.
    error UniPoolVaultZeroShares();

    /// @notice Thrown when trying to change Aave status to existing one.
    error UniPoolVaultExistingStatus();

    /// @notice Thrown if Aave cannot report a liquidity index for a token during its migration.
    error UniPoolVaultNoLiquidityIndex();

    /// @notice Thrown when the minimum deposit amount is not respected.
    error UniPoolVaultUnderMinDeposit();

    /// @notice Thrown when a partial withdrawal leaves less than the minimum amount of tokens.
    error UniPoolVaultUnderMinWithdrawal();

    /* -------------------------------------------------------------------------- */
    /*                                  Functions                                 */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice The minimum allowed deposit, or withdraw in the vault.
     * @return minDeposit_ The minimum allowed deposit, or withdraw in the vault.
     */
    function MIN_COLLATERAL() external returns (uint128 minDeposit_);

    /**
     * @notice Initializes the proxy by setting the factory address and Aave pool.
     * @param owner The owner of the contract.
     * @param factory The address of the UniPool factory.
     * @param aavePool The address of the Aave pool.
     */
    function initialize(address owner, IUniPoolFactory factory, IPool aavePool) external;

    /**
     * @notice Gets the factory contract address.
     * @return factory_ The address of the factory.
     */
    function getFactory() external view returns (IUniPoolFactory factory_);

    /**
     * @notice Gets the Aave pool contract address.
     * @return pool_ The address of the pool.
     */
    function getAavePool() external view returns (address pool_);

    /**
     * @notice Gets the number of shares attributed to a loan.
     * @param loanId ID of the loan.
     * @param pair The `UniPoolPair` that created the loan.
     * @return shares_ Number of shares for this loan.
     */
    function getLoanShares(LoanId loanId, IUniPoolPair pair) external view returns (uint256 shares_);

    /**
     * @notice Gets the number of shares for all loans on a tick.
     * @param tickHash The unique tick identifier.
     * @return shares_ Number of shares for all loans on this tick.
     */
    function getTickShares(TickHash tickHash) external view returns (uint256 shares_);

    /**
     * @notice Gets the saved data for a given asset.
     * @param asset The address of the asset.
     * @return data_ The asset data, notably the total deposited balance and whether it's invested in Aave.
     */
    function getAssetData(IERC20 asset) external view returns (AssetData memory data_);

    /**
     * @notice Gets the status of the asset.
     * @param asset The address of the asset.
     * @return isIdle_ True if the asset is idle in the vault, false if it is supplied to Aave.
     */
    function getAssetStatus(IERC20 asset) external view returns (bool isIdle_);

    /**
     * @notice Gets the unique loan identifier.
     * @param loanId The loan ID.
     * @param pair The `UniPoolPair` that created the loan.
     * @return loanHash_ The unique loan hash.
     */
    function calcLoanHash(LoanId loanId, IUniPoolPair pair) external pure returns (LoanHash loanHash_);

    /**
     * @notice Gets the hash for a tick at a specific version and pair.
     * @param tickNumber The tick number for the liquidation price.
     * @param tickVersion The version of the tick at the time of the loan creation.
     * @param asset Address of the collateral asset.
     * @param pair The address of the pair contract associated with this tick.
     * @return tickHash_ The unique hash that identifies this tick.
     */
    function calcTickHash(int16 tickNumber, uint232 tickVersion, IERC20 asset, IUniPoolPair pair)
        external
        pure
        returns (TickHash tickHash_);

    /**
     * @notice Returns whether a given token is supported by Aave.
     * @param token The address of the token to check.
     * @return aaveStatus_ Aave status data.
     */
    function getAaveTokenSupport(IERC20 token) external view returns (AaveAssetSupport memory aaveStatus_);

    /**
     * @notice Previews the amount of collateral token that would be withdrawn if a tick gets liquidated.
     * @dev This is useful to simulate liquidations in the pair.
     * @param tickNumber The tick number for the liquidation price.
     * @param tickVersion The version of the tick that is being liquidated.
     * @param pair Address of the pair contract.
     * @param collateralToken Address of the collateral token.
     * @return amount_ The amount of collateral that will be withdrawn for this tick.
     */
    function previewWithdrawTick(int16 tickNumber, uint232 tickVersion, IUniPoolPair pair, IERC20 collateralToken)
        external
        view
        returns (uint256 amount_);

    /**
     * @notice Calculates the current accumulator for the yield, similar to Aave's `liquidityIndex` but only accounting
     * for actual accrued yield from this vault in case of migrations.
     * @param asset The address of the asset to consider.
     * @return yieldAccumulator_ The value of the accumulator, in RAY.
     */
    function getYieldAccumulator(IERC20 asset) external view returns (uint256 yieldAccumulator_);

    /**
     * @notice Deposits collateral for a specific loan.
     * @dev The caller must be a `UniPoolPair` registered in the `UniPoolFactory` that owns the loan.
     * If the collateral asset is supported on Aave, it will be supplied and begin earning yield.
     * Otherwise, the collateral remains idle in the vault.
     * @param loanId The ID of the loan to which the collateral is being deposited.
     * @param loan The loan information from the pair.
     * @param asset The asset being deposited as collateral.
     * @param data The additional data required to perform the token transfer.
     */
    function deposit(LoanId loanId, LoanInfo calldata loan, IERC20 asset, bytes calldata data) external;

    /**
     * @notice Deposits collateral for the given loans.
     * @dev The caller must be a `UniPoolPair` registered in the `UniPoolFactory` that owns the loans.
     * If the collateral asset is supported on Aave, it will be supplied and begin earning yield.
     * Otherwise, the collateral remains idle in the vault.
     * @param loanIds The IDs of the loans to which the collateral is being deposited.
     * @param loans The loans information from the pair.
     * @param asset The asset being deposited as collateral.
     * @param data The additional data required to perform the token transfer.
     */
    function deposit(LoanId[] calldata loanIds, LoanInfo[] calldata loans, IERC20 asset, bytes calldata data) external;

    /**
     * @notice Allows withdrawal of collateral from the vault.
     * @dev Since we enforce that the loan's collateral was deposited previously, and because the loan hash is
     * calculated from the sender address, only valid pairs can call this function.
     * Note that this does not guarantee to return the full collateral that was initially deposited. For short periods
     * and if assets were in Aave, the output amount might be rounded down by Aave and lose a few wei for the
     * round-trip.
     * @param loanId The unique identifier of the loan.
     * @param loan The loan information struct.
     * @param asset The asset being withdrawn as collateral.
     * @param amount The amount of collateral to withdraw (before yield).
     * @param to The address where to send the collateral.
     */
    function withdraw(LoanId loanId, LoanInfo calldata loan, IERC20 asset, uint256 amount, address to) external;

    /**
     * @notice Withdraws all collateral corresponding to a tick from Aave or vault.
     * @dev Since we enforce that the tick was initialized previously, and because the tick hash is calculated from
     * the sender address, only valid pairs can call this function.
     * @param tickNumber The tick number for the liquidation price.
     * @param tickVersion The version of the tick that is being liquidated.
     * @param collateralToken Address of the collateral token.
     */
    function withdrawTick(int16 tickNumber, uint232 tickVersion, IERC20 collateralToken) external;

    /**
     * @notice Allows the owner to change Aave support of a token.
     * @param token The address of the token.
     * @param forceIdle True when disabling Aave integration, false otherwise.
     */
    function setForceIdle(IERC20 token, bool forceIdle) external;
}
