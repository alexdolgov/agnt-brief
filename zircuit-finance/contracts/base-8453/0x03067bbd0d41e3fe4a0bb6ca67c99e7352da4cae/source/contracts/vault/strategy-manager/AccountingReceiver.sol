// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { Initializable } from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";
import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import {
    Origin,
    OAppUpgradeable
} from "@layerzerolabs/oapp-evm-upgradeable/contracts/oapp/OAppUpgradeable.sol";
import { OFTComposeMsgCodec } from "@layerzerolabs/oft-evm/contracts/libs/OFTComposeMsgCodec.sol";
import { OAppOptionsType3Upgradeable } from "@layerzerolabs/oapp-evm-upgradeable/contracts/oapp/libs/OAppOptionsType3Upgradeable.sol";

import { Roles } from "../../common/Roles.sol";
import { Errors } from "../../common/Errors.sol";
import { FactoryClient } from "../../factory/FactoryClient.sol";
import {
    AccountingReceiverParams,
    DeltaMessage,
    ContractType
} from "../../common/Types.sol";
import { IUnderlyingOFT } from "../../interfaces/IUnderlyingOFT.sol";
import { IFactory } from "../../interfaces/IFactory.sol";

/**
 * @title AccountingReceiver
 * @notice OApp endpoint that accepts strategy delta reports and mirrors supply on the underlying OFT.
 * @dev Initialize through the factory using {AccountingReceiverParams} to align ownership and LayerZero metadata.
 */
contract AccountingReceiver is
    Initializable,
    UUPSUpgradeable,
    AccessControlUpgradeable,
    OAppUpgradeable,
    OAppOptionsType3Upgradeable,
    FactoryClient,
    Roles
{
    using OFTComposeMsgCodec for bytes32;

    event DeltaReceived(
        bytes32 indexed guid,
        uint256 delta,
        bool isMint,
        uint256 amountLD
    );

    /**
     * @notice Storage layout for upgradeable deployments.
     * @param underlyingOFT Underlying OFT contract used as lockbox for the underlying assets.
     * @param decimalConversionRate Conversion factor between shared decimals and local decimals.
     * @param processedGuid Replay protection map for processed LayerZero messages.
     */
    struct AccountingReceiverStorage {
        address underlyingOFT;
        uint256 decimalConversionRate;
        mapping(bytes32 => bool) processedGuid;
    }

    // keccak256(abi.encode(uint256(keccak256("zircuit.storage.AccountingReceiver")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ACCOUNTING_RECEIVER_STORAGE_LOCATION =
        0x0a59346b4263bf167da6b54c661b0c1738408553996dca1ef40c4dab71da0a00;

    function _getAccountingReceiverStorage()
        internal
        pure
        returns (AccountingReceiverStorage storage $)
    {
        assembly {
            $.slot := ACCOUNTING_RECEIVER_STORAGE_LOCATION
        }
    }

    /// @notice Initializes the implementation with the given LayerZero endpoint.
    /// @dev `_lzEndpoint` is set as immutable in OAppCore; proxies call {initialize} for state setup.
    /// @param _lzEndpoint The address of the LayerZero endpoint contract.
    constructor(address _lzEndpoint) OAppUpgradeable(_lzEndpoint) {
        _disableInitializers();
    }

    /**
     * @notice Initializes a proxied instance.
     * @param _params Deployment settings. See {AccountingReceiverParams} for field descriptions.
     */
    function initialize(
        AccountingReceiverParams calldata _params
    ) external initializer {
        if (_params.sharedDecimals > 6) revert Errors.InvalidSharedDecimals();

        __AccessControl_init();
        __OApp_init(_params.oAppDelegate);
        __Ownable_init(_params.oAppOwner);
        __OAppOptionsType3_init();
        __FactoryClient_init(
            msg.sender,
            _params.clusterName,
            _params.underlyingSymbol,
            endpoint.eid()
        );
        _grantRole(DEFAULT_ADMIN_ROLE, _params.defaultAdmin);

        uint8 localDecimals = IERC20Metadata(_params.underlyingToken)
            .decimals();
        if (localDecimals < _params.sharedDecimals)
            revert Errors.InvalidLocalDecimals();

        AccountingReceiverStorage storage $ = _getAccountingReceiverStorage();
        $.underlyingOFT = _params.underlyingOFT;
        $.decimalConversionRate =
            10 ** (localDecimals - _params.sharedDecimals);
    }

    /// @notice Authorizes UUPS implementation upgrades.
    /// @dev Restricted to addresses with `UPGRADE_MANAGER`.
    /// @param newImplementation Address of the new implementation contract.
    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(UPGRADE_MANAGER) {}

    /**
     * @notice Updates accounting locally when StrategyManager operates on the same chain.
     * @param _message Report payload describing the delta.
     */
    function updateAccountingLocal(
        DeltaMessage memory _message
    ) external onlyStrategyManager {
        _executeMintBurn(0, _message);
    }

    /**
     * @notice Handles cross-chain accounting reports and enforces GUID replay protection.
     * @param _guid LayerZero GUID supplied with the message.
     * @param _message ABI-encoded {DeltaMessage}.
     */
    function _lzReceive(
        Origin calldata /*_origin*/,
        bytes32 _guid,
        bytes calldata _message,
        address /*_executor*/,
        bytes calldata /*_extraData*/
    ) internal override {
        AccountingReceiverStorage storage $ = _getAccountingReceiverStorage();
        // Check GUID replay protection for cross-chain messages
        if ($.processedGuid[_guid]) revert Errors.GuidAlreadyProcessed(_guid);
        $.processedGuid[_guid] = true;
        DeltaMessage memory message = abi.decode(_message, (DeltaMessage));
        _executeMintBurn(_guid, message);
    }

    /**
     * @notice Applies mint or burn operations on the underlying OFT.
     * @param _guid LayerZero message id.
     * @param _message Report payload describing the delta.
     */
    function _executeMintBurn(
        bytes32 _guid,
        DeltaMessage memory _message
    ) internal whenFactoryNotPaused {
        AccountingReceiverStorage storage $ = _getAccountingReceiverStorage();

        uint256 amountLD = _toLD(_message.delta);
        if (_message.mint) {
            IUnderlyingOFT($.underlyingOFT).mint(amountLD);
        } else {
            IUnderlyingOFT($.underlyingOFT).burn(amountLD);
        }

        emit DeltaReceived(_guid, _message.delta, _message.mint, amountLD);
    }

    /**
     * @notice Converts shared-decimal amounts to local decimals.
     * @param _amountSD Amount expressed in shared decimals.
     * @return Amount expressed in local decimals.
     */
    function _toLD(uint64 _amountSD) internal view returns (uint256) {
        AccountingReceiverStorage storage $ = _getAccountingReceiverStorage();
        return _amountSD * $.decimalConversionRate;
    }
}
