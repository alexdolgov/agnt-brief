// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {
    SendParam,
    OFTReceipt,
    MessagingReceipt,
    MessagingFee
} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import { OFTComposeMsgCodec } from "@layerzerolabs/oft-evm/contracts/libs/OFTComposeMsgCodec.sol";

import {
    IERC20Metadata,
    IERC20
} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { ERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import { Initializable } from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";
import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import { ERC4626Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";

import { Roles } from "../../common/Roles.sol";
import { Errors } from "../../common/Errors.sol";
import { VaultParams } from "../../common/Types.sol";
import { FactoryClient } from "../../factory/FactoryClient.sol";
import { IVault } from "../../interfaces/IVault.sol";

import { OFTUpgradeable } from "../../common/layer-zero/OFTUpgradeable.sol";
import { OFTCoreUpgradeable } from "../../common/layer-zero/OFTCoreUpgradeable.sol";

/**
 * @title Vault
 * @notice Omnichain ERC4626 vault that issues shares against the underlying OFT.
 * @dev Initialize through the factory using {VaultParams}. Vault and VaultToken represent the same omnichain token
 */
contract Vault is
    IVault,
    Initializable,
    UUPSUpgradeable,
    AccessControlUpgradeable,
    ReentrancyGuard,
    FactoryClient,
    ERC4626Upgradeable,
    OFTUpgradeable,
    Roles
{
    uint8 constant DEFAULT_SHARED_DECIMALS = 6;

    /**
     * @notice Storage layout for upgradeable deployments.
     * @param crossChainTotalSupply Total share supply across all chains; the on-chain total only reflects local shares,
     *        so this value tracks the consolidated amount.
     * @param vaultComposer Vault composer contract address used for cross-chain orchestration.
     */
    struct VaultStorage {
        uint256 crossChainTotalSupply;
        address vaultComposer;
        uint32 localEid;
    }

    modifier onlyVaultComposer() {
        if (_getVaultStorage().vaultComposer != msg.sender)
            revert Errors.CallerNotVaultComposer();
        _;
    }
    // keccak256(abi.encode(uint256(keccak256("zircuit.finance.storage.Vault")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant VAULT_STORAGE_LOCATION =
        0x6aeb924f0a50d745d4f32e67839b2ae193de1bf17354f79c03583f2046345800;

    function _getVaultStorage() internal pure returns (VaultStorage storage $) {
        assembly {
            $.slot := VAULT_STORAGE_LOCATION
        }
    }

    constructor(address _lzEndpoint) OFTUpgradeable(_lzEndpoint) {
        _disableInitializers();
    }

    /**
     * @notice Initializes a proxied instance.
     * @param _params Deployment settings. See {VaultParams} for field descriptions.
     */
    function initialize(VaultParams calldata _params) external initializer {
        __ERC4626_init(IERC20(_params.underlyingOFT));
        __Ownable_init(_params.oAppOwner);
        __OFT_init(
            _params.name,
            _params.symbol,
            decimals(),
            DEFAULT_SHARED_DECIMALS,
            _params.oAppDelegate
        );
        __AccessControl_init();
        __FactoryClient_init(msg.sender);

        VaultStorage storage $ = _getVaultStorage();
        $.vaultComposer = _params.vaultComposer;
        $.localEid = endpoint.eid();
        _grantRole(DEFAULT_ADMIN_ROLE, _params.defaultAdmin);
    }

    function decimals()
        public
        view
        override(ERC20Upgradeable, ERC4626Upgradeable)
        returns (uint8)
    {
        return ERC4626Upgradeable.decimals();
    }

    /// @notice Authorizes UUPS implementation upgrades.
    /// @dev Restricted to addresses with `UPGRADE_MANAGER`.
    /// @param newImplementation Address of the new implementation contract.
    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(UPGRADE_MANAGER) {}

    /**
     * @inheritdoc ERC4626Upgradeable
     * @dev Tracks minted shares in `crossChainTotalSupply`.
     */
    function _deposit(
        address _caller,
        address _receiver,
        uint256 _assets,
        uint256 _shares
    ) internal override {
        VaultStorage storage $ = _getVaultStorage();
        $.crossChainTotalSupply += _shares;
        super._deposit(_caller, _receiver, _assets, _shares);
    }

    /**
     * @inheritdoc ERC4626Upgradeable
     * @dev Decrements `crossChainTotalSupply` when shares are burned.
     */
    function _withdraw(
        address _caller,
        address _receiver,
        address _owner,
        uint256 _assets,
        uint256 _shares
    ) internal override {
        VaultStorage storage $ = _getVaultStorage();
        $.crossChainTotalSupply -= _shares;
        super._withdraw(_caller, _receiver, _owner, _assets, _shares);
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
        nonReentrant
        whenFactoryNotPaused
        returns (
            MessagingReceipt memory msgReceipt,
            OFTReceipt memory oftReceipt
        )
    {
        uint32 localEid = _getVaultStorage().localEid;
        if (_sendParam.dstEid == localEid)
            revert Errors.InvalidSendParameters();
        return _send(_sendParam, _fee, _refundAddress);
    }

    /**
     * @inheritdoc ERC20Upgradeable
     */
    function totalSupply()
        public
        view
        override(ERC20Upgradeable, IERC20)
        returns (uint256)
    {
        return _getVaultStorage().crossChainTotalSupply;
    }

    /**
     * @inheritdoc ERC4626Upgradeable
     */
    function deposit(
        uint256 _assets,
        address _receiver
    ) public override onlyVaultComposer nonReentrant returns (uint256) {
        // Return the number of shares minted by the ERC4626 logic
        return super.deposit(_assets, _receiver);
    }

    /**
     * @inheritdoc ERC4626Upgradeable
     */
    function mint(
        uint256 _shares,
        address _receiver
    ) public override onlyVaultComposer nonReentrant returns (uint256) {
        return super.mint(_shares, _receiver);
    }

    /**
     * @inheritdoc ERC4626Upgradeable
     */
    function withdraw(
        uint256 _assets,
        address _receiver,
        address _owner
    ) public override onlyVaultComposer nonReentrant returns (uint256) {
        return super.withdraw(_assets, _receiver, _owner);
    }

    /**
     * @inheritdoc ERC4626Upgradeable
     */
    function redeem(
        uint256 _shares,
        address _receiver,
        address _owner
    ) public override onlyVaultComposer nonReentrant returns (uint256) {
        return super.redeem(_shares, _receiver, _owner);
    }
}
