// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

/*
 * The Stability Pool holds USDL tokens deposited by Stability Pool depositors.
 *
 * When a vault is liquidated, then depending on system conditions, some of its USDL debt gets offset with
 * USDL in the Stability Pool:  that is, the offset debt evaporates, and an equal amount of USDL tokens in the Stability Pool is burned.
 *
 * Thus, a liquidation causes each depositor to receive a USDL loss, in proportion to their deposit as a share of total deposits.
 * They also receive an ETH gain, as the ETH collateral of the liquidated vault is distributed among Stability depositors,
 * in the same proportion.
 *
 * When a liquidation occurs, it depletes every deposit by the same fraction: for example, a liquidation that depletes 40%
 * of the total USDL in the Stability Pool, depletes 40% of each deposit.
 *
 * A deposit that has experienced a series of liquidations is termed a "compounded deposit": each liquidation depletes the deposit,
 * multiplying it by some factor in range ]0,1[
 *
 *
 * --- LOAN ISSUANCE TO STABILITY POOL DEPOSITORS ---
 *
 * A LOAN issuance event occurs at every deposit operation, and every liquidation.
 *
 * Each deposit is tagged with the address of the front end through which it was made.
 *
 * All deposits earn a share of the issued LOAN in proportion to the deposit as a share of total deposits. The LOAN earned
 * by a given deposit, is split between the depositor and the front end through which the deposit was made, based on the front end's kickbackRate.
 *
 * Please see the system Readme for an overview:
 * https://github.com/Liquid-Loans-Official/monorepo/blob/main/README.md#loan-issuance-to-stability-providers
 */
interface IStabilityPool {

    // --- Events ---
    
    event StabilityPoolETHBalanceUpdated(uint _newBalance);
    event StabilityPoolUSDLBalanceUpdated(uint _newBalance);

    event BorrowerOperationsAddressChanged(address _newBorrowerOperationsAddress);
    event VaultManagerAddressChanged(address _newVaultManagerAddress);
    event ActivePoolAddressChanged(address _newActivePoolAddress);
    event DefaultPoolAddressChanged(address _newDefaultPoolAddress);
    event USDLTokenAddressChanged(address _newUSDLTokenAddress);
    event SortedVaultsAddressChanged(address _newSortedVaultsAddress);
    event PriceFeedAddressChanged(address _newPriceFeedAddress);
    event CommunityIssuanceAddressChanged(address _newCommunityIssuanceAddress);

    event P_Updated(uint _P);
    event S_Updated(uint _S, uint128 _epoch, uint128 _scale);
    event G_Updated(uint _G, uint128 _epoch, uint128 _scale);
    event EpochUpdated(uint128 _currentEpoch);
    event ScaleUpdated(uint128 _currentScale);

    event FrontEndRegistered(address indexed _frontEnd, uint _kickbackRate);
    event FrontEndTagSet(address indexed _depositor, address indexed _frontEnd);

    event DepositSnapshotUpdated(address indexed _depositor, uint _P, uint _S, uint _G);
    event FrontEndSnapshotUpdated(address indexed _frontEnd, uint _P, uint _G);
    event UserDepositChanged(address indexed _depositor, uint _newDeposit);
    event FrontEndStakeChanged(address indexed _frontEnd, uint _newFrontEndStake, address _depositor);

    event ETHGainWithdrawn(address indexed _depositor, uint _ETH, uint _USDLLoss);
    event LOANPaidToDepositor(address indexed _depositor, uint _LOAN);
    event LOANPaidToFrontEnd(address indexed _frontEnd, uint _LOAN);
    event PulseSent(address _to, uint _amount);

    // --- Functions ---

    /*
     * Called only once on init, to set addresses of other LiquidLoans contracts
     * Callable only by owner, renounces ownership at the end
     */
    function setAddresses(
        address _borrowerOperationsAddress,
        address _vaultManagerAddress,
        address _activePoolAddress,
        address _usdlTokenAddress,
        address _sortedVaultsAddress,
        address _priceFeedAddress,
        address _communityIssuanceAddress
    ) external;

    /*
     * Initial checks:
     * - Frontend is registered or zero address
     * - Sender is not a registered frontend
     * - _amount is not zero
     * ---
     * - Triggers a LOAN issuance, based on time passed since the last issuance. The LOAN issuance is shared between *all* depositors and front ends
     * - Tags the deposit with the provided front end tag param, if it's a new deposit
     * - Sends depositor's accumulated gains (LOAN, ETH) to depositor
     * - Sends the tagged front end's accumulated LOAN gains to the tagged front end
     * - Increases deposit and tagged front end's stake, and takes new snapshots for each.
     */
    function provideToSP(uint _amount, address _frontEndTag) external;

    /*
     * Initial checks:
     * - _amount is zero or there are no under collateralized vaults left in the system
     * - User has a non zero deposit
     * ---
     * - Triggers a LOAN issuance, based on time passed since the last issuance. The LOAN issuance is shared between *all* depositors and front ends
     * - Removes the deposit's front end tag if it is a full withdrawal
     * - Sends all depositor's accumulated gains (LOAN, ETH) to depositor
     * - Sends the tagged front end's accumulated LOAN gains to the tagged front end
     * - Decreases deposit and tagged front end's stake, and takes new snapshots for each.
     *
     * If _amount > userDeposit, the user withdraws all of their compounded deposit.
     */
    function withdrawFromSP(uint _amount) external;

    /*
     * Initial checks:
     * - User has a non zero deposit
     * - User has an open vault
     * - User has some ETH gain
     * ---
     * - Triggers a LOAN issuance, based on time passed since the last issuance. The LOAN issuance is shared between *all* depositors and front ends
     * - Sends all depositor's LOAN gain to  depositor
     * - Sends all tagged front end's LOAN gain to the tagged front end
     * - Transfers the depositor's entire ETH gain from the Stability Pool to the caller's vault
     * - Leaves their compounded deposit in the Stability Pool
     * - Updates snapshots for deposit and tagged front end stake
     */
    function withdrawETHGainToVault(address _upperHint, address _lowerHint) external;

    /*
     * Initial checks:
     * - Frontend (sender) not already registered
     * - User (sender) has no deposit
     * - _kickbackRate is in the range [0, 100%]
     * ---
     * Front end makes a one-time selection of kickback rate upon registering
     */
    function registerFrontEnd(uint _kickbackRate) external;

    /*
     * Initial checks:
     * - Caller is VaultManager
     * ---
     * Cancels out the specified debt against the USDL contained in the Stability Pool (as far as possible)
     * and transfers the Vault's ETH collateral from ActivePool to StabilityPool.
     * Only called by liquidation functions in the VaultManager.
     */
    function offset(uint _debt, uint _coll) external;

    /*
     * Returns the total amount of ETH held by the pool, accounted in an internal variable instead of `balance`,
     * to exclude edge cases like ETH received from a self-destruct.
     */
    function getETH() external view returns (uint);

    /*
     * Returns USDL held in the pool. Changes when users deposit/withdraw, and when Vault debt is offset.
     */
    function getTotalUSDLDeposits() external view returns (uint);

    /*
     * Calculates the ETH gain earned by the deposit since its last snapshots were taken.
     */
    function getDepositorETHGain(address _depositor) external view returns (uint);

    /*
     * Calculate the LOAN gain earned by a deposit since its last snapshots were taken.
     * If not tagged with a front end, the depositor gets a 100% cut of what their deposit earned.
     * Otherwise, their cut of the deposit's earnings is equal to the kickbackRate, set by the front end through
     * which they made their deposit.
     */
    function getDepositorLOANGain(address _depositor) external view returns (uint);

    /*
     * Return the LOAN gain earned by the front end.
     */
    function getFrontEndLOANGain(address _frontEnd) external view returns (uint);

    /*
     * Return the user's compounded deposit.
     */
    function getCompoundedUSDLDeposit(address _depositor) external view returns (uint);

    /*
     * Return the front end's compounded stake.
     *
     * The front end's compounded stake is equal to the sum of its depositors' compounded deposits.
     */
    function getCompoundedFrontEndStake(address _frontEnd) external view returns (uint);

    /*
     * Fallback function
     * Only callable by Active Pool, it just accounts for ETH received
     * receive() external payable;
     */
}
// 2025 Liquid Loans