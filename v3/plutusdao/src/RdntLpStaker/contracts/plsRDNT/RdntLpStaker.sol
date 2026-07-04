// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.16;

import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/structs/EnumerableSetUpgradeable.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import { IMultiFeeDistribution, IChefIncentivesController } from '../interfaces/Radiant.sol';
import { IDelegation, IRdntLpStaker } from './Interfaces.sol';

contract RdntLpStaker is Initializable, Ownable2StepUpgradeable, UUPSUpgradeable, IRdntLpStaker {
  using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;

  IERC20 public constant DLP = IERC20(0x32dF62dc3aEd2cD6224193052Ce665DC18165841);
  uint public constant MAX_LOCK_TYPEINDEX = 3;
  IMultiFeeDistribution public constant UNDERLYING_FARM =
    IMultiFeeDistribution(0x76ba3eC5f5adBf1C58c91e86502232317EeA72dE); // protocol fees
  IChefIncentivesController public constant UNDERLYING_FARM_2 =
    IChefIncentivesController(0xebC85d44cefb1293707b11f707bd3CEc34B4D5fA); // rdnt emissions

  // Fees
  address public constant FEE_COLLECTOR = 0x9c140CD0F95D6675540F575B2e5Da46bFffeD31E;
  uint private constant FEE_DIVISOR = 1e4;

  address public depositor;
  address public operator;
  uint32 public fee; // fee in bp
  EnumerableSetUpgradeable.AddressSet private rewardTokens;

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  function initialize() public virtual initializer {
    __Ownable2Step_init();
    __UUPSUpgradeable_init();

    DLP.approve(address(UNDERLYING_FARM), type(uint).max);
    UNDERLYING_FARM.setDefaultRelockTypeIndex(MAX_LOCK_TYPEINDEX);
    UNDERLYING_FARM.setRelock(true);
    fee = 1200;

    rewardTokens.add(0x3082CC23568eA640225c2467653dB90e9250AaA0);
    rewardTokens.add(0x727354712BDFcd8596a3852Fd2065b3C34F4F770);
    rewardTokens.add(0xd69D402D1bDB9A2b8c3d88D98b9CEaf9e4Cd72d9);
    rewardTokens.add(0x48a29E756CC1C097388f3B2f3b570ED270423b3d);
    rewardTokens.add(0x0D914606f3424804FA1BbBE56CCC3416733acEC6);
    rewardTokens.add(0x0dF5dfd95966753f01cb80E76dc20EA958238C46);
  }

  function stake(uint _amount) external {
    if (msg.sender != depositor) revert UNAUTHORIZED();
    UNDERLYING_FARM.stake(_amount, address(this), MAX_LOCK_TYPEINDEX);
  }

  /**
   * @notice Claim and transfer rewards for whitelisted tokens
   * @param _to recipient address
   * @return _claimedRewardsLessFee RewardData{address token, uint amount}[] with a length equal to RewardTokenCount(). token and amount may be 0 if rewardtokens get removed from dependency.
   */
  function claimProtocolFees(
    address _to
  ) external returns (IMultiFeeDistribution.RewardData[] memory _claimedRewardsLessFee) {
    if (msg.sender != operator) revert UNAUTHORIZED();
    IMultiFeeDistribution.RewardData[] memory _protocolFeeRewards = UNDERLYING_FARM.claimableRewards(address(this));

    UNDERLYING_FARM.getReward(getRewardTokens());

    uint32 _fee = fee;
    uint _arrLen = _protocolFeeRewards.length;
    uint whitelistedRewardTokensLength = rewardTokens.length();
    uint claimedRewardsCount;
    _claimedRewardsLessFee = new IMultiFeeDistribution.RewardData[](whitelistedRewardTokensLength);

    for (uint i; i < _arrLen; i = _unsafeInc(i)) {
      if (rewardTokens.contains(_protocolFeeRewards[i].token)) {
        if (_isNotZero(_protocolFeeRewards[i].amount)) {
          (uint rewardLessFee, ) = _transferLessFee(
            _protocolFeeRewards[i].token,
            _protocolFeeRewards[i].amount,
            _fee,
            _to
          );
          // update reward amount to reflect fee deduction
          _claimedRewardsLessFee[claimedRewardsCount].amount = rewardLessFee;
        }
        _claimedRewardsLessFee[claimedRewardsCount].token = _protocolFeeRewards[i].token;
        claimedRewardsCount = _unsafeInc(claimedRewardsCount);
      }
    }

    if (_protocolFeeRewards.length != whitelistedRewardTokensLength) {
      emit RewardTokensLengthChanged(whitelistedRewardTokensLength, _protocolFeeRewards.length);
    }
  }

  /**
   * @notice Claimable rdnt protocol fees for whitelisted tokens
   * @return _claimableRewardsLessfee RewardData{address token, uint amount}[] with a length equal to RewardTokenCount(). token and amount may be 0 if rewardtokens get removed from dependency.
   */
  function pendingRewardsLessFee()
    external
    view
    returns (IMultiFeeDistribution.RewardData[] memory _claimableRewardsLessfee)
  {
    IMultiFeeDistribution.RewardData[] memory _protocolFeeRewards = UNDERLYING_FARM.claimableRewards(address(this));
    uint32 _fee = fee;
    uint _arrLen = _protocolFeeRewards.length;
    uint whitelistedRewardTokensLength = rewardTokens.length();
    uint claimableRewardsCount;

    _claimableRewardsLessfee = new IMultiFeeDistribution.RewardData[](whitelistedRewardTokensLength);

    for (uint i; i < _arrLen; i = _unsafeInc(i)) {
      if (rewardTokens.contains(_protocolFeeRewards[i].token)) {
        if (_isNotZero(_protocolFeeRewards[i].amount)) {
          uint protocolFee = (_protocolFeeRewards[i].amount * _fee) / FEE_DIVISOR;
          // update reward amount to reflect fee deduction
          _claimableRewardsLessfee[claimableRewardsCount].amount = _protocolFeeRewards[i].amount - protocolFee;
        }

        _claimableRewardsLessfee[claimableRewardsCount].token = _protocolFeeRewards[i].token;
        claimableRewardsCount = _unsafeInc(claimableRewardsCount);
      }
    }
  }

  function getRewardTokens() public view returns (address[] memory rewardTokenArr) {
    uint len = rewardTokens.length();
    rewardTokenArr = new address[](len);

    for (uint i; i < len; i = _unsafeInc(i)) {
      rewardTokenArr[i] = rewardTokens.at(i);
    }
  }

  function getRewardTokenCount() external view returns (uint) {
    return rewardTokens.length();
  }

  function _transferLessFee(
    address _token,
    uint _amount,
    uint32 _fee,
    address _to
  ) private returns (uint rewardLessFee, uint protocolFee) {
    unchecked {
      protocolFee = (_amount * _fee) / FEE_DIVISOR;
      rewardLessFee = _amount - protocolFee;

      IERC20(_token).transfer(_to, rewardLessFee);
      IERC20(_token).transfer(FEE_COLLECTOR, protocolFee - 10); // Prevent rounding errors
    }
  }

  function _unsafeInc(uint x) private pure returns (uint) {
    unchecked {
      return x + 1;
    }
  }

  function _isNotZero(uint _num) private pure returns (bool result) {
    assembly {
      result := gt(_num, 0)
    }
  }

  /** OWNER FUNCTIONS */
  function _authorizeUpgrade(address newImplementation) internal virtual override onlyOwner {}

  function recoverErc20(IERC20 _erc20, uint _amount) external onlyOwner {
    IERC20(_erc20).transfer(owner(), _amount);
  }

  function addReward(address _rewardToken) external onlyOwner {
    if (rewardTokens.contains(_rewardToken)) revert FAILED('RdntLpStaker: Reward Token exists');

    rewardTokens.add(_rewardToken);
  }

  function setDelegate(address _delegate) external onlyOwner {
    IDelegation(0x469788fE6E9E9681C6ebF3bF78e7Fd26Fc015446).setDelegate('radiantcapital.eth', _delegate);
  }

  function setOperator(address _newOperator) external onlyOwner {
    emit OperatorChanged(_newOperator, operator);
    operator = _newOperator;
  }

  function setFee(uint32 _fee) external onlyOwner {
    if (_fee > FEE_DIVISOR) {
      revert INVALID_FEE();
    }

    emit FeeChanged(_fee, fee);
    fee = _fee;
  }

  function setDepositor(address _newDepositor) external onlyOwner {
    emit DepositorChanged(_newDepositor, depositor);
    depositor = _newDepositor;
  }

  event FeeChanged(uint256 indexed _new, uint256 _old);
  event OperatorChanged(address indexed _new, address _old);
  event RewardTokensLengthChanged(uint _oldLen, uint _newLen);
  event DepositorChanged(address indexed _new, address _old);

  error UNAUTHORIZED();
  error INVALID_FEE();
  error FAILED(string reason);
}
