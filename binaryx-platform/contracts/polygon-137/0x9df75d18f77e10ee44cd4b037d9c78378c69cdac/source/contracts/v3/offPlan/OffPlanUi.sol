// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "../libs/ExternalTokens.sol";
import "../interfaces/IAddressesProvider.sol";
import "./IOffPlanFactory.sol";
import "./IOffPlanStructs.sol";
import "./IOffPlan.sol";
import "./IOffPlanService.sol";
import "./IOffPlanUiStorage.sol";

struct OffPlanListView {
  address pointer;
  string name;
  string worldAddress;
  IOffPlanStructs.Status status;
  uint256 phaseIndex;
  uint256 investorsLength;
  uint256 currentTokenPriceD18;
  uint256 tokenPriceOnExitD18;
  uint256 totalAmountUsdToCollectD18;
  uint256 totalUsdCollectedD18;
  uint256 exitAtInUtc;
  uint256 phase2BuildAtInUtc;
}

struct OffPlanDetailsView {
  // section 1
  address pointer;
  uint256 phaseIndex;
  uint256 investorsLength;
//  uint256 profitOnExitPercentageD4;
//  uint256 profitOnExitAprD4; // api ?
  // section 2
//  uint256 percentageCollectedD4; // api ?
  uint256 currentTokenPriceD18;

//  uint256 priceJumpPercentageD4; // api ?
  // section 3
//  uint256 tokenPriceOnExitD18; // api ?
  // section 4
//  IOffPlanStructs.Status status;
  // section 5
//  uint256 tokenPricePhase1StartD18; // api ?
//  uint256 tokenPricePhase1EndD18; // api ?
//  uint256 tokenPricePhase2StartD18; // api ?
//  uint256 tokenPricePhase2EndD18; // api ?
  // section 6
//  uint256 stage1TokensCountD18; // api ?
//  uint256 stage2TokensCountD18; // api ?
  IOffPlanStructs.WorldAddress worldAddress;
  IOffPlanStructs.TokenInfo tokenInfo;
  IOffPlanStructs.OffPlanInfo offPlanInfo;
  IOffPlanStructs.SellProgress sellProgress;
  IOffPlanStructs.OffPlanPhase[] phases;
}

struct OffPlanPersonalStateView {
  uint256 balanceD18;
  uint256 withdrawAmountD18;
  IOffPlanStructs.OffPlanInvestor investorInfo;
  OffPlanDetailsView details;
  IOffPlanStructs.BalanceChange[] balanceChanges;
}

contract OffPlanUi is Initializable {
  IAddressesProvider public addressesProvider;

//  constructor(IAddressesProvider _addressesProvider) {
//    addressesProvider = IAddressesProvider(_addressesProvider);
//  }

  function initialize(address _addressesProvider) public initializer {
    addressesProvider = IAddressesProvider(_addressesProvider);
  }

  function getVersion() external pure returns (uint256) {
    return 4;
  }

  // just to avoid names collision
  function getPointers() public view returns (address[] memory) {
    IOffPlanFactory factory = getFactory();
    return factory.getPointers();
  }

  function getFactory() private view returns (IOffPlanFactory) {
    IOffPlanFactory factory = IOffPlanFactory(addressesProvider.getOffPlanFactory());
    return factory;
  }

  function getService() private view returns (IOffPlanService) {
    IOffPlanService service = IOffPlanService(addressesProvider.getOffPlanService());
    return service;
  }

  function getTotalCount() external view returns (uint256) {
    IOffPlanFactory factory = getFactory();
    return factory.getPointers().length;
  }

  function getPointersPaginated(uint256 page, uint256 perPage) public view returns (address[] memory pointers, uint totalCount) {
    // TODO paginate
    return (
      getPointers(),
      getPointers().length
    );
  }

  function getResourcesByPointers(address[] memory pointers) public view returns (OffPlanListView[] memory resources) {
    OffPlanListView[] memory resources = new OffPlanListView[](pointers.length);
    IOffPlanService service = getService();
    for (uint256 i = 0; i < pointers.length; i++) {
      IOffPlan offPlan = IOffPlan(pointers[i]);

      IOffPlanStructs.TokenInfo memory tokenInfo = offPlan.getTokenInfo();
      IOffPlanStructs.OffPlanPhase[] memory phases = service.getPhases(pointers[i]);
      IOffPlanStructs.SellProgress memory sellProgress = service.getSellProgress(pointers[i]);
      IOffPlanStructs.OffPlanInfo memory offPlanInfo = service.getOffPlanInfo(pointers[i]);
      IOffPlanStructs.WorldAddress memory worldAddress = service.getWorldAddress(pointers[i]);

      resources[i] = OffPlanListView({
        pointer: pointers[i],
        name: tokenInfo.name,
        worldAddress: string.concat(worldAddress.country, ", ", worldAddress.city),
        phaseIndex: service.getCurrentPhase(pointers[i]),
        status: offPlanInfo.status,
        investorsLength: service.getOffPlanInvestorsCount(pointers[i]),
        currentTokenPriceD18: service.currentTokenPriceD18(pointers[i]),
        tokenPriceOnExitD18: service.getTokenPriceInUsdOnExitD18(pointers[i]),
        totalAmountUsdToCollectD18: offPlanInfo.totalUsdToCollectD18,
        totalUsdCollectedD18: sellProgress.amountInUsdCollectedD18,
        exitAtInUtc: offPlanInfo.exitAtInUtc,
        phase2BuildAtInUtc: phases[1].buildAtInUtc
      });
    }

    return resources;
  }

  function getOffPlanDetails(address offPlanAddress) public view returns (OffPlanDetailsView memory resource) {
    IOffPlanService service = getService();
    IOffPlan offPlan = IOffPlan(offPlanAddress);
    IOffPlanStructs.TokenInfo memory tokenInfo = offPlan.getTokenInfo();
    IOffPlanStructs.OffPlanPhase[] memory phases = service.getPhases(offPlanAddress);
    IOffPlanStructs.SellProgress memory sellProgress = service.getSellProgress(offPlanAddress);
    IOffPlanStructs.OffPlanInfo memory offPlanInfo = service.getOffPlanInfo(offPlanAddress);
    IOffPlanStructs.WorldAddress memory worldAddress = service.getWorldAddress(offPlanAddress);

    resource.pointer = offPlanAddress;
    resource.phaseIndex = service.getCurrentPhase(offPlanAddress);
    resource.investorsLength = service.getOffPlanInvestorsCount(offPlanAddress);
//    resource.profitOnExitPercentageD4 = _profitOnExitPercentageD4(offPlanInfo);
//    resource.profitOnExitAprD4 = 120 * 10000; // TODO
//    resource.percentageCollectedD4 = _getPercentageCollectedD4(sellProgress, phases);
    resource.currentTokenPriceD18 = service.currentTokenPriceD18(offPlanAddress);

//    resource.priceJumpPercentageD4 = 50000; // TODO

    resource.worldAddress = worldAddress;
    resource.tokenInfo = tokenInfo;
    resource.sellProgress = sellProgress;
    resource.offPlanInfo = offPlanInfo;
    resource.phases = phases;

    return resource;
  }

  // do we need it?
//  function getBalancesChangesByUser(address user) external view returns (IOffPlanStructs.BalanceChange[] memory) {
//    IOffPlanService service = getService();
//    return service.getBalancesChangesByUser(user);
//  }
//  function getBalancesChangesByOffPlan(address offPlan) external view returns (IOffPlanStructs.BalanceChange[] memory) {
//    IOffPlanService service = getService();
//    return service.getBalancesChangesByOffPlan(offPlan);
//  }
//  function getBalancesChangesByUserAndOffPlan(address user, address offPlan) external view returns (IOffPlanStructs.BalanceChange[] memory) {
//    IOffPlanService service = getService();
//    return service.getBalancesChangesByUserAndOffPlan(user, offPlan);
//  }
  function getUiStorage() private view returns (IOffPlanUiStorage offPlanUiStorage) {
    return IOffPlanUiStorage(addressesProvider.getOffPlanUiStorage());
  }

  function dashboardInfo(address user) external view returns (OffPlanPersonalStateView[] memory, uint256 _gap) {
    IOffPlanService service = getService();
    IOffPlanUiStorage uiStorage = getUiStorage();

    address[] memory offPlans = uiStorage.getOffPlansByHolder(user);
    OffPlanPersonalStateView[] memory offPlanPersonalStateViews = new OffPlanPersonalStateView[](offPlans.length);
    for (uint256 i = 0; i < offPlanPersonalStateViews.length; i++) {
      IExternalErc20Token offPlan = IExternalErc20Token(offPlans[i]);
      IOffPlanStructs.OffPlanInvestor memory investorInfo = service.getOffPlanInvestor(offPlans[i], user);
      offPlanPersonalStateViews[i].investorInfo = investorInfo;
      offPlanPersonalStateViews[i].balanceD18 = offPlan.balanceOf(user);
      offPlanPersonalStateViews[i].details = getOffPlanDetails(offPlans[i]);
      offPlanPersonalStateViews[i].balanceChanges = uiStorage.getBalancesChangesByUserAndOffPlan(user, offPlans[i]);
      offPlanPersonalStateViews[i].withdrawAmountD18 = service.withdrawMap(offPlans[i], user);
    }
    return (offPlanPersonalStateViews, 0);
  }

  function _totalAmountUsdToCollectD18(IOffPlanStructs.OffPlanPhase[] memory phases) private view returns (uint256) {
    return phases[0].amountUsdToCollectD18 + phases[1].amountUsdToCollectD18;
  }

  function _getPercentageCollectedD4(IOffPlanStructs.SellProgress memory sellProgress, IOffPlanStructs.OffPlanInfo memory offPlanInfo) private view returns (uint256) {
    if (sellProgress.amountInUsdCollectedD18 == 0) {
      return 0;
    }
    return (sellProgress.amountInUsdCollectedD18 * 10000 * 100) / offPlanInfo.totalUsdToCollectD18;
  }

  function _profitOnExitPercentageD4(IOffPlanStructs.OffPlanInfo memory offPlanInfo) private view returns (uint256) {
    return ((offPlanInfo.resultingAssetUsdPriceD18 - offPlanInfo.totalUsdToCollectD18) * 10**6) /  offPlanInfo.totalUsdToCollectD18;
  }

  function getResourcesPaginated(uint256 page, uint256 perPage) public view returns (OffPlanListView[] memory resources, uint totalCount) {
    (address[] memory _pointers, uint256 totalCount) = getPointersPaginated(1, 1000);

    return (
    getResourcesByPointers(_pointers),
    totalCount
    );
  }
}
