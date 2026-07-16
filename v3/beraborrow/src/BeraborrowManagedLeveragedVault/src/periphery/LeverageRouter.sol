// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC3156FlashBorrower} from "@openzeppelin/contracts/interfaces/IERC3156FlashBorrower.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IInfraredCollateralVault} from "src/interfaces/core/vaults/IInfraredCollateralVault.sol";
import {IBorrowerOperations} from "src/interfaces/core/IBorrowerOperations.sol";
import {IBeraborrowCore} from "src/interfaces/core/IBeraborrowCore.sol";
import {ILeverageRouter} from "src/interfaces/periphery/ILeverageRouter.sol";
import {IDebtToken} from "src/interfaces/core/IDebtToken.sol";
import {IDenManager} from "src/interfaces/core/IDenManager.sol";
import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";
import {ReentrancyGuardLib} from "src/libraries/ReentrancyGuardLib.sol";
import {UtilsLib} from "src/libraries/UtilsLib.sol";
import {SwappersLib} from "src/libraries/SwappersLib.sol";
import {BeraborrowMath} from "src/dependencies/BeraborrowMath.sol";

/**
 * @title LeverageRouter
 * @author Beraborrow Team
 * @notice This contract enables opening and increasing leveraged den positions using DebtToken's flash loans.
 * @dev Whitelisted to not pay flashloan fees, and whitelisted as periphery contract to manage dens in behalf of the user.
 */
contract LeverageRouter is ILeverageRouter {
    using SafeERC20 for IERC20;
    using UtilsLib for bytes;
    using Math for uint256;

    bytes32 private constant _RETURN_VALUE = keccak256("ERC3156FlashBorrower.onFlashLoan");
    uint256 constant WAD = 1e18;
    uint256 constant BP = 1e4;

    IBorrowerOperations public immutable borrowerOperations;
    IBeraborrowCore public immutable beraborrowCore;
    IDebtToken public immutable nect;
    IPriceFeed public immutable priceFeed;

    SwappersLib.SwapperData internal swapperData;

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
        if (msg.sender != beraborrowCore.owner()) {
            revert NotOwner(msg.sender);
        }
        _;
    }

    constructor(address _borrowerOperations, address _nect, address _priceFeed, address[] memory _initialSwapRouters) {
        if (_borrowerOperations == address(0) || _nect == address(0) || _priceFeed == address(0)) {
            revert ZeroAddress();
        }

        borrowerOperations = IBorrowerOperations(_borrowerOperations);
        beraborrowCore = borrowerOperations.BERABORROW_CORE();
        nect = IDebtToken(_nect);
        priceFeed = IPriceFeed(_priceFeed);

        // add routers on constructor
        for (uint256 i; i < _initialSwapRouters.length; i++) {
            SwappersLib.addWhitelistedSwapper(swapperData, _initialSwapRouters[i], true);
        }
    }

    /// @inheritdoc ILeverageRouter
    function automaticLoopingOpenDen(IDenManager denManager, DenLoopingParams calldata denLoopingParams)
        external
        nonReentrant
    {
        bytes memory data = abi.encode(Action.OpenDen, address(denManager), denLoopingParams, msg.sender);

        uint256 flashLoanNectAmount = _getFlashLoanNectAmount(denManager, denLoopingParams);

        if (
            !nect.flashLoan(
                IERC3156FlashBorrower(address(this)), address(nect), flashLoanNectAmount, data
            )
        ) {
            revert FlashLoanFailed();
        }
    }

    /// @inheritdoc ILeverageRouter
    function automaticLoopingAddCollateral(IDenManager denManager, DenLoopingParams calldata denLoopingParams)
        external
        nonReentrant
    {
        bytes memory data = abi.encode(Action.IncreaseColl, address(denManager), denLoopingParams, msg.sender);

        uint256 flashLoanNectAmount = _getFlashLoanNectAmount(denManager, denLoopingParams);

        if (
            !nect.flashLoan(
                IERC3156FlashBorrower(address(this)), address(nect), flashLoanNectAmount, data
            )
        ) {
            revert FlashLoanFailed();
        }
    }

    function _getFlashLoanNectAmount(IDenManager, DenLoopingParams memory denLoopingParams) internal view virtual returns (uint256) {
        return denLoopingParams.flashloanNectAmount;
    }

    function onFlashLoan(address initiator, address, /*token*/ uint256 amount, uint256, /*fee*/ bytes calldata data)
        external
        onlyThis
        returns (bytes32)
    {
        if (msg.sender != address(nect) || initiator != address(this)) revert NotNect(msg.sender);

        (Action action, address denManager, DenLoopingParams memory params, address account) =
            abi.decode(data, (Action, address, DenLoopingParams, address));

        _processFlashLoan(action, denManager, params, account, amount);

        return _RETURN_VALUE;
    }

    /// @inheritdoc ILeverageRouter
    function claimLockedTokens(IERC20[] calldata tokens, uint256[] calldata amounts) external onlyOwner {
        uint256 length = tokens.length;
        for (uint256 i; i < length; ++i) {
            if (address(tokens[i]) == address(0)) {
                (bool success,) = beraborrowCore.feeReceiver().call{value: amounts[i]}("");
                if (!success) {
                    revert BeraTransferFailed();
                }
            } else {
                tokens[i].safeTransfer(beraborrowCore.feeReceiver(), amounts[i]);
            }
        }
    }

    /// @inheritdoc ILeverageRouter
    function calculateDebtAmount(
        IDenManager denManager,
        address position,
        uint256 marginInAssets,
        uint256 leverage,
        uint256 minimumCR,
        bool isRecoveryMode
    ) external view returns (uint256 debtAmount) {
        if (leverage <= BP) revert("Leverage must be greater than 1");

        LeverageMemory memory m;

        address collVault = denManager.collateralToken();
        (m.currentColl, m.currentDebt) = denManager.getDenCollAndDebt(position);
        m.collVaultPrice = priceFeed.fetchPrice(collVault);
        m.prevICR = (m.currentColl != 0) ? BeraborrowMath._computeCR(m.currentColl, m.currentDebt, m.collVaultPrice) : 0;
        m.marginInCollVault = marginInAssets != 0 ? IInfraredCollateralVault(collVault).previewDeposit(marginInAssets) : 0;

        {
            uint256 maxLeverage = calculateMaxLeverage(
                m.currentColl,
                m.currentDebt,
                m.marginInCollVault,
                m.collVaultPrice,
                minimumCR
            );
            if (leverage > maxLeverage) revert LeverageExceeded(leverage, maxLeverage);
        }

        m.additionalCollateral = (m.currentColl + m.marginInCollVault) * (leverage - BP) / BP;

        if (m.additionalCollateral == 0) revert ZeroCollateral();

        /// @dev Divided by NECT price to increase precision of NECT needed for the NECT->collateral swap
        debtAmount = m.additionalCollateral * m.collVaultPrice / priceFeed.fetchPrice(address(nect));

        _check(denManager, m, debtAmount, minimumCR, isRecoveryMode);
    }

    /// @inheritdoc ILeverageRouter
    function calculateMaxLeverage(
        uint256 currentColl,
        uint256 currentDebt,
        uint256 margin,
        uint256 price,
        uint256 minimumCR
    ) public pure returns (uint256 maxLeverageInBp) {
        uint256 baseCollValue = (currentColl + margin) * price / WAD;

        if (baseCollValue <= (minimumCR * currentDebt) / WAD) return 0;

        uint256 numerator = (baseCollValue - currentDebt) * minimumCR / WAD;
        uint256 denominator = (minimumCR - WAD) * baseCollValue / WAD;
        maxLeverageInBp = numerator * BP / denominator;
    }

    function _processFlashLoan(
        Action action,
        address denManager,
        DenLoopingParams memory params,
        address account,
        uint256 nectFlashLoaned
    ) private {
        address collVault = IDenManager(denManager).collateralToken();
        address asset = IInfraredCollateralVault(collVault).asset();

        if (params.marginCollAmount != 0) {
            IERC20(asset).safeTransferFrom(account, address(this), params.marginCollAmount);
        }

        uint256 collVaultShares =
            _swapAndWrap(IDenManager(denManager), account, params.nectToColl, asset, collVault, nectFlashLoaned, params.marginCollAmount);

        if (action == Action.OpenDen) {
            _openDen(denManager, account, collVault, params.denParams, collVaultShares, nectFlashLoaned);

            emit AutomaticLoopingOpenDen(
                denManager,
                account,
                params.marginCollAmount,
                collVaultShares,
                nectFlashLoaned
            );
        } else {
            _increaseCollateral(denManager, account, collVault, params.denParams, collVaultShares, nectFlashLoaned);

            emit AutomaticLoopingAddCollateral(
                denManager,
                account,
                params.marginCollAmount,
                collVaultShares,
                nectFlashLoaned
            );
        }

        nect.approve(msg.sender, nectFlashLoaned);
    }

    function _openDen(
        address denManager,
        address account,
        address collVault,
        DenParams memory params,
        uint256 collAmount,
        uint256 nectFlashLoaned
    ) private {
        IInfraredCollateralVault(collVault).approve(address(borrowerOperations), collAmount);

        borrowerOperations.openDen(
            denManager,
            account,
            params.maxFeePercentage,
            collAmount,
            nectFlashLoaned,
            params.upperHint,
            params.lowerHint
        );
    }

    function _increaseCollateral(
        address denManager,
        address account,
        address collVault,
        DenParams memory params,
        uint256 collAmount,
        uint256 nectFlashLoaned
    ) private {
        IInfraredCollateralVault(collVault).approve(address(borrowerOperations), collAmount);
        borrowerOperations.adjustDen(
            denManager,
            account,
            params.maxFeePercentage,
            collAmount,
            0,
            nectFlashLoaned,
            true,
            params.upperHint,
            params.lowerHint
        );
    }

    function _swap(IDenManager denManager, address account, DexAggregatorParams memory params, address tokenIn, address tokenOut, uint256 amount)
        private
        returns (uint256 tokenOutReceived)
    {
        (uint256 prevColl, uint256 prevDebt) = denManager.getDenCollAndDebt(account);

        uint256 prevTokenOutBalance = IERC20(tokenOut).balanceOf(address(this));

        IERC20(tokenIn).approve(params.swapRouter, amount);

        SwappersLib.executeSwap(swapperData, params.swapRouter, params.dexCalldata);

        tokenOutReceived = IERC20(tokenOut).balanceOf(address(this)) - prevTokenOutBalance;

        (uint256 newColl, uint256 newDebt) = denManager.getDenCollAndDebt(account);

        if (tokenOutReceived < params.outputMin) {
            revert InsufficientAssetReceived(tokenOutReceived, params.outputMin);
        }
        if (newColl != prevColl || newDebt != prevDebt) {
            revert DebtOrCollateralChanged(newColl, newDebt, prevColl, prevDebt);
        }
    }

    /// @dev Swaps Nectar into an collateral asset and deposits the collateral asset into the collVault
    function _swapAndWrap(
        IDenManager denManager,
        address account,
        DexAggregatorParams memory params,
        address asset,
        address collVault,
        uint256 nectAmount,
        uint256 marginAmount
    ) internal virtual returns (uint256 collVaultSharesMinted) {
        uint256 collAssetReceived = _swap(denManager, account, params, address(nect), asset, nectAmount) + marginAmount;

        IERC20(asset).approve(collVault, collAssetReceived);
        collVaultSharesMinted = IInfraredCollateralVault(collVault).deposit(collAssetReceived, address(this));
    }

    function _check(
        IDenManager denManager,
        LeverageMemory memory m,
        uint256 debtAmount,
        uint256 minimumCR,
        bool isRecoveryMode
    ) private view {
        uint256 gasCompensation = borrowerOperations.DEBT_GAS_COMPENSATION();
        uint256 debtGasCompensation = m.currentColl == 0 ? gasCompensation : 0;
        uint256 borrowingRate = isRecoveryMode ? 0 : denManager.getBorrowingRateWithDecay();

        uint256 additionalCompositeDebt = (debtAmount * (borrowingRate + WAD) / WAD);
        uint256 totalNetDebt = m.currentDebt + additionalCompositeDebt;
        uint256 totalCompositeDebt = totalNetDebt + debtGasCompensation;
        uint256 totalCollateral = m.currentColl + m.marginInCollVault + m.additionalCollateral;
        uint256 resultingICR = totalCollateral * m.collVaultPrice / totalCompositeDebt;

        _checkValidCR(denManager, minimumCR, isRecoveryMode, m, additionalCompositeDebt + debtGasCompensation, resultingICR);

        uint256 minNetDebt = borrowerOperations.minNetDebt();
        if (totalNetDebt - gasCompensation < minNetDebt) revert DebtTooLow(totalNetDebt, minNetDebt);
    }

    /// @dev Validates the minimumCR.
    /// @dev This is  used in the `calculateDebtAmount` function to check if the minimumCR value is valid.
    function _checkValidCR(
        IDenManager denManager,
        uint256 minimumCR,
        bool isRecoveryMode,
        LeverageMemory memory m,
        uint256 additionalDebt,
        uint256 resultingICR
    ) private view {
        if (resultingICR < minimumCR) revert PositionBelowMinimumCR(resultingICR, minimumCR);

        if (isRecoveryMode) {
            if (resultingICR < beraborrowCore.CCR()) revert CollateralRatioBelowCCR();
            if (resultingICR < m.prevICR) revert PositionNotImprovedUnderRM(resultingICR, m.prevICR);
        } else {
            if (resultingICR < denManager.MCR()) revert CollateralRatioBelowMCR();

            (uint256 entireSystemPricedColl, uint256 entireSystemDebt) = borrowerOperations.getGlobalSystemBalances();
            entireSystemPricedColl += (m.additionalCollateral + m.marginInCollVault) * m.collVaultPrice;
            entireSystemDebt += additionalDebt;

            uint256 newTCR = BeraborrowMath._computeCR(entireSystemPricedColl, entireSystemDebt);
            uint256 CCR = borrowerOperations.BERABORROW_CORE().CCR();
            if (newTCR < CCR) revert RecoveryMode(newTCR, CCR);
        }
    }

    function addWhitelistedSwapper(address _swapRouter, bool status) external onlyOwner {
        SwappersLib.addWhitelistedSwapper(swapperData,_swapRouter, status);
    }
}
