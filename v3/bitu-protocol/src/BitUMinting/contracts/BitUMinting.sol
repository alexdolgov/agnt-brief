// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.19;

/**
 * solhint-disable private-vars-leading-underscore
 */

import "./SingleAdminAccessControl.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import "./interfaces/IBITU.sol";
import "./interfaces/IBitUMinting.sol";
import "./interfaces/IAggregatorV2V3Interface.sol";
///TODO import the oracle interfaces

/**
 * @title BitU Minting
 * @notice This contract mints and redeems BITU in a single, atomic, trustless transaction
 */
contract BitUMinting is IBitUMinting, SingleAdminAccessControl, ReentrancyGuard {
  using SafeERC20 for IERC20;
  using EnumerableSet for EnumerableSet.AddressSet;
  using EnumerableSet for EnumerableSet.UintSet;

  /* --------------- CONSTANTS --------------- */

  /// @notice role enabling to invoke mint
  bytes32 private constant MINTER_ROLE = keccak256("MINTER_ROLE");

  /// @notice role enabling to invoke redeem
  bytes32 private constant REDEEMER_ROLE = keccak256("REDEEMER_ROLE");

  /// @notice role enabling to liqiudate the position
  bytes32 private constant LIQUIDATOR_ROLE = keccak256("LIQUIDATOR_ROLE");

  /// @notice role enabling to disable mint and redeem and remove minters and redeemers in an emergency
  /// use  GUARD_ROLE to reduce the minter/redeemer actives
  bytes32 private constant GUARD_ROLE = keccak256("GAURD_ROLE");

  /// @notice address denoting native token
  address private constant NATIVE_TOKEN = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

  
  uint256 private  BaseRatio = 100;
  // uint256 public constant perMintLimit = 1_000_000;

  /* --------------- STATE VARIABLES --------------- */

  /// @notice bitu stablecoin
  IBITU public bitu;

  uint256 public decimal;

  /// @notice Supported assets
  EnumerableSet.AddressSet internal _supportedAssets;

  /// @notice custodian addresses
  EnumerableSet.AddressSet internal _supportedCustodian;

  mapping(address => uint256) internal custodianRatios;

  /// @notice user Positions: userAddress => assetAddress => Position
  mapping(address => mapping(address => Position)) private userPositions;
  /// @notice BITU minted per block
  mapping(uint256 => uint256) public mintedPerBlock;
  /// @notice BITU redeemed per block
  mapping(uint256 => uint256) public redeemedPerBlock;

  /// @notice Oracle for asset
  mapping(address => address) public oracles;
  /// @notice guardRatio for asset
  mapping(address => uint256) public guardRatio;

  mapping(address => uint256) public minCollateralRatio;

  /// @notice max minted BITU allowed per block
  uint256 public maxMintPerBlock;
  /// @notice max redeemed BITU allowed per block
  uint256 public maxRedeemPerBlock;
  /// @notice BITU hold fee ratio, default 0
  uint256 public interestRate;

  address public treasury;

  bool public custodianRatiosSetted;
  
  uint256 public currTimestamp;

  uint256 public accInterestPerShare;

  uint256 public totalVirtualAmount;
  
  uint256 public totalShares;

  uint256 public constant baseMintFeeRate = 10_000;

  uint256 public mintFeeRate;

  mapping(address => mapping(address => uint256)) public shares;

  uint256 public cooldownDuration;

  mapping(address => mapping(address => uint256)) public claimableAmount;
  mapping(address => mapping(address => uint256)) public reedemTime;


  /* --------------- MODIFIERS --------------- */

  /// @notice ensure that the already minted BITU in the actual block plus the amount to be minted is below the maxMintPerBlock var
  /// @param mintAmount The BITU amount to be minted
  modifier belowMaxMintPerBlock(uint256 mintAmount) {
    if (mintedPerBlock[block.number] + mintAmount > maxMintPerBlock) revert MaxMintPerBlockExceeded();
    _;
  }

  /// @notice ensure that the already redeemed BITU in the actual block plus the amount to be redeemed is below the maxRedeemPerBlock var
  /// @param redeemAmount The BITU amount to be redeemed
  modifier belowMaxRedeemPerBlock(uint256 redeemAmount) {
    if (redeemedPerBlock[block.number] + redeemAmount > maxRedeemPerBlock) revert MaxRedeemPerBlockExceeded();
    _;
  }

  /* --------------- CONSTRUCTOR --------------- */

  constructor(
    IBITU _bitu,
    address[] memory _assets,
    address[] memory _oracles,
    address[] memory _custodians,
    uint256[] memory  _liquidationThresholds
,
    uint256[] memory _minratios,
    address _admin,
    uint256 _maxMintPerBlock,
    uint256 _maxRedeemPerBlock
  ) {
    if (address(_bitu) == address(0)) revert InvalidBITUAddress();
    if (_assets.length == 0) revert NoAssetsProvided();
    if (_admin == address(0)) revert InvalidZeroAddress();
    if(_assets.length != _oracles.length || _assets.length != _liquidationThresholds.length || _assets.length != _minratios.length) revert InvalidEqualLength();
    bitu = _bitu;

    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);

    for (uint256 i = 0; i < _assets.length; i++) {
      addSupportedAsset(_assets[i], _oracles[i],_liquidationThresholds[i],_minratios[i]);
    }

    for (uint256 j = 0; j < _custodians.length; j++) {
      addCustodianAddress(_custodians[j]);
    }

    // Set the max mint/redeem limits per block
    _setMaxMintPerBlock(_maxMintPerBlock);
    _setMaxRedeemPerBlock(_maxRedeemPerBlock);

    if (msg.sender != _admin) {
      _grantRole(DEFAULT_ADMIN_ROLE, _admin);
    }

    // _chainId = block.chainid;
    // _domainSeparator = _computeDomainSeparator();
    decimal = bitu.decimals();

    interestRate = 0;

    treasury = msg.sender;

    emit BITUSet(address(_bitu));
  }

  /* --------------- EXTERNAL --------------- */

  /**
   * @notice Fallback function to receive native token
   */
  receive() external payable {
    emit Received(msg.sender, msg.value);
  }

  /**
   * @notice Mint stablecoins from assets
   * @param pos struct containing Position details and confirmation from server
   * @param asset asset deposit for
   */
  function mint(Position memory pos,address asset)
    external
    payable
    override
    nonReentrant
    onlyRole(MINTER_ROLE)
    belowMaxMintPerBlock(pos.bitu_amount)
  {
    if (!isSupportedAsset(asset)) revert InvalidAssetAddress();
    if (pos.collateral_ratio < minCollateralRatio[asset]) revert InvalidRatio();
    if(totalShares !=0){
      updateAccInterestPerShare();
    }
    (int256 assetPrice,uint256 priceDecimal,,,uint256 assetDecimal) = getAssetInfo(asset);  
    uint256 mintfee = pos.bitu_amount * mintFeeRate / baseMintFeeRate * 10 ** priceDecimal * 10 ** assetDecimal / uint256(assetPrice) / 10 ** decimal;
    pos.collateral_amount -= mintfee;
    updatePosition(pos, msg.sender, asset, true);
    mintedPerBlock[block.number] += pos.bitu_amount;
    uint256 share = 0;
    if(totalShares == 0){
      share = pos.bitu_amount;
    }else{
      share = pos.bitu_amount * totalShares / totalVirtualAmount;
    }
    totalShares += share;
    shares[msg.sender][asset] += share;
    totalVirtualAmount += pos.bitu_amount;
    
    _transferCollateral(
      pos.collateral_amount, 
      asset, 
      msg.sender
    );
    if(mintfee != 0){
      if(asset != NATIVE_TOKEN){
        IERC20(asset).safeTransferFrom(msg.sender, treasury, mintfee);
      }else{
        (bool success,) = treasury.call{value:mintfee}("");
        if (!success) revert TransferFailed();
      }
    }
    
    bitu.mint(msg.sender, pos.bitu_amount);
    emit Mint(
      msg.sender,
      asset,
      pos.collateral_amount,
      pos.bitu_amount,
      pos.collateral_ratio,
      block.timestamp,
      mintfee
    );
  }
  /**
   * @notice Redeem stablecoins for assets
   * @param pos struct containing Position details and confirmation from server
   * @param asset asset deposit for
   */
  function redeem(Position calldata pos,address asset)
    external
    override
    nonReentrant
    onlyRole(REDEEMER_ROLE)
    belowMaxRedeemPerBlock(pos.bitu_amount)
  { 
    if(userPositions[msg.sender][asset].bitu_amount == 0 || userPositions[msg.sender][asset].bitu_amount < pos.bitu_amount ||  userPositions[msg.sender][asset].collateral_amount < pos.collateral_amount || pos.collateral_ratio < minCollateralRatio[asset]) revert InvalidPosition(); 
    updateAccInterestPerShare();
    uint256 share = shares[msg.sender][asset] * pos.bitu_amount / userPositions[msg.sender][asset].bitu_amount;
    uint256 userbalance = share * accInterestPerShare / 10 ** 18 ;
    uint256 interest = userbalance - pos.bitu_amount;
    // if(totalShares < share) revert InvalidAddress();
    totalShares = totalShares - share;
    // if(totalVirtualAmount < userbalance) revert InvalidAmount();
    totalVirtualAmount -= userbalance;
    shares[msg.sender][asset] -= share;
    updatePosition(pos, msg.sender, asset, false);
    if(interest != 0){
      IERC20(bitu).safeTransferFrom(msg.sender, treasury, interest);
    }
    redeemedPerBlock[block.number] += pos.bitu_amount;
    bitu.burnFrom(msg.sender, pos.bitu_amount);
    // _transferToBeneficiary(msg.sender, asset, pos.collateral_amount);
    claimableAmount[msg.sender][asset] += pos.collateral_amount;
    reedemTime[msg.sender][asset] = block.timestamp;
    emit Redeem(
      msg.sender,
      asset,
      pos.collateral_amount,
      pos.bitu_amount,
      pos.collateral_ratio,
      interest,
      block.timestamp
    );
  }

  function claim(address asset, uint256 amount) external nonReentrant {
    if(block.timestamp < reedemTime[msg.sender][asset] + cooldownDuration) revert NotCooldown();
    if(claimableAmount[msg.sender][asset] < amount) revert InvalidAmount();
    _transferToBeneficiary(msg.sender, asset, amount);
    claimableAmount[msg.sender][asset] -= amount;
  }

  /// TODO clear the Position of beneficiary'asset
  /**
   * @notice Liquidate the Position of beneficiary'asset
   * @param user user who mint BITU by collateral_asset
   * @param asset staked asset when mint BITU
   */  
  function liquidate(address user, address asset) external
    override
    nonReentrant
    onlyRole(LIQUIDATOR_ROLE)
  {
    if (getPositionStatus(asset, userPositions[user][asset].collateral_amount, userPositions[user][asset].bitu_amount)) revert NoLiqiudationStatus();
    uint256 collateral_amount = userPositions[user][asset].collateral_amount;
    uint256 collateral_ratio = userPositions[user][asset].collateral_ratio;
    uint256 bitu_amount = userPositions[user][asset].bitu_amount;
    delete userPositions[user][asset];
    emit Liqiudation(user,asset,collateral_amount,bitu_amount,collateral_ratio,block.timestamp);
  }

  /* --------------- ONLY_ADMIN_ROLE  --------------- */

  function setCooldownDuration(uint256 newDuration) external onlyRole(DEFAULT_ADMIN_ROLE) {
    cooldownDuration = newDuration;
  }
  function setInterestRate(uint256 newRate) external onlyRole(DEFAULT_ADMIN_ROLE) {
    if(totalShares !=0){
      updateAccInterestPerShare();
    }
    interestRate = newRate;
  }
  function setMintFeeRate(uint256 newRate) external onlyRole(DEFAULT_ADMIN_ROLE) {
    mintFeeRate = newRate;
  }
  function setCollateralDistributionRatios(
    address[] memory _custodians,
    uint256[] memory _distributionRatios
  )external onlyRole(DEFAULT_ADMIN_ROLE) {
    if(_custodians.length != _distributionRatios.length) revert InvalidEqualLength();
    resetCustodianRatios();
    uint256 totalRatios;
    for (uint256 i = 0; i < _custodians.length; ++i){
      if(!isSupportedCustody(_custodians[i])) revert InvalidCustodianAddress();
      custodianRatios[_custodians[i]] = _distributionRatios[i];
      totalRatios += _distributionRatios[i];
    }
    if(totalRatios != 10_000) revert InvalidRatio();
     custodianRatiosSetted = true;
  }
  function setTreasuryAddress(address newTreasury) external onlyRole(DEFAULT_ADMIN_ROLE){
    if(newTreasury == address(0)) revert InvalidZeroAddress();
    treasury = newTreasury;
  }
  /// @notice Sets the max mintPerBlock limit
  function setMaxMintPerBlock(uint256 _maxMintPerBlock) external onlyRole(DEFAULT_ADMIN_ROLE) {
    _setMaxMintPerBlock(_maxMintPerBlock);
  }

  /// @notice Sets the max redeemPerBlock limit
  function setMaxRedeemPerBlock(uint256 _maxRedeemPerBlock) external onlyRole(DEFAULT_ADMIN_ROLE) {
    _setMaxRedeemPerBlock(_maxRedeemPerBlock);
  }

  /// @notice Removes an custodian from the custodian address list
  function removeCustodianAddress(address custodian) external onlyRole(DEFAULT_ADMIN_ROLE) {
    if (!_supportedCustodian.remove(custodian)) revert InvalidCustodianAddress();
    custodianRatiosSetted = false;
    emit CustodianAddressRemoved(custodian);
  }

  /// @notice Adds an asset to the supported assets list.
  function addSupportedAsset(address asset ,address oracle,uint256 _guardRatio, uint256 _minRatio) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (asset == address(0) || asset == address(bitu) || !_supportedAssets.add(asset)|| oracle == address(0) || _guardRatio == 0 || _minRatio < 100 || _minRatio <= _guardRatio) {
      revert InvalidAssetAddress();
    }
    oracles[asset] = oracle;
    guardRatio[asset] = _guardRatio;
    minCollateralRatio[asset] = _minRatio;
    emit AssetAdded(asset,oracle,_guardRatio,_minRatio);
  }

  function resetAsset(address asset ,address oracle, uint256 _guardRatio, uint256 _minRatio) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (!_supportedAssets.contains(asset)|| oracle == address(0) || _guardRatio == 0 || _minRatio < 100 || _minRatio <= _guardRatio) {
      revert InvalidAssetAddress();
    }
    oracles[asset] = oracle;
    guardRatio[asset] = _guardRatio;
    minCollateralRatio[asset] = _minRatio;
    emit AssetAdded(asset,oracle,_guardRatio,_minRatio);
  }

  /// @notice Adds an custodian to the supported custodians list.
  function addCustodianAddress(address custodian) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (custodian == address(0) || custodian == address(bitu) || !_supportedCustodian.add(custodian)) {
      revert InvalidCustodianAddress();
    }
    custodianRatiosSetted = false;
    emit CustodianAddressAdded(custodian);
  }
  /// @notice Removes an asset from the supported assets list
  function removeSupportedAsset(address asset) external onlyRole(DEFAULT_ADMIN_ROLE) {
    if (!_supportedAssets.remove(asset)) revert InvalidAssetAddress();
    emit AssetRemoved(asset);
  }

  /// @notice Removes the liquidator role from an account, this can ONLY be executed by the admin role
  /// @param liquidator The address to remove the minter role from
  function removeLiquidatorRole(address liquidator) external onlyRole(DEFAULT_ADMIN_ROLE) {
    _revokeRole(LIQUIDATOR_ROLE, liquidator);
  }
  
  // @notice Removes the guard role from an account, this can ONLY be executed by the admin role
  /// @param guard The address to remove the minter role from
  function removeGuardRole(address guard) external onlyRole(DEFAULT_ADMIN_ROLE) {
    _revokeRole(GUARD_ROLE, guard);
  }

  /* --------------- ONLY_GUARD_ROLE  --------------- */
  /// @notice Disables the mint and redeem
  function disableMintRedeem() external onlyRole(GUARD_ROLE) {
    _setMaxMintPerBlock(0);
    _setMaxRedeemPerBlock(0);
  }
  /// @notice transfers an asset to a custody wallet
  function transferToCustody(address wallet, address asset, uint256 amount) external nonReentrant onlyRole(GUARD_ROLE) {
    if (wallet == address(0) || !_supportedCustodian.contains(wallet)) revert InvalidAddress();
    if (asset == NATIVE_TOKEN) {
      (bool success,) = wallet.call{value: amount}("");
      if (!success) revert TransferFailed();
    } else {
      IERC20(asset).safeTransfer(wallet, amount);
    }
    emit CustodyTransfer(wallet, asset, amount);
  }
  /// @notice Removes the minter role from an account, this can ONLY be executed by the guard role
  /// @param minter The address to remove the minter role from
  function removeMinterRole(address minter) external onlyRole(GUARD_ROLE) {
    _revokeRole(MINTER_ROLE, minter);
  }

  /// @notice Removes the redeemer role from an account, this can ONLY be executed by the guard role
  /// @param redeemer The address to remove the redeemer role from
  function removeRedeemerRole(address redeemer) external onlyRole(GUARD_ROLE) {
    _revokeRole(REDEEMER_ROLE, redeemer);
  }

  /* --------------- PUBLIC --------------- */

  function getInterest(address user, address asset) public view returns(uint256 interest) {
    interest = shares[user][asset] * accInterestPerShare / 10 ** 18 - userPositions[user][asset].bitu_amount;
  }
  /// @notice Checks if an asset is supported.
  function isSupportedAsset(address asset) public view returns (bool) {
    return _supportedAssets.contains(asset);
  }
  function isSupportedCustody(address custody) public view returns (bool) {
    return _supportedCustodian.contains(custody);
  }
  function getPositions(address user) external view returns(Position[] memory Positions) {
    address[] memory assets = _supportedAssets.values();
    Positions = new Position[](assets.length);
    for(uint256 i = 0; i < assets.length; i++){
      Positions[i] = userPositions[user][assets[i]];
    }
  }
  function getPosition(address user,address asset) external view returns(Position memory Positions) {
    return userPositions[user][asset];
  }

  function getCustodians() public view returns(address[] memory custodian) {
    address[] memory custodians = _supportedCustodian.values();
    custodian = new address[](custodians.length);
    for(uint256 i = 0; i < custodians.length; i++){
      custodian[i] = custodians[i];
    }
  }
  function getPositionStatus(address asset, uint256 assetAmount, uint256 bitUAmount) public view returns(bool) {
    (int256 assetPrice,uint256 priceDecimal,uint256 GuardRatio,,uint256 assetDecimal) = getAssetInfo(asset);  
    return assetAmount * uint256(assetPrice) * 10 ** decimal * BaseRatio  >= bitUAmount * GuardRatio *  (10 ** assetDecimal) * 10 ** priceDecimal;
  }

  function getAssetInfo(address asset) public view returns (int256,uint256,uint256,uint256,uint256){
    int256 assetPrice = getAssetPrice(asset);
    uint256 priceDecimal = getAssetDecimal(asset);
    uint256 GuardRatio = guardRatio[asset];
    uint256 minRatio = minCollateralRatio[asset];
    uint256 assetDecimal;
    if(asset == NATIVE_TOKEN){
      assetDecimal = 18;
    }else{
      assetDecimal = IBITU(asset).decimals();
    }
    return (assetPrice,priceDecimal,GuardRatio,minRatio,assetDecimal);
  }
  function checkPosition(address asset, uint256 assetAmount, uint256 bitUAmount) public view returns(bool) {
    (int256 assetPrice,uint256 priceDecimal,,uint256 minRatio,uint256 assetDecimal) = getAssetInfo(asset);  
    return assetAmount * uint256(assetPrice) * 10 ** decimal * BaseRatio  >= bitUAmount * minRatio *  (10 ** assetDecimal) * 10 ** priceDecimal;
  }

  /* --------------- INTERNAL --------------- */

  function updateAccInterestPerShare() internal {
    if(interestRate != 0) {
      uint256 totalBitU = bitu.totalSupply();
      uint256 duration = block.timestamp - currTimestamp;
      uint256 interest = interestRate * totalBitU / (10 ** decimal) * duration;
      totalVirtualAmount += interest; 
    }
    accInterestPerShare = totalVirtualAmount * 10 ** 18 / totalShares;
    currTimestamp = block.timestamp;
  }
  function _transferToBeneficiary(address user, address asset, uint256 amount) internal {
    if (asset == NATIVE_TOKEN) {
      if (address(this).balance < amount) revert InvalidAmount();
      (bool success,) = (user).call{value: amount}("");
      if (!success) revert TransferFailed();
    } else {
      // if (!_supportedAssets.contains(asset)) revert UnsupportedAsset();
      IERC20(asset).safeTransfer(user, amount);
    }
  }
  function getAssetPrice(address asset) internal view returns(int256) {
    if(oracles[asset] == address(0)) revert InvalidOracleAddress();
    (uint80 roundID,int256 price,,uint256 timeStamp,uint80 answeredInRound) = AggregatorV2V3Interface(oracles[asset]).latestRoundData();
    require(timeStamp != 0, "ChainlinkOracle::getLatestAnswer: round is not complete");
    require(answeredInRound >= roundID, "ChainlinkOracle::getLatestAnswer: stale data");
    require(price != 0, "Chainlink Malfunction");
    return price;
  }
  function getAssetDecimal(address asset) internal view returns(uint256) {
    if(oracles[asset] == address(0)) revert InvalidOracleAddress();
    return AggregatorV2V3Interface(oracles[asset]).decimals();
  }

  function updatePosition(Position memory pos, address user,address asset,bool isMint) internal {
    uint256 totalAssetAmount;
    uint256 totalBitUAmount;
    Position memory oldPos = userPositions[user][asset];
    if(isMint){
      totalAssetAmount = oldPos.collateral_amount + pos.collateral_amount;
      totalBitUAmount = oldPos.bitu_amount + pos.bitu_amount;
    }else{
      totalAssetAmount = oldPos.collateral_amount - pos.collateral_amount;
      totalBitUAmount = oldPos.bitu_amount - pos.bitu_amount;
    }
    if(!checkPosition(asset,totalAssetAmount,totalBitUAmount)) revert PositionUpdateFail();
    userPositions[user][asset].collateral_amount = totalAssetAmount;
    userPositions[user][asset].bitu_amount = totalBitUAmount;
    userPositions[user][asset].collateral_ratio = pos.collateral_ratio;
    userPositions[user][asset].lastTimestamp = block.timestamp;
  }

  function calculateInterest(address user,address asset) external view returns (uint256 interest){
    uint256 bituAmount = userPositions[user][asset].bitu_amount;
    uint256 duration = block.timestamp - currTimestamp;
    interest = interestRate  * bituAmount * duration / (10 ** decimal) + getInterest(user,asset);
  }

  function resetCustodianRatios() internal {
    address[] memory custodian = _supportedCustodian.values();
    for (uint256 i = 0; i < custodian.length; i++) {
      custodianRatios[custodian[i]] = 0;
    }
  }
  /// @notice transfer supported asset to array of custody addresses per defined ratio
  function _transferCollateral(
    uint256 amount,
    address asset,
    address benefactor
  ) internal {
    // cannot mint using unsupported asset or native token even if it is supported for redemptions
    if (!_supportedAssets.contains(asset)) revert UnsupportedAsset();
    if (!custodianRatiosSetted) revert InvalidCustodianAddress();
    uint256 totalTransferred = 0;
    address[] memory custodian = _supportedCustodian.values();
    if (asset != NATIVE_TOKEN){
      IERC20 token = IERC20(asset);
      for (uint256 i = 0; i < custodian.length; i++) {
        uint256 amountToTransfer = (amount * custodianRatios[custodian[i]]) / 10_000;
        token.safeTransferFrom(benefactor, custodian[i], amountToTransfer);
        totalTransferred += amountToTransfer;
      }
      uint256 remainingBalance = amount - totalTransferred;
      if (remainingBalance > 0) {
        token.safeTransferFrom(benefactor, custodian[custodian.length - 1], remainingBalance);
      }
    }else{
      if(msg.value < amount) revert InvalidAmount();
      for (uint256 i = 0; i < custodian.length; i++) {
        uint256 amountToTransfer = (amount * custodianRatios[custodian[i]]) / 10_000;
        (bool success,) = custodian[i].call{value:amountToTransfer}("");
        if (!success) revert TransferFailed();
        totalTransferred += amountToTransfer;
      }
      uint256 remainingBalance = amount - totalTransferred;
      if (remainingBalance > 0) {
        (bool success,) = custodian[custodian.length - 1].call{value:remainingBalance}("");
        if (!success) revert TransferFailed();
      }
    }
  }

  /// @notice Sets the max mintPerBlock limit
  function _setMaxMintPerBlock(uint256 _maxMintPerBlock) internal {
    uint256 oldMaxMintPerBlock = maxMintPerBlock;
    maxMintPerBlock = _maxMintPerBlock;
    emit MaxMintPerBlockChanged(oldMaxMintPerBlock, maxMintPerBlock);
  }

  /// @notice Sets the max redeemPerBlock limit
  function _setMaxRedeemPerBlock(uint256 _maxRedeemPerBlock) internal {
    uint256 oldMaxRedeemPerBlock = maxRedeemPerBlock;
    maxRedeemPerBlock = _maxRedeemPerBlock;
    emit MaxRedeemPerBlockChanged(oldMaxRedeemPerBlock, maxRedeemPerBlock);
  }
}
