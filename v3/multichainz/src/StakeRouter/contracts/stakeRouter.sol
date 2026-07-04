// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IRouterClient} from "@chainlink/contracts-ccip/src/v0.8/ccip/interfaces/IRouterClient.sol";
import {OwnerIsCreator} from "@chainlink/contracts-ccip/src/v0.8/shared/access/OwnerIsCreator.sol";
import {Client} from "@chainlink/contracts-ccip/src/v0.8/ccip/libraries/Client.sol";
import {CCIPReceiver} from "@chainlink/contracts-ccip/src/v0.8/ccip/applications/CCIPReceiver.sol";
import {IERC20} from '@chainlink/contracts-ccip/src/v0.8/vendor/openzeppelin-solidity/v4.8.3/contracts/token/ERC20/IERC20.sol';
import {SafeERC20} from '@chainlink/contracts-ccip/src/v0.8/vendor/openzeppelin-solidity/v4.8.3/contracts/token/ERC20/utils/SafeERC20.sol';
import {IWETH9} from "./interfaces/IWETH9.sol";

/**
 * THIS IS AN EXAMPLE CONTRACT THAT USES HARDCODED VALUES FOR CLARITY.
 * THIS IS AN EXAMPLE CONTRACT THAT USES UN-AUDITED CODE.
 * DO NOT USE THIS CODE IN PRODUCTION.
 */

/// @title - MTZ Stake messenger contract for transferring/receiving tokens and data across chains.
contract StakeRouter is CCIPReceiver, OwnerIsCreator {
    using SafeERC20 for IERC20;

    uint256 public gasLimit;

    ///mapping whitelisted token lending assets
    mapping(string => address) public tokenNameToAddress;

    // Custom errors to provide more descriptive revert messages.
    error NotEnoughBalance(uint256 currentBalance, uint256 calculatedFees); // Used to make sure contract has enough balance to cover the fees.
    error NothingToWithdraw(); // Used when trying to withdraw Ether but there's nothing to withdraw.
    error FailedToWithdrawEth(address owner, address target, uint256 value); // Used when the withdrawal of Ether fails.
    error DestinationChainNotAllowed(uint64 destinationChainSelector); // Used when the destination chain has not been allowlisted by the contract owner.
    error SourceChainNotAllowed(uint64 sourceChainSelector); // Used when the source chain has not been allowlisted by the contract owner.
    error SenderNotAllowed(address sender); // Used when the sender has not been allowlisted by the contract owner.
    error InvalidReceiverAddress(); // Used when the receiver address is 0.

    // Event emitted when a message is sent to another chain.
    event MessageSent(
        bytes32 indexed messageId, // The unique ID of the CCIP message.
        uint64 indexed destinationChainSelector, // The chain selector of the destination chain.
        address receiver, // The address of the receiver on the destination chain.
        address onBehalfOf, // The text being sent.
        uint256 operatorId,
        address token, // The token address that was transferred.
        uint256 tokenAmount, // The token amount that was transferred.
        uint256 fees // The fees paid for sending the message.
    );

    // Event emitted when a message is received from another chain.
    event MessageReceived(
        bytes32 indexed messageId, // The unique ID of the CCIP message.
        uint64 indexed sourceChainSelector, // The chain selector of the source chain.
        address sender, // The address of the sender from the source chain.
        address user, // The text that was received.
        address token, // The token address that was transferred.
        uint256 tokenAmount // The token amount that was transferred.
    );

     event MessageTransferred(
    bytes32 indexed messageId, // The unique ID of the CCIP message.
    uint64 indexed destinationChainSelector, // The chain selector of the destination chain.
    address receiver, // The address of the receiver on the destination chain.
    uint256 operatorId,
    address onBehalfOf,
    string tokenName, // The text being sent.
    address feeToken, // the token address used to pay CCIP fees.
    uint256 fees // The fees paid for sending the CCIP message.
  );

    // Mapping to keep track of allowlisted destination chains.
    mapping(uint64 => bool) public allowlistedDestinationChains;

    /// @notice Constructor initializes the contract with the router address.
    /// @param _router The address of the router contract.
    constructor(address _router) CCIPReceiver(_router) {
        gasLimit = 500_000;
    }

    /// @dev Modifier that checks if the chain with the given destinationChainSelector is allowlisted.
    /// @param _destinationChainSelector The selector of the destination chain.
    modifier onlyAllowlistedDestinationChain(uint64 _destinationChainSelector) {
        if (!allowlistedDestinationChains[_destinationChainSelector])
            revert DestinationChainNotAllowed(_destinationChainSelector);
        _;
    }

    /// @dev Modifier that checks the receiver address is not 0.
    /// @param _receiver The receiver address.
    modifier validateReceiver(address _receiver) {
        if (_receiver == address(0)) revert InvalidReceiverAddress();
        _;
    }


    /// @dev Updates the allowlist status of a destination chain for transactions.
    /// @notice This function can only be called by the owner.
    /// @param _destinationChainSelector The selector of the destination chain to be updated.
    /// @param allowed The allowlist status to be set for the destination chain.
    function allowlistDestinationChain(
        uint64 _destinationChainSelector,
        bool allowed
    ) external onlyOwner {
        allowlistedDestinationChains[_destinationChainSelector] = allowed;
    }

    function whitelistTokens(
        address[] memory _tokens,
        string[] memory _tokenNames
    ) public onlyOwner returns (bool) {
        require(_tokens.length == _tokenNames.length, "Array Mismatch!");
        for (uint256 i = 0; i < _tokens.length; i++) {
            address token = _tokens[i];
            string memory tokenName = _tokenNames[i];
            tokenNameToAddress[tokenName] = token;
        }
        return true;
    }

    function setGasLimit(uint256 _gas) public onlyOwner {
        gasLimit = _gas;
    }

    function estimateMsgFee(
    uint64 _destinationChainSelector,
    address _receiver,
    uint256 _operatorId,
    uint256 _destId,
    address _onBehalfOf,
    string calldata _tokenName,
    uint256 _amount
  ) external view returns (uint256) {
    // Create an EVM2AnyMessage struct to get an accurate fee estimate
    Client.EVM2AnyMessage memory evm2AnyMessage = _buildMessage(
      _receiver,
      _operatorId,
      _destId,
      _onBehalfOf,
      _tokenName,
      _amount,
      address(0) // address(0) means fees are paid in native gas
    );

    // Initialize a router client instance
    IRouterClient router = IRouterClient(this.getRouter());

    // Get and return the fee required for the CCIP message
    return router.getFee(_destinationChainSelector, evm2AnyMessage);
  }

    function estimateStakeFee(
        uint64 _destinationChainSelector,
        address _receiver,
        uint256 _operatorId,
        uint256 _destId,
        address _onBehalfOf,
        string calldata _tokenName,
        address _token,
        uint256 _amount
    ) external view returns (uint256) {
        // Create an EVM2AnyMessage struct to get an accurate fee estimate
        Client.EVM2AnyMessage memory evm2AnyMessage = _buildCCIPMessage(
            _receiver,
            _operatorId,
            _destId,
            _onBehalfOf,
            _tokenName,
            _token,
            _amount,
            address(0) // address(0) means fees are paid in native gas
        );

        // Initialize a router client instance
        IRouterClient router = IRouterClient(this.getRouter());

        // Get and return the fee required for the CCIP message
        return router.getFee(_destinationChainSelector, evm2AnyMessage);
    }

    function sendStake(
        uint64 _destinationChainSelector,
        address _receiver,
        uint256 _operatorId,
        uint256 _destId,
        address _onBehalfOf,
        string calldata _tokenName, //WETH
        address _token, //weth address
        uint256 _amount
    )
        external
        payable
        onlyAllowlistedDestinationChain(_destinationChainSelector)
        validateReceiver(_receiver)
        returns (bytes32 messageId)
    {
        // Create an EVM2AnyMessage struct in memory with necessary information for sending a cross-chain message
        // address(0) means fees are paid in native gas
        Client.EVM2AnyMessage memory evm2AnyMessage = _buildCCIPMessage(
            _receiver,
            _operatorId,
            _destId,
            _onBehalfOf,
            _tokenName,
            _token,
            _amount,
            address(0)
        );

        // Initialize a router client instance to interact with cross-chain router
        IRouterClient router = IRouterClient(this.getRouter());

        // Get the fee required to send the CCIP message
        uint256 fees = router.getFee(_destinationChainSelector, evm2AnyMessage);

        // Ensure the user has sent enough Ether with the transaction to cover the fees
        if (msg.value < fees) {
            revert NotEnoughBalance(msg.value, fees);
        }

        IERC20(_token).transferFrom(msg.sender, address(this), _amount);

        // Approve the router to spend tokens on the contract's behalf
        IERC20(_token).approve(address(router), _amount);

        // Send the message through the router and store the returned message ID, using `msg.value` for the fee
        messageId = router.ccipSend{value: fees}(
            _destinationChainSelector,
            evm2AnyMessage
        );

        // Emit an event with message details
        emit MessageSent(
            messageId,
            _destinationChainSelector,
            _receiver,
            _onBehalfOf,
            _operatorId,
            _token,
            _amount,
            fees
        );

        // Return the message ID
        return messageId;
    }


     function sendWithdraw(
    uint64 _destinationChainSelector,
    address _receiver,
    uint256 _operatorId,
    uint256 _destId,
    address _onBehalfOf,
    string calldata _tokenName,
    uint256 _amount
  )
    external
    payable
    onlyAllowlistedDestinationChain(_destinationChainSelector)
    validateReceiver(_receiver)
    returns (bytes32 messageId)
  {
    // Create an EVM2AnyMessage struct in memory with necessary information for sending a cross-chain message
    Client.EVM2AnyMessage memory evm2AnyMessage = _buildMessage(
      _receiver,
      _operatorId,
      _destId,
      _onBehalfOf,
      _tokenName,
      _amount,
      address(0)
    );

    // Initialize a router client instance to interact with cross-chain router
    IRouterClient router = IRouterClient(this.getRouter());

    // Get the fee required to send the CCIP message
    uint256 fees = router.getFee(_destinationChainSelector, evm2AnyMessage);

    // Ensure the user has sent enough Ether with the transaction to cover the fees
    if (msg.value < fees) {
      revert NotEnoughBalance(msg.value, fees);
    }

    // Send the CCIP message through the router and store the returned CCIP message ID
    messageId = router.ccipSend{value: fees}(_destinationChainSelector, evm2AnyMessage);

    // Emit an event with message details
    emit MessageTransferred(
      messageId,
      _destinationChainSelector,
      _receiver,
      _operatorId,
      _onBehalfOf,
      _tokenName,
      address(0),
      fees
    );

    // Return the CCIP message ID
    return messageId;
  }

    /// handle a received message
    function _ccipReceive(
        Client.Any2EVMMessage memory any2EvmMessage
    )
        internal
        override
    {

    }

    /// @notice Construct a CCIP message.
    /// @dev This function will create an EVM2AnyMessage struct with all the necessary information for programmable tokens transfer.
    /// @param _receiver The address of the receiver.
    /// @param _operatorId mainnet operator Id on the liquid staking
    /// @param _destId The user function to call on destination chain
    /// @param _onBehalfOf The address of a user
    /// @param _tokenName The string data to be sent.
    /// @param _token The token to be transferred.
    /// @param _amount The amount of the token to be transferred.
    /// @param _feeTokenAddress The address of the token used for fees. Set address(0) for native gas.
    /// @return Client.EVM2AnyMessage Returns an EVM2AnyMessage struct which contains information for sending a CCIP message.
    function _buildCCIPMessage(
        address _receiver,
        uint256 _operatorId,
        uint256 _destId,
        address _onBehalfOf,
        string calldata _tokenName,
        address _token,
        uint256 _amount,
        address _feeTokenAddress
    ) private view returns (Client.EVM2AnyMessage memory) {
        // Set the token amounts
        Client.EVMTokenAmount[]
            memory tokenAmounts = new Client.EVMTokenAmount[](1);
        tokenAmounts[0] = Client.EVMTokenAmount({
            token: _token,
            amount: _amount
        });
        // Create an EVM2AnyMessage struct in memory with necessary information for sending a cross-chain message
        return
            Client.EVM2AnyMessage({
                receiver: abi.encode(_receiver), // ABI-encoded receiver address
                data: abi.encode(_tokenName, _amount, _destId, _operatorId, _onBehalfOf), // ABI-encoded string
                tokenAmounts: tokenAmounts, // The amount and type of token being transferred
                extraArgs: Client._argsToBytes(
                    // Additional arguments, setting gas limit
                    Client.EVMExtraArgsV2({
                        gasLimit: gasLimit, // Gas limit for the callback on the destination chain
                        allowOutOfOrderExecution: true // Allows the message to be executed out of order relative to other messages from the same sender
                    })
                ),
                // Set the feeToken to a feeTokenAddress, indicating specific asset will be used for fees
                feeToken: _feeTokenAddress
            });
    }

     function _buildMessage(
    address _receiver,
    uint256 _operatorId,
    uint256 _destId,
    address _onBehalfOf,
    string calldata _tokenName,
    uint256 _amount,
    address _feeTokenAddress
  ) private view returns (Client.EVM2AnyMessage memory) {
    // Create an EVM2AnyMessage struct in memory with necessary information for sending a cross-chain message
    return
      Client.EVM2AnyMessage({
        receiver: abi.encode(_receiver), // ABI-encoded receiver address
        data: abi.encode(_tokenName, _amount, _destId, _operatorId, _onBehalfOf), // ABI-encoded string
        tokenAmounts: new Client.EVMTokenAmount[](0), // Empty array as no tokens are transferred
        extraArgs: Client._argsToBytes(
          // Additional arguments, setting gas limit and allowing out-of-order execution.
          // Best Practice: For simplicity, the values are hardcoded. It is advisable to use a more dynamic approach
          // where you set the extra arguments off-chain. This allows adaptation depending on the lanes, messages,
          // and ensures compatibility with future CCIP upgrades. Read more about it here: https://docs.chain.link/ccip/best-practices#using-extraargs
          Client.EVMExtraArgsV2({
            gasLimit: gasLimit, // Gas limit for the callback on the destination chain
            allowOutOfOrderExecution: true // Allows the message to be executed out of order relative to other messages from the same sender
          })
        ),
        // Set the feeToken to a feeTokenAddress, indicating specific asset will be used for fees
        feeToken: _feeTokenAddress
      });
  }

    /// @notice Fallback function to allow the contract to receive Ether.
    /// @dev This function has no function body, making it a default function for receiving Ether.
    /// It is automatically called when Ether is sent to the contract without any data.
    receive() external payable {}

    /// @notice Allows the contract owner to withdraw the entire balance of Ether from the contract.
    /// @dev This function reverts if there are no funds to withdraw or if the transfer fails.
    /// It should only be callable by the owner of the contract.
    /// @param _beneficiary The address to which the Ether should be sent.
    function withdraw(address _beneficiary) public onlyOwner {
        // Retrieve the balance of this contract
        uint256 amount = address(this).balance;

        // Revert if there is nothing to withdraw
        if (amount == 0) revert NothingToWithdraw();

        // Attempt to send the funds, capturing the success status and discarding any return data
        (bool sent, ) = _beneficiary.call{value: amount}("");

        // Revert if the send failed, with information about the attempted transfer
        if (!sent) revert FailedToWithdrawEth(msg.sender, _beneficiary, amount);
    }

    /// @notice Allows the owner of the contract to withdraw all tokens of a specific ERC20 token.
    /// @dev This function reverts with a 'NothingToWithdraw' error if there are no tokens to withdraw.
    /// @param _beneficiary The address to which the tokens will be sent.
    /// @param _token The contract address of the ERC20 token to be withdrawn.
    function withdrawToken(
        address _beneficiary,
        address _token
    ) public onlyOwner {
        // Retrieve the balance of this contract
        uint256 amount = IERC20(_token).balanceOf(address(this));

        // Revert if there is nothing to withdraw
        if (amount == 0) revert NothingToWithdraw();

        IERC20(_token).safeTransfer(_beneficiary, amount);
    }
}
