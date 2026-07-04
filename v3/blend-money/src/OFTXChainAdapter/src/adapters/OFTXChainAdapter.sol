// SPDX-License-Identifier: BSL-1.1
pragma solidity ^0.8.28;

import {IXChainAdapterController} from "../interfaces/controllers/IXChainAdapterController.sol";
import {
    IOFT,
    SendParam,
    MessagingFee,
    OFTReceipt,
    OFTLimit,
    OFTFeeDetail
} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import {MessagingReceipt} from "@layerzerolabs/oapp-evm/contracts/oapp/OAppSender.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @notice Minimal view interface for reading the vault action reentrancy flag from StrategyManager.
 */
interface IStrategyManagerState {
    function isVaultActionInitiated() external view returns (bool);
}

/**
 * @title OFTXChainAdapter
 * @notice Adapter that bridges a single OFT token using LayerZero V2.
 * @dev One adapter instance per OFT token, matching the CCTP adapter's one-token-per-instance
 *      pattern. Supports both native OFT (burn/mint) and OFTAdapter-wrapped ERC20s (lock/unlock).
 *      Caller transfers the required input token to this contract before calling execute.
 *      The adapter pays LayerZero messaging fees from its own ETH balance; fund via direct
 *      transfer. Excess fees are refunded to this contract for future calls.
 *
 *      Access control:
 *        - `execute` is gated by `STRATEGY_MANAGER.isVaultActionInitiated()`, ensuring it can
 *          only be called during an active `executeVaultAction` flow on the associated
 *          StrategyManager. This prevents unauthorized callers from draining the adapter's
 *          pre-funded ETH balance via spurious LZ messaging fees.
 *        - LayerZero executor options are not caller-supplied: the send uses empty `extraOptions`
 *          so execution gas comes solely from the OFT's enforced options. This blocks a caller
 *          from attaching a native-drop or non-zero lzReceive value to inflate the fee and drain ETH.
 *        - `withdrawETH` is gated by `onlyOwner` (Ownable2Step) for ETH recovery.
 *
 *      Follows CEI. Emits OFTBridgeSent and BridgeExecuted on successful cross-chain sends.
 * @author Blend Money
 * @custom:security-contact security@blend.money
 */
contract OFTXChainAdapter is IXChainAdapterController, Ownable2Step, ReentrancyGuard {
    using SafeERC20 for IERC20;

    bytes32 public constant BRIDGE_ID = keccak256("OFT");

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Thrown when the destination chain ID is not configured
     */
    error InvalidChainId();

    /**
     * @notice Thrown when the recipient address is zero
     */
    error InvalidRecipient();

    /**
     * @notice Thrown when the sender address is zero
     */
    error InvalidSender();

    /**
     * @notice Thrown when the input token does not match the configured OFT token
     */
    error InvalidInputToken();

    /**
     * @notice Thrown when the contract has insufficient token balance
     */
    error InvalidBalance();

    /**
     * @notice Thrown when the OFT contract address is zero
     */
    error InvalidOftAddress();

    /**
     * @notice Thrown when a chain ID appears more than once in the constructor input
     */
    error DuplicateChainId();

    /**
     * @notice Thrown when a LayerZero endpoint ID is zero
     */
    error InvalidEid();

    /**
     * @notice Thrown when two distinct chain IDs map to the same LayerZero endpoint ID
     */
    error DuplicateEid();

    /**
     * @notice Thrown when the OFT's underlying token address is zero
     */
    error InvalidToken();

    /**
     * @notice Thrown when the adapter has insufficient ETH for the LayerZero messaging fee
     */
    error InsufficientFee();

    /**
     * @notice Thrown when the OFT debited fewer tokens than the required minimum (minAmountLD)
     */
    error InsufficientAmountSent();

    /**
     * @notice Thrown when an ETH withdrawal transfer fails
     */
    error WithdrawFailed();

    /**
     * @notice Thrown when execute is called outside of an active vault action context
     */
    error Unauthorized();

    /**
     * @notice Thrown when the strategy manager address is invalid
     */
    error InvalidStrategyManager();

    /**
     * @notice Thrown when renounceOwnership is called; renouncing is permanently disabled
     */
    error RenounceDisabled();

    /**
     * @notice Thrown when the OFT quotes a non-zero LZ token fee, which this adapter does not support
     */
    error LzTokenFeeUnsupported();

    /**
     * @notice Thrown when the ETH withdrawal recipient is the zero address
     */
    error InvalidWithdrawRecipient();

    /**
     * @notice Thrown when post-send token balance exceeds pre-send balance
     */
    error UnexpectedBalanceIncrease();

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Emitted after a successful ETH withdrawal.
     * @param to Recipient of the withdrawn ETH
     * @param amount Amount of ETH withdrawn
     */
    event ETHWithdrawn(address indexed to, uint256 amount);

    /**
     * @notice Emitted after a successful OFT send.
     * @param guid The LayerZero message GUID (for off-chain delivery monitoring and retry)
     * @param chainId The destination chain ID
     * @param amountSent The amount of tokens the OFT actually debited (OFTReceipt.amountSentLD)
     */
    event OFTBridgeSent(bytes32 indexed guid, uint256 indexed chainId, uint256 amountSent);

    /*//////////////////////////////////////////////////////////////
                                STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev StrategyManager contract used to verify vault action context.
     *      The adapter only allows `execute` when `isVaultActionInitiated()` returns true.
     */
    IStrategyManagerState public immutable STRATEGY_MANAGER;

    /**
     * @dev The OFT contract used for cross-chain sends. Immutable after deployment.
     */
    IOFT private immutable OFT_CONTRACT;

    /**
     * @dev The underlying ERC20 token address. Derived from OFT_CONTRACT.token() at construction.
     */
    address private immutable TOKEN;

    /**
     * @dev Mapping of EVM chain ID to LayerZero endpoint ID.
     *      LZ endpoint IDs start at 30101; eid 0 is unused and serves as the
     *      "unconfigured" sentinel, so no separate _chainConfigured mapping is needed.
     */
    mapping(uint256 => uint32) private _chainIdToEid;

    /*//////////////////////////////////////////////////////////////
                                STRUCTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Maps an EVM chain ID to its LayerZero endpoint ID.
     */
    struct ChainConfig {
        uint256 chainId;
        uint32 eid;
    }

    /*//////////////////////////////////////////////////////////////
                                CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Initialize the adapter for a single OFT token with chain configurations.
     * @dev Validates that `_strategyManager` is a deployed contract and that
     *      the OFT contract is valid. Rejects zero endpoint IDs because _chainIdToEid uses 0
     *      as the isChainSupported sentinel. One adapter instance per OFT token.
     * @param _owner Initial owner of the adapter (can withdraw ETH via Ownable2Step)
     * @param _strategyManager Address of the StrategyManager that gates execute calls
     * @param _oft Address of the OFT/OFTAdapter contract for this token
     * @param chains Array of chain-to-endpoint mappings
     * @custom:reverts InvalidStrategyManager when _strategyManager is zero or an EOA
     * @custom:reverts InvalidOftAddress when _oft is not a contract
     * @custom:reverts InvalidToken when OFT.token() returns the zero address
     * @custom:reverts InvalidEid when any chain endpoint ID is zero
     * @custom:reverts InvalidChainId when a chain ID is zero or matches the current chain
     * @custom:reverts DuplicateChainId when a chain ID appears more than once
     * @custom:reverts DuplicateEid when two chain IDs map to the same endpoint ID
     */
    constructor(address _owner, address _strategyManager, address _oft, ChainConfig[] memory chains) Ownable(_owner) {
        require(_strategyManager.code.length > 0, InvalidStrategyManager());
        require(_oft.code.length > 0, InvalidOftAddress());

        STRATEGY_MANAGER = IStrategyManagerState(_strategyManager);
        OFT_CONTRACT = IOFT(_oft);
        TOKEN = IOFT(_oft).token();
        require(TOKEN != address(0), InvalidToken());

        for (uint256 i = 0; i < chains.length; i++) {
            require(chains[i].eid != 0, InvalidEid());
            require(chains[i].chainId != 0, InvalidChainId());
            require(chains[i].chainId != block.chainid, InvalidChainId());
            require(_chainIdToEid[chains[i].chainId] == 0, DuplicateChainId());
            for (uint256 j = 0; j < i; j++) {
                require(chains[i].eid != chains[j].eid, DuplicateEid());
            }
            _chainIdToEid[chains[i].chainId] = chains[i].eid;
        }
    }

    /*//////////////////////////////////////////////////////////////
                                RECEIVE
    //////////////////////////////////////////////////////////////*/

    receive() external payable {}

    /*//////////////////////////////////////////////////////////////
                                EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Withdraw ETH from the adapter.
     * @dev Only callable by the owner (Ownable2Step). Used for ETH recovery if the adapter
     *      is deprecated or needs rebalancing of its fee reserve.
     * @param to Recipient of the withdrawn ETH
     * @param amount Amount of ETH to withdraw
     * @custom:reverts InvalidWithdrawRecipient when `to` is the zero address
     * @custom:reverts WithdrawFailed when the ETH transfer to `to` fails
     * @custom:events ETHWithdrawn on success
     */
    function withdrawETH(address payable to, uint256 amount) external onlyOwner {
        require(to != address(0), InvalidWithdrawRecipient());
        (bool success,) = to.call{value: amount}("");
        require(success, WithdrawFailed());
        emit ETHWithdrawn(to, amount);
    }

    /**
     * @notice Disabled to protect the adapter's ETH fee reserve.
     * @dev Renouncing would set the owner to address(0), permanently bricking `withdrawETH`
     *      and stranding the contract's ETH. Ownership can still be transferred (Ownable2Step).
     * @custom:reverts RenounceDisabled always
     */
    function renounceOwnership() public pure override {
        revert RenounceDisabled();
    }

    /**
     * @notice Check whether a destination chain is supported.
     * @dev Looks up whether the chain was explicitly configured in the constructor.
     * @param chainId The destination chain ID to validate
     * @return isSupported True if the chain has a configured LayerZero endpoint mapping
     * @custom:reverts None
     * @custom:events None
     */
    function isChainSupported(uint256 chainId) external view override returns (bool) {
        return _chainIdToEid[chainId] != 0;
    }

    /**
     * @notice Execute a cross-chain token transfer via LayerZero OFT.
     * @dev Bridges the full balance of `_inputToken` held by this contract. Gated by
     *      `STRATEGY_MANAGER.isVaultActionInitiated()` to prevent unauthorized callers from
     *      draining the adapter's ETH fee reserve. Sets `minAmountLD` equal to `amount` for an
     *      exact 1:1 same-token transfer with no slippage. Quotes the messaging fee via the OFT contract,
     *      conditionally approves the OFT if required (OFTAdapter pattern), then calls `send`.
     *      Clears approval and refunds any token dust to sender.
     *      LayerZero messaging fees are paid from this contract's ETH balance.
     *      Excess ETH is refunded to this contract via the `_refundAddress` parameter.
     * @param chainId The destination chain ID
     * @param _sender The expected initiator on source chain (for dust refund)
     * @param _recipient The expected recipient on destination chain
     * @param _inputToken The token being bridged (must match the configured OFT token)
     * @param - Unused; retained for interface compatibility
     * @custom:reverts Unauthorized when called outside of an active vault action context
     * @custom:reverts InvalidChainId when destination chain is not configured
     * @custom:reverts InvalidInputToken when input token does not match the configured OFT token
     * @custom:reverts InvalidRecipient when recipient is the zero address
     * @custom:reverts InvalidSender when sender is the zero address
     * @custom:reverts InvalidBalance when contract balance is zero or quoteOFT returns zero amountReceivedLD
     * @custom:reverts LzTokenFeeUnsupported when the OFT quotes a non-zero LZ token fee
     * @custom:reverts InsufficientFee when adapter ETH balance is less than the quoted LZ fee
     * @custom:reverts InsufficientAmountSent when the OFT debited fewer tokens than minAmountLD
     * @custom:reverts UnexpectedBalanceIncrease when post-send balance exceeds pre-send balance
     * @custom:events OFTBridgeSent with LZ message guid, destination chain ID, and amount sent
     * @custom:events BridgeExecuted with bridge ID, chain, sender, recipient, token, amount, and dust
     */
    function execute(uint256 chainId, address _sender, address _recipient, IERC20 _inputToken, bytes calldata)
        external
        override
        nonReentrant
    {
        require(STRATEGY_MANAGER.isVaultActionInitiated(), Unauthorized());

        require(_chainIdToEid[chainId] != 0, InvalidChainId());
        require(address(_inputToken) == TOKEN, InvalidInputToken());
        require(_recipient != address(0), InvalidRecipient());
        require(_sender != address(0), InvalidSender());

        uint256 amount = _inputToken.balanceOf(address(this));
        require(amount > 0, InvalidBalance());

        uint32 dstEid = _chainIdToEid[chainId];

        SendParam memory sendParam = SendParam({
            dstEid: dstEid,
            to: bytes32(uint256(uint160(_recipient))),
            amountLD: amount,
            minAmountLD: 0,
            extraOptions: "",
            composeMsg: "",
            oftCmd: ""
        });

        (,, OFTReceipt memory quoteReceipt) = OFT_CONTRACT.quoteOFT(sendParam);
        require(quoteReceipt.amountReceivedLD > 0, InvalidBalance());
        sendParam.minAmountLD = quoteReceipt.amountReceivedLD;

        MessagingFee memory fee = OFT_CONTRACT.quoteSend(sendParam, false);
        require(fee.lzTokenFee == 0, LzTokenFeeUnsupported());
        require(address(this).balance >= fee.nativeFee, InsufficientFee());

        bool needsApproval = OFT_CONTRACT.approvalRequired();
        if (needsApproval) {
            _inputToken.forceApprove(address(OFT_CONTRACT), amount);
        }

        (MessagingReceipt memory msgReceipt, OFTReceipt memory receipt) =
            OFT_CONTRACT.send{value: fee.nativeFee}(sendParam, fee, address(this));
        require(receipt.amountSentLD >= sendParam.minAmountLD, InsufficientAmountSent());
        emit OFTBridgeSent(msgReceipt.guid, chainId, receipt.amountSentLD);

        if (needsApproval) {
            _inputToken.forceApprove(address(OFT_CONTRACT), 0);
        }

        uint256 dust = _inputToken.balanceOf(address(this));
        require(dust <= amount, UnexpectedBalanceIncrease());
        if (dust > 0) {
            _inputToken.safeTransfer(_sender, dust);
        }

        emit BridgeExecuted(BRIDGE_ID, chainId, _sender, _recipient, address(_inputToken), amount - dust, dust);
    }

    /*//////////////////////////////////////////////////////////////
                                VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Get the LayerZero endpoint ID for a given chain ID.
     * @dev Returns 0 if the chain is not configured (use isChainSupported to verify).
     * @param chainId The EVM chain ID to look up
     * @return eid The LayerZero endpoint ID (0 if unconfigured)
     * @custom:reverts None
     * @custom:events None
     */
    function getEidForChain(uint256 chainId) external view returns (uint32 eid) {
        return _chainIdToEid[chainId];
    }

    /**
     * @notice Get the OFT contract address.
     * @dev Returns the immutable OFT contract set at construction.
     * @return oft The OFT/OFTAdapter contract address
     * @custom:reverts None
     * @custom:events None
     */
    function getOft() external view returns (address oft) {
        return address(OFT_CONTRACT);
    }

    /**
     * @notice Get the underlying token address.
     * @dev Returns the immutable token address derived from OFT.token() at construction.
     * @return tokenAddress The ERC20 token address
     * @custom:reverts None
     * @custom:events None
     */
    function getToken() external view returns (address tokenAddress) {
        return TOKEN;
    }
}
