// SPDX-License-Identifier: AGPLv3
pragma solidity ^0.8.24;

import {IReserve} from "./IReserve.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title ERC20TokenManager
 * @author Ramarti
 * @notice This contract manages pulling and pushing ERC20 tokens
 * @dev This is an abstract contract that uses SafeERC20 for token transfers
 */
abstract contract ERC20TokenManager {
    using SafeERC20 for ERC20;

    /**
     * @dev Error thrown when an operation involves the zero address
     */
    error ZeroAddress();

    /**
     * @dev Modifier to check if the provided address is not the zero address
     * @param _address The address to check
     */
    modifier nonZeroAddress(address _address) {
        if (_address == address(0)) revert ZeroAddress();
        _;
    }

    /**
     * @notice Request tokens from a given address and store them in this contract
     * @dev Uses SafeERC20's safeTransferFrom to securely transfer tokens
     * @param reserve The address fo the liquidity reserve
     * @param token The address of the ERC20 token contract
     * @param from The address to request tokens from
     * @param amount The amount of tokens to request
     */
    function _pullTokens(
        address reserve,
        address token,
        address from,
        uint256 amount
    ) internal {
        if (address(token) == address(0)) revert ZeroAddress();
        if (address(from) == address(0)) revert ZeroAddress();
        uint8 decimals = ERC20(token).decimals();
        amount = (amount * 10 ** decimals) / 10 ** 18;
        ERC20(token).safeTransferFrom(from, reserve, amount);
    }

    /**
     * @notice Send tokens to a given address
     * @dev Uses SafeERC20's safeTransfer to securely transfer tokens
     * @param reserve The address fo the liquidity reserve
     * @param token The address of the ERC20 token contract
     * @param to The address to send tokens to
     * @param amount The amount of tokens to send
     */
    function _sendTokens(
        address reserve,
        address token,
        address to,
        uint256 amount
    ) internal {
        if (address(reserve) == address(0)) revert ZeroAddress();
        if (address(token) == address(0)) revert ZeroAddress();
        if (address(to) == address(0)) revert ZeroAddress();
        uint8 decimals = ERC20(token).decimals();
        amount = (amount * 10 ** decimals) / 10 ** 18;
        IReserve(reserve).transfer(token, to, amount);
    }

    /**
     * @notice Send all tokens of a specific type to a given address
     * @dev Uses SafeERC20's safeTransfer to securely transfer tokens
     * @param token The address of the ERC20 token contract
     * @param to The address to send tokens to
     * @return The amount of tokens sent
     */
    function _drainTokens(
        address token,
        address to
    ) internal returns (uint256) {
        if (address(token) == address(0)) revert ZeroAddress();
        if (address(to) == address(0)) revert ZeroAddress();
        uint256 balance = ERC20(token).balanceOf(address(this));
        ERC20(token).safeTransfer(to, balance);
        return balance;
    }
}
