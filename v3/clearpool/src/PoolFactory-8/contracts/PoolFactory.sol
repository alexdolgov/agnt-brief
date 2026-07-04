//SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {BeaconProxy} from '@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol';
import {Initializable} from '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import {OwnableUpgradeable} from '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';

import {IERC20Upgradeable, IERC20MetadataUpgradeable} from '@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol';
import {SafeERC20Upgradeable} from '@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol';

import {UtilsGuard} from './utils/Utils.sol';
import {IBondNFT} from './interfaces/IBondNFT.sol';
import {IPoolMaster, InitParams} from './interfaces/IPoolMaster.sol';
import {RewardAsset} from './libraries/RewardAsset.sol';

/**
 * @title Smart contract for creating term pools;
 * @notice Credit Vaults Pool is a very flexible lending product that has higher lender APR,
 *  potentially high flexibility for lenders, and can be customized and used by any borrower type;
 */
contract PoolFactory is Initializable, OwnableUpgradeable, UtilsGuard {
  using RewardAsset for RewardAsset.Data;
  using SafeERC20Upgradeable for IERC20Upgradeable;

  /**
   * All events:
   * {PoolCreated} - returning data of the created pool;
   * {CurrencySet} - returning data when a currency is set.
   * {QuadrataReaderSet} - returning data when Quadrata reader is set.
   * {PenaltyRateChanged} - returning data when the penalty rate is changed.
   * {ProtocolFeeChanged} - returning data when the protocol fee is changed.
   * {GracePeriodChanged} - returning data when the grace period is changed.
   * {RewardAssetInfoSet} - returning data when reward asset information is set.
   * {PoolBeaconChanged} - returning data when the pool beacon is changed.
   * {BondBeaconChanged} - returning data when the bond beacon is changed.
   * {TreasuryChanged} - returning data when the treasury address is changed.
   * {AuctionSet} - returning data when an auction address is set.
   * {PeriodToStartAuctionSet} - returning data when an start auction period is set.
   * {BorrowerWhitelisted} - returning data when a borrower address is whitelisted.
   * {BorrowerBlacklisted} - returning data when a borrower address is blacklisted.
   * {LenderWhitelisted} - returning data when a lender address is whitelisted.
   * {LenderBlacklisted} - returning data when a lender address is blacklisted.
   */
  event PoolCreated(
    uint256 depositCap,
    uint256 repaymentFrequency,
    uint256 minimumNoticePeriod,
    uint256 minDeposit,
    uint256 lendAPR,
    address indexed asset,
    address indexed borrower,
    address pool,
    address bondNft,
    bool indexed kycRequired
  );
  event CurrencySet(address indexed currency, bool allowed);
  event PenaltyRateChanged(uint256 oldPenaltyRate, uint256 indexed newPenaltyRate);
  event ProtocolFeeChanged(uint256 oldProtocolFee, uint256 indexed newProtocolFee);
  event GracePeriodChanged(uint256 oldGracePeriod, uint256 indexed newGracePeriod);
  event RewardAssetInfoSet(address indexed asset, uint256 rate);
  event PoolBeaconChanged(address oldBeacon, address indexed newBeacon);
  event BondBeaconChanged(address oldBeacon, address indexed newBeacon);
  event TreasuryChanged(address oldTreasury, address indexed newTreasury);
  event AuctionSet(address oldAuction, address indexed newAuction);
  event WhitelistControlChanged(address oldAddr, address indexed newAddr);
  event PeriodToStartAuctionSet(uint256 period);
  event LenderWhitelisted(address indexed lender);
  event BorrowerWhitelisted(address indexed borrower);
  event LenderBlacklisted(address indexed lender);
  event BorrowerBlacklisted(address indexed borrower);

  /**
   *  All Errors:
   */
  error WrongPeriod();
  error WrongAPR();
  error InvalidSymbol();
  error NotWhitelisted();
  error AssetNotAllowed();
  error NotOwnerOrManager();
  error OnlyAuction();

  /**
   * All variables:
   *  {gracePeriod} - grace period set by the governor for specific actions.
   *  {penaltyRate} - penalty interest rate set by the governor for specific penalties.
   *  {protocolFee} - fee rate collected by the protocol for its services.
   *
   *  {poolBeacon} - address of the beacon for the pool.
   *  {bondBeacon} - address of the NFT beacon.
   *  {treasury} - address of the treasury wallet used to collect and manage protocol fees.
   *  {auction} - address of the auction contract for certain actions.
   *  {whitelistControl} - address of WhitelistControl contract
   *
   *  {rewardAssetInfo} - internal data structure containing information about reward assets.
   */
  uint256 public gracePeriod;
  uint256 public penaltyRate;
  uint256 public protocolFee;
  uint256 public periodToStartAuction;

  address public poolBeacon;
  address public bondBeacon;
  address public treasury;
  address public auction;
  address public whitelistControl;

  RewardAsset.Data internal rewardAssetInfo;

  /// @notice Allowance of different currencies in protocol
  mapping(address => bool) public allowedCurrencies;

  /**
   * @dev Mapping with credit vault pools;
   * @custom:oz-renamed-from termPools
   * @notice Matches the borrower's address with their pool;
   */
  mapping(address => address[]) public vaults;

  /// @notice Mapping of addresses to flags indicating if they are pools
  mapping(address => bool) public isPool;

  /// @notice Mapping of whitelisted lenders
  /// @custom:oz-renamed-from whitelistedAccounts
  mapping(address => bool) public whitelistedLenders;

  /// @notice Mapping of whitelisted borrowers
  mapping(address => bool) public whitelistedBorrowers;

  modifier onlyWhitelistedBorrower(address _account) {
    if (!whitelistedBorrowers[_account]) revert NotWhitelisted();
    _;
  }

  modifier onlyOwnerOrManager() {
    if (msg.sender != owner() && msg.sender != whitelistControl) revert NotOwnerOrManager();
    _;
  }

  modifier onlyAuction() {
    if (msg.sender != auction) revert OnlyAuction();
    _;
  }

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  /**
   * @dev Initializing all variables;
   */
  function initialize(
    address _poolBeacon,
    address _bondBeacon,
    address _treasury,
    address _auction
  )
    external
    initializer
    nonZeroAddress(_poolBeacon)
    nonZeroAddress(_bondBeacon)
    nonZeroAddress(_treasury)
    nonZeroAddress(_auction)
  {
    __Ownable_init();

    gracePeriod = 5 days;
    penaltyRate = 20e16;
    protocolFee = 1e16;
    periodToStartAuction = 5 days;
    poolBeacon = _poolBeacon;
    bondBeacon = _bondBeacon;
    treasury = _treasury;
    auction = _auction;
  }

  struct CreatePoolVars {
    uint256 depositCap;
    uint256 repaymentFrequency;
    uint256 minimumNoticePeriod;
    uint256 minDeposit;
    uint256 lendAPR;
    string name;
    string symbol;
    address asset;
  }

  /**
   * @dev Creating credit vault pool with needed parameters;
   * @notice This function creates new pools with custom parameters for all users;
   *  {success} - showing the successful creation of the new pool;
   */
  function createPool(
    CreatePoolVars memory vars,
    bool kycRequired
  ) external nonZeroValue(vars.repaymentFrequency) nonZeroAddress(vars.asset) {
    if (vars.lendAPR == 0 || vars.lendAPR > 1e18) revert WrongAPR();
    if (bytes(vars.symbol).length != 3) revert InvalidSymbol();
    if (vars.depositCap > 0 && vars.minDeposit > vars.depositCap) revert MinDepositExceedCap();
    if (!allowedCurrencies[vars.asset]) revert AssetNotAllowed();

    /// Create a proxy contract `PoolMaster`;
    IPoolMaster poolMaster = IPoolMaster(address(new BeaconProxy(poolBeacon, '')));
    /// Create a proxy contract `BondNFT`;
    IBondNFT nftMaster = IBondNFT(address(new BeaconProxy(bondBeacon, '')));

    /// Creating a new term pool with parameters;
    bool success = poolMaster.__init(
      InitParams({
        depositCap: vars.depositCap,
        repaymentFrequency: vars.repaymentFrequency,
        minimumNoticePeriod: vars.minimumNoticePeriod,
        minDeposit: vars.minDeposit,
        lendAPR: vars.lendAPR,
        borrower: msg.sender,
        asset: vars.asset,
        bondNFT: address(nftMaster),
        name: vars.name,
        borrowerSymbol: vars.symbol
      }),
      kycRequired
    );

    /// For some reason, the pool was not created;
    if (success == false) revert RequestFailed();

    /**
     * @dev Adding in `mapping`;
     * @notice `borrowwer` => `pool`;
     */
    vaults[msg.sender].push(address(poolMaster));
    isPool[address(poolMaster)] = true;

    emit PoolCreated(
      vars.depositCap,
      vars.repaymentFrequency,
      vars.minimumNoticePeriod,
      vars.minDeposit,
      vars.lendAPR,
      vars.asset,
      msg.sender,
      address(poolMaster),
      address(nftMaster),
      kycRequired
    );
  }

  /**
   * @notice Alter or creates whitelisting record by setting `_lender` status
   * @param _lender The lender address
   *
   * @dev Emits a {LenderWhitelisted} event.
   */
  function whitelistLender(address _lender) external nonZeroAddress(_lender) onlyOwnerOrManager {
    if (whitelistedLenders[_lender]) revert NotSameValue();

    whitelistedLenders[_lender] = true;
    emit LenderWhitelisted(_lender);
  }

  /**
   * @notice Alter or creates whitelisting record by setting `_borrower` status
   * @param _borrower The borrower address
   *
   * @dev Emits a {LenderWhitelisted} event.
   */
  function whitelistBorrower(
    address _borrower
  ) external nonZeroAddress(_borrower) onlyOwnerOrManager {
    if (whitelistedBorrowers[_borrower]) revert NotSameValue();

    whitelistedBorrowers[_borrower] = true;
    emit BorrowerWhitelisted(_borrower);
  }

  /**
   * @notice Alter whitelisting record by setting `_lender` status
   * @param _lender The lender address
   *
   * @dev Emits a {LenderBlacklisted} event.
   */
  function blacklistLender(address _lender) external nonZeroAddress(_lender) onlyOwnerOrManager {
    whitelistedLenders[_lender] = false;
    emit LenderBlacklisted(_lender);
  }

  /**
   * @notice Alter whitelisting record by setting `_borrower` status
   * @param _borrower The borrower address
   *
   * @dev Emits a {BorrowerBlacklisted} event.
   */
  function blacklistBorrower(
    address _borrower
  ) external nonZeroAddress(_borrower) onlyOwnerOrManager {
    whitelistedBorrowers[_borrower] = false;
    emit BorrowerBlacklisted(_borrower);
  }

  /**
   * @notice Used to withdraw reward of specific asset accross all pools
   * @param _rewardAsset address of reward asset to be withdrawn
   * @param poolList The array of pools
   */
  function withdrawReward(
    address _rewardAsset,
    address[] memory poolList
  ) external nonZeroAddress(_rewardAsset) {
    uint256 totalReward;
    for (uint i; i < poolList.length; i++) {
      if (!isPool[poolList[i]]) revert InvalidArgument();
      totalReward += IPoolMaster(poolList[i]).withdrawReward(_rewardAsset, msg.sender);
    }
    if (totalReward > 0) {
      uint256 rewardAssetDecimal = IERC20MetadataUpgradeable(_rewardAsset).decimals();
      uint256 _totalReward = fromWei(totalReward, rewardAssetDecimal);
      IERC20Upgradeable(_rewardAsset).safeTransfer(msg.sender, _totalReward);
    }
  }

  /// @notice Function is called by contract owner to update currency allowance in the protocol
  /// @param _currency Address of the ERC20 token
  /// @param _allowed Should currency be allowed or forbidden
  function setCurrency(
    address _currency,
    bool _allowed
  ) external onlyOwner nonZeroAddress(_currency) {
    if (_allowed == allowedCurrencies[_currency]) revert RequestFailed();

    allowedCurrencies[_currency] = _allowed;
    emit CurrencySet(_currency, _allowed);
  }

  /**
   * @notice Used to update pool beacon
   * @param _newPoolBeacon  The address of pool beacon contract
   */
  function changePoolBeacon(
    address _newPoolBeacon
  ) external onlyOwner nonZeroAddress(_newPoolBeacon) nonSameAddress(poolBeacon, _newPoolBeacon) {
    emit PoolBeaconChanged(poolBeacon, _newPoolBeacon);
    poolBeacon = _newPoolBeacon;
  }

  /**
   * @notice Used to update treasury address
   * @param _newTreasury  The address of treasury address
   */
  function changeTreasury(
    address _newTreasury
  ) external onlyOwner nonZeroAddress(_newTreasury) nonSameAddress(treasury, _newTreasury) {
    emit TreasuryChanged(treasury, _newTreasury);
    treasury = _newTreasury;
  }

  /**
   * @notice Used to update bond beacon
   * @param _newBondBeacon  The address of bond beacon contract
   */
  function changeBondBeacon(
    address _newBondBeacon
  ) external onlyOwner nonZeroAddress(_newBondBeacon) nonSameAddress(bondBeacon, _newBondBeacon) {
    emit BondBeaconChanged(bondBeacon, _newBondBeacon);
    bondBeacon = _newBondBeacon;
  }

  /**
   * @notice Used to update whitelist control
   * @param _newAddr  The address of whitelist control contract
   */
  function changeWhitelistControl(
    address _newAddr
  ) external onlyOwner nonZeroAddress(_newAddr) nonSameAddress(whitelistControl, _newAddr) {
    emit WhitelistControlChanged(whitelistControl, _newAddr);
    whitelistControl = _newAddr;
  }

  /**
   * @notice Used to change the grace period
   * @dev Only called by governor
   * @param _newGracePeriod The new grace period to be set
   */
  function changeGracePeriod(
    uint256 _newGracePeriod
  ) external onlyOwner nonZeroValue(_newGracePeriod) nonSameValue(gracePeriod, _newGracePeriod) {
    emit GracePeriodChanged(gracePeriod, _newGracePeriod);
    gracePeriod = _newGracePeriod;
  }

  /**
   * @notice Used to change the penality interest value
   * @dev Only called by governor
   * @param _newPenaltyRate The new penality interest value to be set
   */
  function changePenaltyRate(
    uint256 _newPenaltyRate
  ) external onlyOwner nonSameValue(penaltyRate, _newPenaltyRate) nonZeroValue(_newPenaltyRate) {
    if (_newPenaltyRate > 1e18) revert InvalidArgument();
    emit PenaltyRateChanged(penaltyRate, _newPenaltyRate);
    penaltyRate = _newPenaltyRate;
  }

  /**
   * @notice Used to change protocol fee
   * @dev Only called by governor
   * @param _newProtocolFee New protocol fee to be set
   */
  function changeProtocolFee(
    uint256 _newProtocolFee
  ) external onlyOwner nonSameValue(_newProtocolFee, protocolFee) nonZeroValue(_newProtocolFee) {
    emit ProtocolFeeChanged(protocolFee, _newProtocolFee);
    protocolFee = _newProtocolFee;
  }

  /**
   * @notice Used to change pool borrower
   * @dev Only called by governor
   * @param _pool Pool address
   * @param _newBorrower New pool borrower address to be set
   */
  function changePoolBorrower(
    address _pool,
    address _newBorrower
  ) external onlyOwner onlyWhitelistedBorrower(_newBorrower) {
    if (!isPool[_pool]) revert ActionNotAllowed();
    return IPoolMaster(_pool).changeBorrower(_newBorrower);
  }

  /**
   * @notice Used to set the reward asset and rating
   * @dev Only called by owner(governor)
   * @param _asset The address of reward asset to be set
   * @param _rate The reward rate to be set;
   */
  function setRewardAssetInfo(
    address _asset,
    uint256 _rate
  ) external onlyOwner nonZeroAddress(_asset) {
    bool success = rewardAssetInfo.insert(_asset, _rate);
    if (!success) revert RequestFailed();
    emit RewardAssetInfoSet(_asset, _rate);
  }

  function setAuction(
    address _auction
  ) external onlyOwner nonZeroAddress(_auction) nonSameAddress(auction, _auction) {
    emit AuctionSet(auction, _auction);
    auction = _auction;
  }

  /**
   * @notice used to set a period to start auction
   * @param period the new start auction period
   */
  function setPeriodToStartAuction(
    uint256 period
  ) external onlyOwner nonZeroValue(period) nonSameValue(period, periodToStartAuction) {
    periodToStartAuction = period;
    emit PeriodToStartAuctionSet(period);
  }

  // Auction contract calls
  function processPoolAuctionStart(address pool) external nonZeroAddress(pool) onlyAuction {
    return IPoolMaster(pool).processAuctionStart();
  }

  function processPoolAuctionEnd(
    address pool,
    uint256 claimedAmount
  ) external nonZeroAddress(pool) onlyAuction {
    return IPoolMaster(pool).processDebtClaim(claimedAmount);
  }

  /**
   * @notice Function to check if account is allowed to participate in a KYC pool
   * @param _account Wallet address of the account
   */
  function checkKycStatus(address _account) public virtual nonZeroAddress(_account) {
    if (!whitelistedLenders[_account]) revert NotWhitelisted();
  }

  /**
   * @notice Function to check if borrower is allowed to receive deposits
   * @param _borrower Wallet address of the borrower
   */
  function checkBorrowerStatus(address _borrower) public virtual nonZeroAddress(_borrower) {
    if (!whitelistedBorrowers[_borrower]) revert NotWhitelisted();
  }

  /**
   * @notice Returns the array of reward asset info
   */
  function getRewardAssetInfo() external view returns (RewardAsset.RewardAssetData[] memory) {
    return rewardAssetInfo.getList();
  }

  function getPoolConfigVars()
    external
    view
    returns (uint256, uint256, uint256, uint256, RewardAsset.RewardAssetData[] memory)
  {
    return (penaltyRate, gracePeriod, protocolFee, periodToStartAuction, rewardAssetInfo.getList());
  }
}
