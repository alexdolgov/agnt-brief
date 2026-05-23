// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

interface IOffPlanStructs{
  enum Status {
    Undefined,
    SoftCap,
    HardCap,
    GatheredAndBuilding,
    BuiltAndWaitingForSelling,
    Selling,
    Sold,
    ReadyForExit,
    Rejected
  }

  enum PriceStrategy{
    Undefined,
    Equality,
    LogV1
  }

  struct WorldAddress {
    string country;
    string city;
    string postalCode;
    string line1;
    string line2;
  }

  struct TokenInfo {
    string name;
    string symbol;
    uint256 maxSupplyD18;
  }

  struct OffPlanInvestor {
    uint256 investedInUsdAmountD18;
    uint256 avgPriceInUsdD18;
  }

  struct SellProgress {
    uint256 tokensSoldD18;
    uint256 amountInUsdCollectedD18;
    uint256 amountInUsdLeftToCollectD18;
    uint256 tokensLeftD18;
  }

  struct Document {
    string name;
    string url;
    string hash;
  }

  struct OffPlanInfo {
    Status status;
    Document[] documents;
    uint256 exitAtInUtc;
    uint256 resultingAssetUsdPriceD18;
    uint256 totalUsdToCollectD18;
    bool isTest;
  }

  struct OffPlanPhase {
    // as of now ALL these fields are for UI info only... move to API?
    string title;
    uint256 amountUsdToCollectD18;
    uint256 buildAtInUtc;
    uint256 tokensMaxSupplyD18;
    uint256 tokenStartPriceInUsdD18;
    uint256 tokenEndPriceInUsdD18;
  }

  struct Erc20SelfTransferInstruction {
    address recipient;
    uint256 amountD18; // do not forget to transform into token's decimals
  }

  struct Erc20TransferInstruction {
    address token;
    address recipient;
    uint256 amountD18; // do not forget to transform into token's decimals
  }

  struct Erc20TransferFromInstruction {
    address token;
    address sender;
    address recipient;
    uint256 amountD18; // do not forget to transform into token's decimals
  }

  struct PriceRulesLogV1 {
    mapping(uint256 => uint256) f;
    mapping(uint256 => uint256) g;
    uint256  initialPrice;
    uint256  segmentsCount;
    uint256  tokensPerSegment;
    uint256  shiftCoefficient;
    uint256  jumpSegmentNUmber;
  }

  struct PriceStateLogV1 {
    uint256 currentTokenPrice;
    uint256 currentSegment;
  }

  enum BalanceChangeAction {
    Undefined,
    Invest,
    Transfer,
    ConvertIntoUsd,
    RejectSoftCap
  }

  struct BalanceChange {
    uint256 id;
    BalanceChangeAction action;
    address offPlan;
    address investor;
    uint256 tokensAmountD18;
    uint256 usdAmountD18;
    address investTokenAddress;
    uint256 avgTokenPriceInUsdD18;
    uint256 dateInUtc;
    address recipient;
    address referral;
  }

  enum LifecycleAction {
    Undefined,
    CustomRecord,
    Created,
    ChangeStatus,
    RejectSoftCap,
    Enable,
    Disable
  }

  struct OffPlanLifecycle {
    LifecycleAction action;
    address offPlan;
    Status from;
    Status to;
    string[] extraStrings;
    address[] extraAddresses;
    uint256[] extraNumbers;
    uint256 dateInUtc;
  }
}
