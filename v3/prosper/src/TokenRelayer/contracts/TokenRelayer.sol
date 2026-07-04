// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { MessagingFee, Origin, ILayerZeroEndpointV2 } from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";
import { IOAppCore } from "@layerzerolabs/oapp-evm/contracts/oapp/interfaces/IOAppCore.sol";
import { OptionsBuilder } from "@layerzerolabs/oapp-evm/contracts/oapp/libs/OptionsBuilder.sol";

import { IERC20 } from "@openzeppelin/contracts/interfaces/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { ERC20Upgradeable } from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";

import { MessageCodec } from "./lib/MessageCodec.sol";
import { TokenRelayerStorage as Storage } from "./storage/TokenRelayerStorage.sol";
import { IMessageRelayer } from "./interfaces/IMessageRelayer.sol";
import { ITokenRelayer } from "./interfaces/ITokenRelayer.sol";

/// @title TokenRelayer
/// @notice contract containing logic for bridging tokens between chains
contract TokenRelayer is
    ERC20Upgradeable,
    UUPSUpgradeable,
    PausableUpgradeable,
    AccessControlUpgradeable,
    ITokenRelayer
{
    using SafeERC20 for IERC20;
    using MessageCodec for bytes;
    using OptionsBuilder for bytes;

    /// @dev role which transfers liquidity
    bytes32 public constant MESSAGE_RELAYER_ROLE =
        keccak256("MESSAGE_RELAYER_ROLE");

    /// @dev role which can upgrade and provide liquidity to the contract
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

    /// @dev basis points used in percentage calculations
    uint128 public constant BASIS_POINTS = 10000;

    /// @dev minimum gas limit
    uint128 public constant MIN_GAS_LIMIT = 20_000;

    /// @dev maximum gas limit
    uint128 public constant MAX_GAS_LIMIT = 1_000_000;

    /// @dev address of the bridge token
    address public immutable BRIDGE_TOKEN;

    /// @dev destination chain id
    uint32 public immutable DST_EID;

    constructor(address bridgeToken, uint32 dstEid) {
        if (bridgeToken == address(0)) {
            revert Constructor__InvalidBridgeToken();
        }
        _disableInitializers();
        BRIDGE_TOKEN = bridgeToken;
        DST_EID = dstEid;
    }

    /* solhint-disable no-empty-blocks */
    /// @inheritdoc UUPSUpgradeable
    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyRole(MANAGER_ROLE) {}

    /// @inheritdoc ITokenRelayer
    function __TokenRelayer_init(address admin) external initializer {
        if (admin == address(0)) {
            revert Initializer__ZeroAddress();
        }
        __UUPSUpgradeable_init();
        __AccessControl_init();

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _pause();
    }

    /// @inheritdoc ITokenRelayer
    function addLiquidity(
        uint256 amount
    ) external payable onlyRole(MANAGER_ROLE) whenNotPaused {
        if (amount == 0) {
            revert AddLiquidity__ZeroAmount();
        }

        Storage.Layout storage $ = Storage.layout();

        (
            bytes memory message,
            bytes memory options,
            MessagingFee memory fee
        ) = _composeActionData(
                _msgSender(),
                amount,
                IERC20(BRIDGE_TOKEN).balanceOf(address(this)) + amount,
                $.expectedAddLiquidityGas,
                Action.AddLiquidity
            );

        IERC20(BRIDGE_TOKEN).safeTransferFrom(
            _msgSender(),
            address(this),
            amount
        );

        IMessageRelayer($.messageRelayer).sendMessage{ value: msg.value }(
            DST_EID,
            message,
            options,
            fee,
            _msgSender()
        );

        emit LiquidityAdded(amount);
    }

    /// @inheritdoc ITokenRelayer
    function bridgeTokens(uint256 amount) external payable whenNotPaused {
        if (amount == 0) {
            revert BridgeTokens__ZeroAmount();
        }

        Storage.Layout storage $ = Storage.layout();

        if (amount > $.optimisticDstLiquidity) {
            revert BridgeTokens__InsufficientDstLiquidity();
        }

        (
            bytes memory message,
            bytes memory options,
            MessagingFee memory fee
        ) = _composeActionData(
                _msgSender(),
                amount,
                IERC20(BRIDGE_TOKEN).balanceOf(address(this)) + amount,
                $.expectedBridgeTokenGas,
                Action.BridgeTokens
            );

        IERC20(BRIDGE_TOKEN).safeTransferFrom(
            _msgSender(),
            address(this),
            amount
        );

        $.optimisticDstLiquidity -= amount;

        IMessageRelayer($.messageRelayer).sendMessage{ value: msg.value }(
            DST_EID,
            message,
            options,
            fee,
            _msgSender()
        );

        emit TokensBridged(amount);
    }

    /// @inheritdoc ITokenRelayer
    function burnMessage(
        address sender,
        uint64 nonce,
        bytes32 payloadHash
    ) external onlyRole(MANAGER_ROLE) whenNotPaused {
        Storage.Layout storage $ = Storage.layout();

        bytes32 senderBytes32 = _addressToBytes32(sender);

        IOAppCore($.messageRelayer).endpoint().burn(
            $.messageRelayer,
            DST_EID,
            senderBytes32,
            nonce,
            payloadHash
        );
    }

    /// @inheritdoc ITokenRelayer
    function clearMessage(
        Origin calldata origin,
        bytes32 guid,
        bytes calldata message
    ) external onlyRole(MANAGER_ROLE) {
        Storage.Layout storage $ = Storage.layout();

        IOAppCore($.messageRelayer).endpoint().clear(
            $.messageRelayer,
            origin,
            guid,
            message
        );
    }

    /// @inheritdoc ITokenRelayer
    function lzReceive(
        Origin calldata origin,
        address receiver,
        bytes32 guid,
        bytes calldata message,
        bytes calldata extraData
    ) external onlyRole(MANAGER_ROLE) {
        Storage.Layout storage $ = Storage.layout();

        IOAppCore($.messageRelayer).endpoint().lzReceive(
            origin,
            receiver,
            guid,
            message,
            extraData
        );

        emit MessageTriggered(origin, receiver, guid, message);
    }

    /// @inheritdoc ITokenRelayer
    function pause() external onlyRole(MANAGER_ROLE) whenNotPaused {
        _pause();
    }

    /// @inheritdoc ITokenRelayer
    function receiveMessage(
        uint64 nonce,
        address account,
        uint256 amount,
        uint256 srcLiquidity,
        Action action
    ) external onlyRole(MESSAGE_RELAYER_ROLE) {
        Storage.Layout storage $ = Storage.layout();

        ++$.nonce;
        if ($.nonce != nonce) {
            revert ReceiveMessage__DisorderedNonce();
        }

        if (action == Action.BridgeTokens) {
            $.optimisticDstLiquidity += amount;
            _credit(account, amount);
        } else if (action == Action.AddLiquidity) {
            $.optimisticDstLiquidity += amount;
        } else {
            $.optimisticDstLiquidity -= amount;
        }

        $.latestDstLiquidity = srcLiquidity;
    }

    /// @inheritdoc ITokenRelayer
    function removeLiquidity(
        uint256 amount
    ) external payable onlyRole(MANAGER_ROLE) whenPaused {
        if (amount == 0) {
            revert RemoveLiquidity__ZeroAmount();
        }

        if (IERC20(BRIDGE_TOKEN).balanceOf(address(this)) < amount) {
            revert RemoveLiquidity__InsufficientLiquidity();
        }

        Storage.Layout storage $ = Storage.layout();

        (
            bytes memory message,
            bytes memory options,
            MessagingFee memory fee
        ) = _composeActionData(
                _msgSender(),
                amount,
                IERC20(BRIDGE_TOKEN).balanceOf(address(this)) - amount,
                $.expectedRemoveLiquidityGas,
                Action.RemoveLiquidity
            );

        IERC20(BRIDGE_TOKEN).safeTransfer(_msgSender(), amount);

        IMessageRelayer($.messageRelayer).sendMessage{ value: msg.value }(
            DST_EID,
            message,
            options,
            fee,
            _msgSender()
        );

        emit LiquidityRemoved(amount);
    }

    /// @inheritdoc ITokenRelayer
    function retireMessageRelayer() external onlyRole(MANAGER_ROLE) whenPaused {
        Storage.Layout storage $ = Storage.layout();

        IMessageRelayer($.messageRelayer).retire();

        emit MessageRelayerRetired($.messageRelayer);

        // done to revert all calls made to after retiring a MessageRelayer
        // without having set a new one
        delete $.messageRelayer;
    }

    /// @inheritdoc ITokenRelayer
    function rollbackOptimisticDstLiquidity(
        uint256 amount
    ) external onlyRole(MANAGER_ROLE) {
        Storage.Layout storage $ = Storage.layout();

        $.optimisticDstLiquidity += amount;

        emit OptimisticLiquidityRolledBack($.optimisticDstLiquidity);
    }

    /// @inheritdoc ITokenRelayer
    function setDelegate(address delegate) external onlyRole(MANAGER_ROLE) {
        if (delegate == address(0)) {
            revert SetDelegate__ZeroAddress();
        }

        ILayerZeroEndpointV2(Storage.layout().messageRelayer).setDelegate(
            delegate
        );
    }

    /// @inheritdoc ITokenRelayer
    function setExpectedAddLiquidityGas(
        uint128 expectedAddLiquidityGas
    ) external onlyRole(MANAGER_ROLE) {
        _enforceGasLimits(expectedAddLiquidityGas);

        Storage.layout().expectedAddLiquidityGas = expectedAddLiquidityGas;

        emit ExpectedAddLiquidityGasSet(expectedAddLiquidityGas);
    }

    /// @inheritdoc ITokenRelayer
    function setExpectedBridgeTokenGas(
        uint128 expectedBridgeTokenGas
    ) external onlyRole(MANAGER_ROLE) {
        _enforceGasLimits(expectedBridgeTokenGas);

        Storage.layout().expectedBridgeTokenGas = expectedBridgeTokenGas;

        emit ExpectedBridgeTokenGasSet(expectedBridgeTokenGas);
    }

    /// @inheritdoc ITokenRelayer
    function setExpectedRemoveLiquidityGas(
        uint128 expectedRemoveLiquidityGas
    ) external onlyRole(MANAGER_ROLE) {
        _enforceGasLimits(expectedRemoveLiquidityGas);

        Storage
            .layout()
            .expectedRemoveLiquidityGas = expectedRemoveLiquidityGas;

        emit ExpectedRemoveLiquidityGasSet(expectedRemoveLiquidityGas);
    }

    /// @inheritdoc ITokenRelayer
    function setFeeBufferBP(
        uint128 feeBufferBP
    ) external onlyRole(MANAGER_ROLE) {
        if (feeBufferBP > BASIS_POINTS) {
            revert SetFeeBufferBP__BasisExceeded();
        }

        Storage.layout().feeBufferBP = feeBufferBP;

        emit FeeBufferBPSet(feeBufferBP);
    }

    /// @inheritdoc ITokenRelayer
    function setMessageRelayer(
        address messageRelayer
    ) external onlyRole(MANAGER_ROLE) {
        Storage.layout().messageRelayer = messageRelayer;

        emit MessageRelayerSet(messageRelayer);
    }

    /// @inheritdoc ITokenRelayer
    function setPeer(
        uint32 dstEid,
        address dstMessageRelayer
    ) external onlyRole(MANAGER_ROLE) {
        if (dstMessageRelayer == address(0)) {
            revert SetPeer__ZeroAddress();
        }

        Storage.Layout storage $ = Storage.layout();

        bytes32 dstPath = _addressToBytes32(dstMessageRelayer);

        IMessageRelayer($.messageRelayer).setPeer(dstEid, dstPath);
    }

    /// @inheritdoc ITokenRelayer
    function skipMessage(
        uint64 nonce,
        address sender
    ) external onlyRole(MANAGER_ROLE) {
        Storage.Layout storage $ = Storage.layout();

        bytes32 senderBytes32 = _addressToBytes32(sender);

        IOAppCore($.messageRelayer).endpoint().skip(
            $.messageRelayer,
            DST_EID,
            senderBytes32,
            nonce
        );
    }

    /// @inheritdoc ITokenRelayer
    function transferOwnership(
        address newOwner
    ) external onlyRole(MANAGER_ROLE) {
        if (newOwner == address(0)) {
            revert TransferOwnership__ZeroAddress();
        }

        IMessageRelayer(Storage.layout().messageRelayer).transferOwnership(
            newOwner
        );
    }

    /// @inheritdoc ITokenRelayer
    function unpause() external onlyRole(MANAGER_ROLE) whenPaused {
        _unpause();
    }

    /// @inheritdoc ITokenRelayer
    function unsafeCredit(
        address account,
        uint256 amount
    ) external onlyRole(MANAGER_ROLE) {
        if (account == address(0)) {
            revert UnsafeCredit__ZeroAddress();
        }

        _credit(account, amount);
    }

    /// @inheritdoc ITokenRelayer
    function getAddLiquidityQuote(
        address account,
        uint256 amount
    ) external view returns (uint256 expectedNativeFee) {
        (, , MessagingFee memory fee) = _composeActionData(
            account,
            amount,
            IERC20(BRIDGE_TOKEN).balanceOf(address(this)) + amount,
            Storage.layout().expectedAddLiquidityGas,
            Action.AddLiquidity
        );

        expectedNativeFee = fee.nativeFee;
    }

    /// @inheritdoc ITokenRelayer
    function getBridgeTokenQuote(
        address account,
        uint256 amount
    ) external view returns (uint256 expectedNativeFee) {
        (, , MessagingFee memory fee) = _composeActionData(
            account,
            amount,
            IERC20(BRIDGE_TOKEN).balanceOf(address(this)) + amount,
            Storage.layout().expectedBridgeTokenGas,
            Action.BridgeTokens
        );

        expectedNativeFee = fee.nativeFee;
    }

    /// @inheritdoc ITokenRelayer
    function getExpectedAddLiquidityGas()
        external
        view
        returns (uint128 expectedAddLiquidityGas)
    {
        return Storage.layout().expectedAddLiquidityGas;
    }

    /// @inheritdoc ITokenRelayer
    function getExpectedBridgeTokenGas()
        external
        view
        returns (uint128 expectedBridgeTokenGas)
    {
        return Storage.layout().expectedBridgeTokenGas;
    }

    /// @inheritdoc ITokenRelayer
    function getExpectedRemoveLiquidityGas()
        external
        view
        returns (uint128 expectedRemoveLiquidityGas)
    {
        return Storage.layout().expectedRemoveLiquidityGas;
    }

    /// @inheritdoc ITokenRelayer
    function getFeeBufferBP() external view returns (uint128 feeBufferBP) {
        return Storage.layout().feeBufferBP;
    }

    /// @inheritdoc ITokenRelayer
    function getLatestDstLiquidity()
        external
        view
        returns (uint256 latestDstLiquidity)
    {
        return Storage.layout().latestDstLiquidity;
    }

    /// @inheritdoc ITokenRelayer
    function getMessageRelayer()
        external
        view
        returns (address messageRelayer)
    {
        return Storage.layout().messageRelayer;
    }

    /// @inheritdoc ITokenRelayer
    function getNonce() external view returns (uint64 nonce) {
        nonce = Storage.layout().nonce;
    }

    /// @inheritdoc ITokenRelayer
    function getOptimisticDstLiquidity()
        external
        view
        returns (uint256 optimisticDstLiquidity)
    {
        return Storage.layout().optimisticDstLiquidity;
    }

    /// @inheritdoc ITokenRelayer
    function getRemoveLiquidityQuote(
        address account,
        uint256 amount
    ) external view returns (uint256 expectedNativeFee) {
        if (IERC20(BRIDGE_TOKEN).balanceOf(address(this)) < amount) {
            return type(uint256).max;
        }

        (, , MessagingFee memory fee) = _composeActionData(
            account,
            amount,
            IERC20(BRIDGE_TOKEN).balanceOf(address(this)) - amount,
            Storage.layout().expectedRemoveLiquidityGas,
            Action.RemoveLiquidity
        );

        expectedNativeFee = fee.nativeFee;
    }

    /// @notice credits a user with bridge tokens
    /// @param account address of the user receiving the tokens
    /// @param amount quantity of bridge tokens to credit
    function _credit(address account, uint256 amount) internal {
        if (IERC20(BRIDGE_TOKEN).balanceOf(address(this)) < amount) {
            revert Credit__InsufficientBalance();
        }

        IERC20(BRIDGE_TOKEN).safeTransfer(account, amount);

        emit UserCredited(account, amount);
    }

    /// @notice builds the receive and ordered execution options for the `sendMessage` function
    /// @dev the value of expected gas is taken from the most expensive pathway of execution so it should
    /// suffice for all action pathways
    /// @param expectedGasUnits the estimated gas units in wei required to execute the transactions
    /// on both src and dst chains, with a baked in buffer
    /// @return options the constructed options
    function _buildOptions(
        uint128 expectedGasUnits
    ) internal pure returns (bytes memory options) {
        options = OptionsBuilder.newOptions();
        options = options.addExecutorLzReceiveOption(expectedGasUnits, 0);
        options = options.addExecutorOrderedExecutionOption();
    }

    /// @notice composes all the data required to perform a cross chain action
    /// @dev the LZ recommendation for fee calculations:
    /// https://docs.layerzero.network/v2/developers/evm/technical-reference/tx-pricing#gas-amount
    /// @param actor address of action performer
    /// @param amount amount to be bridged -- 0 is indicative of admin action
    /// @param srcLiquidity latest liquidity on the source chain
    /// @param expectedGasUnits the expected gas units for the action being performed
    /// @return message the message to be sent
    /// @return options the options for the MessageRelayer
    /// @return fee gas fee with the buffer applied to native gas fee
    function _composeActionData(
        address actor,
        uint256 amount,
        uint256 srcLiquidity,
        uint128 expectedGasUnits,
        Action action
    )
        internal
        view
        returns (
            bytes memory message,
            bytes memory options,
            MessagingFee memory fee
        )
    {
        Storage.Layout storage $ = Storage.layout();

        message = MessageCodec.encodeMessage(
            actor,
            amount,
            srcLiquidity,
            action
        );

        options = _buildOptions(
            (expectedGasUnits * (BASIS_POINTS + $.feeBufferBP)) / BASIS_POINTS
        );

        fee = IMessageRelayer($.messageRelayer).getQuote(
            DST_EID,
            message,
            options,
            false
        );
    }

    /// @notice converts an address to bytes32
    /// @dev used when setting peer addresses for cross-chain communication
    /// @param dstTokenRelayer the address to convert
    /// @return dstPath the address converted to bytes32
    function _addressToBytes32(
        address dstTokenRelayer
    ) internal pure returns (bytes32 dstPath) {
        dstPath = bytes32(uint256(uint160(dstTokenRelayer)));
    }

    /// @notice enforces gas limits
    /// @param gas The gas limit value to validate
    function _enforceGasLimits(uint128 gas) internal pure {
        if (gas < MIN_GAS_LIMIT || gas > MAX_GAS_LIMIT) {
            revert EnforceGasLimits__OutOfBounds();
        }
    }
}
