// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

/**
 * @notice Structure for managing investor addresses across specific chain
 * @dev Each address change is encoded as: [1 byte action][n bytes address]
 */
struct ChainInvestorAddresses {
    // Unique investor ID
    bytes32 investorId;
    // Unique chain ID
    uint16 chainSelector;
    // Address size for that chain
    uint8 addressSize;
    // A list of concatenated bytes describing a change in addresses
    // Format `addressChanges`` := bytes1 action ++ bytes accountAddress
    // where `action`: 0b0 -> Add, 0b1 -> Remove
    bytes[] addressChanges;
}

interface IInvestorRegistryMirror {
    // Events
    /**
     * @notice Emitted when a investor addresses are updated
     * @param uid Unique identifier of the originating bridge operation
     * @param investorId The unique ID of the investor
     * @param chainSelector The chain Selector the unique id of a chain for which addresses are updated
     * @param addresses Updated investor wallet addresses array
     * @param action Action details (0b0: Add, or 0b1: remove)
     */
    event InvestorAddressesUpdated(
        bytes32 indexed uid, bytes32 indexed investorId, uint16 indexed chainSelector, bytes[] addresses, bytes1 action
    );

    // Errors
    /// @notice Thrown when invalid wallet address is encountered
    error InvestorRegistryMirror_InvalidWalletAddress();

    /**
     * @notice Initializes the chain ID of this specific chain
     * @param _nativeChainSelector Native custom ID of the chain
     * @param _gatewayAccessControl Address of gateway access control contract
     */
    function initialize(uint16 _nativeChainSelector, address _gatewayAccessControl) external;

    /**
     * @notice Updates investor's wallet addresses
     * @dev Only callable by LibreEdgeGateway
     * @param _investorAddresses changes to investor multi-chain addresses
     * @param uid Unique identifier of the originating bridge operation
     */
    function updateInvestorAddresses(bytes calldata _investorAddresses, bytes32 uid) external;

    /**
     * @notice Get native custom chain ID of this chain
     */
    function getNativeChainSelector() external view returns (uint16);

    /**
     * @notice Get Investor ID
     * @param wallet Investor address
     */
    function getInvestorIdFromAddress(address wallet) external view returns (bytes32);

    /**
     * @notice Checks if an address is a chain address for an investor
     * @param investorId The investor ID to check
     * @param chainSelector The chain ID to check (for faster lookup)
     * @param wallet The address to verify
     * @return bool True if address is valid for the investor on source chain
     */
    function isValidInvestorAddress(bytes32 investorId, uint16 chainSelector, bytes memory wallet)
        external
        view
        returns (bool);

    /**
     * @notice Determines whether the wallet addresses belong to same investor or not
     * @param sender Sender wallet address
     * @param receiver Receiver wallet address
     * @return bool True if addresses belong to same investor
     */
    function isSameInvestorAddresses(address sender, address receiver) external view returns (bool);

    /**
     * @notice Returns if an investor is registered
     * @param _investorId ID of the investor
     * @return A boolean indicating if the investor is registered
     */
    function isInvestor(bytes32 _investorId) external view returns (bool);
}
