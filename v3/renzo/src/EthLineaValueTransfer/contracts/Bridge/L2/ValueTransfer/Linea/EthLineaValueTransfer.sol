// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import { IValueTransferBridge, Quote } from "../IValueTransferBridge.sol";
import { IMessageService } from "./Interfaces/IMessageService.sol";
import "../../../../Errors/Errors.sol";

/**
 * @author  Renzo
 * @title   EthLineaValueTransfer
 * @dev     Transfers ETH to mainnet via the standard bridge
 * @notice  Quote are not supported
 */
contract EthLineaValueTransfer is IValueTransferBridge {
    /// @dev Event to track bridged value
    event ValueBridged(address indexed to, address token, uint256 amount);

    /// @dev Address of the native token used in events
    address public constant ETH_NATIVE_TOKEN_ADDRESS = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    /// @dev Address of the xRenzo bridge on the L1 used to receive ETH
    address public immutable l1xRenzoBridge; // Destination where all ETH is bridged

    /// @dev Address of the L2 message service used to send messages
    IMessageService public immutable messageService; // 0x508Ca82Df566dCD1B0DE8296e70a96332cD644ec on Linea mainnet


    constructor(IMessageService _messageService, address _l1xRenzoBridge) {
        // Verify addresses are not 0
        if (address(_messageService) == address(0) || _l1xRenzoBridge == address(0))
            revert InvalidZeroInput();

        messageService = _messageService;
        l1xRenzoBridge = _l1xRenzoBridge;
    }

    /**
     * @notice  Quote not supported as all tokens are transferred at 1:1
     * @dev     .
     * @return  Quote[]  .
     */
    function quoteTransferRemote(
        uint32 /*destinationDomain*/,
        bytes32 /*recipient*/,
        uint256 /*amountOut*/
    ) external pure returns (Quote[] memory) {
        return new Quote[](0);
    }

    /**
     * @notice  Transfers ETH to mainnet via the standard bridge
     * @dev     .
     * @param   .
     * @param   .   should always be ETH
     * @param   .  amount to send
     * @return  transferId  always 0
     */
    function transferRemote(
        uint32 /*destinationDomain - always mainnet*/,
        bytes32 /*recipient - always destination contract*/,
        uint256 /*amount - always full amount*/
    ) external payable returns (bytes32 transferId) {
        if (msg.value == 0) revert UnsupportedWithdrawAsset();

        // Get the minimum fee required to send a message
        uint256 fee = messageService.minimumFeeInWei();

        // Trigger the bridge
        messageService.sendMessage{ value: msg.value }(
            l1xRenzoBridge,
            fee,
            new bytes(0) // No calldata needed for ETH transfer
        );

        emit ValueBridged(l1xRenzoBridge, ETH_NATIVE_TOKEN_ADDRESS, msg.value);
        return 0;
    }
}
