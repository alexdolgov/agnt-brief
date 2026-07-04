// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ISize} from "@size/src/market/interfaces/ISize.sol";
import {ISizeV1_7} from "@size/src/market/interfaces/v1.7/ISizeV1_7.sol";

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {
    SellCreditMarketParams,
    SellCreditMarketOnBehalfOfParams
} from "@size/src/market/libraries/actions/SellCreditMarket.sol";
import {DepositParams} from "@size/src/market/libraries/actions/Deposit.sol";
import {WithdrawParams} from "@size/src/market/libraries/actions/Withdraw.sol";
import {DexSwapUpgradeable, SwapParams} from "src/utils/DexSwapUpgradeable.sol";
import {Errors} from "@size/src/market/libraries/Errors.sol";

import {Math, PERCENT} from "@size/src/market/libraries/Math.sol";
import {Math as MathUtils} from "@openzeppelin/contracts/utils/math/Math.sol";
import {DataView} from "@size/src/market/SizeViewData.sol";
import {MorphoFlashLoanReceiverBaseUpgradeable} from "src/utils/MorphoFlashLoanReceiverBaseUpgradeable.sol";
import {MulticallUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/MulticallUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IPriceFeed} from "@size/src/oracle/IPriceFeed.sol";
import {IFlashLoanLoopingFactory} from "src/zaps/IFlashLoanLoopingFactory.sol";
import {PeripheryErrors} from "src/libraries/PeripheryErrors.sol";

string constant FLASH_LOAN_LOOPING_VERSION = "v0.2";

struct LoopParams {
    address sizeMarket;
    SellCreditMarketParams[] sellCreditMarketParamsArray;
    SwapParams[] swapParamsArray;
    uint256 targetLeveragePercent;
}

/// @title FlashLoanLooping
/// @custom:security-contact security@size.credit
/// @author Size (https://size.credit/)
/// @notice A contract that allows users to loop using flash loans
contract FlashLoanLooping is
    MulticallUpgradeable,
    MorphoFlashLoanReceiverBaseUpgradeable,
    DexSwapUpgradeable,
    OwnableUpgradeable
{
    using SafeERC20 for IERC20;
    using SafeERC20 for IERC20Metadata;

    // STORAGE
    /// @custom:storage-location erc7201:size.storage.FlashLoanLooping
    struct FlashLoanLoopingStorage {
        IFlashLoanLoopingFactory _flashLoanLoopingFactory;
        uint256 _expiresAt;
    }

    // keccak256(abi.encode(uint256(keccak256("size.storage.FlashLoanLooping")) - 1)) & ~bytes32(uint256(0xff));
    // forge-lint: disable-next-line(screaming-snake-case-const)
    bytes32 private constant FlashLoanLoopingStorageLocation =
        0x0b46759d0375b6af79de1bfbc3b07b8359435064a6d7ded96a55feb0e2c66200;

    function _getFlashLoanLoopingStorage() private pure returns (FlashLoanLoopingStorage storage $) {
        assembly {
            $.slot := FlashLoanLoopingStorageLocation
        }
    }

    error InvalidPercent(uint256 percent, uint256 minPercent, uint256 maxPercent);
    error TargetLeverageNotAchieved(uint256 currentLeveragePercent, uint256 targetLeveragePercent);

    struct OperationParams {
        address sizeMarket;
        address collateralToken;
        address borrowToken;
        address onBehalfOf;
        uint256 targetLeveragePercent;
        SellCreditMarketParams[] sellCreditMarketParamsArray;
        SwapParams[] swapParamsArray;
    }

    // CONSTRUCTOR/INITIALIZER
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(IFlashLoanLoopingFactory _flashLoanLoopingFactory, address _owner, uint256 _expiresAt)
        public
        initializer
    {
        if (address(_flashLoanLoopingFactory) == address(0)) {
            revert Errors.NULL_ADDRESS();
        }

        FlashLoanLoopingStorage storage $ = _getFlashLoanLoopingStorage();
        $._flashLoanLoopingFactory = _flashLoanLoopingFactory;
        $._expiresAt = _expiresAt;

        __Multicall_init();
        __MorphoFlashLoanReceiverBase_init(address(_flashLoanLoopingFactory.morpho()));
        __Ownable_init(_owner);
        __DexSwapUpgradeable_init(
            address(_flashLoanLoopingFactory.uniswapV2Router()),
            address(_flashLoanLoopingFactory.uniswapV3Router()),
            address(_flashLoanLoopingFactory.pendleRouter()),
            address(_flashLoanLoopingFactory.pendleMarketFactory())
        );
    }

    /// @dev Users must first `setAuthorization` with `SELL_CREDIT_MARKET` to this contract
    function loop(LoopParams memory loopParams) external onlyOwner {
        if (block.timestamp > expiresAt()) {
            revert PeripheryErrors.EXPIRED(block.timestamp, expiresAt());
        }

        if (!flashLoanLoopingFactory().sizeFactory().isMarket(loopParams.sizeMarket)) {
            revert Errors.INVALID_MARKET(loopParams.sizeMarket);
        }

        DataView memory dataView = ISize(loopParams.sizeMarket).data();

        OperationParams memory operationParams = OperationParams({
            sizeMarket: loopParams.sizeMarket,
            collateralToken: address(dataView.underlyingCollateralToken),
            borrowToken: address(dataView.underlyingBorrowToken),
            onBehalfOf: msg.sender,
            targetLeveragePercent: loopParams.targetLeveragePercent,
            sellCreditMarketParamsArray: loopParams.sellCreditMarketParamsArray,
            swapParamsArray: loopParams.swapParamsArray
        });

        uint256 flashLoanAmount = _calculateFlashLoanAmount(dataView, operationParams);
        _flashLoan(address(dataView.underlyingBorrowToken), flashLoanAmount, abi.encode(operationParams));

        // Deposit the remainder of the flash loaned USDC to the user
        uint256 remainder = dataView.underlyingBorrowToken.balanceOf(address(this));
        if (remainder > 0) {
            dataView.underlyingBorrowToken.forceApprove(loopParams.sizeMarket, remainder);
            ISize(loopParams.sizeMarket).deposit(
                DepositParams({token: address(dataView.underlyingBorrowToken), amount: remainder, to: msg.sender})
            );
        }
    }

    function _flashLoanCallback(address, uint256, bytes memory params) internal override {
        OperationParams memory operationParams = abi.decode(params, (OperationParams));

        // Swap borrow token -> collateral token
        _swap(operationParams.swapParamsArray);

        // Approve collateral
        uint256 collateralBalance = IERC20(operationParams.collateralToken).balanceOf(address(this));
        IERC20(operationParams.collateralToken).forceApprove(operationParams.sizeMarket, collateralBalance);

        // deposit, sell credit market, withdraw
        bytes[] memory calls = new bytes[](
            1 /* deposit */ + operationParams.sellCreditMarketParamsArray.length /* sell credit market */ + 1 /* withdraw */
        );
        calls[0] = abi.encodeCall(
            ISize.deposit,
            DepositParams({
                token: operationParams.collateralToken,
                amount: collateralBalance,
                to: operationParams.onBehalfOf
            })
        );
        for (uint256 i = 0; i < operationParams.sellCreditMarketParamsArray.length; i++) {
            calls[1 + i] = abi.encodeCall(
                ISizeV1_7.sellCreditMarketOnBehalfOf,
                SellCreditMarketOnBehalfOfParams({
                    params: operationParams.sellCreditMarketParamsArray[i],
                    onBehalfOf: operationParams.onBehalfOf,
                    recipient: address(this)
                })
            );
        }
        calls[1 + operationParams.sellCreditMarketParamsArray.length] = abi.encodeCall(
            ISize.withdraw,
            WithdrawParams({token: operationParams.borrowToken, amount: type(uint256).max, to: address(this)})
        );

        // slither-disable-next-line unused-return
        ISize(operationParams.sizeMarket).multicall(calls);

        // Check if target leverage was achieved
        uint256 leveragePercentNow =
            currentLeveragePercent(ISize(operationParams.sizeMarket), operationParams.onBehalfOf);
        if (leveragePercentNow < operationParams.targetLeveragePercent) {
            revert TargetLeverageNotAchieved(leveragePercentNow, operationParams.targetLeveragePercent);
        }
    }

    // VIEW FUNCTIONS
    function _calculateFlashLoanAmount(DataView memory dataView, OperationParams memory operationParams)
        internal
        view
        returns (uint256)
    {
        uint256 currentCollateral = dataView.collateralToken.balanceOf(operationParams.onBehalfOf);
        uint256 currentDebt = dataView.debtToken.balanceOf(operationParams.onBehalfOf);

        uint256 currentDebtInCollateral =
            ISize(operationParams.sizeMarket).debtTokenAmountToCollateralTokenAmount(currentDebt);
        uint256 equity = MathUtils.saturatingSub(currentCollateral, currentDebtInCollateral);

        uint256 targetCollateral = Math.mulDivUp(equity, operationParams.targetLeveragePercent, PERCENT);
        uint256 additionalCollateralNeeded = MathUtils.saturatingSub(targetCollateral, currentCollateral);

        return _collateralTokenAmountToDebtTokenAmount(ISize(operationParams.sizeMarket), additionalCollateralNeeded);
    }

    function _collateralTokenAmountToDebtTokenAmount(ISize size, uint256 collateralTokenAmount)
        internal
        view
        returns (uint256)
    {
        DataView memory dataView = size.data();
        IPriceFeed priceFeed = IPriceFeed(size.oracle().priceFeed);

        return Math.mulDivUp(
            collateralTokenAmount * priceFeed.getPrice(),
            10 ** dataView.underlyingBorrowToken.decimals(),
            10 ** priceFeed.decimals() * 10 ** dataView.underlyingCollateralToken.decimals()
        );
    }

    function currentLeveragePercent(ISize size, address account) public view returns (uint256) {
        if (!flashLoanLoopingFactory().sizeFactory().isMarket(address(size))) {
            revert Errors.INVALID_MARKET(address(size));
        }

        DataView memory dataView = size.data();
        uint256 totalCollateral = dataView.collateralToken.balanceOf(account);
        uint256 totalDebt = dataView.debtToken.balanceOf(account);
        return Math.mulDivDown(
            totalCollateral, PERCENT, totalCollateral - size.debtTokenAmountToCollateralTokenAmount(totalDebt)
        );
    }

    function version() external pure returns (string memory) {
        return FLASH_LOAN_LOOPING_VERSION;
    }

    function flashLoanLoopingFactory() public view returns (IFlashLoanLoopingFactory) {
        return _getFlashLoanLoopingStorage()._flashLoanLoopingFactory;
    }

    function expiresAt() public view returns (uint256) {
        return _getFlashLoanLoopingStorage()._expiresAt;
    }
}
