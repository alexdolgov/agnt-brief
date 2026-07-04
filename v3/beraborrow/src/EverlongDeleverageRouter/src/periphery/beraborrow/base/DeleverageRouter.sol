// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC3156FlashBorrower} from "@openzeppelin/contracts/interfaces/IERC3156FlashBorrower.sol";
import {IBorrowerOperations} from "src/interfaces/periphery/beraborrow/IBorrowerOperations.sol";
import {IEverlongCore} from "src/interfaces/core/IEverlongCore.sol";
import {IDeleverageRouter} from "src/interfaces/periphery/beraborrow/base/IDeleverageRouter.sol";
import {IDebtToken} from "src/interfaces/utils/IDebtToken.sol";
import {IDenManager} from "src/interfaces/periphery/beraborrow/IDenManager.sol";
import {ICollVaultRouter} from "src/interfaces/periphery/beraborrow/ICollVaultRouter.sol";
import {ILSTCollateralVault} from "src/interfaces/utils/ILSTCollateralVault.sol";
import {ReentrancyGuardLib} from "src/libraries/ReentrancyGuardLib.sol";

/**
 * @title DeleverageRouter
 * @author Beraborrow Team
 * @notice This contract enables closing and decreasing leveraged den positions using DebtToken's flash loans.
 * @dev Whitelisted to not pay flashloan fees, and whitelisted as periphery contract to manage dens in behalf of the user.
 */
contract DeleverageRouter is IDeleverageRouter {
    using SafeERC20 for IERC20;

    bytes32 private constant _RETURN_VALUE = keccak256("ERC3156FlashBorrower.onFlashLoan");

    IBorrowerOperations public immutable borrowerOperations;
    IEverlongCore public immutable everlongCore;
    IDebtToken public immutable nect;
    ICollVaultRouter public immutable collVaultRouter;

    modifier nonReentrant() {
        ReentrancyGuardLib._guard();
        _;
        ReentrancyGuardLib._unlockGuard();
    }

    modifier onlyThis() {
        // Only callable if inside a nonReentrant lock
        ReentrancyGuardLib._internalGuard();
        _;
    }

    modifier onlyOwner() {
        if (msg.sender != everlongCore.owner()) {
            revert NotOwner(msg.sender);
        }
        _;
    }

    constructor(address _borrowerOperations, address _nect, address _collVaultRouter, address _everlongCore) {
        if (_borrowerOperations == address(0) || _nect == address(0) || _collVaultRouter == address(0) || _everlongCore == address(0)) {
            revert ZeroAddress();
        }

        borrowerOperations = IBorrowerOperations(_borrowerOperations);
        everlongCore = IEverlongCore(_everlongCore);
        nect = IDebtToken(_nect);
        collVaultRouter = ICollVaultRouter(_collVaultRouter);
    }

    function automaticLoopingRepayDebt(IDenManager denManager, DenLoopingParams calldata denLoopingParams)
        external
        nonReentrant
    {
        if (denLoopingParams.nectProvidedByUser != 0) {
            nect.transferFrom(msg.sender, address(this), denLoopingParams.nectProvidedByUser);
        }

        uint256 debtToLoan = denLoopingParams.debtToRepay - denLoopingParams.nectProvidedByUser;

        if (debtToLoan == 0) revert NoNeedToLoop();

        bytes memory data = abi.encode(address(denManager), denLoopingParams, msg.sender, false);

        if (!nect.flashLoan(IERC3156FlashBorrower(address(this)), address(nect), debtToLoan, data)) {
            revert FlashLoanFailed();
        }
    }

    function closeDen(IDenManager denManager, DenLoopingParams calldata closeDenWithFlashLoanParams)
        external
        nonReentrant
    {
        (, uint256 debt) = denManager.getDenCollAndDebt(msg.sender);

        if (debt == 0) revert NoDenToClose();

        uint256 debtGasCompensation = borrowerOperations.DEBT_GAS_COMPENSATION();

        if (closeDenWithFlashLoanParams.nectProvidedByUser >= debt - debtGasCompensation) revert NoNeedToLoop();

        if (closeDenWithFlashLoanParams.nectProvidedByUser != 0) {
            nect.transferFrom(msg.sender, address(this), closeDenWithFlashLoanParams.nectProvidedByUser);
        }

        uint256 debtToLoan = debt - closeDenWithFlashLoanParams.nectProvidedByUser - debtGasCompensation;

        bytes memory data = abi.encode(address(denManager), closeDenWithFlashLoanParams, msg.sender, true);

        if (!nect.flashLoan(IERC3156FlashBorrower(address(this)), address(nect), debtToLoan, data)) {
            revert FlashLoanFailed();
        }
    }

    function onFlashLoan(address initiator, address, /*token*/ uint256 amount, uint256, /*fee*/ bytes calldata data)
        external
        onlyThis
        returns (bytes32)
    {
        if (msg.sender != address(nect) || initiator != address(this)) revert NotNect(msg.sender);

        (address denManager, DenLoopingParams memory params, address account, bool isClosingDen) =
            abi.decode(data, (address, DenLoopingParams, address, bool));

        if (isClosingDen) {
            _processCloseDen(denManager, params, account, amount);
        } else {
            _processDebtRepay(denManager, params, account, amount);
        }

        return _RETURN_VALUE;
    }

    /// @inheritdoc IDeleverageRouter
    function claimLockedTokens(IERC20[] calldata tokens, uint256[] calldata amounts) external onlyOwner {
        uint256 length = tokens.length;
        for (uint256 i; i < length; ++i) {
            if (address(tokens[i]) == address(0)) {
                (bool success,) = everlongCore.feeReceiver().call{value: amounts[i]}("");
                if (!success) {
                    revert BeraTransferFailed();
                }
            } else {
                tokens[i].safeTransfer(everlongCore.feeReceiver(), amounts[i]);
            }
        }
    }

    function _processDebtRepay(
        address denManager,
        DenLoopingParams memory params,
        address account,
        uint256 amount
    ) private {
        address collVault = IDenManager(denManager).collateralToken();
        uint256 totalDebtToRepay = amount + params.nectProvidedByUser;
        // Repay debt using both flash loan amount and user-provided NECT
        _repayDebt(denManager, account, params.denParams, totalDebtToRepay);

        _repayFlashLoan(
            collVault,
            denManager,
            params,
            account,
            amount,
            params.denParams.collVaultAmount,
            Operation.RepayDebt
        );
    }

    function _processCloseDen(
        address denManager,
        DenLoopingParams memory params,
        address account,
        uint256 amount
    ) private {
        address collVault = IDenManager(denManager).collateralToken();

        uint256 prevCollAmount = IERC20(collVault).balanceOf(address(this));

        // Repay all debt (this will withdraw all collateral)
        borrowerOperations.closeDen(denManager, account);

        uint256 collAmount = IERC20(collVault).balanceOf(address(this)) - prevCollAmount;

        _repayFlashLoan(
            collVault, 
            denManager,
            params,
            account,
            amount,
            collAmount,
            Operation.CloseDen
        );
    }

    function _handleRepayment(address account, uint256 payBackAmount, uint256 nectReceived)
        private
    {
        if (nectReceived < payBackAmount) {
            uint256 margin = payBackAmount - nectReceived;
            nect.transferFrom(account, address(this), margin);
        }

        if (nectReceived > payBackAmount) {
            nect.transfer(account, nectReceived - payBackAmount);
        }

        nect.approve(msg.sender, payBackAmount);
    }

    function _repayDebt(address denManager, address account, DenParams memory params, uint256 debtAmount) private {
        borrowerOperations.adjustDen(
            denManager, account, 0, 0, params.collVaultAmount, debtAmount, false, params.upperHint, params.lowerHint
        );
    }

    function _unwrapToNect(address denManager, address account, uint256 collVaultAmount, RedeemToOnePartialParams memory collVaultParams)
        internal
        virtual
        returns (uint256 nectReceived)
    {
        IDenManager _denManager = IDenManager(denManager);

        address collVault = _denManager.collateralToken();
        (uint256 prevColl, uint256 prevDebt) = _denManager.getDenCollAndDebt(account);

        uint256 prevNectBalance = nect.balanceOf(address(this));
        ICollVaultRouter.RedeemToOneParams memory _params = ICollVaultRouter.RedeemToOneParams({
            shares: collVaultAmount,
            receiver: address(this),
            swapRouter: collVaultParams.swapRouter,
            collVault: ILSTCollateralVault(collVault),
            targetToken: address(nect),
            minTargetTokenAmount: collVaultParams.minTargetTokenAmount,
            tokensSwapCalldatas: collVaultParams.swapCalldatas
        });

        IERC20(collVault).approve(address(collVaultRouter), collVaultAmount);
        collVaultRouter.redeemToOne(_params);

        nectReceived = nect.balanceOf(address(this)) - prevNectBalance;

        (uint256 newColl, uint256 newDebt) = _denManager.getDenCollAndDebt(account);

        if (nectReceived < collVaultParams.minTargetTokenAmount) {
            revert InsufficientNectReceived(nectReceived, collVaultParams.minTargetTokenAmount);
        }
        if (newColl != prevColl || newDebt != prevDebt) {
            revert DebtOrCollateralChanged(newColl, newDebt, prevColl, prevDebt);
        }
    }

    function _repayFlashLoan(
        address collVault,
        address denManager,
        DenLoopingParams memory params,
        address account,
        uint256 amount,
        uint256 collAmount,
        Operation operation
    ) internal {
        // Only unwrap the specified amount of collateral to NECT
        uint256 collAmountToSwap = params.collVaultParams.collAmountToSwap;

        if (collAmountToSwap > collAmount) revert InsufficientCollateral(collAmountToSwap, collAmount);

        uint256 nectReceived = _unwrapToNect(denManager, account, collAmountToSwap, params.collVaultParams);
        _handleRepayment(account, amount, nectReceived);

        // Return remaining collateral to user
        if (collAmount > collAmountToSwap) {
            IERC20(collVault).transfer(account, collAmount - collAmountToSwap);
        }

        emit Deleverage(
            denManager, account, collAmount, collAmountToSwap, nectReceived, amount, operation
        );
    }
}