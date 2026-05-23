// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

library EventsLib {
    /// @notice Emitted when USBD is deposited
    /// @param sender The address that deposited the USBD
    /// @param receiver The address that will receive sUSBD
    /// @param usbdAmount The amount of USBD deposited
    /// @param susbdAmount The amount of sUSBD received
    /// @param timestamp The timestamp of the deposit
    event Deposit(
        address indexed sender,
        address indexed receiver,
        uint256 usbdAmount,
        uint256 susbdAmount,
        uint256 timestamp
    );

    /// @notice Emitted when USBD is deposited
    /// @param sender The address that deposited the USBD
    /// @param receiver The address that will receive sUSBD
    /// @param dstEid The destination endpoint id
    /// @param usbdAmount The amount of USBD deposited
    /// @param susbdAmount The amount of sUSBD received
    /// @param timestamp The timestamp of the deposit
    event DepositCrossChain(
        address indexed sender,
        address indexed receiver,
        uint32 indexed dstEid,
        uint256 usbdAmount,
        uint256 susbdAmount,
        uint256 timestamp
    );

    /// @notice Emitted when sUSBD redeem is requested
    /// @param sender The address that requested the USBD redeem
    /// @param receiver The address that will receive USBD
    /// @param susbdAmount The amount of sUSBD redeemed
    /// @param usbdAmount The amount of USBD that will be received
    /// @param timestamp The timestamp of the redeem request
    event RequestRedeem(
        address indexed sender,
        address indexed receiver,
        uint256 susbdAmount,
        uint256 usbdAmount,
        uint256 timestamp
    );

    /// @notice Emitted when the rate is updated
    /// @param sender The address that changed the rate
    /// @param previousRate The previous rate
    /// @param newRate The new rate
    /// @param timestamp The timestamp of the transaction
    event SetRate(address indexed sender, uint256 indexed previousRate, uint256 indexed newRate, uint256 timestamp);

    /// @notice Emitted when the sUSBD OFT Adapter address is set
    /// @param sender The address that called the function
    /// @param previousAddress The previous address of the adapter
    /// @param newAddress The new address of the adapter
    /// @param timestamp The timestamp of the transaction
    event SetSusbdOftAdapter(
        address indexed sender,
        address indexed previousAddress,
        address indexed newAddress,
        uint256 timestamp
    );

    /// @notice Emitted when the token is recovered from the contract
    /// @param sender The address that called the function
    /// @param token The address of the token that was recovered
    /// @param to The address that received the token
    /// @param amount The amount of the token that was recovered
    /// @param timestamp The timestamp of the transaction
    event Recover(address indexed sender, address indexed token, address indexed to, uint256 amount, uint256 timestamp);

    /// @notice Emitted when the native token is recovered from the contract
    /// @param sender The address that called the function
    /// @param to The address that received the native token
    /// @param amount The amount of the native token that was recovered
    /// @param timestamp The timestamp of the transaction
    event RecoverNative(address indexed sender, address indexed to, uint256 amount, uint256 timestamp);

    /// @notice Emitted when user requests redemption from a chain different then StakingModule's origin chain
    /// @param receiver The address who receives the assets
    /// @param srcId Id of the chain where the transaction was originated
    /// @param timestamp The timestamp of the transaction
    event CrossChainRedemptionRequest(
        address indexed receiver,
        uint32 indexed srcId,
        uint256 susbdAmount,
        uint256 timestamp
    );
}
