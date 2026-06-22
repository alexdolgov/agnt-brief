// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "../HourglassLockDepositorBaseV3.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {ITellerWithMultiAssetSupport} from "@interfaces/veda/ITellerWithMultiAssetSupport.sol";
import {IArcticArchitectureLens} from "@interfaces/veda/IArcticArchitectureLens.sol";
import "@interfaces/depositors/IHourglassVedaLockDepositorV3.sol";

/**
 * @title HourglassVedaLockDepositorV3
 * @notice A specialized depositor contract that supports underlying tokens that are veda vault shares.
 * @dev This contract extends HourglassLockDepositorBaseV3 with Veda vault-specific functionality.
 */
contract HourglassVedaLockDepositorV3 is HourglassLockDepositorBaseV3, IHourglassVedaLockDepositorV3 {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////////////////
                                    STORAGE
    //////////////////////////////////////////////////////////////////////////*/

    /// @dev Maps whether the maximum approval for deposit asset has been set for the veda vault
    /// @notice Tracks which tokens have been approved for maximum allowance to the Veda vault
    mapping(address startingToken => bool approvalSet) private approved;

    /// @dev The Veda vault teller address
    /// @notice The teller component of the Veda vault responsible for handling deposits and withdrawals
    address internal teller;

    /// @dev The Veda vault accountant address
    /// @notice The accountant component of the Veda vault responsible for tracking asset exchange rates
    address internal accountant;

    /// @dev The Veda vault lens address
    /// @notice The lens component of the Veda vault that provides view functions for querying vault data
    address internal lens;

    /*//////////////////////////////////////////////////////////////////////////
                                INITIALIZER
    //////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc IHourglassVedaLockDepositorV3
    function initialize(
        address _depositToken,
        uint256 _maturity,
        string memory _nameSuffix,
        string memory _symbolSuffix,
        address _receiptImpl,
        address _teller,
        address _accountant,
        address _lens
    ) external initializer {
        teller = _teller;
        accountant = _accountant;
        lens = _lens;
        __Depositor_Init(_depositToken, _maturity, _nameSuffix, _symbolSuffix, _receiptImpl);
    }

    /*//////////////////////////////////////////////////////////////////////////
                        USER-FACING VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc IHourglassVedaLockDepositorV3
    function vedaTeller() external view returns (address) {
        return teller;
    }

    /// @inheritdoc IHourglassVedaLockDepositorV3
    function vedaAccountant() external view returns (address) {
        return accountant;
    }

    /// @inheritdoc IHourglassVedaLockDepositorV3
    function vedaLens() external view returns (address) {
        return lens;
    }

    /// @inheritdoc IHourglassVedaLockDepositorV3
    function canDepositConsideringShareLockPeriod() external view returns (bool) {
        return _canDepositConsideringShareLockPeriod();
    }

    /*//////////////////////////////////////////////////////////////////////////
                    USER-FACING DEPOSIT FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc IHourglassVedaLockDepositorV3
    function depositViaTeller(
        address recipientPrincipal,
        address recipientPoint,
        bool receiveSplit,
        address startingToken,
        uint256 amountIn,
        uint256 minimumMint
    ) external onlyPreMaturity returns (uint256 amountOut) {
        if (startingToken == underlying) revert InvalidStartingTokenIsUnderlying();
        if (amountIn == 0) revert InvalidAmountIn();
        if (!_canDepositConsideringShareLockPeriod()) revert InvalidTooCloseToMaturity();

        // `underlying` is the veda vault
        address boringVault = underlying;

        // We assume `startingToken` is a valid starting token for the veda teller.
        // The deposit to the teller will revert if this is false.

        // 1. Pull the starting token into the contract
        uint256 preBalStartingToken = IERC20(startingToken).balanceOf(address(this));
        IERC20(startingToken).safeTransferFrom(msg.sender, address(this), amountIn);
        uint256 postBalStartingToken = IERC20(startingToken).balanceOf(address(this));
        if (postBalStartingToken - preBalStartingToken != amountIn) {
            revert StartingTokenPullFailed(amountIn, postBalStartingToken - preBalStartingToken);
        }

        // 2. Give the veda vault approval to use the starting token.
        // Veda vault contracts are immutable and we trust their implementation enough
        // to give a max allowance.
        if (!approved[startingToken]) {
            IERC20(startingToken).safeIncreaseAllowance(boringVault, type(uint256).max);
            approved[startingToken] = true;
        }

        // 3. Acquire the deposit lock, which:
        //   - Locks the entrant as this contract.
        //   - Snapshots the balance of the underlying token within the depositor.
        _acquireDepositLock({selfAsEntrant: true});

        // 4. Mint the veda vault shares using the starting token held in the contract.
        amountOut = ITellerWithMultiAssetSupport(teller).deposit(startingToken, amountIn, minimumMint);

        // 5. Finalize the deposit for the number of shares minted (amountOut) from amountIn
        ///   units of the starting token.
        _depositWithLock(recipientPrincipal, recipientPoint, amountOut, receiveSplit);
    }

    /*//////////////////////////////////////////////////////////////////////////
                        ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc IHourglassVedaLockDepositorV3
    function setVedaTeller(address _vedaTeller) external onlyFactory {
        teller = _vedaTeller;
    }

    /// @inheritdoc IHourglassVedaLockDepositorV3
    function setVedaAccountant(address _vedaAccountant) external onlyFactory {
        accountant = _vedaAccountant;
    }

    /// @inheritdoc IHourglassVedaLockDepositorV3
    function setVedaLens(address _vedaLens) external onlyFactory {
        lens = _vedaLens;
    }

    /*//////////////////////////////////////////////////////////////////////////
                            INTERNAL HELPER FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns whether or not a deposit is allowed account for veda share lock period
     * @return Boolean indicating if deposits can be made considering the share lock period
     */
    function _canDepositConsideringShareLockPeriod() internal view returns (bool) {
        // We adjust the maturity to account for the share lock period of the Veda vault.
        // This ensures that we don't allow a deposit that might timelock the shares held in the
        // vault past the original maturity of the vault.
        uint256 adjustedMaturity = maturity - ITellerWithMultiAssetSupport(teller).shareLockPeriod();
        return block.timestamp < adjustedMaturity;
    }
}
