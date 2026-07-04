// SPDX-License-Identifier: GNU-GPL v3.0 or later

pragma solidity ^0.8.0;

/// @author RobAnon

interface IPoolWallet {
    function MASTER() external view returns (address master);

    function RESONATE() external view returns (address resonate);

    function depositAndTransfer(uint256 amountTokens, address vaultAddress, address smartWallet)
        external
        returns (uint256 shares);

    function withdraw(uint256 value, uint256 fee, address token, address recipient, address devWallet) external;

    function withdrawFromVault(uint256 amount, address receiver, address vault) external returns (uint256 tokens);

    function activateExistingConsumerPosition(
        uint256 amountUnderlying,
        uint256 totalShares,
        address fnftWallet,
        address devWallet,
        address vaultAdapter
    ) external returns (uint256 shares, uint256 interest);

    function activateExistingProducerPosition(
        uint256 amountUnderlying,
        uint256 totalShares,
        uint256 fee,
        address consumer,
        address devWallet,
        address vaultAdapter
    ) external returns (uint256 interest);
}
