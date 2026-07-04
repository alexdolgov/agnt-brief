// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import { MessagingFee, Origin } from "@layerzerolabs/lz-evm-protocol-v2/contracts/interfaces/ILayerZeroEndpointV2.sol";

/// @title ITokenRelayer
/// @notice Interface for TokenRelayer contract containing all events, errors and external/public functions
interface ITokenRelayer {
    /// @title Action
    /// @notice enum containing the different types of actions that can be taken on the src chain
    enum Action {
        AddLiquidity,
        RemoveLiquidity,
        BridgeTokens
    }

    /////////////////////////////////
    ////////////  EVENTS  ///////////
    /////////////////////////////////

    /// @notice emitted when the expected gas needed for the add liquidity action is set
    /// @param expectedAddLiquidityGas the expected gas for the add liquidity action
    event ExpectedAddLiquidityGasSet(uint128 expectedAddLiquidityGas);

    /// @notice emitted when the expected gas needed for the bridge token action is set
    /// @param expectedBridgeTokenGas the expected gas for the bridge token action
    event ExpectedBridgeTokenGasSet(uint128 expectedBridgeTokenGas);

    /// @notice emitted when the expected gas needed for the remove liquidity action is set
    /// @param expectedRemoveLiquidityGas the expected gas for the remove liquidity action
    event ExpectedRemoveLiquidityGasSet(uint128 expectedRemoveLiquidityGas);

    /// @notice emitted when the fee buffer is set
    /// @param feeBufferBP the fee buffer in basis points
    event FeeBufferBPSet(uint256 feeBufferBP);

    /// @notice emitted when liquidity is provided to the contract
    /// @param amount amount of bridge tokens provided as liquidity
    event LiquidityAdded(uint256 amount);

    /// @notice emitted when liquidity is removed from the contract
    /// @param amount amount of bridge tokens withdrawn from provided liquidity
    event LiquidityRemoved(uint256 amount);

    /// @notice emitted when the MessageRelayer is retired
    /// @notice retiring a MessageRelayer is permanent
    /// @param messageRelayer the address of the retired MessageRelayer
    event MessageRelayerRetired(address messageRelayer);

    /// @notice emitted when the MessageRelayer is set
    /// @param messageRelayer the address of the MessageRelayer
    event MessageRelayerSet(address messageRelayer);

    /// @notice emitted when a message is triggered
    /// @param origin the origin of the message
    /// @param receiver the receiver of the message
    /// @param guid the guid of the message
    /// @param message the message
    event MessageTriggered(
        Origin origin,
        address receiver,
        bytes32 guid,
        bytes message
    );

    /// @notice emitted when the optimistic dst liquidity is rolled back
    /// @param optimisticDstLiquidity the optimistic dst liquidity
    event OptimisticLiquidityRolledBack(uint256 optimisticDstLiquidity);

    /// @notice emitted when tokens are bridged from src chain to dst chain
    /// @param amount bridged token amount
    event TokensBridged(uint256 amount);

    /// @notice emitted when bridged tokens are credited to a recipient on dst chain
    /// @param account credited address
    /// @param amount tokens credited
    event UserCredited(address account, uint256 amount);

    /////////////////////////////////
    ////////////  ERRORS  ///////////
    /////////////////////////////////

    /// @notice thrown when attempting to add zero liquidity
    error AddLiquidity__ZeroAmount();

    /// @notice thrown when attempting to bridge when there is insufficient liquidity at destination
    error BridgeTokens__InsufficientDstLiquidity();

    /// @notice thrown when attempting to bridge zero tokens
    error BridgeTokens__ZeroAmount();

    /// @notice thrown when passing in zero address for `BRIDGE_TOKEN`
    error Constructor__InvalidBridgeToken();

    /// @notice thrown when there is not enough `BRDIGE_TOKEN` balance to credit a user in the `TokenRelayer`
    error Credit__InsufficientBalance();

    /// @notice thrown when attempting to set an invalid gas limit
    error EnforceGasLimits__OutOfBounds();

    /// @notice thrown when passing in zero address for `admin` in the initializer
    error Initializer__ZeroAddress();

    /// @notice thrown when the contract's token balance is less than the tracked liquidity
    error LiquidityInvariant__BalanceLessThanLiquidity();

    /// @notice thrown when the nonce of the message indicates that the message
    /// is not being executed in the expected order
    error ReceiveMessage__DisorderedNonce();

    /// @notice thrown when attempting to remove more tokens than available
    error RemoveLiquidity__InsufficientLiquidity();

    /// @notice thrown when attempting to remove zero liquidity
    error RemoveLiquidity__ZeroAmount();

    /// @notice thrown when passing in zero address for delegate
    error SetDelegate__ZeroAddress();

    /// @notice thrown when attempting to set a fee buffer larger than basis points
    error SetFeeBufferBP__BasisExceeded();

    /// @notice thrown when passing in zero address for dstMessageRelayer
    error SetPeer__ZeroAddress();

    /// @notice thrown when passing in zero address for newOwner
    error TransferOwnership__ZeroAddress();

    /// @notice thrown when passing in zero address for account
    error UnsafeCredit__ZeroAddress();

    //////////////////////////////////
    //////////// FUNCTIONS ///////////
    //////////////////////////////////

    /// @notice initializes the TokenRelayer contract
    /// @param admin address to receive admin role
    function __TokenRelayer_init(address admin) external;

    /// @notice allows a manager to provide an amount of `BRIDGE_TOKEN` as liquidity
    /// @param amount amount of tokens to add
    function addLiquidity(uint256 amount) external payable;

    /// @notice bridges tokens from src chain to dst chain
    /// @param amount `BRIDGE_TOKEN` amount to bridge
    function bridgeTokens(uint256 amount) external payable;

    /// @notice burns a message from the MessageRelayer
    /// @param sender the sender of the message
    /// @param nonce the nonce of the message
    /// @param payloadHash the payload hash of the message
    function burnMessage(
        address sender,
        uint64 nonce,
        bytes32 payloadHash
    ) external;

    /// @notice clears a message from the MessageRelayer
    /// @param origin the origin of the message
    /// @param guid the guid of the message
    /// @param message the message
    function clearMessage(
        Origin calldata origin,
        bytes32 guid,
        bytes calldata message
    ) external;

    /// @notice sends a message from the srcEndpoint to the srcMessageRelayer
    /// @param origin the origin of the message
    /// @param receiver the receiver of the message
    /// @param guid the guid of the message
    /// @param message the message
    function lzReceive(
        Origin calldata origin,
        address receiver,
        bytes32 guid,
        bytes calldata message,
        bytes calldata
    ) external;

    /// @notice pauses the TokenRelayer
    function pause() external;

    /// @notice receives message from the MessageRelayer
    /// @param nonce the nonce of the message
    /// @param account the sender of the message
    /// @param amount the amount of bridge tokens affected by the action
    /// @param srcLiquidity current total liquidity on the source chain
    /// @param action the type of action taken on the src chain
    function receiveMessage(
        uint64 nonce,
        address account,
        uint256 amount,
        uint256 srcLiquidity,
        Action action
    ) external;

    /// @notice allows a manager to remove liquidity from the contract
    /// @notice it is paramount that `TokenRelayer` contracts on both SRC and DST
    /// chains are paused for at least 10m prior to this function being called,
    /// to prevent DST chain reverts
    /// @param amount `BRIDGE_TOKEN` amount to remove
    function removeLiquidity(uint256 amount) external payable;

    /// @notice retires the current MessageRelayer
    /// @notice retiring a MessageRelayer is permanent
    /// @notice CAUTION: retiring a MessageRelayer may lead to hanging messages
    /// thus should be done only after the TokenRelayer on both the
    /// source and destination chains has been paused
    function retireMessageRelayer() external;

    /// @notice increases the optimistic dst liquidity by the specified amount
    /// @param amount amount of liquidity to increase by
    function rollbackOptimisticDstLiquidity(uint256 amount) external;

    /// @notice sets the delegate for the MessageRelayer
    /// @param delegate delegate address
    function setDelegate(address delegate) external;

    /// @notice sets the expected gas needed for processing the add liquidity action
    /// @param expectedAddLiquidityGas the expected gas for the add liquidity action
    function setExpectedAddLiquidityGas(
        uint128 expectedAddLiquidityGas
    ) external;

    /// @notice sets the expected gas needed for processing the bridge token action
    /// @param expectedBridgeTokenGas the expected gas for the bridge token action
    function setExpectedBridgeTokenGas(uint128 expectedBridgeTokenGas) external;

    /// @notice sets the expected gas needed for processing the remove liquidity action
    /// @param expectedRemoveLiquidityGas the expected gas for the remove liquidity action
    function setExpectedRemoveLiquidityGas(
        uint128 expectedRemoveLiquidityGas
    ) external;

    /// @notice sets the fee buffer in basis points
    /// @param feeBufferBP the fee buffer in basis points
    function setFeeBufferBP(uint128 feeBufferBP) external;

    /// @notice sets the MessageRelayer
    /// @param messageRelayer the address of the MessageRelayer
    function setMessageRelayer(address messageRelayer) external;

    /// @notice sets the destination peer for the MessageRelayer
    /// @param dstEid the destination EID
    /// @param dstMessageRelayer dst MessageRelayer address
    function setPeer(uint32 dstEid, address dstMessageRelayer) external;

    /// @notice skips the latest incoming message
    /// @param nonce the nonce of the message to skip
    /// @param sender the sender of the message to skip
    function skipMessage(uint64 nonce, address sender) external;

    /// @notice transfers ownership of the MessageRelayer
    /// @param newOwner the new owner
    function transferOwnership(address newOwner) external;

    /// @notice unpauses the TokenRelayer
    function unpause() external;

    /// @notice force credits a user to rectify potentially skipped/burned/cleared messages
    /// @notice CAUTION: Reduces available liquidity for incoming transactions which may lead to reversions
    /// @param account the account to credit
    /// @param amount the amount to credit
    function unsafeCredit(address account, uint256 amount) external;

    /// @notice estimates the native fee required for adding liquidity
    /// @param account account to estimate for
    /// @param amount amount of tokens to add as liquidity
    /// @return expectedNativeFee quote for the expected native fee for the add liquidity action
    function getAddLiquidityQuote(
        address account,
        uint256 amount
    ) external view returns (uint256 expectedNativeFee);

    /// @notice estimates the native fee required for bridging tokens
    /// @param account account to estimate for
    /// @param amount amount of tokens to bridge
    /// @return expectedNativeFee quote for the expected native fee for the bridge token action
    function getBridgeTokenQuote(
        address account,
        uint256 amount
    ) external view returns (uint256 expectedNativeFee);

    /// @notice returns the expected gas needed for processing the add liquidity action
    /// @return expectedAddLiquidityGas expected gas for the add liquidity action
    function getExpectedAddLiquidityGas()
        external
        view
        returns (uint128 expectedAddLiquidityGas);

    /// @notice returns the expected gas needed for processing the bridge token action
    /// @return expectedBridgeTokenGas expected gas for the bridge token action
    function getExpectedBridgeTokenGas()
        external
        view
        returns (uint128 expectedBridgeTokenGas);

    /// @notice returns the expected gas needed for processing the remove liquidity action
    /// @return expectedRemoveLiquidityGas expected gas for the remove liquidity action
    function getExpectedRemoveLiquidityGas()
        external
        view
        returns (uint128 expectedRemoveLiquidityGas);

    /// @notice returns the fee buffer in basis points
    /// @return feeBufferBP current amount of fee buffer in basis points
    function getFeeBufferBP() external view returns (uint128 feeBufferBP);

    /// @notice returns the latest total liquidity on dst chain
    /// @return latestDstLiquidity latest total liquidity on dst chain
    function getLatestDstLiquidity()
        external
        view
        returns (uint256 latestDstLiquidity);

    /// @notice returns the address of the MessageRelayer
    /// @return messageRelayer address of the MessageRelayer
    function getMessageRelayer() external view returns (address messageRelayer);

    /// @notice returns the current nonce of the TokenRelayer
    /// @return nonce nonce of the TokenRelayer
    function getNonce() external view returns (uint64 nonce);

    /// @notice returns the optimistic liquidity of the dst chain
    /// @return optimisticDstLiquidity optimistic liquidity of the dst chain
    function getOptimisticDstLiquidity()
        external
        view
        returns (uint256 optimisticDstLiquidity);

    /// @notice estimates the native fee required for removing liquidity
    /// @notice returns max uint256 if insufficient liquidity,
    /// place holder for indicating tx will fail
    /// @param account account to estimate for
    /// @param amount amount of tokens to remove from liquidity
    /// @return expectedNativeFee quote for the expected native fee for the remove liquidity action
    function getRemoveLiquidityQuote(
        address account,
        uint256 amount
    ) external view returns (uint256 expectedNativeFee);
}
