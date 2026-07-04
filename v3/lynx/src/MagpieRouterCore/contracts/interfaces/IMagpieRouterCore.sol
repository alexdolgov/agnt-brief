// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface IMagpieRouterCore {
    event UpdateWhitelist(address indexed sender, address caller, bool value);

    /// @dev Allows the owner to update the whitelisted contracts.
    /// @param caller Caller address.
    /// @param value Disable or enable the related caller.
    function updateWhitelist(address caller, bool value) external;

    /// @dev Called by the owner to pause, triggers stopped state.
    function pause() external;

    /// @dev Called by the owner to unpause, returns to normal state.
    function unpause() external;

    /// @dev Makes it possible to execute multiple functions in the same transaction.
    function multicall(bytes[] calldata data) external returns (bytes[] memory results);

    /// @dev Performs token swap without a signature (data will be validated in the bridge) without triggering event.
    /// @return amountOut The amount received after swapping.
    function swapWithoutSignature(
        bytes calldata swapArgs
    ) external payable returns (uint256 amountOut, uint256 gasUsed);
}
