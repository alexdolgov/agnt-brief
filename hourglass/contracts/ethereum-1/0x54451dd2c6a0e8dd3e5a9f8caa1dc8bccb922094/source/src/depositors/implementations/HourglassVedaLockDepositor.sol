// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "../HourglassLockDepositorBase.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {ITellerWithMultiAssetSupport} from "@interfaces/veda/ITellerWithMultiAssetSupport.sol";
import {IArcticArchitectureLens} from "@interfaces/veda/IArcticArchitectureLens.sol";

contract HourglassVedaLockDepositor is HourglassLockDepositorBase {
    using SafeERC20 for IERC20;
    using TransientPrimitivesLib for taddress;
    using TransientPrimitivesLib for tuint256;

    /*//////////////////////////////////////////////////////////////////////////
                                  STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @dev Maps whether the maximum approval for deposit asset has been set for the veda vault
    mapping(address depositAsset => bool approvalSet) private setMaxApprovalForDepositAsset;

    /// @dev the veda vault teller address
    address internal teller;
    /// @dev the veda vault accountant address
    address internal accountant;
    /// @dev the veda vault lens address
    address internal lens;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initialize the depositor
    /// @param _depositToken The deposit token address
    /// @param _maturity The maturity timestamp
    /// @param _nameSuffix The suffix to append to the name
    /// @param _symbolSuffix The suffix to append to the symbol
    /// @param _receiptImpl The receipt token implementation address
    /// @param _decimals The number of decimals of the deposit token
    /// @param _teller The veda vault teller address
    /// @param _accountant The veda vault accountant address
    /// @param _lens The veda vault lens address
    function initialize(
        address _depositToken,
        uint256 _maturity,
        string memory _nameSuffix,
        string memory _symbolSuffix,
        address _receiptImpl,
        uint256 _decimals,
        address _teller,
        address _accountant,
        address _lens
    ) external initializer {
        teller = _teller;
        accountant = _accountant;
        lens = _lens;
        __Depositor_Init(_depositToken, _maturity, _nameSuffix, _symbolSuffix, _receiptImpl, _decimals);
    }

    /**
     * @notice Enables the lock depositor to mint veda vault shares for an end user, bypassing the timelock constraint.
     *
     *  Notes: Veda vaults have a constraint where a newly minted share is timelocked, meaning that a user that mints
     *         new shares cannot transfer them for some period of time (configurable for each vault, usually a few days).
     *         - When depositing with the deposit token for the depositor (a veda vault share) this is not an issue as
     *          the end user already has a vault share to deposit.
     *         - This is an issue when we want to enable a user to zap into an Hourglass lock depositor using some starting
     *         token that is not the deposit token. Since the zap from starting token -> deposit token (veda vault share)
     *         creates a time locked token, we must ensure that the deposit token is sent to this contract when it is minted.
     *
     *  Flow:
     *         This flow will be executed from a zapper contract.
     *         1. Enter this contract (i.e. acquire re-entrancy lock, which locks in amount to deposit and the entrant
     *             as the calling contract).
     *         2. Push the amount to deposit of the `depositAsset` into this contract from the calling contract.
     *         3. Call this function, which validates the transient storage lock and mints the underlying to this contract.
     *         4. Call `depositTo` (defined in HourglassLockDepositorBase) which uses the same re-entrancy lock to
     *             finalize the deposit (i.e. mint receipt tokens to the end user).
     *
     * @param depositAsset The address of the asset to deposit into the veda vault.
     * @param amountOutMinBps The amount required as output (in basis points) after slippage when zapping.
     *      ex: amountOutMinBps = 9900 means up to 1% slippage is allowed.
     * @return amountOut The quantity of hourglass receipt tokens minted to end user (equals shares deposited into veda vault).
     */
    function mintLockedUnderlying(address depositAsset, uint256 amountOutMinBps) external returns (uint256 amountOut) {
        address entrant = _tEntrant.get();
        uint256 depositAmount = _tAmount.get();

        if (entrant == address(0)) revert NotEntered();
        if (msg.sender != entrant) revert CallerNotEntrant();
        if (depositAmount == 0) revert InsufficientFunds();
        // We check that the balance of the deposit asset within this contract exceeds the amount to be deposited
        // on behalf of the user. If we checked for exact equality here, someone could send dust to the contract
        // and brick this function.
        if (IERC20(depositAsset).balanceOf(address(this)) < depositAmount) revert InsufficientAssetSupplied();
        if (amountOutMinBps > 10000 || amountOutMinBps < 0) revert InvalidSlippageBps();

        // Ensure the veda vault has approval to pull in the deposit asset.
        if (!setMaxApprovalForDepositAsset[depositAsset]) {
            // Note: that underlying the veda vault address.
            IERC20(depositAsset).safeIncreaseAllowance(underlying, type(uint256).max);
            setMaxApprovalForDepositAsset[depositAsset] = true;
        }

        uint256 previewAmountOut =
            IArcticArchitectureLens(lens).previewDeposit(depositAsset, depositAmount, underlying, accountant);
        uint256 minimumMint = (previewAmountOut * amountOutMinBps) / 10000;

        amountOut = ITellerWithMultiAssetSupport(teller).deposit(depositAsset, depositAmount, minimumMint);

        // Store the amount of veda vault shares minted. This will be used in the `depositTo` function
        // of the parent contract `HourglassLockDepositorBase` to determine the amount of receipt tokens to mint
        // to the end user.
        _tAmount.set(amountOut);
    }
}
