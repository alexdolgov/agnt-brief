// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;
import '../../libs/TokenUtils.sol';
import '../ActionBase.sol';
import './helpers/BenqiHelper.sol';
import '../../../interfaces/IWAVAX.sol';
import { IProtocolPoolController } from '../../controllers/ProtocolPoolController.sol';
import { IBENQI } from '../../../interfaces/benqi/IBenqi.sol';
import { IComptroller } from '../../../interfaces/benqi/IComptroller.sol';

/// @title Claim rewards from Benqi market
contract BenqiClaimReward is ActionBase, BenqiHelper {
  using SafeERC20 for IERC20;
  address constant TREASURY = 0x8AB0EB1314ffa9636B941E0d1c5805dec905B29a;
  string constant NAME = 'BenqiClaimReward';

  /// @param rewardType - type of reward to claim
  /// @param holders - array of addresses to claim rewards for
  /// @param qiTokens - array of qiToken addresses
  /// @param borrowers - whether to claim borrower rewards
  /// @param suppliers - whether to claim supplier rewards
  struct Params {
    uint8 rewardType;
    address payable[] holders;
    address[] qiTokens;
    bool borrowers;
    bool suppliers;
  }

  /// @inheritdoc ActionBase
  function getId() public pure override returns (bytes4) {
    return bytes4(keccak256(abi.encodePacked(NAME)));
  }

  /// @inheritdoc ActionBase
  function executeAction(
    bytes calldata _callData,
    uint8[] memory /*_paramMapping*/,
    bytes32[] memory /*_returnValues*/
  ) public payable virtual override returns (bytes32) {
    Params memory params = parseInputs(_callData);

    (uint void, bytes memory logData) = _claimReward(
      params.rewardType,
      params.holders,
      params.qiTokens,
      params.borrowers,
      params.suppliers
    );
    emit ActionEvent(NAME, logData);
    return bytes32(void);
  }

  //////////////////////////// ACTION LOGIC ////////////////////////////

  /// @notice Claim rewards from the Benqi protocol
  /// @param _rewardType Type of reward to claim (0 = QI, 1 = AVAX)
  /// @param _holders Array of addresses to claim rewards for
  /// @param _qiTokens Array of qiToken addresses
  /// @param _borrowers Whether to claim borrower rewards
  /// @param _suppliers Whether to claim supplier rewards
  function _claimReward(
    uint8 _rewardType,
    address payable[] memory _holders,
    address[] memory _qiTokens,
    bool _borrowers,
    bool _suppliers
  ) internal returns (uint, bytes memory) {
    // Validate inputs
    require(_rewardType <= 1, 'Invalid reward type');
    require(_holders.length > 0, 'No holders specified');
    require(_qiTokens.length > 0, 'No qiTokens specified');

    // Get comptroller address dynamically from qiAVAX contract
    address comptrollerAddr = IBENQI(qiAVAX).comptroller();

    // Claim rewards from the comptroller
    IComptroller(comptrollerAddr).claimReward(_rewardType, _holders, _qiTokens, _borrowers, _suppliers);

    if (_rewardType == 0) {
      // If QI rewards were claimed, transfer them to the treasury
      uint qiBalance = IERC20(qi).balanceOf(address(this));
      if (qiBalance > 0) {
        IERC20(qi).safeTransfer(TREASURY, qiBalance);
      }
    } else if (_rewardType == 1) {
      // If AVAX rewards were claimed, wrap them to WAVAX
      uint avaxBalance = address(this).balance;
      if (avaxBalance > 0) {
        IWAVAX(wAVAX).deposit{ value: avaxBalance }();
      }
    }

    bytes memory logData = abi.encode(comptrollerAddr, _rewardType, _holders, _qiTokens);
    return (0, logData);
  }

  function parseInputs(bytes memory _callData) public pure returns (Params memory params) {
    (uint8 rewardType, address[] memory holders, address[] memory qiTokens, bool borrowers, bool suppliers) = abi
      .decode(_callData, (uint8, address[], address[], bool, bool));

    // Convert address[] to address payable[]
    address payable[] memory payableHolders = new address payable[](holders.length);
    for (uint i = 0; i < holders.length; i++) {
      payableHolders[i] = payable(holders[i]);
    }

    params = Params({
      rewardType: rewardType,
      holders: payableHolders,
      qiTokens: qiTokens,
      borrowers: borrowers,
      suppliers: suppliers
    });
  }
}
