// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import {Client} from "@chainlink/contracts-ccip/contracts/libraries/Client.sol";
import {IRouterClient} from "@chainlink/contracts-ccip/contracts/interfaces/IRouterClient.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract GHOAvalancheTest {
    using SafeERC20 for IERC20;

    address internal constant CCIP_ROUTER = 0xF4c7E640EdA248ef95972845a62bdC74237805dB;
    uint64 internal constant ETHEREUM_CHAINS_SELECTOR = 5009297550715157269;

    address public constant owner = 0x8FA9aa69a6e94c1cd49FbF214C833B2911D02553;

    address public l1Receiver;

    error NotEnoughBalance();

    event TokensTransferred(
        bytes32 indexed messageId,
        uint64 indexed destinationChainSelector,
        address receiver,
        address token,
        uint256 tokenAmount,
        address feeToken,
        uint256 fees
    );

    function updateL2Reciever(address receiver) public {
        require(msg.sender == owner);
        l1Receiver = receiver;
    }

    function _buildCCIPMessage(address _receiver, address _token, uint256 _amount, address _feeTokenAddress)
        private
        pure
        returns (Client.EVM2AnyMessage memory)
    {
        // Set the token amounts
        Client.EVMTokenAmount[] memory tokenAmounts = new Client.EVMTokenAmount[](1);
        tokenAmounts[0] = Client.EVMTokenAmount({token: _token, amount: _amount});

        // Create an EVM2AnyMessage struct in memory with necessary information for sending a cross-chain message
        return Client.EVM2AnyMessage({
            receiver: abi.encode(_receiver), // ABI-encoded receiver address
            data: "", // No data
            tokenAmounts: tokenAmounts, // The amount and type of token being transferred
            extraArgs: Client._argsToBytes(
                // Additional arguments, setting gas limit and allowing out-of-order execution.
                // Best Practice: For simplicity, the values are hardcoded. It is advisable to use a more dynamic approach
                // where you set the extra arguments off-chain. This allows adaptation depending on the lanes, messages,
                // and ensures compatibility with future CCIP upgrades. Read more about it here: https://docs.chain.link/ccip/concepts/best-practices/evm#using-extraargs
                Client.GenericExtraArgsV2({
                    gasLimit: 0, // Gas limit for the callback on the destination chain
                    allowOutOfOrderExecution: true // Allows the message to be executed out of order relative to other messages from the same sender
                })
            ),
            // Set the feeToken to a feeTokenAddress, indicating specific asset will be used for fees
            feeToken: _feeTokenAddress
        });
    }

    /// @notice Transfer tokens to receiver on the destination chain.
    /// @notice Pay in native gas such as ETH on Ethereum or POL on Polygon.
    /// @notice the token must be in the list of supported tokens.
    /// @notice This function can only be called by the owner.
    /// @dev Assumes your contract has sufficient native gas like ETH on Ethereum or POL on Polygon.
    /// @param _token token address.
    /// @param _amount token amount.
    /// @return messageId The ID of the message that was sent.
    function birdgeTokensPayNative(address _token, uint256 _amount)
        external
        payable
        returns (bytes32 messageId, uint256 fees)
    {
        require(msg.sender == owner);

        // Create an EVM2AnyMessage struct in memory with necessary information for sending a cross-chain message
        // address(0) means fees are paid in native gas
        Client.EVM2AnyMessage memory evm2AnyMessage = _buildCCIPMessage(l1Receiver, _token, _amount, address(0));

        // Get the fee required to send the message
        fees = IRouterClient(CCIP_ROUTER).getFee(ETHEREUM_CHAINS_SELECTOR, evm2AnyMessage);

        if (fees > msg.value) {
            revert NotEnoughBalance();
        }

        // approve the Router to spend tokens on contract's behalf. It will spend the amount of the given token
        IERC20(_token).approve(CCIP_ROUTER, _amount);

        // Send the message through the router and store the returned message ID
        messageId = IRouterClient(CCIP_ROUTER).ccipSend{value: fees}(ETHEREUM_CHAINS_SELECTOR, evm2AnyMessage);

        // Emit an event with message details
        emit TokensTransferred(messageId, ETHEREUM_CHAINS_SELECTOR, l1Receiver, _token, _amount, address(0), fees);
    
        (bool success,) = payable(msg.sender).call{value: address(this).balance}("");
        require(success, "ETH transfer failed");
    }

    function rescue(address token) public {
        uint256 balance = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransfer(owner, balance);
    }
}

