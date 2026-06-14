// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC4626 } from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { Initializable } from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";
import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import {
    Origin,
    OAppUpgradeable,
    MessagingFee,
    MessagingReceipt
} from "@layerzerolabs/oapp-evm-upgradeable/contracts/oapp/OAppUpgradeable.sol";
import { OFTComposeMsgCodec } from "@layerzerolabs/oft-evm/contracts/libs/OFTComposeMsgCodec.sol";
import { OAppOptionsType3Upgradeable } from "@layerzerolabs/oapp-evm-upgradeable/contracts/oapp/libs/OAppOptionsType3Upgradeable.sol";

import { Errors } from "../../common/Errors.sol";
import { Roles } from "../../common/Roles.sol";
import { DeltaMessage, StrategyManagerParams } from "../../common/Types.sol";
import { BridgeGateway } from "../underlying-adapter/BridgeGateway.sol";
import { IAccountingReceiver } from "../../interfaces/IAccountingReceiver.sol";

/**
 * @title StrategyManager
 * @notice Receives the underlying asset, allocates funds to allowed strategies, and reports performance deltas to AccountingReceiver.
 * @dev Initialize through the factory using {StrategyManagerParams}.
 */
contract StrategyManager is
    Initializable,
    UUPSUpgradeable,
    BridgeGateway,
    OAppUpgradeable,
    OAppOptionsType3Upgradeable
{
    using SafeERC20 for IERC20;
    using OFTComposeMsgCodec for bytes32;
    using EnumerableSet for EnumerableSet.AddressSet;

    uint16 constant REPORT_DELTA = 0;

    /**
     * @notice Storage layout for upgradeable deployments.
     * @param allowedStrategies Set of ERC4626 compatible strategies permitted to receive allocations.
     * @param sharedDecimals Shared decimals used in OFT decimal conversion logic (<=6).
     * @param localEid LayerZero endpoint id for this chain.
     * @param accountingReceiver Bytes32-encoded accounting receiver contract address used for reporting.
     * @param accountingReceiverEid LayerZero endpoint id for the accounting receiver chain.
     * @param decimalConversionRate Conversion factor between local decimals and shared decimals.
     * @param underlyingToken Address of the underlying ERC20 asset.
     * @param underlyingByStrategy Tracking map of underlying held per strategy.
     */
    struct StrategyManagerStorage {
        EnumerableSet.AddressSet allowedStrategies;
        uint8 sharedDecimals;
        uint32 localEid;
        bytes32 accountingReceiver;
        uint32 accountingReceiverEid;
        uint256 decimalConversionRate;
        address underlyingToken;
        mapping(address => int256) underlyingByStrategy;
    }

    // keccak256(abi.encode(uint256(keccak256("zircuit.storage.StrategyManager")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant STRATEGY_MANAGER_STORAGE_LOCATION =
        0xeee24b1068db1f77995529a239f6d9b26635e7162ee18ce6dabc59845aabd700;

    function _getStrategyManagerStorage()
        internal
        pure
        returns (StrategyManagerStorage storage $)
    {
        assembly {
            $.slot := STRATEGY_MANAGER_STORAGE_LOCATION
        }
    }

    event StrategyAllowed(address indexed strategy, bool allowed);

    event DeltaReported(
        address indexed strategy,
        bytes32 indexed guid,
        uint64 delta,
        bool isMint,
        uint256 timestamp
    );

    event DeployedFunds(address indexed strategy, uint256 amount);
    event FreedFunds(address indexed strategy, uint256 amount);

    constructor(address _lzEndpoint) OAppUpgradeable(_lzEndpoint) {
        _disableInitializers();
    }

    /**
     * @notice Initializes a proxied instance.
     * @param _params Deployment settings. See {StrategyManagerParams} for field descriptions.
     */
    function initialize(
        StrategyManagerParams calldata _params
    ) external initializer {
        if (_params.sharedDecimals > 6) revert Errors.InvalidSharedDecimals();

        __BridgeGateway_init(
            _params.clusterName,
            _params.underlyingSymbol,
            _params.underlyingToken,
            _params.bridgeRouter
        );
        __Ownable_init(_params.oAppOwner);
        __OApp_init(_params.oAppDelegate);
        __OAppOptionsType3_init();
        __AccessControl_init();
        __FactoryClient_init(msg.sender);
        _grantRole(DEFAULT_ADMIN_ROLE, _params.defaultAdmin);

        uint8 localDecimals = IERC20Metadata(_params.underlyingToken)
            .decimals();
        if (localDecimals < _params.sharedDecimals)
            revert Errors.InvalidSharedDecimals();

        StrategyManagerStorage storage $ = _getStrategyManagerStorage();
        $.sharedDecimals = _params.sharedDecimals;
        $.decimalConversionRate =
            10 ** (localDecimals - _params.sharedDecimals);

        $.accountingReceiverEid = _params.accountingReceiverEid;
        $.accountingReceiver = _params.accountingReceiver;
        $.underlyingToken = _params.underlyingToken;
        $.localEid = endpoint.eid();
    }

    function _authorizeUpgrade(
        address _newImplementation
    ) internal override onlyRole(UPGRADE_MANAGER) {}

    modifier onlyAllowedStrategy(address _strategy) {
        StrategyManagerStorage storage $ = _getStrategyManagerStorage();
        if (!$.allowedStrategies.contains(_strategy))
            revert Errors.StrategyNotAllowed();
        _;
    }

    /**
     * @notice Adds or removes a strategy from the allowed set.
     * @dev Restricted to addresses with `STRATEGY_MANAGER`.
     * @param _strategy Strategy vault address.
     * @param _allowed Whether the strategy should be allowed.
     */
    function allowStrategy(
        address _strategy,
        bool _allowed
    ) external onlyRole(STRATEGY_MANAGER) {
        StrategyManagerStorage storage $ = _getStrategyManagerStorage();
        if (_allowed) {
            if (!$.allowedStrategies.add(_strategy))
                revert Errors.StrategyAlreadyAllowed();

            IERC20($.underlyingToken).forceApprove(
                _strategy,
                type(uint256).max
            );
        } else {
            if (!$.allowedStrategies.remove(_strategy))
                revert Errors.StrategyNotAllowed();

            if (IERC4626(_strategy).balanceOf(address(this)) > 0)
                revert Errors.StrategyHasBalance();

            IERC20($.underlyingToken).forceApprove(_strategy, 0);
        }
        emit StrategyAllowed(_strategy, _allowed);
    }

    /**
     * @notice Quotes the native fee required to report a delta to the accounting receiver.
     * @return nativeFee Estimated native fee for the message.
     */
    function quoteReport() external view returns (uint256 nativeFee) {
        StrategyManagerStorage storage $ = _getStrategyManagerStorage();

        uint32 localEid = $.localEid;
        uint32 remoteEid = $.accountingReceiverEid;
        bytes calldata options = msg.data[0:0];

        if (localEid == remoteEid) {
            nativeFee = 0;
        } else {
            DeltaMessage memory message;
            nativeFee = _quote(
                remoteEid,
                abi.encode(message),
                combineOptions(remoteEid, REPORT_DELTA, options),
                false
            ).nativeFee;
        }
    }

    /**
     * @notice Computes and reports the change in underlying assets for a strategy.
     * @param _strategy Strategy vault address.
     */
    function reportDelta(
        address _strategy
    )
        external
        payable
        onlyAllowedStrategy(_strategy)
        whenFactoryNotPaused
        onlyRole(REPORTING_MANAGER)
        returns (DeltaMessage memory message, MessagingReceipt memory receipt)
    {
        StrategyManagerStorage storage $ = _getStrategyManagerStorage();
        uint32 remoteEid = $.accountingReceiverEid;

        uint256 totalStrategyShares = IERC4626(_strategy).balanceOf(
            address(this)
        );
        int256 underlyingAmountNew = SafeCast.toInt256(
            IERC4626(_strategy).convertToAssets(totalStrategyShares)
        );

        int256 underlyingAmountOld = $.underlyingByStrategy[_strategy];

        if (_removeDust(underlyingAmountNew) != underlyingAmountOld) {
            uint64 delta;
            if (underlyingAmountNew > underlyingAmountOld) {
                delta = _toSD(
                    SafeCast.toUint256(
                        underlyingAmountNew - underlyingAmountOld
                    )
                );
                message.mint = true;
                // this allows to account for dust after sd conversion
                $.underlyingByStrategy[_strategy] =
                    underlyingAmountOld +
                    SafeCast.toInt256(delta * $.decimalConversionRate); // convert back to LD
            } else {
                delta = _toSD(
                    SafeCast.toUint256(
                        underlyingAmountOld - underlyingAmountNew
                    )
                );
                message.mint = false;
                // this allows to account for dust after sd conversion
                $.underlyingByStrategy[_strategy] =
                    underlyingAmountOld -
                    SafeCast.toInt256(delta * $.decimalConversionRate); // convert back to LD
            }

            message.delta = delta;

            if ($.localEid == remoteEid) {
                if (msg.value > 0) revert Errors.MsgValueNotZero();
                _reportLocal(
                    _strategy,
                    $.accountingReceiver.bytes32ToAddress(),
                    message
                );
            } else {
                receipt = _reportCrossChain(_strategy, remoteEid, message);
            }
        }
    }

    /**
     * @notice Reports a delta to the local accounting receiver.
     * @param _strategy Strategy vault address.
     * @param _accountingReceiver Accounting receiver contract address.
     * @param _message Report payload describing the delta.
     */
    function _reportLocal(
        address _strategy,
        address _accountingReceiver,
        DeltaMessage memory _message
    ) internal {
        IAccountingReceiver(_accountingReceiver).updateAccountingLocal(
            _message
        );

        emit DeltaReported(
            _strategy,
            bytes32(0), // Zero bytes32 represent local reporting
            _message.delta,
            _message.mint,
            block.timestamp
        );
    }

    /**
     * @notice Sends a cross-chain delta report to the accounting receiver.
     * @param _strategy Strategy vault address.
     * @param _accountingReceiverEid LayerZero endpoint id for the accounting receiver chain.
     * @param _message Report payload describing the delta.
     */
    function _reportCrossChain(
        address _strategy,
        uint32 _accountingReceiverEid,
        DeltaMessage memory _message
    ) internal returns (MessagingReceipt memory receipt) {
        bytes calldata options = msg.data[0:0];
        receipt = _lzSend(
            _accountingReceiverEid,
            abi.encode(_message),
            combineOptions(_accountingReceiverEid, REPORT_DELTA, options),
            MessagingFee(msg.value, 0),
            address(msg.sender)
        );

        emit DeltaReported(
            _strategy,
            receipt.guid,
            _message.delta,
            _message.mint,
            block.timestamp
        );
    }

    /**
     * @notice Converts local-decimal amounts to shared decimals.
     * @param _amountLD Amount expressed in local decimals.
     * @return Amount expressed in shared decimals.
     */
    function _toSD(uint256 _amountLD) internal view returns (uint64) {
        StrategyManagerStorage storage $ = _getStrategyManagerStorage();
        uint256 _amountSD = _amountLD / $.decimalConversionRate;
        // If there is an overflow we report the maximum possible value,
        // since we only advance by delta * decimalConversionRate, so
        // the next reportDelta call will pick up the remainder.
        if (_amountSD > type(uint64).max) return type(uint64).max;
        return SafeCast.toUint64(_amountSD);
    }

    function _removeDust(
        int256 _amountLD
    ) internal view virtual returns (int256 amountLD) {
        int256 _decimalConversionRate = int256(
            _getStrategyManagerStorage().decimalConversionRate
        );
        amountLD =
            (_amountLD / _decimalConversionRate) * _decimalConversionRate;
    }

    /**
     * @notice Deposits underlying tokens into a strategy.
     * @dev Restricted to addresses with `ALLOCATION_MANAGER`.
     * @param _strategy Strategy vault address.
     * @param _amount Token amount deposited in local decimals.
     * @param _minSharesAmount Minimum acceptable amount of strategy shares.
     * @return sharesReceived Amount of strategy shares minted.
     */
    function deployFunds(
        address _strategy,
        uint256 _amount,
        uint256 _minSharesAmount
    )
        public
        onlyAllowedStrategy(_strategy)
        onlyRole(ALLOCATION_MANAGER)
        whenFactoryNotPaused
        returns (uint256)
    {
        StrategyManagerStorage storage $ = _getStrategyManagerStorage();
        $.underlyingByStrategy[_strategy] += SafeCast.toInt256(_amount);

        uint256 sharesReceived = IERC4626(_strategy).deposit(
            _amount,
            address(this)
        );

        if (sharesReceived < _minSharesAmount)
            revert Errors.MinShareAmountNotMet();

        emit DeployedFunds(_strategy, _amount);
        return sharesReceived;
    }

    /**
     * @notice Withdraws underlying tokens from a strategy.
     * @dev Restricted to addresses with `ALLOCATION_MANAGER`.
     * @param _strategy Strategy vault address.
     * @param _sharesAmount Amount of strategy shares to redeem.
     * @param _minUnderlyingAmount Minimum acceptable amount of underlying tokens.
     * @return underlyingReceived Amount of underlying tokens redeemed.
     */
    function freeFunds(
        address _strategy,
        uint256 _sharesAmount,
        uint256 _minUnderlyingAmount
    )
        public
        onlyAllowedStrategy(_strategy)
        onlyRole(ALLOCATION_MANAGER)
        whenFactoryNotPaused
        returns (uint256)
    {
        uint256 underlyingReceived = IERC4626(_strategy).redeem(
            _sharesAmount,
            address(this),
            address(this)
        );

        if (underlyingReceived < _minUnderlyingAmount)
            revert Errors.MinUnderlyingAmountNotMet();

        StrategyManagerStorage storage $ = _getStrategyManagerStorage();
        $.underlyingByStrategy[_strategy] -= SafeCast.toInt256(
            underlyingReceived
        );

        emit FreedFunds(_strategy, underlyingReceived);
        return underlyingReceived;
    }

    /**
     * @notice Returns the set of allowed strategies.
     * @return strategies List of strategy addresses.
     */
    function getStrategies()
        external
        view
        returns (address[] memory strategies)
    {
        StrategyManagerStorage storage $ = _getStrategyManagerStorage();
        strategies = $.allowedStrategies.values();
    }

    function getUnderlyingByStrategy(
        address _strategy
    ) external view returns (int256) {
        return _getStrategyManagerStorage().underlyingByStrategy[_strategy];
    }

    function _lzReceive(
        Origin calldata /*_origin*/,
        bytes32 /*_guid*/,
        bytes calldata /*_message*/,
        address /*_executor*/,
        bytes calldata /*_extraData*/
    ) internal pure override {
        revert Errors.FunctionDisabled();
    }
}
