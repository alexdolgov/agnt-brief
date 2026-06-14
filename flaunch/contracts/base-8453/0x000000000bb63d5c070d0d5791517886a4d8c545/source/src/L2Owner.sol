// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {ICrossDomainMessenger} from "./interfaces/ICrossDomainMessenger.sol";

import {ERC721Holder} from "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import {ERC1155Holder} from "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol";

/**
 * Owner contract for protocol on Optimism L2s. Only accepts messages from the TimelockController on L1.
 */
contract L2Owner is ERC721Holder, ERC1155Holder {
    address public immutable RELAYER_ADDRESS;
    ICrossDomainMessenger public immutable L2_CROSS_DOMAIN_MESSENGER;
    address public immutable L1_TIMELOCK_CONTROLLER;

    struct L2ExecuteParams {
        address target;
        uint256 value;
        bytes payload;
    }

    event L2TxExecuted(address indexed target, uint256 value, bytes payload);

    error CrossChainSenderIsNotTimelockController();
    error L2ExecuteTxReverted();

    /**
     * Registers our contract references.
     *
     * @param _RELAYER_ADDRESS The relayer contract address
     * @param _L2_CROSS_DOMAIN_MESSENGER {ICrossDomainMessenger} contract address
     * @param _L1_TIMELOCK_CONTROLLER {TimelockController} contract address on L1
     */
    constructor(
        address _RELAYER_ADDRESS,
        address _L2_CROSS_DOMAIN_MESSENGER,
        address _L1_TIMELOCK_CONTROLLER
    ) {
        RELAYER_ADDRESS = _RELAYER_ADDRESS;
        L2_CROSS_DOMAIN_MESSENGER = ICrossDomainMessenger(
            _L2_CROSS_DOMAIN_MESSENGER
        );
        L1_TIMELOCK_CONTROLLER = _L1_TIMELOCK_CONTROLLER;
    }

    /**
     * Handles L2Execute calls from the L1 TimelockController, initiated via `PORTAL.depositTransaction()`
     */
    function L2Execute(L2ExecuteParams calldata params) external payable {
        // Calculate the expected aliased address of L1_TIMELOCK_CONTROLLER
        address expectedAliasedSender = address(
            uint160(L1_TIMELOCK_CONTROLLER) +
                uint160(0x1111000000000000000000000000000000001111)
        );

        // Ensure the msg.sender is the aliased address of {TimelockController}
        if (msg.sender != expectedAliasedSender) {
            revert CrossChainSenderIsNotTimelockController();
        }

        // Execute the transaction
        (bool success, ) = params.target.call{value: params.value}(
            params.payload
        );
        if (!success) {
            revert L2ExecuteTxReverted();
        }

        // Emit event
        emit L2TxExecuted(params.target, params.value, params.payload);
    }

    /**
     * @dev Contract might receive/hold ETH as part of the maintenance process.
     */
    receive() external payable {}
}
