// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./RefundState.sol";

abstract contract RefundInternal is RefundState {
    ///@dev collateral receives user refund amount if the time has not expired
    function _handleCollateralWithdraw(uint256 poolId, uint256 amount)
        internal
        firewallProtectedSig(0xf6071d4c)
    {
        if (!collateralProvider.isPoolFinished(poolIdToCollateralId[poolId])) {
            collateralProvider.handleWithdraw(
                poolIdToCollateralId[poolId],
                amount
            );
        }
    }

    ///@dev transfer data NFT (poolId + 1) to the pool owner
    function _transferDataNFT(
        uint256 poolId,
        uint256 userDataPoolId,
        uint256 amount,
        uint256 amountToBeWithdrawn
    ) internal firewallProtectedSig(0x3ef1dad7) {
        if (amount > amountToBeWithdrawn) {
            lockDealNFT.safeTransferFrom(
                address(this),
                lastPoolOwner[poolId],
                userDataPoolId
            );
        }
    }

    function _registerPool(uint256 poolId, uint256[] memory params)
        internal
        firewallProtectedSig(0xa635fdec)
        validParamsLength(params.length, currentParamsTargetLength())
    {
        poolIdToCollateralId[poolId] = params[0];
        emit UpdateParams(poolId, params);
    }
}
