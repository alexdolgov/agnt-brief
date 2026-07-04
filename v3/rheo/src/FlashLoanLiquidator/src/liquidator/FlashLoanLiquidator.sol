// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ISize} from "@size/src/market/interfaces/ISize.sol";

import {DataView} from "@size/src/market/SizeViewData.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {LiquidateParams} from "@size/src/market/libraries/actions/Liquidate.sol";
import {LiquidateWithReplacementParams} from "@size/src/market/libraries/actions/LiquidateWithReplacement.sol";
import {DepositParams} from "@size/src/market/libraries/actions/Deposit.sol";
import {WithdrawParams} from "@size/src/market/libraries/actions/Withdraw.sol";
import {DexSwapUpgradeable, SwapParams} from "src/utils/DexSwapUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {MorphoFlashLoanReceiverBaseUpgradeable} from "src/utils/MorphoFlashLoanReceiverBaseUpgradeable.sol";
import {KEEPER_ROLE, ISizeFactory, PAUSER_ROLE} from "@size/src/factory/interfaces/ISizeFactory.sol";
import {MulticallUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/MulticallUpgradeable.sol";
import {Errors} from "@size/src/market/libraries/Errors.sol";
import {PeripheryErrors} from "src/libraries/PeripheryErrors.sol";
import {RecoverTokens} from "src/utils/RecoverTokens.sol";
import {PauseUnpause} from "src/utils/PauseUnpause.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ISafe} from "@size/script/interfaces/ISafe.sol";

string constant FLASH_LOAN_LIQUIDATOR_VERSION = "v2.0";

struct FlashLoanLiquidateParams {
    address sizeMarket;
    uint256 debtPositionId;
    uint256 minimumCollateralProfit;
    uint256 deadline;
    uint256 supplementAmount;
    address recipient;
    SwapParams[] swapParamsArray;
    ReplacementParams replacementParams;
}

struct ReplacementParams {
    uint256 minAPR;
    address borrower;
    uint256 collectionId;
    address rateProvider;
}

/// @title FlashLoanLiquidator
/// @custom:security-contact security@size.credit
/// @author Size (https://size.credit/)
/// @notice A contract that liquidates debt positions using flash loans
contract FlashLoanLiquidator is
    MulticallUpgradeable,
    DexSwapUpgradeable,
    AccessControlUpgradeable,
    RecoverTokens,
    PauseUnpause,
    MorphoFlashLoanReceiverBaseUpgradeable,
    UUPSUpgradeable
{
    using SafeERC20 for IERC20;

    // STORAGE
    /// @custom:storage-location erc7201:size.storage.FlashLoanLiquidator
    struct FlashLoanLiquidatorStorage {
        ISizeFactory _sizeFactory;
    }

    // keccak256(abi.encode(uint256(keccak256("size.storage.FlashLoanLiquidator")) - 1)) & ~bytes32(uint256(0xff));
    // forge-lint: disable-next-line(screaming-snake-case-const)
    bytes32 private constant FlashLoanLiquidatorStorageLocation =
        0x7adcc731af4a337cc441ae54ce450534a85ca195ce556a4aa348ee018a5d4500;

    function _getFlashLoanLiquidatorStorage() private pure returns (FlashLoanLiquidatorStorage storage $) {
        assembly {
            $.slot := FlashLoanLiquidatorStorageLocation
        }
    }

    // STRUCTS
    struct OperationParams {
        address sizeMarket;
        address collateralToken;
        address borrowToken;
        uint256 debtPositionId;
        uint256 minimumCollateralProfit;
        address recipient;
        uint256 deadline;
        SwapParams[] swapParamsArray;
        uint256 debtAmount;
        ReplacementParams replacementParams;
    }

    // CONSTRUCTOR/INITIALIZER
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _admin,
        address _sizeFactory,
        address _morpho,
        address _uniswapV2Router,
        address _uniswapV3Router,
        address _pendleRouter,
        address _pendleMarketFactory
    ) public initializer {
        __Multicall_init();
        __AccessControl_init();
        __Pausable_init();
        __UUPSUpgradeable_init();
        __MorphoFlashLoanReceiverBase_init(_morpho);
        __DexSwapUpgradeable_init(_uniswapV2Router, _uniswapV3Router, _pendleRouter, _pendleMarketFactory);

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(KEEPER_ROLE, _admin);
        _grantRole(PAUSER_ROLE, _admin);

        if (_sizeFactory == address(0)) {
            revert Errors.NULL_ADDRESS();
        }

        FlashLoanLiquidatorStorage storage $ = _getFlashLoanLiquidatorStorage();
        $._sizeFactory = ISizeFactory(_sizeFactory);

        (bool success, bytes memory data) = address(_admin).staticcall(abi.encodeWithSelector(ISafe.getOwners.selector));
        if (success) {
            address[] memory owners = abi.decode(data, (address[]));
            for (uint256 i = 0; i < owners.length; i++) {
                _grantRole(KEEPER_ROLE, owners[i]);
                _grantRole(PAUSER_ROLE, owners[i]);
            }
        }
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    // FUNCTIONS
    function liquidate(FlashLoanLiquidateParams memory params) external whenNotPaused {
        if (!sizeFactory().isMarket(params.sizeMarket)) {
            revert Errors.INVALID_MARKET(params.sizeMarket);
        }
        if (!hasRole(KEEPER_ROLE, msg.sender) && !isNull(params.replacementParams)) {
            // only KEEPER_ROLE can use replacementParams
            revert PeripheryErrors.INVALID_PARAMS();
        }

        ISize size = ISize(params.sizeMarket);
        DataView memory dataView = size.data();

        if (params.supplementAmount > 0) {
            IERC20(dataView.underlyingBorrowToken).safeTransferFrom(msg.sender, address(this), params.supplementAmount);
        }

        uint256 debtAmount = size.getDebtPosition(params.debtPositionId).futureValue;

        OperationParams memory opParams = OperationParams({
            sizeMarket: params.sizeMarket,
            collateralToken: address(dataView.underlyingCollateralToken),
            borrowToken: address(dataView.underlyingBorrowToken),
            debtPositionId: params.debtPositionId,
            minimumCollateralProfit: params.minimumCollateralProfit,
            deadline: params.deadline,
            recipient: params.recipient,
            swapParamsArray: params.swapParamsArray,
            debtAmount: debtAmount,
            replacementParams: params.replacementParams
        });

        uint256 flashLoanAmount = Math.saturatingSub(debtAmount, params.supplementAmount);
        if (flashLoanAmount > 0) {
            _flashLoan(address(dataView.underlyingBorrowToken), flashLoanAmount, abi.encode(opParams));
        } else {
            _flashLoanCallback(address(dataView.underlyingBorrowToken), flashLoanAmount, abi.encode(opParams));
        }
        uint256 remainder = IERC20(dataView.underlyingBorrowToken).balanceOf(address(this));
        if (remainder > 0) {
            IERC20(dataView.underlyingBorrowToken).forceApprove(params.sizeMarket, remainder);
            ISize(params.sizeMarket).deposit(
                DepositParams({token: address(dataView.underlyingBorrowToken), amount: remainder, to: params.recipient})
            );
        }
    }

    function _flashLoanCallback(address, uint256, bytes memory params) internal override {
        OperationParams memory opParams = abi.decode(params, (OperationParams));

        bytes memory depositCall = abi.encodeCall(
            ISize.deposit,
            (DepositParams({token: opParams.borrowToken, amount: opParams.debtAmount, to: address(this)}))
        );
        bytes memory liquidationCall = isNull(opParams.replacementParams)
            ? abi.encodeCall(
                ISize.liquidate,
                LiquidateParams({
                    debtPositionId: opParams.debtPositionId,
                    minimumCollateralProfit: opParams.minimumCollateralProfit,
                    deadline: opParams.deadline
                })
            )
            : abi.encodeCall(
                ISize.liquidateWithReplacement,
                (
                    LiquidateWithReplacementParams({
                        debtPositionId: opParams.debtPositionId,
                        minimumCollateralProfit: opParams.minimumCollateralProfit,
                        deadline: opParams.deadline,
                        borrower: opParams.replacementParams.borrower,
                        minAPR: opParams.replacementParams.minAPR,
                        collectionId: opParams.replacementParams.collectionId,
                        rateProvider: opParams.replacementParams.rateProvider
                    })
                )
            );
        bytes memory withdrawCall = abi.encodeCall(
            ISize.withdraw,
            (WithdrawParams({token: opParams.collateralToken, amount: type(uint256).max, to: address(this)}))
        );

        bytes[] memory calls = new bytes[](3);
        calls[0] = depositCall;
        calls[1] = liquidationCall;
        calls[2] = withdrawCall;

        IERC20(opParams.borrowToken).forceApprove(opParams.sizeMarket, opParams.debtAmount);
        // slither-disable-next-line unused-return
        ISize(opParams.sizeMarket).multicall(calls);

        _swap(opParams.swapParamsArray);
    }

    // VIEW FUNCTIONS
    function isNull(ReplacementParams memory replacementParams) private pure returns (bool) {
        return replacementParams.borrower == address(0) && replacementParams.minAPR == 0
            && replacementParams.collectionId == 0 && replacementParams.rateProvider == address(0);
    }

    function version() external pure returns (string memory) {
        return FLASH_LOAN_LIQUIDATOR_VERSION;
    }

    function sizeFactory() public view returns (ISizeFactory) {
        return _getFlashLoanLiquidatorStorage()._sizeFactory;
    }
}
