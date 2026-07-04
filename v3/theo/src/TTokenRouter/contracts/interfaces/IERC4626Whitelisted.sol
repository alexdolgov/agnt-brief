// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {ITheoWhitelist} from "./ITheoWhitelist.sol";

interface IERC4626Whitelisted is IERC4626 {
    /// @notice Transfer status update
    event TransferStatusUpdate(TransferStatus status);

    /**
     * @dev Attempted to transfer tokens when the transfer status is CLOSED
     */
    error UnauthorizedTransferClosed();

    /**
     * @dev Atempted to set the whitelist contract to an invalid address
     */
    error InvalidWhitelistAddress(address whitelistAddress);

    /**
     *   @notice Status of the Token
     * - OPEN: Token is open for all transfers
     * - CLOSED: Token is closed all transfers
     * - ONLY_WHITELISTED: Token is open for transfers, but only for whitelisted users
     */
    enum TransferStatus {
        OPEN,
        CLOSED,
        ONLY_WHITELISTED
    }

    /// @notice returns the current transfer status of the token
    function transferStatus() external view returns (TransferStatus);

    /// @notice sets the transfer status of the token
    function setTransferStatus(TransferStatus status) external;

    /// @notice returns if an account can transfer tokens
    function canTransfer(address account) external view returns (bool);

    /// @notice returns address of the Whitelist contract
    function whitelistContract() external view returns (ITheoWhitelist);

    /// @notice sets the Whitelist contract address
    function setWhitelistContract(ITheoWhitelist whitelistContract) external;
}
