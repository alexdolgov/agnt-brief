// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

import "./IOffPlanStructs.sol";

interface IOffPlanService{
  struct TokensBoughtEstimation {
    uint256 tokensToSellD18;
    uint256 usdAmountToTransferD18;
    uint256 returnUsdAmountD18;
    uint256 extra1;
    uint256 extra2;
  }

  function getIsEnabled() external returns(bool);

  // invest
  function investDirectly(address investTokenAddress, address offPlan, address investorAddress, uint256 investAmountD18, address offPlanRecipient, uint256 fromTokenD18) external returns (
    IOffPlanStructs.Erc20SelfTransferInstruction memory _offPlanTransferInstruction,
    IOffPlanStructs.Erc20TransferFromInstruction memory _investTokenTransferInstruction);
//  function investDirectlyWithPriceSqueeze(address investTokenAddress, address offPlan, address investorAddress, uint256 investAmountD18, address offPlanRecipient, uint256 maxAvgPriceD18) external returns (
//    IOffPlanStructs.Erc20SelfTransferInstruction memory _offPlanTransferInstruction,
//    IOffPlanStructs.Erc20TransferFromInstruction memory _investTokenTransferInstruction);
  function getTokensBoughtAmountD18(address investToken, address offPlan, uint256 investAmountD18, uint256 currentToken) external view returns (TokensBoughtEstimation memory);

  // reject
  function rejectSoftCap(address offPlan, string calldata reason) external returns (IOffPlanStructs.Erc20TransferInstruction[] memory transferInstructions);
  // withdraw as investor
  function withdrawUsdtAsInvestor(address offPlan, address investor, address recipient) external returns (IOffPlanStructs.Erc20TransferInstruction memory);

  //
  function setStatus(address offPlan, IOffPlanStructs.Status status) external;
  function getStatus(address offPlan) external returns(IOffPlanStructs.Status);
  function initOffPlan(
    address _offPlan,
    IOffPlanStructs.WorldAddress calldata _worldAddress,
    IOffPlanStructs.OffPlanInfo calldata _offPlanInfo,
    IOffPlanStructs.OffPlanPhase[] calldata _offPlanPhases,
    IOffPlanStructs.TokenInfo calldata _tokenInfo
  ) external;

  function getCurrentPhase(address offPlan) external view returns (uint256);
  function getOffPlanInvestorsCount(address offPlan) external view returns (uint256);
  function getPhases(address offPlan) external view returns (IOffPlanStructs.OffPlanPhase[] memory);
  function getOffPlanInfo(address offPlan) external view returns (IOffPlanStructs.OffPlanInfo memory);
  function currentTokenPriceD18(address offPlan) external view returns (uint256);
  function getSellProgress(address offPlan) external view returns (IOffPlanStructs.SellProgress memory);
  function getWorldAddress(address offPlan) external view returns (IOffPlanStructs.WorldAddress memory);
  function getTokenPriceInUsdOnExitD18(address offPlan) external view returns (uint256);
  function getOffPlanInvestor(address offPlan, address user) external view returns(IOffPlanStructs.OffPlanInvestor memory);
  function withdrawMap(address offPlan, address user) external view returns(uint256);
  function getNextTokenToSell(address offPlan) external view returns (uint);
}
