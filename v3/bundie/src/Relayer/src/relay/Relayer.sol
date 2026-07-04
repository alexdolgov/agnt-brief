// SPDX-License-Identifier: MIT
//
//        ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██╗███████╗
//        ██╔══██╗██║   ██║████╗  ██║██╔══██╗██║██╔════╝
//        ██████╔╝██║   ██║██╔██╗ ██║██║  ██║██║█████╗  
//        ██╔══██╗██║   ██║██║╚██╗██║██║  ██║██║██╔══╝  
//        ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║███████╗
//        ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝
//
//        Cross-Chain Yield Aggregation Protocol
//
pragma solidity 0.8.34;

import {Ownable2StepUpgradeable} from "@openzeppelin-upgradeable/contracts/access/Ownable2StepUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@openzeppelin-upgradeable/contracts/proxy/utils/Initializable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IRelayer} from "../interface/IRelayer.sol";
import {BeaconModuleManager} from "../lib/BeaconModuleManager.sol";
import {Errors} from "../lib/Errors.sol";
import {Events} from "../lib/Events.sol";
import {Types} from "../lib/Types.sol";

/// @title Relayer
/// @author Bundie Team
/// @notice Bridge fee relayer that funds cross-chain operations with ETH on behalf of users
/// @dev Users pay a flat fee in their ERC-20 deposit token. The relayer accumulates these fees
///      and provides ETH to registered bridge modules for LayerZero messaging costs.
///
///      ## How it works
///      1. Bridge module deducts a flat ERC-20 fee from the user's bridged amount
///      2. The ERC-20 fee is transferred to this contract
///      3. The bridge module calls fundBridgeFee() to pull ETH for the LZ native fee
///      4. Protocol team periodically swaps accumulated ERC-20 tokens to ETH to replenish
///
///      ## Fee configuration
///      - Per-token flat fees (e.g., USDC -> 1e6 = $1, USDT -> 1e6 = $1)
///      - Different tokens can have different fees (different decimals, valuations)
///      - Governance can update fees via setBridgeFee()
///
///      ## Security
///      - Only modules registered with BridgeManager can pull ETH via fundBridgeFee()
///      - No separate approval step needed — BridgeManager registry is the single source of truth
///      - UUPS upgradeable for adding oracle-based pricing later
///      - Reverts on insufficient ETH so off-chain cron knows to top up
///
/// @custom:invariant Only BridgeManager-registered modules can call fundBridgeFee()
/// @custom:invariant fundBridgeFee() reverts if ETH balance is insufficient
/// @custom:trust Owner can configure fees and recover assets
contract Relayer is Initializable, Ownable2StepUpgradeable, UUPSUpgradeable, IRelayer {
    using SafeERC20 for IERC20;

    // ========================== State Variables ==========================

    /// @notice Flat bridge fee per asset token (in token decimals)
    /// @dev e.g., USDC (6 decimals) -> 1_000_000 = $1 fee
    mapping(address => uint256) public bridgeFees;

    /// @notice BridgeManager contract used to verify callers of fundBridgeFee()
    /// @dev Only modules registered with this BridgeManager can pull ETH.
    address public bridgeManager;

    // ========================== Constructor ==========================

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    // ========================== Initializer ==========================

    /// @notice Initialize the relayer proxy
    /// @param owner_ Initial owner address (protocol multisig)
    /// @param bridgeManager_ BridgeManager contract for module verification
    function initialize(address owner_, address bridgeManager_) external initializer {
        require(bridgeManager_ != address(0), Errors.InvalidAddress());
        __Ownable_init(owner_);
        bridgeManager = bridgeManager_;
        emit Events.BridgeManagerUpdated(bridgeManager_);
    }

    // ========================== External View Functions ==========================

    /// @inheritdoc IRelayer
    function getBridgeFee(address assetToken) external view override returns (uint256 fee) {
        return bridgeFees[assetToken];
    }

    // ========================== External State-Changing Functions ==========================

    /// @inheritdoc IRelayer
    function fundBridgeFee(uint256 amount) external override {
        require(BeaconModuleManager(bridgeManager).isModule(msg.sender), Errors.BridgeModuleNotApproved(msg.sender));
        require(amount > 0, Errors.ZeroAmount());

        uint256 balance = address(this).balance;
        require(balance >= amount, Errors.InsufficientRelayerBalance(amount, balance));

        (bool success,) = msg.sender.call{value: amount}("");
        require(success, Errors.ETHTransferFailed());

        emit Events.RelayerFunded(msg.sender, amount);
    }

    // ========================== Admin Functions ==========================

    /// @notice Set the flat bridge fee for an asset token
    /// @param token Asset token address (must be non-zero)
    /// @param fee Fee amount in token decimals (0 to disable)
    function setBridgeFee(address token, uint256 fee) external onlyOwner {
        require(token != address(0), Errors.InvalidAddress());
        bridgeFees[token] = fee;
        emit Events.BridgeFeeSet(token, fee);
    }

    /// @notice Batch set bridge fees for multiple tokens
    /// @param tokens Array of asset token addresses
    /// @param fees Array of fee amounts
    function setBridgeFeeBatch(address[] calldata tokens, uint256[] calldata fees) external onlyOwner {
        require(tokens.length == fees.length, Errors.InvalidBridgeParams());
        for (uint256 i = 0; i < tokens.length; i++) {
            require(tokens[i] != address(0), Errors.InvalidAddress());
            bridgeFees[tokens[i]] = fees[i];
            emit Events.BridgeFeeSet(tokens[i], fees[i]);
        }
    }

    /// @notice Update the BridgeManager reference
    /// @param bridgeManager_ New BridgeManager contract address
    function setBridgeManager(address bridgeManager_) external onlyOwner {
        require(bridgeManager_ != address(0), Errors.InvalidAddress());
        bridgeManager = bridgeManager_;
        emit Events.BridgeManagerUpdated(bridgeManager_);
    }

    /// @notice Recover stuck assets (ETH or ERC20 tokens) from the relayer
    /// @param recoveryType Type of asset to recover (NATIVE or ERC20)
    /// @param token ERC20 token address (ignored for NATIVE recovery)
    /// @param recipient Address to receive the recovered assets
    function recover(Types.RecoveryType recoveryType, address token, address recipient) external onlyOwner {
        require(recipient != address(0), Errors.InvalidAddress());
        require(
            recoveryType == Types.RecoveryType.NATIVE || recoveryType == Types.RecoveryType.ERC20,
            Errors.InvalidRecoveryType()
        );

        if (recoveryType == Types.RecoveryType.NATIVE) {
            uint256 balance = address(this).balance;
            require(balance > 0, Errors.ZeroAmount());

            (bool success,) = recipient.call{value: balance}("");
            require(success, Errors.ETHTransferFailed());

            emit Events.ETHRecovered(recipient, balance);
        } else {
            require(token != address(0), Errors.InvalidAddress());

            uint256 balance = IERC20(token).balanceOf(address(this));
            require(balance > 0, Errors.ZeroAmount());

            IERC20(token).safeTransfer(recipient, balance);

            emit Events.TokenRecovered(token, recipient, balance);
        }
    }

    // ========================== Receive ETH ==========================

    /// @notice Accept ETH top-ups from protocol team or keepers
    receive() external payable {}

    // ========================== Internal Functions ==========================

    /// @notice Authorize upgrade to new implementation
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}
}
