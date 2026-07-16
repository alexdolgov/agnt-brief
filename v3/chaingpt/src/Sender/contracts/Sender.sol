// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {IRouterClient} from "@chainlink/contracts-ccip/src/v0.8/ccip/interfaces/IRouterClient.sol";
import {Client} from "@chainlink/contracts-ccip/src/v0.8/ccip/libraries/Client.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Sender is Ownable {

    address immutable i_router;
    mapping(address => uint256) balances;

    // Event emitted when a message is sent to another chain.
    event MessageSent(bytes32 messageId, address sender, address receiver);

    /**
     * @dev Initializes the contract with the router address.
     * @param router The address of the router contract.
     */
    constructor(address router) {
        i_router = router;
    }

    /**
     * @dev default function for receiving Native Balance
     */
    receive() external payable {
    }

    /**
     * @dev Retrieves the gas fee.
     * @param destinationAddress The address of the receiver contract.
     * @param seller The address of the seller.
     * @param amount The amount for which the fee is queried.
     * @return The fee amount.
     */
    function getFee(
        address destinationAddress,
        address seller,
        uint256 amount
    ) external view returns (uint256) {
        uint64 destinationChainSelector = 5009297550715157269;

        Client.EVM2AnyMessage memory message = Client.EVM2AnyMessage({
            receiver: abi.encode(destinationAddress),
            data: abi.encodeWithSignature(
                "transferTokensWithFee(address,address,uint256)",
                msg.sender,
                seller,
                amount
            ),
            tokenAmounts: new Client.EVMTokenAmount[](0),
            extraArgs: "",
            feeToken: address(0)
        });

        uint256 fee = IRouterClient(i_router).getFee(
            destinationChainSelector,
            message
        );

        return fee;
    }

    /**
     * @dev Initiates a transfer of ERC20 token .
     * @param destinationAddress The address of the receiver contract.
     * @param seller The address of the seller.
     * @param amount The amount of token to transfer.
     */
    function send(
        address destinationAddress,
        address seller,
        uint256 amount
    ) external payable {
        uint64 destinationChainSelector = 5009297550715157269;

        Client.EVM2AnyMessage memory message = Client.EVM2AnyMessage({
            receiver: abi.encode(destinationAddress),
            data: abi.encodeWithSignature(
                "transferTokensWithFee(address,address,uint256)",
                msg.sender,
                seller,
                amount
            ),
            tokenAmounts: new Client.EVMTokenAmount[](0),
            extraArgs: "",
            feeToken: address(0)
        });

        uint256 fee = IRouterClient(i_router).getFee(
            destinationChainSelector,
            message
        );

        bytes32 messageId;

        if (fee > msg.value) {
            revert("Not Enough Balance to pay fee");
        }

        balances[msg.sender] += (msg.value - fee);
        messageId = IRouterClient(i_router).ccipSend{value: fee}(
            destinationChainSelector,
            message
        );

        emit MessageSent(messageId, msg.sender, seller);
    }

    /**
     * @dev Retrieves the balance of contract.
     * @return The balance of this contract.
     */
    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
   
    /**
     * @dev Allows the owner to withdraw a specified amount of Native balance.
     * @param to The recipient address to receive the Native balance.
     * @param amount The amount of Native balance to withdraw.
     */
    function withdrawMatic(address to, uint256 amount)
        external
        onlyOwner
    {
        require(
            amount <= address(this).balance,
            "Required balance not available"
        );
        payable(to).transfer(amount);
    }

}