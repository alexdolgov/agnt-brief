// The following code is based on the Shardlabs' source code of Lido for Polygon
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.25;

import "@openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

interface IKnBONE is IERC20Upgradeable {
    /// @notice The request withdraw struct.
    /// @param amount2WithdrawFromKnBONE amount in BONE.
    /// @param validatorNonce validator nonce.
    /// @param requestEpoch request epoch.
    /// @param validatorAddress validator share address.
    struct RequestWithdraw {
        uint256 amount2WithdrawFromKnBONE;
        uint256 validatorNonce;
        uint256 requestEpoch;
        address validatorAddress;
    }

    /// @notice The fee distribution struct.
    /// @param dao dao fee.
    /// @param operators operators fee.
    /// @param instantPool instant pool fee.
    /// @param staking L2 staking fee.
    struct FeeDistribution {
        uint8 dao;
        uint8 operators;
        uint8 instantPool;
        uint8 staking;
    }

    function requestWithdrawSplit(uint256 _instantPoolAmount, uint256 _requestWithdrawAmount, address _user) external returns(uint256);

    function withdrawTotalDelegated(address _validatorShare) external;

    ////////////////////////////////////////////////////////////
    /////                                                    ///
    /////                 ***EVENTS***                       ///
    /////                                                    ///
    ////////////////////////////////////////////////////////////

    /// @notice Emit when submit.
    /// @param _from msg.sender.
    /// @param _amount amount.
    /// @param _receiver receiver address.
    /// @param _transferToL2 whether or not transfer to L2 was done.
    event SubmitEvent(address indexed _from, uint256 _amount, address indexed _receiver, bool _transferToL2);

    /// @notice Emits when instant pool is used.
    /// @param _from user to withdraw,
    /// @param _amountWithFeeInBONE total amount to withdraw in BONE.
    /// @param _feeAmountInBONE fee amount in BONE.
    event InstantPoolWithdraw(address indexed _from, uint256 _amountWithFeeInBONE, uint256 _feeAmountInBONE);

    /// @notice Emit when request withdraw.
    /// @param _from user to withdraw.
    /// @param _amountInBONE amount in BONE.
    event RequestWithdrawEvent(address indexed _from, uint256 _amountInBONE);

    /// @notice Emits when any kind of withdraw is done.
    /// @param _from user to withdraw.
    /// @param _totalAmountInKnBONE total amount to withdraw in knBONE.
    event RequestWithdrawSplit(address indexed _from, uint256 _totalAmountInKnBONE);

    /// @notice Emit when distribute rewards.
    /// @param _amount amount distributed.
    /// @param totalPooledBefore totalPooled variable at the start of transaction.
    /// @param totalPooledAfter totalPooled varable at the end of transaction.
    event DistributeRewardsEvent(uint256 indexed _amount, uint256 indexed totalPooledBefore, uint256 indexed totalPooledAfter);

    /// @notice Emit when withdraw total delegated.
    /// @param _from msg.sender.
    /// @param _amount amount.
    event WithdrawTotalDelegatedEvent(
        address indexed _from,
        uint256 indexed _amount
    );

    /// @notice Emit when delegate.
    /// @param _amountDelegated amount to delegate.
    /// @param _remainder remainder.
    event DelegateEvent(
        uint256 indexed _amountDelegated,
        uint256 indexed _remainder
    );

    /// @notice Emit when ClaimTokens.
    /// @param _from msg.sender.
    /// @param _id token id.
    /// @param _amountClaimed amount Claimed.
    event ClaimTokensEvent(
        address indexed _from,
        uint256 indexed _id,
        uint256 indexed _amountClaimed
    );

    /// @notice Emit when set new NodeOperatorRegistryAddress.
    /// @param _newNodeOperatorRegistryAddress the new NodeOperatorRegistryAddress.
    event SetNodeOperatorRegistryAddress(
        address indexed _newNodeOperatorRegistryAddress
    );

    /// @notice Emit when set new SetDelegationLowerBound.
    /// @param _delegationLowerBound the old DelegationLowerBound.
    event SetDelegationLowerBound(uint256 indexed _delegationLowerBound);

    /// @notice Emit when set new RewardDistributionLowerBound.
    /// @param oldRewardDistributionLowerBound the old RewardDistributionLowerBound.
    /// @param newRewardDistributionLowerBound the new RewardDistributionLowerBound.
    event SetRewardDistributionLowerBound(
        uint256 oldRewardDistributionLowerBound,
        uint256 newRewardDistributionLowerBound
    );

    /// @notice Emit when set new unstBONE.
    /// @param oldUnstBONE the old unstBONE.
    /// @param newUnstBONE the new unstBONE.
    event SetUnstBONE(address oldUnstBONE, address newUnstBONE);

    /// @notice Emit when set new DAO.
    /// @param oldDaoAddress the old DAO.
    /// @param newDaoAddress the new DAO.
    event SetDaoAddress(address oldDaoAddress, address newDaoAddress);

    /// @notice Emit when set fees.
    /// @param daoFee the new daoFee
    /// @param operatorsFee the new operatorsFee
    /// @param instantPoolFee the new instantPoolFee
    /// @param stakingFee the new stakingFee
    event SetFees(uint256 daoFee, uint256 operatorsFee, uint256 instantPoolFee, uint256 stakingFee);

    /// @notice Emit when set ProtocolFee.
    /// @param oldProtocolFee the new ProtocolFee
    /// @param newProtocolFee the new ProtocolFee
    event SetProtocolFee(uint8 oldProtocolFee, uint8 newProtocolFee);

    /// @notice Emits when instantPoolUsageFee is set.
    /// @param oldInstantPoolUsageFee old instantPoolUsageFee
    /// @param newInstantPoolUsageFee new instantPoolUsageFee
    event SetInstantPoolUsageFee(uint256 oldInstantPoolUsageFee, uint256 newInstantPoolUsageFee);

    /// @notice Emits when instantPool is set.
    /// @param instantPool new instantPool
    event SetInstantPool(address instantPool);

    /// @notice Emits when depositManager is set.
    /// @param depositManager new depositManager
    event SetDepositManager(address depositManager);

    /// @notice Emits when bridge is set.
    /// @param bridge new bridge
    event SetBridge(address bridge);

    /// @notice Emits when l2Staking is set.
    /// @param l2Staking new l2Staking
    event SetL2Staking(address l2Staking);

    /// @notice Emit when set ProtocolFee.
    /// @param validatorShare vaidatorshare address.
    /// @param amountClaimed amount claimed.
    event ClaimTotalDelegatedEvent(
        address indexed validatorShare,
        uint256 indexed amountClaimed
    );
}
