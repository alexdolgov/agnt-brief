// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import { IERC20Upgradeable } from "lib/openzeppelin-contracts-upgradeable/contracts/token/ERC20/IERC20Upgradeable.sol";
import { IRebalanceHLPService } from "src/services/interfaces/IRebalanceHLPService.sol";
import { IVaultStorage } from "src/storages/interfaces/IVaultStorage.sol";
import { ICalculator } from "src/contracts/interfaces/ICalculator.sol";

interface IRebalanceHLPHandler {
  // error
  error RebalanceHLPHandler_ParamsIsEmpty();
  error RebalanceHLPHandler_AddressIsZero();
  error RebalanceHLPHandler_AmountIsZero();
  error RebalanceHLPHandler_NotWhiteListed();

  // execute logic
  function addGlp(
    IRebalanceHLPService.AddGlpParams[] calldata params,
    bytes32[] memory _priceData,
    bytes32[] memory _publishTimeData,
    uint256 _minPublishTime,
    bytes32 _encodedVaas
  ) external returns (uint256 receivedGlp);

  function withdrawGlp(
    IRebalanceHLPService.WithdrawGlpParams[] calldata params,
    bytes32[] memory _priceData,
    bytes32[] memory _publishTimeData,
    uint256 _minPublishTime,
    bytes32 _encodedVaas
  ) external returns (IRebalanceHLPService.WithdrawGlpResult[] memory result);

  function swap(
    IRebalanceHLPService.SwapParams calldata _params,
    bytes32[] memory _priceData,
    bytes32[] memory _publishTimeData,
    uint256 _minPublishTime,
    bytes32 _encodedVaas
  ) external returns (uint256 amountOut);

  // Setters
  function setRebalanceHLPService(address _newService) external;

  function setWhitelistExecutor(address _executor, bool _isAllow) external;

  // Getters
  function service() external view returns (IRebalanceHLPService);

  function sglp() external view returns (IERC20Upgradeable);

  function vaultStorage() external view returns (IVaultStorage);
}
