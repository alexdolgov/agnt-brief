// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC3156FlashLender} from "@openzeppelin/contracts/interfaces/IERC3156FlashLender.sol";
import {IERC3156FlashBorrower} from "@openzeppelin/contracts/interfaces/IERC3156FlashBorrower.sol";
import {IExecutor, IModule} from "kernel/interfaces/IERC7579Modules.sol";
import {MODULE_TYPE_EXECUTOR} from "kernel/types/Constants.sol";
import {IERC7579Account} from "kernel/interfaces/IERC7579Account.sol";
import {ExecLib} from "kernel/utils/ExecLib.sol";
import {Execution} from "kernel/types/Structs.sol";
import {ERC3156Lib} from "src/libraries/ERC3156Lib.sol";
import {SwapParams, SwapAggregator, SwapAggregatorDelegateCalls} from "src/components/SwapAggregator.sol";

/**
 * @title Flash-loan executor
 * @notice A ERC7579 module implementation to perform flash loan on behalf of the smart account
 */
contract FlashLoanExecutor is IExecutor, IERC3156FlashBorrower {
    using Address for address;
    using SafeERC20 for IERC20;
    using SwapAggregatorDelegateCalls for SwapAggregator;

    /// @inheritdoc IModule
    mapping(address smartAccount => bool) public override isInitialized;

    SwapAggregator immutable swapAggregator;

    /// @notice The flash lenders components
    struct FlashLender {
        address callbackSender;
        address component;
    }

    FlashLender[] public lenders;
    mapping(address callbackSender => address component) public flashLoanComponentBySender;

    error AddressIsNull();
    error CouldNotFillFlashLoan();
    error CanNotRepayFlashLoan(uint256 expected, uint256 actual);
    error SenderIsNotTheOwner();
    error LendersListIsEmpty();
    error SenderIsNotValidComponent();
    error InvalidSender();
    error InvalidInitiator();
    error TokenNotSupported();
    error InvalidSwapParams();

    /*////////////////////////////////////////////////////////////////////////// 
                                     CONFIG
    //////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc IModule
    function onInstall(bytes calldata /*data_*/) external payable virtual override {
        if (isInitialized[msg.sender]) revert AlreadyInitialized(msg.sender);
        isInitialized[msg.sender] = true;
    }

    /// @inheritdoc IModule
    function onUninstall(bytes calldata /*data_*/) external payable virtual override {
        if (!isInitialized[msg.sender]) revert NotInitialized(msg.sender);
        delete isInitialized[msg.sender];
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     MODULE LOGIC
    //////////////////////////////////////////////////////////////////////////*/

    constructor(SwapAggregator swapAggregator_, FlashLender[] memory lenders_) {
        if (address(swapAggregator_) == address(0)) revert AddressIsNull();

        swapAggregator = swapAggregator_;

        uint256 _len = lenders_.length;
        if (_len == 0) revert LendersListIsEmpty();

        for (uint256 i; i < _len; ++i) {
            FlashLender memory _lender = lenders_[i];

            if (address(_lender.component) == address(0) || address(_lender.callbackSender) == address(0))
                revert AddressIsNull();

            lenders.push(_lender);
            flashLoanComponentBySender[_lender.callbackSender] = _lender.component;
        }
    }

    /// @notice Get flash-loan repayment amount
    /// @param borrowToken_ The borrow token
    /// @param borrowAmount_ The amount to borrow
    /// @return The amount to repay
    function getRepayAmount(address borrowToken_, uint256 borrowAmount_) external view returns (uint256) {
        uint256 _len = lenders.length;
        for (uint256 i; i < _len; ++i) {
            try IERC3156FlashLender(lenders[i].component).flashFee(borrowToken_, borrowAmount_) returns (
                uint256 _flashFee
            ) {
                return borrowAmount_ + _flashFee;
            } catch {}
        }

        revert TokenNotSupported();
    }

    /// @notice Do a flash-loan
    /// @param borrowToken_ The token to flash borrow
    /// @param borrowAmount_ The amount to flash borrow
    /// @param beneficiary_ The `borrowAmount_` receiver (i.e., position address)
    /// @param zapInParams_ Swap parameters for the case `beneficiary_` needs to receive a token other than the `borrowToken_`
    /// @param executions_ The smart account executions with the flash loan logic (at some point the repay amount must be transferred back to this contract)
    function start(
        IERC20 borrowToken_,
        uint256 borrowAmount_,
        address beneficiary_,
        SwapParams memory zapInParams_,
        Execution[] memory executions_
    ) external {
        address _smartAccount = msg.sender;

        if (!isInitialized[_smartAccount]) revert NotInitialized(_smartAccount);

        bytes memory _data = abi.encode(_smartAccount, beneficiary_, zapInParams_, executions_);

        // 1. Initialize flash loan
        // Go over the protocols preference (usually ordered by fee asc)
        uint256 _len = lenders.length;
        for (uint256 i; i < _len; ++i) {
            bytes memory _filled = lenders[i].component.functionDelegateCall(
                abi.encodeWithSelector(
                    IERC3156FlashLender.flashLoan.selector,
                    address(this),
                    borrowToken_,
                    borrowAmount_,
                    _data
                )
            );

            if (abi.decode(_filled, (bool))) return;
        }

        revert CouldNotFillFlashLoan();
    }

    /// @inheritdoc IERC3156FlashBorrower
    /// @dev This function is called from a delegated call context, so the sender is `address(this)`
    function onFlashLoan(
        address /*initiator_*/,
        address token_,
        uint256 amount_,
        uint256 fee_,
        bytes calldata data_
    ) external override returns (bytes32) {
        if (msg.sender != address(this)) revert InvalidSender();

        (
            IERC7579Account _smartAccount,
            address _beneficiary,
            SwapParams memory _zapInParams,
            Execution[] memory _executions
        ) = abi.decode(data_, (IERC7579Account, address, SwapParams, Execution[]));

        // 1. Transfer flash borrowed amount
        if (_zapInParams.callData.length == 0) {
            IERC20(token_).safeTransfer(_beneficiary, amount_);
        } else {
            if (_zapInParams.receiver != _beneficiary) revert InvalidSwapParams();
            if (_zapInParams.amountIn != amount_) revert InvalidSwapParams();
            if (_zapInParams.tokenIn != IERC20(token_)) revert InvalidSwapParams();

            swapAggregator.delegateSwap(_zapInParams);
        }

        // 2. Execute logic
        _smartAccount.executeFromExecutor(ExecLib.encodeSimpleBatch(), ExecLib.encodeBatch(_executions));

        uint256 _repayAmount = amount_ + fee_;
        uint256 _balance = IERC20(token_).balanceOf(address(this));

        if (_balance < _repayAmount) revert CanNotRepayFlashLoan(_repayAmount, _balance);

        // 3. Transfer any excess to the smart account
        uint256 _excess = _balance - _repayAmount;
        if (_excess > 0) {
            IERC20(token_).safeTransfer(address(_smartAccount), _excess);
        }

        return ERC3156Lib.CALLBACK_SUCCESS;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     METADATA
    //////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc IModule
    function isModuleType(uint256 typeID) external pure override returns (bool) {
        return typeID == MODULE_TYPE_EXECUTOR;
    }

    /// @notice The name of the module
    function name() external pure returns (string memory) {
        return "FlashLoanExecutor";
    }

    /// @notice The version of the module
    function version() external pure returns (string memory) {
        return "0.0.1";
    }

    /*//////////////////////////////////////////////////////////////
                                FALLBACK
    //////////////////////////////////////////////////////////////*/

    /// @dev Redirects flash loan callback data to the initiator component
    fallback() external virtual {
        address _component = flashLoanComponentBySender[msg.sender];

        if (_component == address(0)) revert SenderIsNotValidComponent();

        _delegate(_component);
    }

    /// @dev Delegates the current call to `target_`.
    /// Note: Copied from `openzeppelin-contracts/contracts/proxy/Proxy.sol`
    function _delegate(address target_) internal virtual {
        assembly {
            // Copy msg.data. We take full control of memory in this inline assembly
            // block because it will not return to Solidity code. We overwrite the
            // Solidity scratch pad at memory position 0.
            calldatacopy(0, 0, calldatasize())

            // Call the target.
            // out and outsize are 0 because we don't know the size yet.
            let result := delegatecall(gas(), target_, 0, calldatasize(), 0, 0)

            // Copy the returned data.
            returndatacopy(0, 0, returndatasize())

            switch result
            // delegatecall returns 0 on error.
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return(0, returndatasize())
            }
        }
    }
}
