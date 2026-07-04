// SPDX-License-Identifier: MIT
pragma solidity =0.8.24;

import '../../libs/TokenUtils.sol';
import '../ActionBase.sol';
import './helpers/BenqiHelper.sol';
import '../../../interfaces/IWAVAX.sol';
import { IProtocolPoolController } from '../../controllers/ProtocolPoolController.sol';
import { IBENQI } from '../../../interfaces/benqi/IBenqi.sol';
import { IComptroller } from '../../../interfaces/benqi/IComptroller.sol';

/// @title Borrow a token from Benqi market
contract BenqiBorrow is ActionBase, BenqiHelper {
  using TokenUtils for address;
  address public immutable PROTOCOL_CONTROLLER;
  string constant NAME = 'BenqiBorrow';

  /// @param amount - amount of token to borrow
  /// @param poolId - pool id from protocol controller
  struct Params {
    uint amount;
    uint16 poolId;
  }

  constructor(address _protocolRegisterAddress) {
    PROTOCOL_CONTROLLER = _protocolRegisterAddress;
  }

  /// @inheritdoc ActionBase
  function getId() public pure override returns (bytes4) {
    return bytes4(keccak256(abi.encodePacked(NAME)));
  }

  /// @inheritdoc ActionBase
  function executeAction(
    bytes calldata _callData,
    uint8[] memory _paramMapping,
    bytes32[] memory _returnValues
  ) public payable virtual override returns (bytes32) {
    Params memory params = parseInputs(_callData);
    params.amount = _parseParamUint(params.amount, _paramMapping[0], _returnValues);

    (uint borrowAmount, bytes memory logData) = _borrow(params.amount, params.poolId);
    emit ActionEvent(NAME, logData);
    return bytes32(borrowAmount);
  }

  //////////////////////////// ACTION LOGIC ////////////////////////////

  /// @notice User borrows tokens from the Benqi protocol
  /// @param _amount Amount of tokens to be borrowed
  /// @param _poolId The id of the pool
  function _borrow(uint _amount, uint16 _poolId) internal returns (uint, bytes memory) {
    address _lendingPool = IProtocolPoolController(PROTOCOL_CONTROLLER).getPoolAddress(PROTOCOL_ID, _poolId);

    // Get comptroller address dynamically from qiAVAX contract
    address comptrollerAddr = IBENQI(qiAVAX).comptroller();

    // Enter the market (enable as collateral) before borrowing
    address[] memory markets = new address[](1);
    markets[0] = qisAVAX; // Enable qiSAVAX as collateral
    IComptroller(comptrollerAddr).enterMarkets(markets);

    uint actualBorrowed;

    if (_lendingPool == qiAVAX) {
      // For qiAVAX borrowing, receive native AVAX and convert to WAVAX
      uint tokensBefore = address(this).balance;
      uint result = IBENQI(_lendingPool).borrow(_amount);
      require(result == 0, 'Benqi borrow failed');
      uint tokensAfter = address(this).balance;
      actualBorrowed = tokensAfter - tokensBefore;

      // Wrap the borrowed AVAX to WAVAX
      IWAVAX(wAVAX).deposit{ value: actualBorrowed }();
    } else {
      // For other qiTokens, handle ERC20 borrowing
      // Note: This would need to be implemented for specific underlying tokens
      revert('Non-AVAX borrow not implemented');
    }

    bytes memory logData = abi.encode(_lendingPool, actualBorrowed);
    return (actualBorrowed, logData);
  }

  function parseInputs(bytes memory _callData) public pure returns (Params memory params) {
    params = abi.decode(_callData, (Params));
  }
}
