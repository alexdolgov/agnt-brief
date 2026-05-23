// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {MessageHashUtils} from "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";
import {IERC1271} from "@openzeppelin/contracts/interfaces/IERC1271.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IExecutor, IModule} from "kernel/interfaces/IERC7579Modules.sol";
import {MODULE_TYPE_EXECUTOR, ERC1271_MAGICVALUE} from "kernel/types/Constants.sol";
import {IERC7579Account} from "kernel/interfaces/IERC7579Account.sol";
import {ExecLib} from "kernel/utils/ExecLib.sol";

abstract contract AdvancedTransactionExecutor is IExecutor, Ownable {
    using MessageHashUtils for bytes32;

    struct FeeConfig {
        // Fee bps to charge
        uint16 feeBps;
        // The fee collector
        address collector;
    }

    struct Incentive {
        // The token to pay to the filler as incentive
        IERC20 token;
        // The amount to pay
        uint256 amount;
    }

    struct Order {
        // The period where the order is valid to be filled
        uint48 validFrom;
        uint48 validTo;
        // Order's owner
        address smartAccount;
        // Avoids having duplicated hash for order with exact same parameters
        uint96 nonce;
        // The contract authorized to execute this order
        address executor;
        // The incentive params
        Incentive incentive;
        // The custom data depending on specific order type
        bytes additionalData;
        // The smart account's signature
        bytes signature;
    }

    address internal constant NATIVE_TOKEN = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
    uint256 internal constant MAX_BPS = 100_00;
    uint256 public constant MAX_FEE_BPS = 1_00;

    FeeConfig public fee;

    /// @inheritdoc IModule
    mapping(address smartAccount => bool) public override isInitialized;
    mapping(address owner => mapping(bytes32 orderHash => bool)) public cancelled;
    mapping(bytes32 orderHash => bool) private _filled;

    event OrderFilled(address indexed smartAccount, address indexed caller, bytes32 orderHash);
    event FeeConfigUpdated(uint256 feeBps, address collector);

    error InvalidSignature();
    error OrderCancelled();
    error OrderAlreadyFilled();
    error OutsideFillWindow();
    error IncentiveTransferFailed();
    error WrongExecutor();
    error FeeBpsTooHigh();
    error FeeCollectorIsNull();

    constructor(address owner_) Ownable(owner_) {}

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

    /// @notice Cancel an order
    /// This function must be called from the order's smart account (a.k.a. owner) itself.
    /// @param orderHash_ the order's hash
    function cancel(bytes32 orderHash_) external {
        cancelled[msg.sender][orderHash_] = true;
    }

    /// @notice Get order's hash
    /// @param order_ The order struct
    /// @return The order's hash
    function getOrderHash(Order memory order_) public view returns (bytes32) {
        bytes32 _orderHash = keccak256(
            abi.encode(
                order_.smartAccount,
                order_.executor,
                order_.validFrom,
                order_.validTo,
                order_.incentive.token,
                order_.incentive.amount,
                order_.additionalData,
                order_.nonce
            )
        );
        return keccak256(abi.encode(_orderHash, block.chainid));
    }

    /// @notice Fill an order
    /// @param order_ The order struct (with signature)
    /// @param callbackData_ The data to be passed to callback (may be optional depending on the order type)
    function fill(Order memory order_, bytes memory callbackData_) external {
        _validateAdditionalData(order_.additionalData);

        bytes32 _hash = getOrderHash(order_).toEthSignedMessageHash();

        if (!isInitialized[order_.smartAccount]) revert NotInitialized(order_.smartAccount);
        if (order_.executor != address(this)) revert WrongExecutor();
        // Since we're using the `ECDSAValidator`, a message signed by the wallet's owner is valid
        if (IERC1271(order_.smartAccount).isValidSignature(_hash, order_.signature) != ERC1271_MAGICVALUE)
            revert InvalidSignature();
        if (cancelled[order_.smartAccount][_hash]) revert OrderCancelled();
        if (order_.validFrom > block.timestamp || order_.validTo < block.timestamp) revert OutsideFillWindow();
        if (_wasFilled(order_, _hash)) revert OrderAlreadyFilled();

        _setAsFilled(order_, _hash);
        _fill(order_, callbackData_);
        _transferIncentive(order_);

        emit OrderFilled(order_.smartAccount, msg.sender, _hash);
    }

    /// @notice Check if an order was filled
    /// @param order_ The order struct
    /// @return `true` if the order was filled already
    function wasFilled(Order memory order_) external view returns (bool) {
        return _wasFilled(order_, getOrderHash(order_).toEthSignedMessageHash());
    }

    /// @dev Executors filling logic
    /// Note: Any fee must be charged here
    function _fill(Order memory order_, bytes memory callbackData_) internal virtual;

    /// @dev Transfer incentive to the caller (if any)
    function _transferIncentive(Order memory order_) private {
        Incentive memory _i = order_.incentive;

        if (address(_i.token) == address(0) || _i.amount == 0) {
            return;
        }

        _transferFromSmartAccount(order_.smartAccount, _i.token, msg.sender, _i.amount);
    }

    /// @notice Validate `AdditionalData`
    function _validateAdditionalData(bytes memory additionalData_) internal view virtual;

    /// @dev Set an order as filled
    /// Note: Each executor may have their own logic
    function _setAsFilled(Order memory /*order_*/, bytes32 orderHash_) internal virtual {
        _filled[orderHash_] = true;
    }

    /// @dev Check if an order was filled
    /// Note: Each executor may have their own logic
    function _wasFilled(Order memory /*order_*/, bytes32 orderHash_) internal view virtual returns (bool) {
        return _filled[orderHash_];
    }

    /// @dev Execute an ERC20 transfer call
    function _transferFromSmartAccount(address smartAccount_, IERC20 token_, address to_, uint256 amount_) internal {
        bytes memory _executionCalldata = (NATIVE_TOKEN == address(token_))
            ? ExecLib.encodeSingle(to_, amount_, bytes(""))
            : ExecLib.encodeSingle(address(token_), 0, abi.encodeWithSelector(IERC20.transfer.selector, to_, amount_));

        bytes memory _returnData = IERC7579Account(smartAccount_).executeFromExecutor(
            ExecLib.encodeSimpleSingle(),
            _executionCalldata
        )[0];

        // Note: Same check as `SafeERC20` lib
        if (_returnData.length != 0 && !abi.decode(_returnData, (bool))) {
            revert IncentiveTransferFailed();
        }
    }

    /// @dev Collect fee
    function _collectFee(address from_, IERC20 token_, uint256 grossAmount_) internal returns (uint256 feeAmount_) {
        FeeConfig memory _fee = fee;
        if (_fee.feeBps > 0) {
            feeAmount_ = (grossAmount_ * _fee.feeBps) / MAX_BPS;
            if (feeAmount_ > 0) {
                _transferFromSmartAccount(from_, token_, _fee.collector, feeAmount_);
            }
        }
    }

    /// @notice Update protocol fee
    function updateFee(FeeConfig calldata fee_) external onlyOwner {
        if (fee_.collector == address(0)) revert FeeCollectorIsNull();
        if (fee_.feeBps > MAX_FEE_BPS) revert FeeBpsTooHigh();

        fee = fee_;

        emit FeeConfigUpdated(fee_.feeBps, fee_.collector);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     METADATA
    //////////////////////////////////////////////////////////////////////////*/

    /// @inheritdoc IModule
    function isModuleType(uint256 typeID) external pure override returns (bool) {
        return typeID == MODULE_TYPE_EXECUTOR;
    }
}
