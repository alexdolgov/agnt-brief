// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

interface IRestakingPod {
    event Received(address _sender, uint256 _amount);
    event EigenLayerOperatorDelegated(address _delegateAddress);
    event EigenLayerOperatorUndelegated(address _delegateAddress);
    event StakedButNotVerifiedEthChanged(uint256 _oldAmount, uint256 _newAmount);
    event RestakingPodManagerChanged(address _oldPodManager, address _podManager);

    function eigenLayerEigenPod() external returns (address);
    function withdrawCredentials() external view returns (bytes memory);
    function claimDelayedWithdrawals() external;
    function setStakedButNotVerifiedEth(uint256 _amount) external;
    function stake(bytes calldata _pubkey, bytes calldata _signature, bytes32 _depositDataRoot) external payable;
    function getClaimableDelayedWithdrawals() external view returns (uint256);
}
