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
import {Errors} from "@size/src/market/libraries/Errors.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";

import {DataView} from "@size/src/market/SizeViewData.sol";
import {MorphoFlashLoanReceiverBaseUpgradeable} from "src/utils/MorphoFlashLoanReceiverBaseUpgradeable.sol";
import {MulticallUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/MulticallUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IFlashLoanLoopingFactory} from "src/zaps/IFlashLoanLoopingFactory.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {PeripheryErrors} from "src/libraries/PeripheryErrors.sol";

string constant FLASH_LOAN_LOOPING_VERSION = "v1.4";

// forge-lint: disable-next-line(pascal-case-struct)
struct ZapInParamsV1_3 {
    address sizeMarket;
    address tokenIn;
    uint256 amountIn;
    address swapTarget;
    bytes swapData;
    uint256 minAmountOut;
}

// forge-lint: disable-next-line(pascal-case-struct)
struct LoopParamsV1_3 {
    address sizeMarket;
    uint256 flashLoanAmount;
    uint256 targetLeveragePercent;
    SellCreditMarketParams[] sellCreditMarketParamsArray;
    address swapTarget;
    bytes swapData;
    uint256 minAmountOut;
}

/// @title FlashLoanLoopingV1
/// @custom:security-contact security@size.credit
/// @author Size (https://size.credit/)
/// @notice A contract that allows users to loop using flash loans
contract FlashLoanLoopingV1 is
    MulticallUpgradeable,
    MorphoFlashLoanReceiverBaseUpgradeable,
    OwnableUpgradeable,
    ReentrancyGuardUpgradeable
{
    using SafeERC20 for IERC20;
    using SafeERC20 for IERC20Metadata;

    // STORAGE
    /// @custom:storage-location erc7201:size.storage.FlashLoanLooping
    struct FlashLoanLoopingStorage {
        IFlashLoanLoopingFactory _flashLoanLoopingFactory;
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
        address swapTarget;
        bytes swapData;
        uint256 minAmountOut;
    }

    // CONSTRUCTOR/INITIALIZER
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(IFlashLoanLoopingFactory _flashLoanLoopingFactory, address _owner) public initializer {
        if (address(_flashLoanLoopingFactory) == address(0)) {
            revert Errors.NULL_ADDRESS();
        }

        FlashLoanLoopingStorage storage $ = _getFlashLoanLoopingStorage();
        $._flashLoanLoopingFactory = _flashLoanLoopingFactory;

        __Multicall_init();
        __MorphoFlashLoanReceiverBase_init(address(_flashLoanLoopingFactory.morpho()));
        __Ownable_init(_owner);
        __ReentrancyGuard_init();
    }

    // MODIFIERS
    modifier factoryNotPaused() {
        if (PausableUpgradeable(address(flashLoanLoopingFactory())).paused()) {
            revert PausableUpgradeable.EnforcedPause();
        }
        _;
    }

    /// @notice Converts tokenIn to collateral token and deposits it into sizeMarket
    /// @dev Users must first approve the tokenIn to this contract
    /// @dev If swapTarget is null, no swap is performed, and tokenIn must be the collateral token
    /// @param zapInParams The parameters for the zap in operation including tokens, amounts, and swap details
    function zapIn(ZapInParamsV1_3 memory zapInParams) external nonReentrant onlyOwner factoryNotPaused {
        if (!flashLoanLoopingFactory().sizeFactory().isMarket(zapInParams.sizeMarket)) {
            revert Errors.INVALID_MARKET(zapInParams.sizeMarket);
        }
        if (zapInParams.tokenIn == address(0)) {
            revert Errors.NULL_ADDRESS();
        }
        IERC20Metadata underlyingCollateralToken = ISize(zapInParams.sizeMarket).data().underlyingCollateralToken;
        if (zapInParams.swapTarget == address(0) && zapInParams.tokenIn != address(underlyingCollateralToken)) {
            revert Errors.INVALID_TOKEN(zapInParams.tokenIn);
        }

        // swap tokenIn -> collateral token
        if (zapInParams.swapTarget != address(0)) {
            IERC20(zapInParams.tokenIn).safeTransferFrom(msg.sender, address(this), zapInParams.amountIn);
            IERC20(zapInParams.tokenIn).forceApprove(zapInParams.swapTarget, zapInParams.amountIn);
            Address.functionCall(zapInParams.swapTarget, zapInParams.swapData);
            IERC20(zapInParams.tokenIn).forceApprove(zapInParams.swapTarget, 0);
        } else {
            IERC20(zapInParams.tokenIn).safeTransferFrom(msg.sender, address(this), zapInParams.amountIn);
        }

        address tokenOut = address(underlyingCollateralToken);
        uint256 amountOut = IERC20(tokenOut).balanceOf(address(this));

        // slippage check
        if (amountOut < zapInParams.minAmountOut) {
            revert PeripheryErrors.AMOUNT_OUT_TOO_LOW(amountOut, zapInParams.minAmountOut);
        }

        // deposit collateral token
        IERC20(tokenOut).forceApprove(zapInParams.sizeMarket, amountOut);
        ISize(zapInParams.sizeMarket).deposit(DepositParams({token: tokenOut, amount: amountOut, to: msg.sender}));
    }

    /// @notice Executes a flash loan loop to achieve leveraged position in Size market
    /// @dev Flash loans borrow tokens, swaps to collateral token, deposits collateral into sizeMarket, sells credit market, withdraws borrow tokens, and repays the flash loan
    /// @dev Users must first setAuthorization with SELL_CREDIT_MARKET to this contract
    /// @param loopParams The parameters for the loop operation including flash loan amount, target leverage, and swap details
    function loop(LoopParamsV1_3 memory loopParams) external nonReentrant onlyOwner factoryNotPaused {
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
            swapTarget: loopParams.swapTarget,
            swapData: loopParams.swapData,
            minAmountOut: loopParams.minAmountOut
        });

        _flashLoan(address(dataView.underlyingBorrowToken), loopParams.flashLoanAmount, abi.encode(operationParams));

        // Deposit the leftovers to the user
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

        // swap borrow token -> collateral token
        uint256 borrowTokenBalance = IERC20(operationParams.borrowToken).balanceOf(address(this));
        IERC20(operationParams.borrowToken).forceApprove(operationParams.swapTarget, borrowTokenBalance);
        Address.functionCall(operationParams.swapTarget, operationParams.swapData);
        IERC20(operationParams.borrowToken).forceApprove(operationParams.swapTarget, 0);

        // slippage check
        uint256 amountOut = IERC20(operationParams.collateralToken).balanceOf(address(this));
        if (amountOut < operationParams.minAmountOut) {
            revert PeripheryErrors.AMOUNT_OUT_TOO_LOW(amountOut, operationParams.minAmountOut);
        }

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
        uint256 leveragePercentNow = flashLoanLoopingFactory().currentLeveragePercent(
            ISize(operationParams.sizeMarket), operationParams.onBehalfOf
        );
        if (leveragePercentNow < operationParams.targetLeveragePercent) {
            revert TargetLeverageNotAchieved(leveragePercentNow, operationParams.targetLeveragePercent);
        }
    }

    /// @notice Rescues any tokens stuck in the contract
    /// @dev Only callable by the owner when factory is not paused
    /// @param token The token address to rescue
    /// @param to The address to send the rescued tokens to
    function rescueTokens(address token, address to) external nonReentrant onlyOwner factoryNotPaused {
        uint256 amount = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransfer(to, amount);
    }

    // VIEW FUNCTIONS
    /// @notice Returns the version of this FlashLoanLooping contract
    /// @return The version string
    function version() external pure returns (string memory) {
        return FLASH_LOAN_LOOPING_VERSION;
    }

    /// @notice Returns the FlashLoanLoopingFactory that deployed this contract
    /// @return The IFlashLoanLoopingFactory contract instance
    function flashLoanLoopingFactory() public view returns (IFlashLoanLoopingFactory) {
        return _getFlashLoanLoopingStorage()._flashLoanLoopingFactory;
    }
}
