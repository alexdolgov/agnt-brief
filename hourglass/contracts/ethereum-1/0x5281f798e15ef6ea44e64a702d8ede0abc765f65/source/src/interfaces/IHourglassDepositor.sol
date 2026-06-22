// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IHourglassDepositor {
    // deposit
    function depositFor(address _account, uint256 _amount, bool receiveSplit) external;
    function depositTo(address principalRecipient, address pointRecipient, uint256 amount, bool receiveSplit)
        external;
    function enter(uint256 amount) external;

    // getters
    function maturity() external view returns (uint256);
    function getUnderlying() external view returns (address);
    function getPointToken() external view returns (address);
    function getPrincipalToken() external view returns (address);
    function getTokens() external view returns (address[] memory);

    // admin
    function setMaxDeposits(uint256 _maxDeposits) external;
    function recoverToken(address _token, address _rewardsDistributor) external returns (uint256 amount);
}

interface IEthFiLUSDDepositor {
    function mintLockedUnderlying(uint256 minMintReceivedSlippageBps, address lusdDepositAsset, address sourceOfFunds)
        external
        returns (uint256 amountDepositAssetMinted);
}
