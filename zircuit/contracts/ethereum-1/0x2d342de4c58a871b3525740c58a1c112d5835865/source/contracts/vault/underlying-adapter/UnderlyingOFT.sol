// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {
    IERC20Metadata,
    IERC20
} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import {
    SendParam,
    OFTReceipt,
    MessagingReceipt,
    MessagingFee
} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";

import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Initializable } from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";
import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import { Roles } from "../../common/Roles.sol";
import { Errors } from "../../common/Errors.sol";
import { UnderlyingOFTParams } from "../../common/Types.sol";
import { IUnderlyingOFT } from "../../interfaces/IUnderlyingOFT.sol";

import { BridgeGateway } from "./BridgeGateway.sol";
import { OFTUpgradeable } from "../../common/layer-zero/OFTUpgradeable.sol";
import { OFTCoreUpgradeable } from "../../common/layer-zero/OFTCoreUpgradeable.sol";

/**
 * @title UnderlyingOFT
 * @notice Omnichain fungible token that mirrors the underlying asset and services vault flows.
 * @dev Deploy through the factory using {UnderlyingOFTParams}.
 */
contract UnderlyingOFT is
    IUnderlyingOFT,
    Initializable,
    UUPSUpgradeable,
    AccessControlUpgradeable,
    ReentrancyGuard,
    OFTUpgradeable,
    Roles,
    BridgeGateway
{
    /**
     * @notice Storage layout for upgradeable deployments.
     * @param underlyingToken Address of the underlying ERC20 asset.
     * @param vault Vault contract address.
     * @param vaultComposer Vault composer contract address used for cross-chain orchestration.
     * @param accountingReceiver Accounting receiver contract address.
     * @param decimals Cached local token decimals.
     */
    struct UnderlyingOFTStorage {
        IERC20 underlyingToken;
        address vault;
        address vaultComposer;
        address accountingReceiver;
        uint8 decimals;
    }

    // keccak256(abi.encode(uint256(keccak256("zircuit.finance.storage.UnderlyingOFT")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant UNDERLYING_OFT_STORAGE_LOCATION =
        0xd5e260abbaeb14f5e9ac0f2750fdd87bf26f56e1bb861f2376fc4778d84f0900;

    function _getUnderlyingOFTStorage()
        internal
        pure
        returns (UnderlyingOFTStorage storage $)
    {
        assembly {
            $.slot := UNDERLYING_OFT_STORAGE_LOCATION
        }
    }

    /// @notice Initializes the implementation with the given LayerZero endpoint.
    /// @dev `_lzEndpoint` is immutable within the implementation; proxies call {initialize} for state setup.
    /// @param _lzEndpoint The address of the LayerZero endpoint contract.
    constructor(address _lzEndpoint) OFTUpgradeable(_lzEndpoint) {
        _disableInitializers();
    }

    /**
     * @notice Initializes a proxied instance.
     * @param _params Deployment settings. See {UnderlyingOFTParams} for field descriptions.
     */
    function initialize(
        UnderlyingOFTParams calldata _params
    ) public initializer {
        if (_params.sharedDecimals > 6) revert Errors.InvalidSharedDecimals();

        uint8 underlyingDecimals = IERC20Metadata(_params.underlyingToken)
            .decimals();

        __BridgeGateway_init(
            _params.clusterName,
            _params.underlyingSymbol,
            _params.underlyingToken,
            _params.bridgeRouter
        );
        __OFT_init(
            string.concat("z", _params.underlyingSymbol),
            string.concat("z", _params.underlyingSymbol),
            underlyingDecimals,
            _params.sharedDecimals,
            _params.oAppDelegate
        );
        __Ownable_init(_params.oAppOwner);
        __AccessControl_init();
        __FactoryClient_init(msg.sender);
        _grantRole(DEFAULT_ADMIN_ROLE, _params.defaultAdmin);

        UnderlyingOFTStorage storage $ = _getUnderlyingOFTStorage();
        $.vault = _params.vault;
        $.vaultComposer = _params.vaultComposer;
        $.accountingReceiver = _params.accountingReceiver;
        $.underlyingToken = IERC20(_params.underlyingToken);
        $.decimals = underlyingDecimals;
    }

    function decimals() public view override returns (uint8) {
        return _getUnderlyingOFTStorage().decimals;
    }

    /// @inheritdoc OFTCoreUpgradeable
    function send(
        SendParam calldata _sendParam,
        MessagingFee calldata _fee,
        address _refundAddress
    )
        external
        payable
        override
        onlyVaultComposer
        returns (
            MessagingReceipt memory msgReceipt,
            OFTReceipt memory oftReceipt
        )
    {
        return _send(_sendParam, _fee, _refundAddress);
    }

    /// @notice Authorizes UUPS implementation upgrades.
    /// @dev Restricted to addresses with `UPGRADE_MANAGER`.
    /// @param newImplementation Address of the new implementation contract.
    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(UPGRADE_MANAGER) {}

    /// @notice Restricts function access to vault composer only
    /// @dev Reverts with {Errors.CallerNotVaultComposer} if caller is not the vault composer
    modifier onlyVaultComposer() {
        UnderlyingOFTStorage storage $ = _getUnderlyingOFTStorage();
        if (msg.sender != address($.vaultComposer))
            revert Errors.CallerNotVaultComposer();
        _;
    }

    /// @notice Restricts function access to accounting receiver
    /// @dev Reverts with {Errors.CallerNotAccountingReceiver} if caller is neither
    modifier onlyAccountingReceiver() {
        UnderlyingOFTStorage storage $ = _getUnderlyingOFTStorage();
        if (msg.sender != $.accountingReceiver)
            revert Errors.CallerNotAccountingReceiver();
        _;
    }

    /// @notice Mints underlying supply to the vault contract.
    /// @dev Guarded by {onlyAccountingReceiver}. Reverts with {Errors.CallerNotAccountingReceiver}.
    /// @param _amount Token amount to mint in local decimals.
    function mint(uint256 _amount) external onlyAccountingReceiver {
        UnderlyingOFTStorage storage $ = _getUnderlyingOFTStorage();
        _mint($.vault, _amount);
    }

    /// @notice Burns underlying supply from the vault contract.
    /// @dev Guarded by {onlyAccountingReceiver}. Reverts with {Errors.CallerNotAccountingReceiver}.
    /// @param _amount Token amount to burn in local decimals.
    function burn(uint256 _amount) external onlyAccountingReceiver {
        UnderlyingOFTStorage storage $ = _getUnderlyingOFTStorage();
        _burn($.vault, _amount);
    }

    /**
     * @notice Mints OFT shares to the vault composer and pulls matching underlying tokens.
     * @dev Restricted to the vault composer recorded in storage. Uses {SafeERC20.safeTransferFrom}.
     * @param _amount Token amount to deposit in local decimals.
     */
    function deposit(uint256 _amount) external onlyVaultComposer nonReentrant {
        UnderlyingOFTStorage storage $ = _getUnderlyingOFTStorage();
        _mint(msg.sender, _amount);
        SafeERC20.safeTransferFrom(
            $.underlyingToken,
            msg.sender,
            address(this),
            _amount
        );
    }

    /**
     * @notice Burns OFT shares from the vault composer and releases underlying tokens.
     * @dev Restricted to the vault composer recorded in storage. Uses {SafeERC20.safeTransfer}.
     * @param _amount Token amount to withdraw in local decimals.
     */
    function withdraw(uint256 _amount) external onlyVaultComposer nonReentrant {
        UnderlyingOFTStorage storage $ = _getUnderlyingOFTStorage();
        _burn(msg.sender, _amount);
        SafeERC20.safeTransfer($.underlyingToken, msg.sender, _amount);
    }
}
