// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface ILRTUnstakingVault {
    error CallerNotLRTProxy();
    error CallerNotLRTWithdrawalManager();

    event SharesUnstakingAdded(address asset, uint256 amount);
    event SharesUnstakingReduced(address asset, uint256 amount);
    event Redeemed(address asset, uint256 amount);
    event EthReceived(address sender, uint256 amount);

    function sharesUnstaking(address asset) external view returns (uint256);

    function getAssetsUnstaking(address asset) external view returns (uint256);

    function balanceOf(address asset) external view returns (uint256);

    function addSharesUnstaking(address asset, uint256 amount) external;

    function reduceSharesUnstaking(address asset, uint256 amount) external;

    function redeem(address asset, uint256 amount) external;
}
