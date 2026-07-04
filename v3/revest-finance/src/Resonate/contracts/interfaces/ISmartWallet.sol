// SPDX-License-Identifier: GNU-GPL v3.0 or later

pragma solidity ^0.8.0;

/// @author RobAnon

interface ISmartWallet {
    function MASTER() external view returns (address master);

    function RESONATE() external view returns (address resonate);

    function reclaimPrincipal(
        address vaultAdapter,
        address receiver,
        uint256 amountUnderlying,
        uint256 totalShares,
        bool leaveResidual
    ) external returns (uint256 residual);

    function reclaimInterestAndResidual(
        address vaultAdapter,
        address receiver,
        uint256 amountUnderlying,
        uint256 totalShares,
        uint256 residual
    ) external returns (uint256 interest, uint256 sharesRedeemed);

    function redeemShares(address vaultAdapter, address receiver, uint256 totalShares)
        external
        returns (uint256 amountUnderlying);

    //Future Proofing to allow for bribe system
    function proxyCall(
        address token,
        address vault,
        address vaultToken,
        address[] memory targets,
        uint256[] memory values,
        bytes[] memory calldatas
    ) external;

    function withdrawOrDeposit(address vaultAdapter, uint256 amount, bool isWithdrawal) external;
}
