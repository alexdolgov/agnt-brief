// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "../interfaces/IAddressesProvider.sol";
import "../interfaces/IAccessManager.sol";
import "./IOffPlanService.sol";
import "./IOffPlanStructs.sol";
import "./IOffPlan.sol";
import "../interfaces/IKycStore.sol";
import "../interfaces/IRewardsDistributor.sol";
import "./IOffPlanUiStorage.sol";
import "hardhat/console.sol";

contract OffPlan is Initializable, ERC20Upgradeable, IOffPlan {
  using SafeERC20 for ERC20;
  IAddressesProvider public addressesProvider;
  IOffPlanStructs.TokenInfo public tokenInfo;
  bool public isEnabled;
  bool public isMinted;
  bool public isTransferEnabled;

  modifier ifEnabled() {
    require(isEnabled, "OP:E12: Disabled");
    _;
  }

  modifier onlyEmergencyAdmin() {
    require(msg.sender == addressesProvider.getEmergencyAdmin(), "OP:E9: access denied. EmergencyAdmin");
    _;
  }

  modifier onlyFactory() {
    require(msg.sender == addressesProvider.getOffPlanFactory(), "OP:E10: access denied. Factory");
    _;
  }

  modifier onlySuperOracle() {
    IAccessManager accessManager = IAccessManager(addressesProvider.getAccessManager());
    require(accessManager.canDoWith(msg.sender, IAccessManager.Action.ManageOffPlan, address(this)), "OP:E11: access denied. ManageOffPlan"); // "Permission denied: ManageAsset"
    _;
  }

  function __OffPlan_init(
    address _addressesProvider,
    IOffPlanStructs.TokenInfo calldata _tokenInfo
  ) public initializer {
    addressesProvider = IAddressesProvider(_addressesProvider);
    tokenInfo = _tokenInfo;
  }

  function getVersion() external view returns (uint256) {
    return 6;
  }

  function name() override public view virtual returns (string memory) {
    return tokenInfo.name;
  }

  function symbol() override public view virtual returns (string memory) {
    return tokenInfo.symbol;
  }

  function getUiStorage() private view returns (IOffPlanUiStorage offPlanUiStorage) {
    return IOffPlanUiStorage(addressesProvider.getOffPlanUiStorage());
  }

  function getTokenInfo() external view returns (IOffPlanStructs.TokenInfo memory) {
    return tokenInfo;
  }

  function setTokenInfo(IOffPlanStructs.TokenInfo memory _tokenInfo) onlySuperOracle external {
    tokenInfo = _tokenInfo;
  }

  function enable() onlySuperOracle external {
    isEnabled = true;
  }

  function disable() onlySuperOracle external {
    isEnabled = false;
  }

  function setIsTransferEnabled(bool _isTransferEnabled) onlySuperOracle external {
    isTransferEnabled = _isTransferEnabled;
  }

  function getService() private view returns (IOffPlanService service) {
    return IOffPlanService(addressesProvider.getOffPlanService());
  }

  function getKycStore() private view returns (IKycStore kycStore) {
    return IKycStore(addressesProvider.getKycStore());
  }

  function updateOffPlanMetadata(
    IOffPlanStructs.WorldAddress calldata _worldAddress,
    IOffPlanStructs.OffPlanInfo calldata _offPlanInfo,
    IOffPlanStructs.OffPlanPhase[] calldata _offPlanPhases
  ) external override onlyFactory {
    IOffPlanService service = getService();
    service.initOffPlan(
      address(this),
      _worldAddress,
      _offPlanInfo,
      _offPlanPhases,
      tokenInfo
    );
  }

  function investDirectly(address investTokenAddress, uint256 investedAmountDX, address offPlanRecipient, uint256 fromTokenD18, address referral) external {
    ERC20 investToken = ERC20(investTokenAddress);
    uint256 investedAmountD18 = tokenDecimalsToD18(investedAmountDX, investToken.decimals());

    _investDirectly(investTokenAddress, investedAmountD18, offPlanRecipient, fromTokenD18, referral);
  }

  function _investDirectly(address investTokenAddress, uint256 investedAmountD18, address offPlanRecipient, uint256 fromTokenD18, address referral) ifEnabled private returns (uint256) {
    IOffPlanService service = getService();
    IOffPlanUiStorage uiStorage = getUiStorage();
    IOffPlanStructs.Erc20SelfTransferInstruction memory _offPlanTransferInstruction;
    IOffPlanStructs.Erc20TransferFromInstruction memory _usdtTransferInstruction;

//    ERC20 investToken = ERC20(investTokenAddress);
//    uint256 investedAmountD18 = tokenDecimalsToD18(investedAmountDX, investToken.decimals());

    (_offPlanTransferInstruction, _usdtTransferInstruction) = service.investDirectly(
      investTokenAddress, address(this), msg.sender, investedAmountD18, offPlanRecipient, fromTokenD18
    );

    _transfer(address(this), _offPlanTransferInstruction.recipient, _offPlanTransferInstruction.amountD18);
    _execTransferFromInstruction(_usdtTransferInstruction);

    uint256 _avgTokenPriceInUsdD18 = (_usdtTransferInstruction.amountD18*10**18) / _offPlanTransferInstruction.amountD18;

    uiStorage.trackBalanceChange(IOffPlanStructs.BalanceChange({
      id: 0,
      action: IOffPlanStructs.BalanceChangeAction.Invest,
      investor: msg.sender,
      offPlan:      address(this),
      tokensAmountD18: _offPlanTransferInstruction.amountD18,
      usdAmountD18: _usdtTransferInstruction.amountD18,
      investTokenAddress: investTokenAddress,
      avgTokenPriceInUsdD18: 0,
      dateInUtc: block.timestamp,
      recipient: offPlanRecipient,
      referral: referral
    }));

    return _avgTokenPriceInUsdD18;
  }

  function investDirectlyWithPriceSqueeze(address investTokenAddress, uint256 investedAmountDX, address offPlanRecipient, uint256 maxAvgPriceD18, address referral) ifEnabled external {
    IOffPlanService service = getService();
    uint256 fromTokenD18 = service.getNextTokenToSell(address(this));

    ERC20 investToken = ERC20(investTokenAddress);
    uint256 investedAmountD18 = tokenDecimalsToD18(investedAmountDX, investToken.decimals());

    uint256 _avgTokenPriceInUsdD18 = _investDirectly(investTokenAddress, investedAmountD18, offPlanRecipient, fromTokenD18, referral);
    require(maxAvgPriceD18 >= _avgTokenPriceInUsdD18, "OP:E2: Squeeze rejected");
//    if (_avgTokenPriceInUsdD18 >= maxAvgPriceD18) {
//      revert("OP: Squeeze rejected");
//    }
  }

  function _execTransferFromInstruction(IOffPlanStructs.Erc20TransferFromInstruction memory instruction) private {
    ERC20 token = ERC20(instruction.token);
    uint256 amount = d18ToTokenDecimals(instruction.amountD18, token.decimals());
    token.safeTransferFrom(instruction.sender, instruction.recipient, amount);
  }

  function _execTransferInstruction(IOffPlanStructs.Erc20TransferInstruction memory instruction) private {
    ERC20 token = ERC20(instruction.token);
    uint256 amount = d18ToTokenDecimals(instruction.amountD18, token.decimals());
    token.safeTransfer(instruction.recipient, amount);
  }

  // withdraw as builder
  function withdrawUsdtForBuilder(uint256 amount, address to, string calldata reason) external onlyEmergencyAdmin {
    IOffPlanService service = getService();
    ERC20 investingToken = ERC20(addressesProvider.getUsdt());
    investingToken.safeTransfer(to, amount);
  }

  // money - here, moved manually from Asset into OffPlan SC
  function withdrawUsdtAsInvestor(address to) ifEnabled external {
    IOffPlanService service = getService();
    IOffPlanUiStorage uiStorage = getUiStorage();
    ERC20 investingToken = ERC20(addressesProvider.getUsdt());

    IOffPlanStructs.Erc20TransferInstruction memory usdInstruction = service.withdrawUsdtAsInvestor(address(this), msg.sender, to);
    _execTransferInstruction(usdInstruction);
    _burn(msg.sender, balanceOf(msg.sender));

    uiStorage.trackBalanceChange(IOffPlanStructs.BalanceChange({
      id: 0,
      action: IOffPlanStructs.BalanceChangeAction.ConvertIntoUsd,
      investor: msg.sender,
      offPlan:      address(this),
      tokensAmountD18: balanceOf(msg.sender),
      usdAmountD18: usdInstruction.amountD18,
      investTokenAddress: usdInstruction.token,
      avgTokenPriceInUsdD18: 0,
      dateInUtc: block.timestamp,
      recipient: to,
      referral: address(0)
    }));
  }

  function changeStatus(IOffPlanStructs.Status status) external onlySuperOracle {
    IOffPlanService service = getService();
    service.setStatus(address(this), status);
  }

  function rejectSoftCap(string calldata reason) external onlySuperOracle {
    IOffPlanService service = getService();
    IOffPlanUiStorage uiStorage = getUiStorage();

    require(service.getStatus(address(this)) == IOffPlanStructs.Status.SoftCap, "OP:E3:Status invalid"); // TODO test this one

    IOffPlanStructs.Erc20TransferInstruction[] memory instructions = service.rejectSoftCap(address(this), reason);
    for(uint i = 0; i < instructions.length; i++) {
      IOffPlanStructs.Erc20TransferInstruction memory usdInstruction = instructions[i];

      _burn(usdInstruction.recipient, balanceOf(usdInstruction.recipient));
      _execTransferInstruction(usdInstruction);

      uiStorage.trackBalanceChange(IOffPlanStructs.BalanceChange({
        id: 0,
        action: IOffPlanStructs.BalanceChangeAction.RejectSoftCap,
        investor: usdInstruction.recipient,
        offPlan:      address(this),
        tokensAmountD18: balanceOf(usdInstruction.recipient),
        usdAmountD18: usdInstruction.amountD18,
        investTokenAddress: usdInstruction.token,
        avgTokenPriceInUsdD18: 0,
        dateInUtc: block.timestamp,
        recipient: usdInstruction.recipient,
        referral: address(0)
      }));
    }
    _burn(address(this), balanceOf(address(this)));
  }

  function initPool() external onlyFactory {
    IRewardsDistributor rewardsDistributor = IRewardsDistributor(addressesProvider.getRewardsDistributor());
    rewardsDistributor.addPoolForOffPlan(address(this), 18, tokenInfo.maxSupplyD18);
  }

  // utility - may be deleted
  function initPoolBySuperOracle() external onlySuperOracle {
    IRewardsDistributor rewardsDistributor = IRewardsDistributor(addressesProvider.getRewardsDistributor());
    rewardsDistributor.addPoolForOffPlan(address(this), 18, tokenInfo.maxSupplyD18);
  }

  function initialMint() external onlyFactory {
    require(!isMinted, "OP:E4: is already minted");
    isMinted = true;
    _mint(address(this), tokenInfo.maxSupplyD18);
  }

  // utility - may be deleted
  function initialMintBySuperOracle() external onlySuperOracle {
    require(!isMinted, "OP:E5: is already minted");
    isMinted = true;
    _mint(address(this), tokenInfo.maxSupplyD18);
  }

  function transfer(address to, uint256 amount) public virtual override returns (bool) {
    require(isTransferEnabled, "OP:E10:");
    address sender = _msgSender();

    IKycStore kycStore = getKycStore();
    require(kycStore.isOperable(sender), "OP:E8:");

    _transfer(sender, to, amount);
    return true;
  }

  function _transfer(address sender, address recipient, uint256 amount) ifEnabled internal virtual override {
    require(amount > 0, "OP:E7:");
    IKycStore kycStore = getKycStore();
    require(kycStore.isOperable(recipient), "OP:E9:");
    super._transfer(sender, recipient, amount);
  }

  function _afterTokenTransfer(address sender, address recipient, uint256 amount) internal virtual override {
    uint256 senderBalance = balanceOf(sender);
    uint256 recipientBalance = balanceOf(recipient);
    IOffPlanUiStorage uiStorage = getUiStorage();

    IRewardsDistributor rewardsDistributor = getRewardDistribution();
    if (address(rewardsDistributor) == address(0)) {
      return;
    }
    if (sender != address(0)) {
      rewardsDistributor.onUserBalanceChangedByOffPlan(sender, senderBalance);
    }
    if (recipient != address(0)) {
      rewardsDistributor.onUserBalanceChangedByOffPlan(recipient, recipientBalance);
    }

    if (sender != address(this)) { // this skips double change during investing
      IOffPlanService service = getService();
      uiStorage.trackBalanceChange(IOffPlanStructs.BalanceChange({
        id: 0,
        action: IOffPlanStructs.BalanceChangeAction.RejectSoftCap,
        investor: sender,
        offPlan:      address(this),
        tokensAmountD18: amount,
        usdAmountD18: 0,
        investTokenAddress: address(0),
        avgTokenPriceInUsdD18: service.currentTokenPriceD18(address(this)),
        dateInUtc: block.timestamp,
        recipient: recipient,
        referral: address(0)
      }));
    }
  }

  function getRewardDistribution() private view returns (IRewardsDistributor) {
    return IRewardsDistributor(addressesProvider.getRewardsDistributor());
  }

  function d18ToTokenDecimals(uint256 d18, uint256 decimals) private pure returns (uint256) {
    return d18 / (10 ** (18 - decimals));
  }

  function tokenDecimalsToD18(uint256 amount, uint256 decimals) private pure returns (uint256) {
    return amount * (10 ** (18 - decimals));
  }
}

