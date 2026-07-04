// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import { ITokenRelayer } from "../interfaces/ITokenRelayer.sol";

library MessageCodec {
    /// @notice Encodes a message to be relayed
    /// @param account the sender of the message
    /// @param amount the amount of bridge tokens affected by the action
    /// @param srcLiquidity the current total liquidity on the source chain
    /// @param action the type of action taken on the src chain
    /// @return message the encoded message
    function encodeMessage(
        address account,
        uint256 amount,
        uint256 srcLiquidity,
        ITokenRelayer.Action action
    ) internal pure returns (bytes memory message) {
        message = abi.encode(account, amount, srcLiquidity, action);
    }

    /// @notice decodes the message to get the account to credit and credit amount
    /// @param message the message to decode
    /// @return account the sender of the message
    /// @return amount the amount of bridge tokens affected by the action
    /// @return srcLiquidity the current total liquidity on the source chain
    /// @return action the type of action taken on the src chain
    function decode(
        bytes calldata message
    )
        internal
        pure
        returns (
            address account,
            uint256 amount,
            uint256 srcLiquidity,
            ITokenRelayer.Action action
        )
    {
        (account, amount, srcLiquidity, action) = abi.decode(
            message,
            (address, uint256, uint256, ITokenRelayer.Action)
        );
    }
}
