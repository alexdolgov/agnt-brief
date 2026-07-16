// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import { IStrategy } from "./IStrategy.sol";

interface ILRTConverter {
    error NotEnoughAssetToTransfer();
    error TokenTransferFailed();
    error InvalidWithdrawer();
    error WithdrawalRootNotPending();
    error WithdrawalRootAlreadyProcess();
    error ConversionLimitReached();
    error WithdrawalRootNotProcessed();
    error MinimumExpectedReturnNotReached();

    event ConvertedEigenlayerAssetToRsEth(address indexed reciever, uint256 rsethAmount, bytes32 withdrawalRoot);
    event ETHSwappedForLST(uint256 ethAmount, address indexed toAsset, uint256 returnAmount);

    function convertEigenlayerAssetToRsEth(
        IStrategy.QueuedWithdrawal calldata queuedWithdrawal,
        uint256 minimumExpectedReturn
    )
        external
        returns (bytes32 withdrawalRoot);
    function ethValueInWithdrawal() external view returns (uint256);
}
