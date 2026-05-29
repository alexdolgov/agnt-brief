// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.5.0;

interface IFeeSplitter {

    /// @notice Emitted when fees are distributed.
    /// @param sender The address initiating the fee distribution.
    /// @param token The token being distributed.
    /// @param recipientA The first recipient of the fee distribution.
    /// @param recipientB The second recipient of the fee distribution.
    /// @param amount0 The amount of the token being deposited to recipientA.
    /// @param amount0 The amount of the token being deposited to recipientB.
    event FeeDistributed(
        address sender,
        address indexed token,
        address indexed recipientA,
        address indexed recipientB,
        uint256 amount0,
        uint256 amount1
    );

    /// @notice Emitted when extra tokens are swept.
    /// @param sender The address initiating the sweep.
    /// @param token The token being swept.
    /// @param recipient recipient of the token.
    /// @param amount The amount of the token being swept.
    event SweepExtraTokens(
        address sender,
        address indexed token,
        address indexed recipient,
        uint256 amount
    );

    function token0() external view returns(address);
    function token1() external view returns(address);
    function recipientA() external view returns(address);
    function recipientB() external view returns(address);
    function ratio() external view returns(uint256);

    function distributeFees() external;

    function updateRecipientAddresses(address _recipientA, address _recipientB) external;
    function updateRatio(uint256 _ratio) external;
    function sweepExtraTokens(address _token, address _recipient) external;

}
