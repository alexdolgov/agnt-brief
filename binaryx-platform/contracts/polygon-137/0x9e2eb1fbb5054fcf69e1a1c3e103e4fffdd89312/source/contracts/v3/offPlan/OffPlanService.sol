// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./IOffPlanStructs.sol";
import "../interfaces/IAddressesProvider.sol";
import "./IOffPlanService.sol";
import "./IOffPlanFactory.sol";
import "../libs/ExternalTokens.sol";
import "./IOffPlanStructs.sol";
import "../interfaces/IKycStore.sol";
import "./IOffPlanUiStorage.sol";
import "./IOffPlan.sol";
import "../interfaces/IAccessManager.sol";
import "../interfaces/IEventHub.sol";
import "hardhat/console.sol";

contract OffPlanService is Initializable, IOffPlanService{
  IAddressesProvider public addressesProvider;

  // ---------------------------------------------
  // CORE - CRITICALLY IMPORTANT VARIABLES
  // ---------------------------------------------
  bool public isEnabled;

  // offPlan => data
  mapping(address => IOffPlanStructs.OffPlanInfo) public offPlanInfo;
  mapping(address => IOffPlanStructs.OffPlanPhase[]) public offPlanPhases;
  mapping(address => IOffPlanStructs.WorldAddress) public worldAddress;
  mapping(address => IOffPlanStructs.SellProgress) public sellProgress;
  mapping(address => IOffPlanStructs.PriceStrategy) public priceStrategyMap;

  // offPlanInvestorsMap used for reject selling.
  // offPlan => user => Info
  mapping(address => mapping(address => IOffPlanStructs.OffPlanInvestor)) public offPlanInvestorsMap;
  // offPlanToInvestorsList used for reject selling. Cannot be removed unlike holders. Holders CAN be removed
  // offPlan => user[]
  mapping(address => address[]) public offPlanToInvestorsList;

  // offPlan => PriceRulesLogV1
  mapping(address => IOffPlanStructs.PriceRulesLogV1) public priceRulesLogV1Map;
  mapping(address => IOffPlanStructs.PriceStateLogV1) public priceLogV1StateMap;

  // withdrawals: offPlan => user => balanceD18
  mapping(address => mapping(address => uint256)) public withdrawMap;

  modifier ifEnabled() {
    require(isEnabled, "OP:S:E14: disabled");
    _;
  }

  modifier onlyCorrespondingOffPlan(address offPlan) {
    IOffPlanFactory factory = getFactory();
    require(factory.isOffPlan(msg.sender), "OP:S:E15: access denied. caller is not an offPlan");
    require(msg.sender == offPlan, "OP:S:E16: access denied. OffPlan is trying to change another one");
    _;
  }

  modifier onlySuperOracle() {
    IAccessManager accessManager = IAccessManager(addressesProvider.getAccessManager());
    require(accessManager.can(msg.sender, IAccessManager.Action.CreateOffPlan), "OP:S:E17: access denied");
    _;
  }

  modifier onlyOffPlan(address offPlan) {
    IOffPlanFactory factory = getFactory();
    require(factory.isOffPlan(offPlan), "OP:S:E18: caller is not an offPlan");
    _;
  }

  function initialize(address _addressesProvider) public initializer {
    addressesProvider = IAddressesProvider(_addressesProvider);
  }

  function getVersion() external view returns (uint256) {
    return 7;
  }

  // external scs
  function getEventHub() private view returns (IEventHub eventHub) {
    return IEventHub(addressesProvider.getEventHub());
  }

  function getFactory() private returns (IOffPlanFactory factory) {
    return IOffPlanFactory(addressesProvider.getOffPlanFactory());
  }

  function getKycStore() private returns (IKycStore kycStore) {
    return IKycStore(addressesProvider.getKycStore());
  }

  function getUiStorage() private returns (IOffPlanUiStorage offPlanUiStorage) {
    return IOffPlanUiStorage(addressesProvider.getOffPlanUiStorage());
  }
  //

  function initOffPlan(
    address _offPlan,
    IOffPlanStructs.WorldAddress calldata _worldAddress,
    IOffPlanStructs.OffPlanInfo calldata _offPlanInfo,
    IOffPlanStructs.OffPlanPhase[] calldata _offPlanPhases,
    IOffPlanStructs.TokenInfo calldata _tokenInfo
  ) external onlyCorrespondingOffPlan(_offPlan) ifEnabled override {

    worldAddress[_offPlan] = _worldAddress;
    offPlanInfo[_offPlan] = _offPlanInfo;
    for(uint i1 = 0; i1 < _offPlanPhases.length; i1++) {
      offPlanPhases[_offPlan].push(
        IOffPlanStructs.OffPlanPhase({
          title: _offPlanPhases[i1].title,
          buildAtInUtc: _offPlanPhases[i1].buildAtInUtc,
          amountUsdToCollectD18: _offPlanPhases[i1].amountUsdToCollectD18,
          tokensMaxSupplyD18: _offPlanPhases[i1].tokensMaxSupplyD18,
          tokenStartPriceInUsdD18: _offPlanPhases[i1].tokenStartPriceInUsdD18,
          tokenEndPriceInUsdD18: _offPlanPhases[i1].tokenEndPriceInUsdD18
        })
      );
    }
    offPlanInfo[_offPlan].totalUsdToCollectD18 = _offPlanInfo.totalUsdToCollectD18;
    sellProgress[_offPlan].tokensLeftD18 = _tokenInfo.maxSupplyD18;
    sellProgress[_offPlan].amountInUsdLeftToCollectD18 = _offPlanInfo.totalUsdToCollectD18;

    IEventHub eventHub = getEventHub();

    eventHub.emitOffPlanLifecycle(IOffPlanStructs.OffPlanLifecycle({
      action: IOffPlanStructs.LifecycleAction.Created,
      offPlan: _offPlan,
      from: IOffPlanStructs.Status.Undefined,
      to: IOffPlanStructs.Status.Undefined,
      extraStrings: new string[](0),
      extraAddresses: new address[](0),
      extraNumbers: new uint256[](0),
      dateInUtc: block.timestamp
    }));
  }

  // external control/API
  function updateOffPlanInfo(
    address _offPlan,
    IOffPlanStructs.OffPlanInfo calldata _offPlanInfo
  ) external onlySuperOracle ifEnabled {
    offPlanInfo[_offPlan] = _offPlanInfo;
  }

  function updateExitAt(
    address _offPlan,
    uint256 _time
  ) external onlySuperOracle ifEnabled {
    offPlanInfo[_offPlan].exitAtInUtc = _time;
  }

  function updateWorldAddress(
    address _offPlan,
    IOffPlanStructs.WorldAddress calldata _worldAddress
  ) external onlySuperOracle ifEnabled {
    worldAddress[_offPlan] = _worldAddress;
  }

  function updatePhase(
    address _offPlan,
    uint index,
    IOffPlanStructs.OffPlanPhase calldata _phase
  ) external onlySuperOracle ifEnabled {
    offPlanPhases[_offPlan][index] = _phase;
  }

  function replaceAllDocuments(
    address _offPlan,
    IOffPlanStructs.Document[] calldata _documents
  ) external onlySuperOracle ifEnabled {
    uint l = offPlanInfo[_offPlan].documents.length;
    for(uint i = 0; i < l; i++) {
      offPlanInfo[_offPlan].documents.pop();
    }
    for(uint i = 0; i < _documents.length; i++) {
      offPlanInfo[_offPlan].documents.push(_documents[i]);
    }
  }

  function setIsEnabled(bool _isEnabled) onlySuperOracle external {
    isEnabled = _isEnabled;
  }

  function investDirectly(address investTokenAddress, address offPlan, address investorAddress, uint256 investAmountD18, address offPlanRecipient, uint256 fromTokenD18) onlyCorrespondingOffPlan(offPlan) external override returns (
    IOffPlanStructs.Erc20SelfTransferInstruction memory _offPlanTransferInstruction,
    IOffPlanStructs.Erc20TransferFromInstruction memory _investTokenTransferInstruction)
  {
    IOffPlanStructs.Erc20SelfTransferInstruction memory _offPlanTransferInstruction;
    IOffPlanStructs.Erc20TransferFromInstruction memory _usdtTransferInstruction;

    (_offPlanTransferInstruction, _usdtTransferInstruction) = _investDirectly(
      investTokenAddress, offPlan, investorAddress, investAmountD18, offPlanRecipient, fromTokenD18
    );

    return (_offPlanTransferInstruction, _usdtTransferInstruction);
  }

//  function investDirectlyWithPriceSqueeze(address investTokenAddress, address offPlan, address investorAddress, uint256 investAmountD18, address offPlanRecipient, uint256 maxAvgPriceD18, uint256 fromTokenD18) onlyCorrespondingOffPlan(offPlan) external override returns (
//    IOffPlanStructs.Erc20SelfTransferInstruction memory _offPlanTransferInstruction,
//    IOffPlanStructs.Erc20TransferFromInstruction memory _investTokenTransferInstruction)
//  {
//    IOffPlanStructs.Erc20SelfTransferInstruction memory _offPlanTransferInstruction;
//    IOffPlanStructs.Erc20TransferFromInstruction memory _usdtTransferInstruction;
//
//    (_offPlanTransferInstruction, _usdtTransferInstruction) = _investDirectly(
//      investTokenAddress, offPlan, investorAddress, investAmountD18, offPlanRecipient, fromTokenD18
//    );
//
//    return (_offPlanTransferInstruction, _usdtTransferInstruction);
//  }

  function getNextTokenToSell(address offPlan) external view returns (uint) {
    return sellProgress[offPlan].tokensSoldD18 + 1;
  }

  function _investDirectly(address investTokenAddress, address offPlan, address investorAddress, uint256 investAmountD18, address offPlanRecipient, uint256 fromTokenD18) ifEnabled private returns (
    IOffPlanStructs.Erc20SelfTransferInstruction memory _offPlanTransferInstruction,
    IOffPlanStructs.Erc20TransferFromInstruction memory _investTokenTransferInstruction)
  {
    validateInvestDirectly(investTokenAddress, offPlan, investorAddress, investAmountD18, offPlanRecipient, fromTokenD18);

    IOffPlanService.TokensBoughtEstimation memory bought = getTokensBoughtAmountD18(investTokenAddress, offPlan, investAmountD18, fromTokenD18);

    require(bought.usdAmountToTransferD18 > 10**16, "OP:S:E19: WTF, transfer must be > 1 cent (10**16)");

    _offPlanTransferInstruction = IOffPlanStructs.Erc20SelfTransferInstruction({
      recipient: offPlanRecipient,
      amountD18: bought.tokensToSellD18
    });
    _investTokenTransferInstruction = IOffPlanStructs.Erc20TransferFromInstruction({
      token: investTokenAddress,
      sender: investorAddress,
      recipient: offPlan,
      amountD18: bought.usdAmountToTransferD18
    });
    sellProgress[offPlan].amountInUsdCollectedD18 += bought.usdAmountToTransferD18;
    sellProgress[offPlan].amountInUsdLeftToCollectD18 -= bought.usdAmountToTransferD18;
    sellProgress[offPlan].tokensSoldD18 += _offPlanTransferInstruction.amountD18;
    sellProgress[offPlan].tokensLeftD18 -= _offPlanTransferInstruction.amountD18;

    //  universal API?
    _updatePriceStrategyState(offPlan, bought.extra1, bought.extra2);
    _updateStatus(offPlan);
    _updateInvestorInfo(offPlanRecipient, offPlan, bought.tokensToSellD18, bought.usdAmountToTransferD18);

    return (_offPlanTransferInstruction, _investTokenTransferInstruction);
  }

  function rejectSoftCap(address offPlan, string calldata reason) onlyCorrespondingOffPlan(offPlan) external returns (IOffPlanStructs.Erc20TransferInstruction[] memory) {
    IOffPlanStructs.Erc20TransferInstruction[] memory instructions = new IOffPlanStructs.Erc20TransferInstruction[](offPlanToInvestorsList[offPlan].length);
    for (uint256 i = 0; i < offPlanToInvestorsList[offPlan].length; i++) {
      address investorAddress = offPlanToInvestorsList[offPlan][i];
      instructions[i].token = addressesProvider.getUsdt();
      instructions[i].recipient = investorAddress;
      instructions[i].amountD18 = offPlanInvestorsMap[offPlan][investorAddress].investedInUsdAmountD18;
    }

    IEventHub eventHub = getEventHub();
    string[] memory extraStrings = new string[](1);
    extraStrings[0] = reason;

    eventHub.emitOffPlanLifecycle(IOffPlanStructs.OffPlanLifecycle({
      action: IOffPlanStructs.LifecycleAction.RejectSoftCap,
      offPlan: offPlan,
      from: IOffPlanStructs.Status.Undefined,
      to: IOffPlanStructs.Status.Undefined,
      extraStrings: extraStrings,
      extraAddresses: new address[](0),
      extraNumbers: new uint256[](0),
      dateInUtc: block.timestamp
    }));

    return instructions;
  }

  function withdrawUsdtAsInvestor(address offPlan, address investor, address recipient) onlyOffPlan(offPlan) override external returns (IOffPlanStructs.Erc20TransferInstruction memory instruction) {
    require(offPlanInfo[offPlan].status == IOffPlanStructs.Status.ReadyForExit, "OP:S:E20: Status invalid");
    instruction = IOffPlanStructs.Erc20TransferInstruction({
      token: addressesProvider.getUsdt(),
      recipient: recipient,
      amountD18: getWithdrawAsInvestorUsdAmountD18(offPlan, investor)
    });
    IExternalErc20Token offPlanToken = IExternalErc20Token(offPlan);
    withdrawMap[offPlan][investor] = offPlanToken.balanceOf(investor);
  }

  function setStatus(address offPlan, IOffPlanStructs.Status status) onlyCorrespondingOffPlan(offPlan) override external {
    IEventHub eventHub = getEventHub();
    eventHub.emitOffPlanLifecycle(IOffPlanStructs.OffPlanLifecycle({
      action: IOffPlanStructs.LifecycleAction.ChangeStatus,
      offPlan: offPlan,
      from: offPlanInfo[offPlan].status,
      to: status,
      extraStrings: new string[](0),
      extraAddresses: new address[](0),
      extraNumbers: new uint256[](0),
      dateInUtc: block.timestamp
    }));

    offPlanInfo[offPlan].status = status;
  }

  // external getters

  function getIsEnabled() external view returns (bool) {
    return isEnabled;
  }

  function getOffPlanToInvestorsList(address offPlan) external view returns (address[] memory) {
    return offPlanToInvestorsList[offPlan];
  }

  function getOffPlanInvestorsCount(address offPlan) external view returns (uint256) {
    return offPlanToInvestorsList[offPlan].length;
  }

  function predictInvestment(address investToken, address offPlan, uint256 investAmountD18) public view
  returns (IOffPlanService.TokensBoughtEstimation memory result, uint256 nextTokenToBuyD18) {

    uint256 nextTokenToBuyD18 = sellProgress[offPlan].tokensSoldD18 + 1;
    return (
    getTokensBoughtAmountD18(investToken, offPlan, investAmountD18, nextTokenToBuyD18),
    nextTokenToBuyD18
    );
  }

  function getStatus(address offPlan) override external view returns (IOffPlanStructs.Status) {
    return offPlanInfo[offPlan].status;
  }

  function getCurrentPhase(address offPlan) override external view returns (uint256) {
    return sellProgress[offPlan].amountInUsdCollectedD18 > offPlanPhases[offPlan][0].amountUsdToCollectD18 ? 1 : 0;
  }

  function currentTokenPriceD18(address offPlan) external view returns (uint256) {
    // equality price strategy is not supported here
    IOffPlanStructs.PriceStateLogV1 memory priceStateLogV1 = priceLogV1StateMap[offPlan];
    return priceStateLogV1.currentTokenPrice;
  }

  function getSellProgress(address offPlan) external view returns (IOffPlanStructs.SellProgress memory) {
    return sellProgress[offPlan];
  }

  function getPhases(address offPlan) external view returns (IOffPlanStructs.OffPlanPhase[] memory) {
    IOffPlanStructs.TokenInfo memory tokenInfo = IOffPlan(offPlan).getTokenInfo();
    return offPlanPhases[offPlan];
  }

  function getOffPlanInfo(address offPlan) external view returns (IOffPlanStructs.OffPlanInfo memory) {
    return offPlanInfo[offPlan];
  }

  function getWorldAddress(address offPlan) external view returns (IOffPlanStructs.WorldAddress memory) {
    return worldAddress[offPlan];
  }

  function getOffPlanInvestor(address offPlan, address user) external view returns(IOffPlanStructs.OffPlanInvestor memory) {
    return offPlanInvestorsMap[offPlan][user];
  }

  // misc/mixed

  function _updateInvestorInfo(address recipient, address offPlan, uint256 tokensBoughtAmountD18, uint256 usdAmountToTransferD18) private {
    IOffPlanStructs.OffPlanInvestor storage offPlanInvestor = offPlanInvestorsMap[offPlan][recipient];
    if (offPlanInvestor.investedInUsdAmountD18 == 0) {
      offPlanToInvestorsList[offPlan].push(recipient);
    }

    offPlanInvestor.investedInUsdAmountD18 = offPlanInvestor.investedInUsdAmountD18 + usdAmountToTransferD18;

    IExternalErc20Token token = IExternalErc20Token(offPlan);
    uint256 tokensBeforeInvestD18 = token.balanceOf(recipient);
    offPlanInvestor.avgPriceInUsdD18 = (offPlanInvestor.investedInUsdAmountD18 * 10**18) / (tokensBoughtAmountD18 + tokensBeforeInvestD18);
  }

  function validateInvestDirectly(address investToken, address offPlan, address investorAddress, uint256 investAmountD18, address offPlanRecipient, uint256 fromTokenD18) private {
    // D18 required for future fractional sales. FE MUST send something like 100000...00001

    uint256 currentTokenD18 = sellProgress[offPlan].tokensSoldD18 + 1;
    require(offPlanInfo[offPlan].status == IOffPlanStructs.Status.SoftCap || offPlanInfo[offPlan].status == IOffPlanStructs.Status.HardCap, "OP:S:E26: Status invalid");
    require(currentTokenD18 != 0, "OP:S:E21: 0 is not a token. Start with 1");
    require(currentTokenD18 <= fromTokenD18, "OP:S:E22: your token has gone");
    IKycStore kycStore = getKycStore();
    require(kycStore.isOperable(investorAddress), "OP:S:E23: investorAddress KYC is required");
    require(kycStore.isOperable(offPlanRecipient), "OP:S:E24: offPlanRecipient KYC is required");
  }

  function getTokensBoughtAmountD18(address investToken, address offPlan, uint256 investAmountD18, uint256 fromTokenD18) override public view
  returns (IOffPlanService.TokensBoughtEstimation memory result) {
    IConst.Token tokenId = getTokenIdFromAddressOrThrowIfUnsupported(investToken, addressesProvider);
    IOffPlanStructs.PriceStrategy priceStrategy = priceStrategyMap[offPlan];

    require(priceStrategy != IOffPlanStructs.PriceStrategy.Undefined, "OP:S:E25: price strategy is not set");

    if (priceStrategy == IOffPlanStructs.PriceStrategy.LogV1) {
      result = priceStrategyLogV1_getTokensAmountD18(offPlan, investAmountD18, fromTokenD18);
    }

    // ROUND to D6 to fix 00000000001 difference in transfers for USDT.
    result.usdAmountToTransferD18 = (result.usdAmountToTransferD18 / 10 ** 12) * 10 ** 12;

    return result;
  }

  function _updatePriceStrategyState(address offPlan, uint256 currentTokenPrice, uint256 currentSegment) private {
    IOffPlanStructs.PriceStateLogV1 storage priceStateLogV1 = priceLogV1StateMap[offPlan];
    priceStateLogV1.currentTokenPrice = currentTokenPrice;
    priceStateLogV1.currentSegment = currentSegment;
  }

  function _updateStatus(address offPlan) private {
    if (sellProgress[offPlan].amountInUsdCollectedD18 >= offPlanPhases[offPlan][0].amountUsdToCollectD18) {
      offPlanInfo[offPlan].status = IOffPlanStructs.Status.HardCap;
    }
    if (sellProgress[offPlan].amountInUsdCollectedD18 >= offPlanInfo[offPlan].totalUsdToCollectD18) {
      offPlanInfo[offPlan].status = IOffPlanStructs.Status.GatheredAndBuilding;
    }
  }

  function getWithdrawAsInvestorUsdAmountD18(address offPlan, address investor) private view returns (uint256 amount) {
    uint256 offPlanBalanceD18 = IExternalErc20Token(offPlan).balanceOf(investor);
    uint256 perTokenD18 = getTokenPriceInUsdOnExitD18(offPlan);
    uint256 reward = (perTokenD18 * offPlanBalanceD18) / 10 **18;
    return reward;
  }

  function getTokenPriceInUsdOnExitD18(address offPlan) public view returns (uint256) {
    IOffPlanStructs.TokenInfo memory tokenInfo = IOffPlan(offPlan).getTokenInfo();
    return (offPlanInfo[offPlan].resultingAssetUsdPriceD18 * 10**18) / tokenInfo.maxSupplyD18;
  }

  function priceStrategyLogV1_getTokensAmountD18(address offPlan, uint256 investingUsdAmount, uint256 fromTokenD18) view public returns (IOffPlanService.TokensBoughtEstimation memory result){
    // fast bought
    if (investingUsdAmount >= sellProgress[offPlan].amountInUsdLeftToCollectD18) {
      result.usdAmountToTransferD18 = sellProgress[offPlan].amountInUsdLeftToCollectD18;
      result.returnUsdAmountD18 = investingUsdAmount - result.usdAmountToTransferD18;
      result.tokensToSellD18 = sellProgress[offPlan].tokensLeftD18;
      return result;
    }
    // fast bought

    IOffPlanStructs.PriceRulesLogV1 storage priceRulesLogV1 = priceRulesLogV1Map[offPlan];
    IOffPlanStructs.PriceStateLogV1 storage priceStateLogV1 = priceLogV1StateMap[offPlan];

    uint256 tokensPerSegment = priceRulesLogV1.tokensPerSegment;
    uint256 jumpSegmentNUmber = priceRulesLogV1.jumpSegmentNUmber;
    mapping(uint256 => uint256) storage f = priceRulesLogV1.f;
    mapping(uint256 => uint256) storage g = priceRulesLogV1.g;

    uint  currentToken = (fromTokenD18-1) / 10**18;

    uint  currentSegment = priceStateLogV1.currentSegment;
    uint  currentTokenPrice= priceStateLogV1.currentTokenPrice;

    uint  tokensToSell=0;

    while (investingUsdAmount>=currentTokenPrice) {
      tokensToSell=tokensToSell+1;
      investingUsdAmount=investingUsdAmount-currentTokenPrice;
      result.usdAmountToTransferD18 = result.usdAmountToTransferD18 + currentTokenPrice;

      currentToken=currentToken+1;

      (currentTokenPrice, currentSegment) = _tokenPrice(offPlan, currentToken, currentSegment);

      if (currentToken == 9999) { // since the 1st token is "0". The last one is 9999
        currentTokenPrice = _lastTokenPrice(offPlan, result.usdAmountToTransferD18);
      }
    }

    result.tokensToSellD18 = tokensToSell * 10**18;
    result.returnUsdAmountD18 = investingUsdAmount;
    result.extra1 = currentTokenPrice;
    result.extra2 = currentSegment;

    return result;
  }

  function _tokenPrice(address offPlan, uint currentToken, uint currentSegment)  private view returns (uint newPrice, uint newSegment) {
    IOffPlanStructs.PriceRulesLogV1 storage priceRulesLogV1 = priceRulesLogV1Map[offPlan];
    IOffPlanStructs.PriceStateLogV1 storage priceStateLogV1 = priceLogV1StateMap[offPlan];

    uint256 tokensPerSegment = priceRulesLogV1.tokensPerSegment;
    uint256 jumpSegmentNUmber = priceRulesLogV1.jumpSegmentNUmber;
    mapping(uint256 => uint256) storage f = priceRulesLogV1.f;
    mapping(uint256 => uint256) storage g = priceRulesLogV1.g;

    if (currentToken>(currentSegment+1)*tokensPerSegment) {
      if (currentSegment<jumpSegmentNUmber-1) {
        currentSegment=currentSegment+1;
        uint m1 = currentToken*100/tokensPerSegment-currentSegment*100;
        uint inc = (f[currentSegment+1]-f[currentSegment])/100*m1;
        return (f[currentSegment]+inc, currentSegment);
      } else {
        currentSegment=currentSegment+1;
        uint m1 = currentToken*100/tokensPerSegment-currentSegment*100;
        uint inc = (g[currentSegment+1]-g[currentSegment])/100*m1;
        return (g[currentSegment]+inc, currentSegment);
      }
    } else {
      if (currentSegment<jumpSegmentNUmber) {
        uint m1 = currentToken*100/tokensPerSegment-currentSegment*100;
        uint inc = (f[currentSegment+1]-f[currentSegment])/100*m1;
        return (f[currentSegment] + inc, currentSegment);
      } else {
        uint m1 = currentToken*100/tokensPerSegment-currentSegment*100;
        uint inc = (g[currentSegment+1]-g[currentSegment])/100*m1;
        return (g[currentSegment]+inc, currentSegment);
      }
    }
  }

  function _lastTokenPrice(address offPlan, uint i)  private view returns (uint) {
    return sellProgress[offPlan].amountInUsdLeftToCollectD18 - i;
  }

  // utils
  function dXToD18(uint256 dX, uint256 tokenDecimals) private pure returns (uint256) {
    return dX * (10 ** (18 - tokenDecimals));
  }

  // price strategies
//  function setPricesEqualityPreset(address offPlan) external {
//    priceStrategyMap[offPlan] = IOffPlanStructs.PriceStrategy.Equality;
//  }

  function setPricesLogV1PresetValues(address offPlan, uint256[] calldata fs, uint256[] calldata gs, uint256 _initialPrice, uint256 _shiftCoefficient, uint256 _jumpSegmentNUmber) onlySuperOracle external {
    priceStrategyMap[offPlan] = IOffPlanStructs.PriceStrategy.LogV1;

    IOffPlanStructs.PriceRulesLogV1 storage priceRulesLogV1 = priceRulesLogV1Map[offPlan];
    IOffPlanStructs.PriceStateLogV1 storage priceLogV1State = priceLogV1StateMap[offPlan];

    priceRulesLogV1.initialPrice = _initialPrice;
//    priceRulesLogV1.segmentsCount=100; // always 100
    priceRulesLogV1.tokensPerSegment=100; // always 100
    priceRulesLogV1.shiftCoefficient=_shiftCoefficient;
    priceRulesLogV1.jumpSegmentNUmber=_jumpSegmentNUmber;
    mapping(uint256 => uint256) storage f = priceRulesLogV1.f;
    mapping(uint256 => uint256) storage g = priceRulesLogV1.g;

    priceLogV1State.currentSegment = 0;
    priceLogV1State.currentTokenPrice = priceRulesLogV1.initialPrice;

    for(uint i = 0; i < fs.length; i++) {
      f[i]= fs[i];
    }

    for(uint i = 0; i < gs.length; i++) {
      g[_jumpSegmentNUmber + i]= gs[i];
    }
  }
}


