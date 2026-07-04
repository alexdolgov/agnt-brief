// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { Ownable } from "solady/src/auth/Ownable.sol";
import { SafeTransferLib } from "solady/src/utils/SafeTransferLib.sol";

import { IRouterClient, Client } from "@chainlink/contracts-ccip/src/v0.8/ccip/interfaces/IRouterClient.sol";

/// @title Contract to transfer USDC to BuyerBurner contract from Polygon to Ethereum.
/// @author Swarm
contract TokenTransferor is Ownable {
    using SafeTransferLib for address;

    // Custom errors to provide more descriptive revert messages.
    error NotEnoughBalanceToCoverFees(uint256 currentBalance, uint256 calculatedFees); // Used to make sure contract has enough balance to cover the fees.
    error DestinationChainNotAllowlisted(uint64 destinationChainSelector); // Used when the destination chain has not been allowlisted by the contract owner.
    error ReceiverAddressIsZero(); // Used when the receiver address is 0.
    // Event emitted when the tokens are transferred to an account on another chain.
    event TokensTransferred(
        bytes32 indexed messageId, // The unique ID of the message.
        uint64 indexed destinationChainSelector, // The chain selector of the destination chain.
        address receiver, // The address of the receiver on the destination chain.
        address token, // The token address that was transferred.
        uint256 tokenAmount, // The token amount that was transferred.
        address feeToken, // the token address used to pay CCIP fees.
        uint256 fees // The fees paid for sending the message.
    );

    IRouterClient public immutable ROUTER;

    // Mapping to keep track of allowlisted destination chains.
    mapping(uint64 => bool) public allowlistedChains;

    /// @notice Constructor initializes the contract with the router address.
    /// @param _router The address of the router contract.
    constructor(address _router) {
        ROUTER = IRouterClient(_router);

        _initializeOwner(msg.sender);
    }

    /// @dev Updates the allowlist status of a destination chain for transactions.
    /// @notice This function can only be called by the owner.
    /// @param _destinationChainSelector The selector of the destination chain to be updated.
    /// @param allowed The allowlist status to be set for the destination chain.
    function allowlistDestinationChain(uint64 _destinationChainSelector, bool allowed) external onlyOwner {
        allowlistedChains[_destinationChainSelector] = allowed;
    }

    /// @notice Transfer tokens to receiver on the destination chain.
    /// @notice Pay in native gas such as ETH on Ethereum or POL on Polygon.
    /// @notice the token must be in the list of supported tokens.
    /// @notice This function can only be called by the owner.
    /// @dev Assumes your contract has sufficient native gas like ETH on Ethereum or POL on Polygon.
    /// @param _destinationChainSelector The identifier (aka selector) for the destination blockchain.
    /// @param _receiver The address of the recipient on the destination blockchain.
    /// @param _token token address.
    /// @param _amount token amount.
    /// @return messageId The ID of the message that was sent.
    function bridgeTokens(
        uint64 _destinationChainSelector,
        address _receiver,
        address _token,
        uint256 _amount
    ) external payable returns (bytes32 messageId) {
        /// @dev Check that the receiver address is not 0.
        require(_receiver != address(0), ReceiverAddressIsZero());
        /// @dev Check if the chain with the given destinationChainSelector is allowlisted.
        require(
            allowlistedChains[_destinationChainSelector],
            DestinationChainNotAllowlisted(_destinationChainSelector)
        );

        Client.EVM2AnyMessage memory evm2AnyMessage = _buildCCIPMessage(_receiver, _token, _amount);
        uint256 fees = _estimateFees(_destinationChainSelector, evm2AnyMessage);

        require(fees <= msg.value, NotEnoughBalanceToCoverFees(msg.value, fees));
        uint256 change = msg.value - fees;

        if (change > 0) {
            msg.sender.safeTransferETH(change);
        }

        _token.safeTransferFrom(msg.sender, address(this), _amount);

        _token.safeApprove(address(ROUTER), _amount);
        // Approve the Router to spend tokens on contract's behalf. It will spend the amount of the given token

        // Send the message through the router and store the returned message ID
        // Return the message ID
        messageId = ROUTER.ccipSend{ value: fees }(_destinationChainSelector, evm2AnyMessage);

        // Emit an event with message details
        emit TokensTransferred(messageId, _destinationChainSelector, _receiver, _token, _amount, address(0), fees);
    }

    function estimateFees(
        uint64 _destinationChainSelector,
        address _receiver,
        address _token,
        uint256 _amount
    ) external view returns (uint256 fees) {
        Client.EVM2AnyMessage memory evm2AnyMessage = _buildCCIPMessage(_receiver, _token, _amount);

        // Get the fee required to send the message
        fees = _estimateFees(_destinationChainSelector, evm2AnyMessage);
    }

    /// @notice Construct a CCIP message.
    /// @dev This function will create an EVM2AnyMessage struct with all the necessary information for tokens transfer.
    /// @param _receiver The address of the receiver.
    /// @param _token The token to be transferred.
    /// @param _amount The amount of the token to be transferred.
    /// @return Client.EVM2AnyMessage Returns an EVM2AnyMessage struct which contains information for sending a CCIP message.
    function _buildCCIPMessage(
        address _receiver,
        address _token,
        uint256 _amount
    ) private pure returns (Client.EVM2AnyMessage memory) {
        // Set the token amounts
        Client.EVMTokenAmount[] memory tokenAmounts = new Client.EVMTokenAmount[](1);
        tokenAmounts[0] = Client.EVMTokenAmount({ token: _token, amount: _amount });

        // Create an EVM2AnyMessage struct in memory with necessary information for sending a cross-chain message
        return
            Client.EVM2AnyMessage({
                receiver: abi.encode(_receiver), // ABI-encoded receiver address
                data: "", // No data
                tokenAmounts: tokenAmounts, // The amount and type of token being transferred
                extraArgs: Client._argsToBytes(
                    // Additional arguments, setting gas limit to 0 as we are not sending any data
                    Client.EVMExtraArgsV2({
                        gasLimit: 0, // Gas limit for the callback on the destination chain
                        allowOutOfOrderExecution: true // Allows the message to be executed out of order relative to other messages from the same sender
                    })
                ),
                // Set the feeToken to a feeTokenAddress, indicating specific asset will be used for fees
                // address(0) means fees are paid in native gas
                feeToken: address(0)
            });
    }

    function _estimateFees(
        uint64 _destinationChainSelector,
        Client.EVM2AnyMessage memory evm2AnyMessage
    ) private view returns (uint256 fees) {
        // Get the fee required to send the message
        fees = ROUTER.getFee(_destinationChainSelector, evm2AnyMessage);
    }
}
