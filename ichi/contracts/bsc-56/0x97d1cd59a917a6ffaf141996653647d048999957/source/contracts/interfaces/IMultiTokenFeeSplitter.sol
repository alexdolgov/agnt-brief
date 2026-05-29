// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.5.0;
pragma abicoder v2;

interface IMultiTokenFeeSplitter {

    struct FeeReceived {
        address recipient;
        uint256 amount;
    }

    /// @notice Emitted when fees for a token are distributed.
    /// @param sender The address initiating the fee distribution.
    /// @param token The token being distributed.
    /// @param recipients The recipients of the fee distribution and distribution amounts.
    event FeeDistributed(
        address indexed sender,
        address indexed token,
        FeeReceived[] recipients
    );

    /// @notice Emitted when extra tokens are swept.
    /// @param sender The address initiating the sweep.
    /// @param token The token being swept.
    /// @param recipient The recipient of the swept tokens.
    /// @param amount The amount of the token being swept.
    event SweepExtraTokens(
        address indexed sender,
        address indexed token,
        address indexed recipient,
        uint256 amount
    );

    /// @notice Emitted when a new token is registered for fee distribution.
    /// @param token The token being registered.
    event TokenRegistered(
        address indexed token
    );

    /// @notice Emitted when a token is unregistered from fee distribution.
    /// @param token The token being unregistered.
    event TokenUnregistered(
        address indexed token
    );

    /// @notice Emitted when the list of recipients is updated.
    /// @param oldRecipients The previous list of recipients.
    /// @param newRecipients The new list of recipients.
    event RecipientsUpdated(
        address[] oldRecipients,
        address[] newRecipients
    );

    /// @notice Emitted when the distribution ratios are updated.
    /// @param oldRatios The previous list of ratios.
    /// @param newRatios The new list of ratios.
    event RatiosUpdated(
        uint256[] oldRatios,
        uint256[] newRatios
    );

    function registeredTokens() external view returns(address[] memory _tokens);
    function recipients() external view returns(address[] memory _recipients);
    function ratios() external view returns(uint256[] memory _ratios);
    function tokensCount() external view returns(uint256);

    function distributeAllFees() external;
    function distributeFees(uint256 _page, uint256 _pageSize) external;
    function registerToken(address _token) external;
    function unregisterToken(address _token) external;

    function updateRecipientAddresses(address[] memory _recipients) external;
    function updateRatios(uint256[] memory _ratios) external;
    function sweepExtraTokens(address _token, address _recipient) external;

    function feeSplitterFactory() external view returns(address);
}
