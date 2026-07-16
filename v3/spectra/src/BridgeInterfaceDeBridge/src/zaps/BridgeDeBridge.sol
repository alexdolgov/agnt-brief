//SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.22;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {BaseBridgeInterface} from "./BaseBridgeInterface.sol";
import {IDlnSource} from "../interfaces/IDlnSource.sol";

/**
 * @notice Bridge interface that uses deBridge DLN for cross-chain asset transfers.
 * @dev Implements order-based bridging via DlnSource contract.
 */
contract BridgeInterfaceDeBridge is BaseBridgeInterface {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                                ERRORS
    //////////////////////////////////////////////////////////////*/
    error WrongFee();
    error InvalidTakeAmount();
    error InsufficientNativeAmount();
    error InvalidPercentage();

    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/
    /// @notice Minimum take amount as a percentage of the give amount (in basis points, e.g., 1000 = 10%)
    uint256 public minTakeAmountBps;

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/
    event MinTakeAmountBpsUpdated(uint256 oldBps, uint256 newBps);

    constructor() {
        _disableInitializers();
    }

    function initialize(address initialAuthority, address _registry, address _bridgeInfrastructure) external initializer {
        __BaseBridgeInterface_init(initialAuthority, _registry, _bridgeInfrastructure);
        minTakeAmountBps = 100; // Default to 1%
    }

    /**
     * @notice Bridge an asset using deBridge DLN.
     * @dev Native fee must be sent via msg.value. For native assets (tokenIn = address(0)), 
     *      msg.value must include both the amount and the fee.
     * @param tokenIn Token to bridge from source chain (address(0) for native assets).
     * @param amount Amount to bridge.
     * @param dstChainId Destination EVM chain ID.
     * @param dstSafe Destination SAFE address (recipient).
     * @param tokenOut Expected token on destination chain.
     * @param params Encoded: (uint256 takeAmount).
     */
    function bridgeAsset(
        address tokenIn,
        uint256 amount,
        uint32 dstChainId,
        address dstSafe,
        address tokenOut,
        bytes calldata params
    ) external payable override {
        if (amount == 0) revert ZeroAmount();

        (uint256 takeAmount) = abi.decode(params, (uint256));

        _bridgeDeBridgeWithFee(
            tokenIn,
            amount,
            dstChainId,
            dstSafe,
            tokenOut,
            takeAmount,
            msg.value
        );
    }

    /**
     * @notice Convenience function to bridge assets via deBridge without encoding params.
     * @dev For native assets (tokenIn = address(0)), msg.value must include both the amount and the fee.
     * @param tokenIn Token to bridge (address(0) for native assets).
     * @param amount Amount to bridge.
     * @param dstChainId Destination chain ID.
     * @param dstSafe Destination SAFE address.
     * @param tokenOut Expected token on destination.
     * @param takeAmount Expected receive amount (after fees).
     */
    function bridgeAssetDeBridge(
        address tokenIn,
        uint256 amount,
        uint32 dstChainId,
        address dstSafe,
        address tokenOut,
        uint256 takeAmount
    ) external payable {
        if (amount == 0) revert ZeroAmount();
        _bridgeDeBridgeWithFee(
            tokenIn,
            amount,
            dstChainId,
            dstSafe,
            tokenOut,
            takeAmount,
            msg.value
        );
    }

    /**
     * @notice Quote the native fee required for bridging.
     * @param bridgeInfrastructure DlnSource contract address.
     * @return fee The native fee required in wei.
     */
    function quoteFee(address bridgeInfrastructure) external view returns (uint256 fee) {
        return IDlnSource(bridgeInfrastructure).globalFixedNativeFee();
    }

    /**
     * @notice Set the minimum take amount percentage (in basis points).
     * @dev Only callable by authorized addresses via AccessManager.
     * @param newMinTakeAmountBps New minimum take amount in basis points (e.g., 1000 = 10%, 500 = 5%).
     *        Must be between 0 and 1000 (10%).
     */
    function setMinTakeAmountBps(uint256 newMinTakeAmountBps) external restricted {
        if (newMinTakeAmountBps > 1000) revert InvalidPercentage();
        uint256 oldBps = minTakeAmountBps;
        minTakeAmountBps = newMinTakeAmountBps;
        emit MinTakeAmountBpsUpdated(oldBps, newMinTakeAmountBps);
    }

    /**
     * @notice Internal function to bridge assets via deBridge DLN.
     * @param tokenIn Token to bridge (address(0) for native assets).
     * @param amount Amount to bridge.
     * @param dstChainId Destination chain ID.
     * @param dstSafe Destination SAFE address.
     * @param tokenOut Expected token on destination.
     * @param takeAmount Expected receive amount.
     * @param nativeFeeProvided Native fee provided by the caller (for native assets, must include amount + fee).
     */
    function _bridgeDeBridgeWithFee(
        address tokenIn,
        uint256 amount,
        uint32 dstChainId,
        address dstSafe,
        address tokenOut,
        uint256 takeAmount,
        uint256 nativeFeeProvided
    ) internal {
        if (dstSafe == address(0)) {
            revert ZeroAddress();
        }

        if (takeAmount == 0 || takeAmount > amount) revert InvalidTakeAmount();

        // Check if take amount meets the minimum percentage requirement
        if (takeAmount < (amount * minTakeAmountBps) / 10000) revert InvalidTakeAmount();

        // Get the required native fee
        uint256 nativeFee = IDlnSource(bridgeInfrastructure).globalFixedNativeFee();
        
        // Handle native asset (ETH) vs ERC20 token
        uint256 totalNativeRequired;
        if (tokenIn == address(0)) {
            // For native assets, we need both the amount and the native fee
            totalNativeRequired = amount + nativeFee;
            if (nativeFeeProvided < totalNativeRequired) revert InsufficientNativeAmount();
        } else {
            // For ERC20 tokens, we only need the native fee
            totalNativeRequired = nativeFee;
            if (nativeFeeProvided != nativeFee) revert WrongFee();
            
            // Pull ERC20 tokens from the calling SAFE
            IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amount);
            // Approve BridgeInfrastructure to spend tokens
            IERC20(tokenIn).forceApprove(bridgeInfrastructure, amount);
        }

        // Prepare the order
        IDlnSource.OrderCreation memory order = IDlnSource.OrderCreation({
            giveTokenAddress: tokenIn,
            giveAmount: amount,
            takeTokenAddress: abi.encodePacked(tokenOut),
            takeAmount: takeAmount,
            takeChainId: dstChainId,
            receiverDst: abi.encodePacked(dstSafe),
            givePatchAuthoritySrc: dstSafe, // increase the amount of tokens on src chain
            orderAuthorityAddressDst: abi.encodePacked(dstSafe), // decrease the amount of tokens on dst chain
            allowedTakerDst: "",
            externalCall: "",
            allowedCancelBeneficiarySrc: ""
        });

        // Create the order with the appropriate value
        bytes32 orderId = IDlnSource(bridgeInfrastructure).createOrder{value: totalNativeRequired}(
            order,
            "", // No affiliate fee
            0, // No referral code
            "" // No permit
        );

        emit BridgeInitiated(
            msg.sender,
            tokenIn,
            amount,
            dstChainId,
            dstSafe,
            "deBridge",
            tokenOut
        );
    }
}
