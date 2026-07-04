// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.0;

interface ICreditEnforcer {
    /// @notice Issue the stablecoin, check the debt cap and solvency
    /// @param amount Transfer amount of the underlying
    function mintStablecoin(uint256 amount) external returns (uint256);

    /// @notice Issue the stablecoin to a recipient, check the debt cap and
    /// solvency
    /// @param amount Transfer amount of the underlying
    function mintStablecoin(
        address to,
        uint256 amount
    ) external returns (uint256);

    /// @notice Issue the savingcoin to the sender, check the debt cap and
    /// solvency
    /// @param amount Underlying amount
    function mintSavingcoin(uint256 amount) external returns (uint256);

    /// @notice Issue the savingcoin to a recipient, check the debt cap and
    /// solvency
    /// @param to Receiver address
    /// @param amount Underlying amount
    function mintSavingcoin(
        address to,
        uint256 amount
    ) external returns (uint256);
}

interface IPegStabilityModule {
    /// @notice Redeem the underlying to the sender for stablecoin
    /// @param amount Underlying amount
    function redeem(uint256 amount) external;

    /// @notice Redeem the underlying to a recipient for stablecoin
    /// @param to Receiver address
    /// @param amount Underlying amount
    function redeem(address to, uint256 amount) external;
}

interface ISavingModule {
    /// @notice Mint srUSD to one address and burn rUSD from the other
    /// @param from Sender address
    /// @param to Receiver address
    /// @param amount Burned rUSD
    function mint(address from, address to, uint256 amount) external;

    /// @notice Calculates the amount of srUSD that will be minted
    /// @param amount Burned rUSD
    /// @return uint256 Minted srUSD
    function previewMint(uint256 amount) external view returns (uint256);

    /// @notice Burn srUSD from the sender address and mint rUSD to it
    /// @param amount Minted rUSD
    function redeem(uint256 amount) external;

    /// @notice Burn srUSD from the sender address and mint rUSD to the other
    /// @param to Receiver address
    /// @param amount Minted rUSD
    function redeem(address to, uint256 amount) external;

    /// @notice Calculates the amount of srUSD that will be burned
    /// @param amount Minted rUSD
    /// @return uint256 Burned srUSD
    function previewRedeem(uint256 amount) external view returns (uint256);

    function currentPrice() external view returns (uint256);

    function redeemFee() external view returns (uint256);
}
