// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {
    SendParam,
    OFTReceipt,
    MessagingReceipt,
    MessagingFee
} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";

import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { Initializable } from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";
import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import { IERC20Permit } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";

import { BridgeGateway } from "./BridgeGateway.sol";
import { OFTCoreUpgradeable } from "../../common/layer-zero/OFTCoreUpgradeable.sol";
import { OFTAdapterUpgradeable } from "../../common/layer-zero/OFTAdapterUpgradeable.sol";

import { Roles } from "../../common/Roles.sol";
import { Errors } from "../../common/Errors.sol";
import { UnderlyingOFTAdapterParams } from "../../common/Types.sol";
import { IUnderlyingOFTAdapter } from "../../interfaces/IUnderlyingOFTAdapter.sol";

/**
 * @title UnderlyingOFTAdapter
 * @notice LayerZero adapter that wraps the underlying asset and routes liquidity to the configured vault composer.
 * @dev Initialize through the factory using {UnderlyingOFTAdapterParams}.
 */
contract UnderlyingOFTAdapter is
    IUnderlyingOFTAdapter,
    Initializable,
    UUPSUpgradeable,
    AccessControlUpgradeable,
    ReentrancyGuard,
    OFTAdapterUpgradeable,
    Roles,
    BridgeGateway
{
    /// @notice Emitted when a referral code is attached to a cross-chain send request.
    /// @param user Vault composer that submitted the send operation.
    /// @param referralCode Bytes32-encoded referral identifier supplied in the request.
    /// @param amount Amount of underlying (in local decimals) forwarded with the referral.
    event ReferralInfo(
        address indexed user,
        bytes32 indexed referralCode,
        uint256 amount
    );

    /**
     * @notice Storage layout for upgradeable deployments.
     * @param vaultComposer Bytes32-encoded vault composer contract address used for cross-chain orchestration.
     * @param vaultComposerEid LayerZero endpoint id for the vault composer chain.
     */
    struct UnderlyingOFTAdapterStorage {
        bytes32 vaultComposer;
        uint32 vaultComposerEid;
    }

    // keccak256(abi.encode(uint256(keccak256("zircuit.finance.storage.UnderlyingOFTAdapter")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant UNDERLYING_OFT_ADAPTER_STORAGE_LOCATION =
        0x4e766ba3471462bbbcc2d2a93b1922e99a88adbc44e04ab94a42c7461cdcd700;

    function _getUnderlyingOFTAdapterStorage()
        internal
        pure
        returns (UnderlyingOFTAdapterStorage storage $)
    {
        assembly {
            $.slot := UNDERLYING_OFT_ADAPTER_STORAGE_LOCATION
        }
    }

    /// @notice Initializes the implementation with the given LayerZero endpoint.
    /// @dev `_lzEndpoint` is immutable within the implementation; proxies call {initialize} for state setup.
    /// @param _lzEndpoint The address of the LayerZero endpoint contract.
    constructor(address _lzEndpoint) OFTAdapterUpgradeable(_lzEndpoint) {
        _disableInitializers();
    }

    /**
     * @notice Initializes a proxied instance.
     * @param _params Deployment settings. See {UnderlyingOFTAdapterParams} for field descriptions.
     */
    function initialize(
        UnderlyingOFTAdapterParams calldata _params
    ) public initializer {
        if (_params.sharedDecimals > 6) revert Errors.InvalidSharedDecimals();

        __BridgeGateway_init(
            _params.clusterName,
            _params.underlyingSymbol,
            _params.underlyingToken,
            _params.bridgeRouter
        );
        __Ownable_init(_params.oAppOwner);
        __OFTAdapter_init(
            _params.underlyingToken,
            _params.sharedDecimals,
            _params.oAppDelegate
        );
        __AccessControl_init();
        __FactoryClient_init(msg.sender);
        _grantRole(DEFAULT_ADMIN_ROLE, _params.defaultAdmin);
        UnderlyingOFTAdapterStorage
            storage $ = _getUnderlyingOFTAdapterStorage();
        $.vaultComposer = _params.vaultComposer;
        $.vaultComposerEid = _params.vaultComposerEid;
    }

    /// @inheritdoc OFTCoreUpgradeable
    /// @dev Validates that the destination matches the configured vault composer metadata.
    function send(
        SendParam calldata _sendParam,
        MessagingFee calldata _fee,
        address _refundAddress
    )
        public
        payable
        override
        nonReentrant
        whenFactoryNotPaused
        returns (
            MessagingReceipt memory msgReceipt,
            OFTReceipt memory oftReceipt
        )
    {
        UnderlyingOFTAdapterStorage
            storage $ = _getUnderlyingOFTAdapterStorage();
        if (
            _sendParam.dstEid != $.vaultComposerEid ||
            _sendParam.to != $.vaultComposer ||
            _sendParam.composeMsg.length == 0
        ) revert Errors.InvalidSendParameters();

        (msgReceipt, oftReceipt) = _send(_sendParam, _fee, _refundAddress);

        if (_sendParam.oftCmd.length == 32) {
            emit ReferralInfo(
                msg.sender,
                abi.decode(_sendParam.oftCmd, (bytes32)),
                oftReceipt.amountSentLD
            );
        }
    }

    function sendWithPermit(
        SendParam calldata _sendParam,
        MessagingFee calldata _fee,
        address _refundAddress,
        uint256 _deadline,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    )
        external
        payable
        returns (
            MessagingReceipt memory msgReceipt,
            OFTReceipt memory oftReceipt
        )
    {
        try
            IERC20Permit(token()).permit(
                msg.sender,
                address(this),
                _sendParam.amountLD,
                _deadline,
                _v,
                _r,
                _s
            )
        {} catch {}
        return send(_sendParam, _fee, _refundAddress);
    }

    /// @notice Authorizes UUPS implementation upgrades.
    /// @dev Restricted to addresses with `UPGRADE_MANAGER`.
    /// @param newImplementation Address of the new implementation contract.
    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(UPGRADE_MANAGER) {}

    /**
     * @notice Returns the configured vault composer address and EID
     * @dev Used by EIP-7702 templates to validate adapter configuration
     * @return vaultComposer Bytes32-encoded vault composer address
     * @return vaultComposerEid LayerZero endpoint ID for the vault composer
     */
    function getVaultComposerConfig()
        external
        view
        returns (bytes32 vaultComposer, uint32 vaultComposerEid)
    {
        UnderlyingOFTAdapterStorage
            storage $ = _getUnderlyingOFTAdapterStorage();
        return ($.vaultComposer, $.vaultComposerEid);
    }
}
