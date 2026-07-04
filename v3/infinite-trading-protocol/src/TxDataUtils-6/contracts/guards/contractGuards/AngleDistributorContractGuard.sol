//        __  __    __  ________  _______    ______   ________
//       /  |/  |  /  |/        |/       \  /      \ /        |
//   ____$$ |$$ |  $$ |$$$$$$$$/ $$$$$$$  |/$$$$$$  |$$$$$$$$/
//  /    $$ |$$ |__$$ |$$ |__    $$ |  $$ |$$ | _$$/ $$ |__
// /$$$$$$$ |$$    $$ |$$    |   $$ |  $$ |$$ |/    |$$    |
// $$ |  $$ |$$$$$$$$ |$$$$$/    $$ |  $$ |$$ |$$$$ |$$$$$/
// $$ \__$$ |$$ |  $$ |$$ |_____ $$ |__$$ |$$ \__$$ |$$ |_____
// $$    $$ |$$ |  $$ |$$       |$$    $$/ $$    $$/ $$       |
//  $$$$$$$/ $$/   $$/ $$$$$$$$/ $$$$$$$/   $$$$$$/  $$$$$$$$/
//
// dHEDGE DAO - https://dhedge.org
//
// SPDX-License-Identifier: MIT

pragma solidity 0.7.6;
pragma abicoder v2;

import {IAToken} from "../../interfaces/aave/v3/IAToken.sol";
import {IDistributor} from "../../interfaces/angle/IDistributor.sol";
import {IGuard} from "../../interfaces/guards/IGuard.sol";
import {IHasSupportedAsset} from "../../interfaces/IHasSupportedAsset.sol";
import {IPoolManagerLogic} from "../../interfaces/IPoolManagerLogic.sol";
import {ITransactionTypes} from "../../interfaces/ITransactionTypes.sol";
import {TxDataUtils} from "../../utils/TxDataUtils.sol";

contract AngleDistributorContractGuard is IGuard, ITransactionTypes, TxDataUtils {
  address public immutable aaveV3LendingPool;

  mapping(address => bool) public rewardTokenSupported;

  /// @dev For now we need to claim only aTokens from Aave V3.
  ///      Given they are not identified directly in the system, the easiest is to provide them explicitly upon deployment.
  /// @param _aaveV3LendingPool The Aave V3 lending pool address on the respective chain
  /// @param _rewardTokensSupported The reward tokens supported for claiming
  constructor(address _aaveV3LendingPool, address[] memory _rewardTokensSupported) {
    require(_aaveV3LendingPool != address(0), "invalid address");

    aaveV3LendingPool = _aaveV3LendingPool;
    for (uint256 i; i < _rewardTokensSupported.length; ++i) {
      rewardTokenSupported[_rewardTokensSupported[i]] = true;
    }
  }

  /// @notice Transaction guard for Angle Protocol's distributor contract
  /// @dev Straightforward design specifically for support of aave rewards claiming
  /// @param _poolManagerLogic PoolManagerLogic address
  /// @param _data The transaction data
  /// @return txType The transaction type of a given transaction data
  /// @return isPublic If the transaction is public or private
  function txGuard(
    address _poolManagerLogic,
    address /* _to */,
    bytes calldata _data
  ) external view override returns (uint16 txType, bool isPublic) {
    address poolLogic = IPoolManagerLogic(_poolManagerLogic).poolLogic();
    bytes4 method = getMethod(_data);

    if (method == IDistributor.claim.selector) {
      (address[] memory users, address[] memory tokens) = abi.decode(getParams(_data), (address[], address[]));

      // Users' length must match tokens' length, otherwise the tx would revert on distributor side
      for (uint256 i; i < users.length; ++i) {
        require(users[i] == poolLogic, "recipient is not pool");

        require(rewardTokenSupported[tokens[i]], "reward not supported");

        // After we validated token[i] address being an actual aToken, now it's safe to cast and call the function to get underlying asset.
        // This is to make sure corresponding underlying asset is enabled hence accounted for
        require(
          IHasSupportedAsset(_poolManagerLogic).isSupportedAsset(IAToken(tokens[i]).UNDERLYING_ASSET_ADDRESS()),
          "enable reward token"
        );
      }

      // For now, we only support aTokens from Aave V3 as reward tokens, hence this check is always required
      require(IHasSupportedAsset(_poolManagerLogic).isSupportedAsset(aaveV3LendingPool), "enable aave asset");

      txType = uint16(TransactionType.Claim);
      isPublic = true;
    }
  }
}
