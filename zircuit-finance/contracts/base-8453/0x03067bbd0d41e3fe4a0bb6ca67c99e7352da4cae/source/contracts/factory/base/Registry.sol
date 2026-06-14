// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import { Errors } from "../../common/Errors.sol";
import { Roles } from "../../common/Roles.sol";
import { ContractType, ProxyInfo } from "../../common/Types.sol";
import { IFactory } from "../../interfaces/IFactory.sol";

/// @title Factory Registry
/// @notice Central configuration hub for vault, oracle, and receipt token deployments.
/// @dev Stores global LayerZero ownership, bridging, exchange-rate updates, and asset metadata used by factories.
abstract contract Registry is IFactory, AccessControl, Roles {
    /// @dev Tracks the implementation contract configured for each logical contract type.
    mapping(ContractType => address) internal implementationOf;

    /// @notice Emitted when an implementation address is updated for a contract type.
    /// @param contractType Contract type whose implementation changed.
    /// @param oldImpl Previously configured implementation address.
    /// @param newImpl Newly configured implementation address.
    event ImplementationUpdated(
        ContractType indexed contractType,
        address indexed oldImpl,
        address indexed newImpl
    );
    bool public paused;
    /// @dev Address installed as `Ownable` owner for every deployed OApp contract.
    address private oAppOwner;
    /// @dev LayerZero delegate allowed to configure LZ endpoints on behalf of the owner.
    address private oAppDelegate;
    /// @dev Account granted the `DEFAULT_ADMIN_ROLE` on all deployments.
    address private admin;
    /// @dev Bridge router contract used by vaults to settle cross-chain withdrawals.
    address private bridgeRouter;

    /// @dev Maps an underlying asset symbol (e.g. "USDC") to its canonical ERC20 address.
    mapping(string => address) private underlyingAssets;
    /// @notice Tracks the on-chain `chainid` associated with each LayerZero endpoint ID.
    mapping(uint32 => uint256) private eidToChainId;

    /// @notice Tracks the LayerZero endpoint ID associated with each chainId.
    mapping(uint256 => uint32) private chainIdToEid;

    /// @notice Minimum native fee required to execute the withdrawal's second hop for a given route.
    /// @dev Used to validate second-hop costs as estimation is no unavailable on the user chain.
    mapping(uint32 => mapping(uint32 => uint256)) private withdrawalMinFee;

    /// @notice Registers the LayerZero OApp owner reused across all OApp initializers.
    /// @param _oAppOwner Address installed as Ownable owner on vault, oracle, and receipt token proxies.
    function setOAppOwner(address _oAppOwner) external onlyRole(SETTER_ROLE) {
        oAppOwner = _oAppOwner;
    }

    /// @notice Registers the OApp delegate responsible for LayerZero endpoint management.
    /// @param _oAppDelegate Delegate address passed into OApp initializers.
    function setOAppDelegate(
        address _oAppDelegate
    ) external onlyRole(SETTER_ROLE) {
        oAppDelegate = _oAppDelegate;
    }

    /// @notice Sets the administrator address that receives `DEFAULT_ADMIN_ROLE` on new deployments.
    /// @param _admin Address entrusted with admin rights for deployed contracts.
    function setAdmin(address _admin) external onlyRole(SETTER_ROLE) {
        admin = _admin;
    }

    /// @notice Registers the bridge router contract used to execute cross-chain withdrawals.
    /// @param _bridgeRouter Router address invoked by vaults during `bridge` operations.
    function setBridgeRouter(
        address _bridgeRouter
    ) external onlyRole(SETTER_ROLE) {
        bridgeRouter = _bridgeRouter;
    }

    /// @notice Associates an underlying asset symbol with its canonical ERC20 address.
    /// @param symbol Symbol used to reference the underlying asset during deployments.
    /// @param asset ERC20 contract address for the underlying on this chain.
    function setUnderlyingAsset(
        string calldata symbol,
        address asset
    ) external onlyRole(SETTER_ROLE) {
        underlyingAssets[symbol] = asset;
    }

    /// @notice Stores the chain identifier referenced by a LayerZero endpoint ID.
    /// @param _eid LayerZero endpoint ID used in cross-chain messaging.
    /// @param _chainId Native `block.chainid` value for that endpoint.
    function setChainId(
        uint32 _eid,
        uint256 _chainId
    ) external onlyRole(SETTER_ROLE) {
        uint256 oldChainId = eidToChainId[_eid];
        if (oldChainId != 0) {
            delete chainIdToEid[oldChainId];
        }
        if (chainIdToEid[_chainId] != 0) revert Errors.ChainIdAlreadyMapped();
        eidToChainId[_eid] = _chainId;
        chainIdToEid[_chainId] = _eid;
    }

    /// @notice Registers the minimum native fee for a withdrawal route.
    /// @param _srcEid Source LayerZero endpoint ID.
    /// @param _dstEid Destination LayerZero endpoint ID.
    /// @param _nativeFee Minimum native fee required.
    function setWithdrawalMinFee(
        uint32 _srcEid,
        uint32 _dstEid,
        uint256 _nativeFee
    ) external onlyRole(SETTER_ROLE) {
        withdrawalMinFee[_srcEid][_dstEid] = _nativeFee;
    }

    /// @notice Stores the implementation address used when deploying a specific contract type.
    /// @dev
    /// - Restricted to accounts with `SETTER_ROLE` propagated from {FactoryRoles}.
    /// - Validates the contract type, non-zero address, and that bytecode exists.
    /// - Emits {ImplementationUpdated} with both the previous and new implementation addresses.
    /// @param _contractType Contract type being configured.
    /// @param _impl Implementation contract address to record.
    function setImplementation(
        ContractType _contractType,
        address _impl
    ) external onlyRole(SETTER_ROLE) {
        _validateContractType(_contractType);
        if (_impl == address(0)) revert Errors.ZeroAddress();
        if (_impl.code.length == 0) revert Errors.ImplNotContract();
        emit ImplementationUpdated(
            _contractType,
            implementationOf[_contractType],
            _impl
        );
        implementationOf[_contractType] = _impl;
    }

    /// @notice Fetches the OApp owner for the deployed contracts.
    /// @return _oAppOwner Address configured as owner for OApp components.
    /// @dev Reverts if the owner has not been configured.
    function getOAppOwner() public view returns (address _oAppOwner) {
        _oAppOwner = oAppOwner;
        if (_oAppOwner == address(0)) revert Errors.UndefinedOAppOwner();
    }

    /// @notice Fetches the OApp delegate used for LayerZero endpoint operations.
    /// @return _oAppDelegate Delegate address supplied to deployed OApps.
    /// @dev Reverts if the delegate has not been configured.
    function getOAppDelegate() public view returns (address _oAppDelegate) {
        _oAppDelegate = oAppDelegate;
        if (_oAppDelegate == address(0)) revert Errors.UndefinedOAppDelegate();
    }

    /// @notice Returns the administrator address granted factory-level `DEFAULT_ADMIN_ROLE` assignments.
    /// @return _admin Admin address injected into new deployments.
    /// @dev Reverts if the admin has not been configured.
    function getAdmin() public view returns (address _admin) {
        _admin = admin;
        if (_admin == address(0)) revert Errors.UndefinedAdmin();
    }

    /// @notice Returns the bridge router contract leveraged during cross-chain withdrawals.
    /// @return _bridgeRouter Router contract expected by deployed vaults.
    /// @dev Reverts if the router has not been configured.
    function getBridgeRouter() public view returns (address _bridgeRouter) {
        _bridgeRouter = bridgeRouter;
        if (_bridgeRouter == address(0)) revert Errors.UndefinedBridgeRouter();
    }

    /// @notice Resolves the ERC20 address for a registered underlying symbol.
    /// @param symbol Symbol of the asset to look up.
    /// @return _underlyingAsset ERC20 address.
    /// @dev Reverts if the asset is not registered.
    function getUnderlyingAsset(
        string calldata symbol
    ) public view returns (address _underlyingAsset) {
        _underlyingAsset = underlyingAssets[symbol];
        if (_underlyingAsset == address(0)) revert Errors.UndefinedUnderlying();
    }

    /// @notice Returns the native chain identifier referenced by LayerZero Eid.
    /// @dev Reverts if the endpoint ID is not registered.
    function getChainId(uint32 _eid) public view returns (uint256 chainId) {
        chainId = eidToChainId[_eid];
        if (chainId == 0) revert Errors.UndefinedEidToChainId();
    }

    /// @notice Returns the LayerZero Eid referenced by chain identifier.
    /// @dev Reverts if the chain ID is not registered.
    function getEid(uint256 _chainId) public view returns (uint32 eid) {
        eid = chainIdToEid[_chainId];
        if (eid == 0) revert Errors.UndefinedChainIdToEid();
    }

    /// @notice Returns the configured minimum native fee for the specified withdrawal route.
    /// @dev Reverts if the fee is not configured for the given source and destination endpoints.
    /// @param _srcEid Source LayerZero endpoint ID.
    /// @param _dstEid Destination LayerZero endpoint ID.
    /// @return nativeFee Minimum native fee required.
    function getWithdrawalMinFee(
        uint32 _srcEid,
        uint32 _dstEid
    ) public view returns (uint256 nativeFee) {
        nativeFee = withdrawalMinFee[_srcEid][_dstEid];
    }

    /// @notice Returns the implementation address configured for a contract type.
    /// @param _contractType Contract type to query.
    /// @return impl implementation Currently stored implementation address (zero if unset).
    function getImplementation(
        ContractType _contractType
    ) public view returns (address impl) {
        _validateContractType(_contractType);
        impl = implementationOf[_contractType];
        if (impl == address(0))
            revert Errors.UndefinedImplementation(_contractType);
    }

    function pause() external onlyRole(PAUSE_MANAGER) {
        paused = true;
    }

    function unpause() external onlyRole(UNPAUSE_MANAGER) {
        paused = false;
    }

    /// @dev Validates that the provided contract type enum value is one of the supported factory types.
    /// @param _contractType Contract type to validate.
    function _validateContractType(ContractType _contractType) internal pure {
        if (uint8(_contractType) >= uint8(ContractType.PLACEHOLDER))
            revert Errors.InvalidContractType();
    }
}
