// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import { IBridgeRouter } from "../../interfaces/IBridgeRouter.sol";
import { IFactory } from "../../interfaces/IFactory.sol";
import { Roles } from "../../common/Roles.sol";
import { Errors } from "../../common/Errors.sol";
import { FactoryClient } from "../../factory/FactoryClient.sol";
import { ContractType, ProxyInfo } from "../../common/Types.sol";

/**
 * @title BridgeGateway
 * @notice Shared bridge routing logic for underlying asset flows.
 * @dev Child contracts must call {__BridgeGateway_init} with consistent metadata sourced from {UnderlyingOFTParams}, {UnderlyingOFTAdapterParams}.
 */
abstract contract BridgeGateway is
    AccessControlUpgradeable,
    FactoryClient,
    Roles
{
    event BridgedOut(
        bytes32 indexed id,
        uint256 indexed dstChainId,
        string symbol,
        uint256 amount
    );
    event BridgedIn(bytes32 indexed id, uint256 amount);

    /**
     * @notice Storage layout for bridge operations.
     * @param clusterName Cluster identifier shared by contracts in the deployment.
     * @param underlyingSymbol Predefined Symbol of the underlying asset (found in vault.config.ts).
     * @param underlyingToken Address of the underlying ERC20 asset.
     * @param withdrawalNonce Incrementing nonce used when computing bridge transaction ids.
     * @param bridgeRouter Bridge router contract authorized to move funds.
     * @param factory Factory contract used to resolve registered deployments.
     */
    struct BridgeGatewayStorage {
        string clusterName;
        string underlyingSymbol;
        address underlyingToken;
        uint256 withdrawalNonce;
        IBridgeRouter bridgeRouter;
        IFactory factory;
    }

    // keccak256(abi.encode(uint256(keccak256("zircuit.finance.storage.BridgeGateway")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant BRIDGE_GATEWAY_STORAGE_LOCATION =
        0xe948a858a10e36e2240400aabf638efb41bfa7e95a50f227a2e10f8f2e35d200;

    function _getBridgeGatewayStorage()
        internal
        pure
        returns (BridgeGatewayStorage storage $)
    {
        assembly {
            $.slot := BRIDGE_GATEWAY_STORAGE_LOCATION
        }
    }

    /**
     * @notice Initializes bridge metadata for the inheriting contract.
     * @param _clusterName Cluster identifier shared by contracts in the deployment.
     * @param _underlyingSymbol Predefined Symbol of the underlying asset (found in vault.config.ts).
     * @param _underlyingToken Address of the underlying ERC20 asset.
     * @param _bridgeRouter Bridge router contract authorized to move funds.
     */
    function __BridgeGateway_init(
        string calldata _clusterName,
        string calldata _underlyingSymbol,
        address _underlyingToken,
        address _bridgeRouter
    ) public onlyInitializing {
        BridgeGatewayStorage storage $ = _getBridgeGatewayStorage();
        $.clusterName = _clusterName;
        $.underlyingSymbol = _underlyingSymbol;
        $.underlyingToken = _underlyingToken;
        $.bridgeRouter = IBridgeRouter(_bridgeRouter);
        $.factory = IFactory(msg.sender);
    }

    modifier onlyBridgeRouter() {
        BridgeGatewayStorage storage $ = _getBridgeGatewayStorage();
        if (msg.sender != address($.bridgeRouter))
            revert Errors.OnlyBridgeRouterAllowed();
        _;
    }

    function setBridgeRouter(
        address _newBridgeRouter
    ) external onlyRole(BRIDGE_GATEWAY_SETTER) {
        BridgeGatewayStorage storage $ = _getBridgeGatewayStorage();
        $.bridgeRouter = IBridgeRouter(_newBridgeRouter);
    }

    function getBridgeRouter() external view returns (address) {
        BridgeGatewayStorage storage $ = _getBridgeGatewayStorage();
        return address($.bridgeRouter);
    }

    /**
     * @notice Handles bridge router deposits.
     * @param _amount Token amount deposited in local decimals.
     * @param _payload ABI-encoded metadata forwarded by the bridge router.
     */
    function crossChainDeposit(
        uint256 _amount,
        bytes calldata _payload
    ) external virtual onlyBridgeRouter {
        _crossChainDeposit(_amount, _payload);
    }

    /**
     * @notice Internal hook to process a deposit initiated by the bridge router.
     * @param _amount Token amount deposited in local decimals.
     * @param _payload ABI-encoded metadata forwarded by the bridge router.
     */
    function _crossChainDeposit(
        uint256 _amount,
        bytes calldata _payload
    ) internal {
        BridgeGatewayStorage storage $ = _getBridgeGatewayStorage();

        SafeERC20.safeTransferFrom(
            IERC20($.underlyingToken),
            msg.sender,
            address(this),
            _amount
        );

        (bytes32 bridgeTxId, bytes memory extraData) = abi.decode(
            _payload,
            (bytes32, bytes)
        );
        _afterCrossChainDeposit(_amount, bridgeTxId, extraData);

        emit BridgedIn(bridgeTxId, _amount);
    }

    /**
     * @notice Hook executed after funds are deposited via the bridge router.
     * @param _amount Token amount deposited in local decimals.
     * @param _bridgeTxId Unique ID to track every bridge transaction.
     * @param _extraData ABI-encoded metadata forwarded by the bridge router.
     */
    function _afterCrossChainDeposit(
        uint256 _amount,
        bytes32 _bridgeTxId,
        bytes memory _extraData
    ) internal virtual {}

    /**
     * @notice Initiates a bridge withdrawal to another chain.
     * @param _amount Token amount withdrawn in local decimals.
     * @param _destAddress Bytes32-encoded destination address.
     * @param _dstEid LayerZero endpoint id for the destination chain.
     * @param _contractType Enumerated contract type that must handle the withdrawal.
     * @param _extraData ABI-encoded metadata passed by the operator to execute logic in the StrategyManager. (Unused)
     */
    function crossChainWithdraw(
        uint256 _amount,
        bytes32 _destAddress,
        uint32 _dstEid,
        ContractType _contractType,
        bytes calldata _extraData
    ) external virtual onlyRole(BRIDGE_GATEWAY_OPERATOR) whenFactoryNotPaused {
        _crossChainWithdraw(
            _amount,
            _destAddress,
            _dstEid,
            _contractType,
            _extraData
        );
    }

    /**
     * @notice Internal hook that validates metadata and forwards the withdrawal through the bridge router.
     * @param _amount Token amount withdrawn in local decimals.
     * @param _destAddress Bytes32-encoded destination address.
     * @param _dstEid LayerZero endpoint id for the destination chain.
     * @param _contractType Enumerated contract type that must handle the withdrawal.
     * @param _extraData ABI-encoded metadata passed by the operator to execute logic in the StrategyManager. (Unused)
     */
    function _crossChainWithdraw(
        uint256 _amount,
        bytes32 _destAddress,
        uint32 _dstEid,
        ContractType _contractType,
        bytes memory _extraData
    ) internal {
        _validateContractType(_contractType);

        BridgeGatewayStorage storage $ = _getBridgeGatewayStorage();

        (bool status, ProxyInfo memory info) = $.factory.getProxyInfo(
            _contractType,
            _destAddress,
            _dstEid
        );

        if (!status) revert Errors.DestNotRegistered();

        if (
            keccak256(bytes(info.clusterName)) !=
            keccak256(bytes($.clusterName))
        ) revert Errors.DestNotInCluster();

        if (
            keccak256(bytes(info.symbol)) !=
            keccak256(bytes($.underlyingSymbol))
        ) revert Errors.DestDoNotSupportAsset();

        uint256 dstChainId = $.factory.getChainId(_dstEid);

        bytes32 bridgeTxId = _computeBridgeTxId();
        bytes memory payload = abi.encode(bridgeTxId, _extraData);

        SafeERC20.forceApprove(
            IERC20($.underlyingToken),
            address($.bridgeRouter),
            _amount
        );

        $.bridgeRouter.bridge(
            $.underlyingToken,
            _amount,
            dstChainId,
            _destAddress,
            payload
        );

        _afterCrossChainWithdraw(
            _amount,
            _destAddress,
            _dstEid,
            _contractType,
            bridgeTxId,
            _extraData
        );

        emit BridgedOut(bridgeTxId, dstChainId, info.symbol, _amount);
    }

    /**
     * @notice Hook executed after the bridge router is instructed to withdraw funds.
     * @param _amount Token amount withdrawn in local decimals.
     * @param _destAddress Bytes32-encoded destination address.
     * @param _dstEid LayerZero endpoint id for the destination chain.
     * @param _contractType Enumerated contract type that must handle the withdrawal.
     * @param _bridgeTxId Unique ID to track every bridge transaction.
     * @param _extraData ABI-encoded metadata appended to the bridge call decoded from the payload.
     */
    function _afterCrossChainWithdraw(
        uint256 _amount,
        bytes32 _destAddress,
        uint32 _dstEid,
        ContractType _contractType,
        bytes32 _bridgeTxId,
        bytes memory _extraData
    ) internal virtual {}

    /**
     * @notice Ensures that the requested contract type is supported.
     * @param _contractType Enumerated contract type that must handle the withdrawal.
     */
    function _validateContractType(ContractType _contractType) internal pure {
        if (
            _contractType == ContractType.UNDERLYING_OFT_ADAPTER ||
            _contractType == ContractType.UNDERLYING_OFT ||
            _contractType == ContractType.STRATEGY_MANAGER
        ) return;

        revert Errors.InvalidContractType();
    }

    /**
     * @notice Computes a unique identifier for the bridge transaction.
     * @return bridgeTxId Newly generated bridge transaction identifier.
     */
    function _computeBridgeTxId() internal returns (bytes32) {
        BridgeGatewayStorage storage $ = _getBridgeGatewayStorage();
        return
            keccak256(
                abi.encodePacked(
                    address(this),
                    $.withdrawalNonce++,
                    block.chainid
                )
            );
    }
}
