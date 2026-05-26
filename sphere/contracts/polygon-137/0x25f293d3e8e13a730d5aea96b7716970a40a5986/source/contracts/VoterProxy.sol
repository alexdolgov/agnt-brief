// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;
// General imports
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "./GovernableImplementation.sol";
import "./ProxyImplementation.sol";

// Interfaces
import "./interfaces/IGauge.sol";
import "./interfaces/IPenDyst.sol";
import "./interfaces/IPenPool.sol";
import "./interfaces/IPenPoolFactory.sol";
import "./interfaces/IRewardsDistributor.sol";
import "./interfaces/IController.sol";
import "./interfaces/IDyst.sol";
import "./interfaces/IDystBribe.sol";
import "./interfaces/IDystGauge.sol";
import "./interfaces/IDystPool.sol";
import "./interfaces/IDystopiaLens.sol";
import "./interfaces/ITokensAllowlist.sol";
import "./interfaces/IVe.sol";
import "./interfaces/IVoter.sol";
import "./interfaces/IVoterProxy.sol";
import "./interfaces/IVoterProxyAssets.sol";
import "./interfaces/IVeDist.sol";

/**************************************************
 *                   Voter Proxy
 **************************************************/

contract VoterProxy is IERC721Receiver, GovernableImplementation, ProxyImplementation {
  using SafeERC20 for IERC20;
  using SafeMath for uint256;

  // Public addresses
  address public penPoolFactoryAddress;
  address public penDystAddress;
  uint256 public primaryTokenId;
  address public rewardsDistributorAddress;
  address public dystAddress;
  address public veAddress;
  address public veDistAddress;
  address public votingSnapshotAddress;

  // Public vars
  uint256 public dystInflationSinceInception;

  // Internal addresses
  address internal voterProxyAddress;

  // Internal interfaces
  IVoter internal voter;
  IController internal controller;
  IVe internal ve;
  IVeDist internal veDist;
  ITokensAllowlist internal tokensAllowlist;

  mapping(address => bool) internal claimDisabledByPenPoolAddress;

  // Records dyst stored in voterProxy for an penPool
  mapping(address => uint256) public dystStoredForPenPool;

  // Migration
  address public voterProxyAssetsAddress;
  IVoterProxyAssets internal voterProxyAssets;
  address public voterProxyTargetAddress;
  mapping(address => bool) public dystPoolMigrated;

  // Operator for maximizing bribes and fees via votes
  mapping(address => bool) public operator;

  /**************************************************
   *                    Events
   **************************************************/
  event OperatorStatus(address indexed candidate, bool status);

  /**
   * @notice Initialize proxy storage
   */
  function initializeProxyStorage(
    address _veAddress,
    address _veDistAddress,
    address _tokensAllowlistAddress
  ) public checkProxyInitialized {
    // Set addresses
    veAddress = _veAddress;
    veDistAddress = _veDistAddress;

    // Set inflation
    dystInflationSinceInception = 1e18;

    // Set interfaces
    ve = IVe(veAddress);
    veDist = IVeDist(veDistAddress);
    controller = IController(ve.controller());
    voter = IVoter(controller.voter());
    tokensAllowlist = ITokensAllowlist(_tokensAllowlistAddress);
  }

  /**************************************************
   *                    Modifiers
   **************************************************/
  modifier onlyPenDyst() {
    require(msg.sender == penDystAddress, "Only penDyst can deposit NFTs");
    _;
  }

  modifier onlyPenPool() {
    bool _isPenPool = IPenPoolFactory(penPoolFactoryAddress).isPenPool(msg.sender);
    require(_isPenPool, "Only pen pools can stake");
    _;
  }

  modifier onlyPenPoolOrLegacyPenPool() {
    require(
      IPenPoolFactory(penPoolFactoryAddress).isPenPoolOrLegacyPenPool(msg.sender),
      "Only pen pools can stake"
    );
    _;
  }

  modifier onlyGovernanceOrVotingSnapshotOrOperator() {
    require(
      msg.sender == governanceAddress() ||
        operator[msg.sender] ||
        msg.sender == votingSnapshotAddress,
      "Only governance, voting snapshot, or operator"
    );
    _;
  }

  modifier voterProxyAssetsSet() {
    require(voterProxyAssetsAddress != address(0), "voterProxyAssetsAddress not set");
    _;
  }

  /**
   * @notice Initialization
   * @param _penPoolFactoryAddress penPool factory address
   * @param _penDystAddress penDyst address
   * @dev Can only be initialized once
   */
  function initialize(
    address _penPoolFactoryAddress,
    address _penDystAddress,
    address _votingSnapshotAddress
  ) public {
    bool notInitialized = penPoolFactoryAddress == address(0);
    require(notInitialized, "Already initialized");

    // Set addresses and interfaces
    penPoolFactoryAddress = _penPoolFactoryAddress;
    penDystAddress = _penDystAddress;
    dystAddress = IVe(veAddress).token();
    voterProxyAddress = address(this);
    rewardsDistributorAddress = IPenPoolFactory(_penPoolFactoryAddress).rewardsDistributorAddress();
    votingSnapshotAddress = _votingSnapshotAddress;
  }

  /**************************************************
   *                  Gauge interactions
   **************************************************/

  /**
   * @notice Deposit Dystopia LP into a gauge
   * @param dystPoolAddress Address of LP to deposit
   * @param amount Amount of LP to deposit
   */
  function depositInGauge(address dystPoolAddress, uint256 amount)
    public
    onlyPenPool
    voterProxyAssetsSet
  {
    // Cannot deposit nothing
    require(amount > 0, "Nothing to deposit");

    // penPool has transferred LP to VoterProxy...

    // Find gauge address
    address gaugeAddress = voter.gauges(dystPoolAddress);
    IDystPool dystPool = IDystPool(dystPoolAddress);
    dystPool.transfer(voterProxyAssetsAddress, amount);

    // Claim dyst on every interaction if possible
    bool dystClaimed = claimDyst(msg.sender);

    // Deposit all LP if dyst is claimed, withdraw all if not
    if (dystClaimed) {
      // Deposit Dystopia LP into gauge
      voterProxyAssets.depositInGauge(dystPoolAddress, gaugeAddress);
    } else {
      uint256 gaugeBalance = IDystGauge(gaugeAddress).balanceOf(voterProxyAssetsAddress);
      if (gaugeBalance > 0) {
        voterProxyAssets.withdrawFromGauge(
          dystPoolAddress,
          gaugeAddress,
          IDystGauge(gaugeAddress).balanceOf(voterProxyAssetsAddress)
        );
      }
    }
  }

  /**
   * @notice Withdraw Dystopia LP from a gauge
   * @param dystPoolAddress Address of LP to withdraw
   * @param amount Amount of LP to withdraw
   */
  function withdrawFromGauge(address dystPoolAddress, uint256 amount)
    public
    onlyPenPoolOrLegacyPenPool
    voterProxyAssetsSet
  {
    require(amount > 0, "Nothing to withdraw");

    // Fetch gauge address
    address gaugeAddress = voter.gauges(dystPoolAddress);
    IDystPool dystPool = IDystPool(dystPoolAddress);

    /**
     * Claim dyst on every interaction if possible
     * In some cases it's not possible to claim due to an unbounded for loop in Dysty gauge.getReward
     */
    bool dystClaimed = claimDyst(msg.sender, false);

    if (!dystPoolMigrated[dystPoolAddress]) {
      migrateLp(dystPoolAddress);
    }

    // Only withdraw from gauge if dystClaimed, otherwise enter caching mode
    if (dystClaimed) {
      // If there's LP in voterProxyAssets, it means we just got back from caching mode
      // deposit all except the withdrawal amount

      if (dystPool.balanceOf(voterProxyAssetsAddress) > 0) {
        dystPool.transferFrom(voterProxyAssetsAddress, msg.sender, amount);
        voterProxyAssets.depositInGauge(dystPoolAddress, gaugeAddress);
      } else {
        voterProxyAssets.withdrawFromGauge(dystPoolAddress, gaugeAddress, amount);
        dystPool.transferFrom(voterProxyAssetsAddress, msg.sender, amount);
      }
    } else {
      uint256 gaugeBalance = IDystGauge(gaugeAddress).balanceOf(voterProxyAssetsAddress);
      if (gaugeBalance > 0) {
        voterProxyAssets.withdrawFromGauge(dystPoolAddress, gaugeAddress, gaugeBalance);
      }
      dystPool.transferFrom(voterProxyAssetsAddress, msg.sender, amount);
    }
  }

  /**
   * @notice Pokes LP into gauge if gauge is sync'd
   * @param penPoolAddress Address of penPool to poke
   * @param batchAmount Amount of checkpoints to sync
   */
  function pokeGauge(address penPoolAddress, uint256 batchAmount) external voterProxyAssetsSet {
    // Find addresses
    address dystPoolAddress = IPenPool(penPoolAddress).dystPoolAddress();
    address gaugeAddress = voter.gauges(dystPoolAddress);

    // Determine lag
    uint256 lag = bribeSupplyLag(gaugeAddress, dystAddress);
    // If batchAmount is 0, default to max batch if lag > bribeSyncLagLimit
    // Adjust batchAmount to max batch if lag > bribeSyncLagLimit
    if ((batchAmount == 0 || batchAmount >= lag) && lag > tokensAllowlist.bribeSyncLagLimit()) {
      batchAmount = lag.sub(1);
    }
    // Batch checkpoints
    batchCheckPointOrGetReward(gaugeAddress, dystAddress, batchAmount);

    // Claim dyst on every interaction if possible
    bool dystClaimed = claimDyst(penPoolAddress);

    // Deposit all LP if dyst is claimed
    if (dystClaimed) {
      // Deposit Dystopia LP into gauge
      voterProxyAssets.depositInGauge(dystPoolAddress, gaugeAddress);
    }
    notifyDystRewards(penPoolAddress);
  }

  /**************************************************
   *                      Rewards
   **************************************************/

  /**
   * @notice Get fees from bribe
   * @param penPoolAddress Address of penPool
   */
  function getFeeTokensFromBribe(address penPoolAddress) public returns (bool allClaimed) {
    // auth to prevent legacy pools from claiming but without reverting
    if (!IPenPoolFactory(penPoolFactoryAddress).isPenPool(penPoolAddress)) {
      return true;
    }
    IPenPool penPool = IPenPool(penPoolAddress);
    IDystopiaLens.Pool memory dystPoolInfo = penPool.dystPoolInfo();
    address gaugeAddress = dystPoolInfo.gaugeAddress;

    address[] memory feeTokenAddresses = new address[](2);
    feeTokenAddresses[0] = dystPoolInfo.token0Address;
    feeTokenAddresses[1] = dystPoolInfo.token1Address;
    (allClaimed, ) = getRewardFromBribe(penPoolAddress, feeTokenAddresses);
    if (allClaimed) {
      // low-level call, so rest will still run even if revert
      // doing this because tax-on-transfer tokens brick dystopia's fee contracts
      gaugeAddress.call(abi.encodeWithSignature("claimFees()"));
    }
  }

  /**
   * @notice Claims LP DYST emissions and calls rewardsDistributor
   * @param penPoolAddress the penPool to claim for
   */
  function claimDyst(address penPoolAddress) public returns (bool _claimDyst) {
    // auth to prevent legacy pools from claiming but without reverting
    if (!IPenPoolFactory(penPoolFactoryAddress).isPenPool(penPoolAddress)) {
      return false;
    }
    IPenPool penPool = IPenPool(penPoolAddress);
    IDystopiaLens.Pool memory dystPoolInfo = penPool.dystPoolInfo();
    address gaugeAddress = dystPoolInfo.gaugeAddress;

    // low-level call, so rest will still run even if revert
    // doing this because tax-on-transfer tokens brick dystopia's fee contracts
    (bool distributed, ) = address(voter).call(
      abi.encodeWithSignature("distribute(address)", gaugeAddress)
    );

    _claimDyst = (distributed && _batchCheckPointOrGetReward(gaugeAddress, dystAddress));

    if (_claimDyst) {
      // Claim DYST via voterProxyAssets
      uint256 amountClaimed = voterProxyAssets.claimDyst(gaugeAddress);
      // Record DYST claimed
      dystStoredForPenPool[penPoolAddress] = dystStoredForPenPool[penPoolAddress].add(
        amountClaimed
      );

      if (dystStoredForPenPool[penPoolAddress] > tokensAllowlist.notifyDystThreshold()) {
        notifyDystRewards(penPoolAddress);
      }
    }
  }

  /**
   * @notice Claims LP DYST emissions and calls rewardsDistributor,
   * with a check if notifyDystThreshold should be respected or not.
   * @param penPoolAddress the penPool to claim for
   * @param isRespectingThreshold is it respecting the notifyDystThreshold
   */
  function claimDyst(address penPoolAddress, bool isRespectingThreshold)
    public
    returns (bool _claimDyst)
  {
    // auth to prevent legacy pools from claiming but without reverting
    if (!IPenPoolFactory(penPoolFactoryAddress).isPenPool(penPoolAddress)) {
      return false;
    }
    IPenPool penPool = IPenPool(penPoolAddress);
    IDystopiaLens.Pool memory dystPoolInfo = penPool.dystPoolInfo();
    address gaugeAddress = dystPoolInfo.gaugeAddress;
    // low-level call, so rest will still run even if revert
    // doing this because tax-on-transfer tokens brick dystopia's fee contracts
    (bool distributed, ) = address(voter).call(
      abi.encodeWithSignature("distribute(address)", gaugeAddress)
    );
    _claimDyst = (distributed && _batchCheckPointOrGetReward(gaugeAddress, dystAddress));
    if (_claimDyst) {
      // Claim DYST via voterProxyAssets
      uint256 amountClaimed = voterProxyAssets.claimDyst(gaugeAddress);
      // Record DYST claimed
      dystStoredForPenPool[penPoolAddress] = dystStoredForPenPool[penPoolAddress].add(
        amountClaimed
      );
      bool isStoredDystExceedingThreshold = dystStoredForPenPool[penPoolAddress] >
        tokensAllowlist.notifyDystThreshold();
      if (isRespectingThreshold ? isStoredDystExceedingThreshold : true) {
        notifyDystRewards(penPoolAddress);
      }
    }
  }

  /**
   * @notice Notify dyst rewards for an penPool
   * @param penPoolAddress the penPool to nottify rewards for
   */
  function notifyDystRewards(address penPoolAddress) public {
    // auth to prevent legacy pools from claiming but without reverting
    require(IPenPoolFactory(penPoolFactoryAddress).isPenPool(penPoolAddress), "Not an penPool");

    IPenPool penPool = IPenPool(penPoolAddress);
    address stakingAddress = penPool.stakingAddress();

    uint256 _dystEarned = dystStoredForPenPool[penPoolAddress];

    dystStoredForPenPool[penPoolAddress] = 0;

    IERC20(dystAddress).safeTransferFrom(
      voterProxyAssetsAddress,
      rewardsDistributorAddress,
      _dystEarned
    );
    IRewardsDistributor(rewardsDistributorAddress).notifyRewardAmount(
      stakingAddress,
      dystAddress,
      _dystEarned
    );
  }

  /**
   * @notice Claim bribes and notify rewards contract of new balances
   * @param penPoolAddress penPool address
   * @param _tokensAddresses Bribe tokens addresses
   */
  function getRewardFromBribe(address penPoolAddress, address[] memory _tokensAddresses)
    public
    returns (bool allClaimed, bool[] memory claimed)
  {
    (allClaimed, claimed) = _getRewardFromDystopia(penPoolAddress, _tokensAddresses, true);
  }

  /**
   * @notice Fetch reward from penPool given token addresses
   * @param penPoolAddress Address of the penPool
   * @param tokensAddresses Tokens to fetch rewards for
   */
  function getRewardFromPenPool(address penPoolAddress, address[] memory tokensAddresses) public {
    getRewardFromGauge(penPoolAddress, tokensAddresses);
  }

  /**
   * @notice Fetch reward from gauge
   * @param penPoolAddress Address of penPool contract
   * @param _tokensAddresses Tokens to fetch rewards for
   */
  function getRewardFromGauge(address penPoolAddress, address[] memory _tokensAddresses)
    public
    returns (bool allClaimed, bool[] memory claimed)
  {
    (allClaimed, claimed) = _getRewardFromDystopia(penPoolAddress, _tokensAddresses, false);
  }

  /**
   * @notice Fetch reward from Dystopia bribe or gauge
   * @param penPoolAddress Address of penPool contract
   * @param _tokensAddresses Tokens to fetch rewards for
   * @param fromBribe getting from bribe rather than gauge
   */
  function _getRewardFromDystopia(
    address penPoolAddress,
    address[] memory _tokensAddresses,
    bool fromBribe
  ) internal voterProxyAssetsSet returns (bool allClaimed, bool[] memory claimed) {
    // auth to prevent legacy pools from claiming but without reverting
    if (!IPenPoolFactory(penPoolFactoryAddress).isPenPool(penPoolAddress)) {
      claimed = new bool[](_tokensAddresses.length);
      for (uint256 i; i < _tokensAddresses.length; i++) {
        claimed[i] = false;
      }
      return (false, claimed);
    }

    // Establish addresses
    IPenPool penPool = IPenPool(penPoolAddress);
    address _stakingAddress = penPool.stakingAddress();
    address _gaugeOrBribeAddress;
    if (fromBribe) {
      IDystopiaLens.Pool memory dystPoolInfo = penPool.dystPoolInfo();
      _gaugeOrBribeAddress = dystPoolInfo.bribeAddress;
    } else {
      _gaugeOrBribeAddress = penPool.gaugeAddress();
    }

    // New array to record whether a token's claimed
    claimed = new bool[](_tokensAddresses.length);

    // Preflight - check whether to batch checkpoints or to claim said token
    address[] memory _claimableAddresses;
    _claimableAddresses = new address[](_tokensAddresses.length);
    uint256 j;

    // Populate a new array with addresses that are ready to be claimed
    for (uint256 i; i < _tokensAddresses.length; i++) {
      if (_batchCheckPointOrGetReward(_gaugeOrBribeAddress, _tokensAddresses[i])) {
        _claimableAddresses[j] = _tokensAddresses[i];
        claimed[j] = true;
        j++;
      }
    }
    // Clean up _claimableAddresses array, so we don't pass a bunch of address(0)s to IDystBribe
    address[] memory claimableAddresses = new address[](j);
    for (uint256 k; k < j; k++) {
      claimableAddresses[k] = _claimableAddresses[k];
    }

    // Actually claim rewards that are deemed claimable
    if (claimableAddresses.length != 0) {
      if (fromBribe) {
        voterProxyAssets.getRewardFromBribe(
          _stakingAddress,
          _gaugeOrBribeAddress,
          claimableAddresses
        );
      } else {
        voterProxyAssets.getRewardFromGauge(
          _stakingAddress,
          _gaugeOrBribeAddress,
          claimableAddresses
        );
      }
      // If everything was claimable, flag return to true
      if (claimableAddresses.length == _tokensAddresses.length) {
        if (claimableAddresses[claimableAddresses.length - 1] != address(0)) {
          allClaimed = true;
        }
      }
    }
  }

  /**
   * @notice Batch fetch reward
   * @param bribeAddress Address of bribe
   * @param tokenAddress Reward token address
   * @param lagLimit Number of indexes per batch
   * @dev This method is important because if we don't do this Dystopia claiming can be bricked due to gas costs
   */
  function batchCheckPointOrGetReward(
    address bribeAddress,
    address tokenAddress,
    uint256 lagLimit
  ) public returns (bool _getReward) {
    if (tokenAddress == address(0)) {
      return _getReward; //returns false if address(0)
    }
    IDystBribe bribe = IDystBribe(bribeAddress);
    uint256 lastUpdateTime = bribe.lastUpdateTime(tokenAddress);
    uint256 priorSupplyIndex = bribe.getPriorSupplyIndex(lastUpdateTime);
    uint256 supplyNumCheckpoints = bribe.supplyNumCheckpoints();
    uint256 lag;
    if (supplyNumCheckpoints > priorSupplyIndex) {
      lag = supplyNumCheckpoints.sub(priorSupplyIndex);
    }
    if (lag > lagLimit) {
      bribe.batchRewardPerToken(tokenAddress, priorSupplyIndex.add(lagLimit)); // costs about 250k gas, around 3% of an ftm block. Don't want to do too many since we need to chain these sometimes. Hardcoded to save some gas (probably don't need changing anyway)
    } else {
      _getReward = true;
    }
  }

  /**
   * @notice Internal reward batching
   * @param bribeAddress Address of bribe
   * @param tokenAddress Reward token address
   */
  function _batchCheckPointOrGetReward(address bribeAddress, address tokenAddress)
    internal
    returns (bool _getReward)
  {
    uint256 lagLimit = tokensAllowlist.bribeSyncLagLimit();
    _getReward = batchCheckPointOrGetReward(bribeAddress, tokenAddress, lagLimit);
  }

  /**
   * @notice returns bribe contract supply checkpoint lag
   * @param bribeAddress Address of bribe
   * @param tokenAddress Reward token address
   * @dev This method is important because if we don't do this Dystopia claiming can be bricked due to gas costs
   */
  function bribeSupplyLag(address bribeAddress, address tokenAddress)
    public
    view
    returns (uint256 lag)
  {
    if (tokenAddress == address(0)) {
      return lag; //returns 0
    }
    IDystBribe bribe = IDystBribe(bribeAddress);
    uint256 lastUpdateTime = bribe.lastUpdateTime(tokenAddress);
    uint256 priorSupplyIndex = bribe.getPriorSupplyIndex(lastUpdateTime);
    uint256 supplyNumCheckpoints = bribe.supplyNumCheckpoints();
    if (supplyNumCheckpoints > priorSupplyIndex) {
      lag = supplyNumCheckpoints.sub(priorSupplyIndex);
    }
  }

  /**
   * @notice returns bribe contract supply checkpoint lag is out of sync or not
   * @param bribeAddress Address of bribe
   * @param tokenAddress Reward token address
   * @dev This method is important because if we don't do this Dystopia claiming can be bricked due to gas costs
   */
  function bribeSupplyOutOfSync(address bribeAddress, address tokenAddress)
    public
    view
    returns (bool outOfSync)
  {
    if (tokenAddress == address(0)) {
      return false; //returns false
    }
    IDystBribe bribe = IDystBribe(bribeAddress);
    uint256 lastUpdateTime = bribe.lastUpdateTime(tokenAddress);
    uint256 priorSupplyIndex = bribe.getPriorSupplyIndex(lastUpdateTime);
    uint256 supplyNumCheckpoints = bribe.supplyNumCheckpoints();
    uint256 lag;
    if (supplyNumCheckpoints > priorSupplyIndex) {
      lag = supplyNumCheckpoints.sub(priorSupplyIndex);
    }
    if (lag > tokensAllowlist.bribeSyncLagLimit()) {
      outOfSync = true;
    }
  }

  /**
   * @notice checks whether claiming dyst can be done within block gas limit, returns false if it will run out-of-gas
   * @param gaugeAddress Address of gauge
   * @param tokenAddress Reward token address
   */
  function gaugeWithinOogSyncLimit(address gaugeAddress, address tokenAddress)
    public
    view
    returns (bool canClaim)
  {
    if (tokenAddress == address(0)) {
      return canClaim; //returns false if address(0)
    }
    uint256 lag = gaugeAccountLag(gaugeAddress, tokenAddress);

    uint256 oogLimit = tokensAllowlist.oogLoopLimit();
    if (oogLimit > lag) {
      canClaim = true;
    }
  }

  /**
   * @notice returns gauge account checkpoint lag
   * @param gaugeAddress Address of gauge
   * @param tokenAddress Reward token address
   */
  function gaugeAccountLag(address gaugeAddress, address tokenAddress)
    public
    view
    returns (uint256 lag)
  {
    if (tokenAddress == address(0)) {
      return lag; //returns 0
    }
    IDystGauge gauge = IDystGauge(gaugeAddress);
    uint256 lastUpdateTime = Math.max(
      gauge.lastEarn(tokenAddress, voterProxyAssetsAddress),
      gauge.rewardPerTokenCheckpoints(tokenAddress, 0).timestamp
    );

    uint256 priorBalanceIndex = gauge.getPriorBalanceIndex(voterProxyAssetsAddress, lastUpdateTime);
    uint256 numCheckpoints = gauge.numCheckpoints(voterProxyAssetsAddress);

    if (numCheckpoints > priorBalanceIndex.add(1)) {
      lag = numCheckpoints.sub(priorBalanceIndex).sub(1);
    }
  }

  /**************************************************
   *             Voting and Whitelisting
   **************************************************/

  /**
   * @notice Submit vote to Dystopia
   * @param poolVote Addresses of pools to vote on
   * @param weights Weights of pools to vote on
   * @dev For first round only governnce can vote, after that voting snapshot can vote
   */
  function vote(address[] memory poolVote, int256[] memory weights)
    external
    onlyGovernanceOrVotingSnapshotOrOperator
  {
    voterProxyAssets.vote(poolVote, weights);
  }

  /**
   * @notice Whitelist a token on Dystopia
   * @param tokenAddress Address to whitelist
   * @param tokenId Token ID to use for whitelist
   */
  function whitelist(address tokenAddress, uint256 tokenId)
    external
    onlyGovernanceOrVotingSnapshotOrOperator
  {
    voterProxyAssets.whitelist(tokenAddress, tokenId);
  }

  function whitelist(address tokenAddress) external {
    require(msg.sender == address(0), "Function disabled");
    voterProxyAssets.whitelist(tokenAddress, primaryTokenId);
  }

  /**
   * @notice Sets operator that can vote and whitelist to maximize bribes
   * @param candidate Address of candidate
   * @param status candidate operator status
   */
  function setOperator(address candidate, bool status) external onlyGovernance {
    operator[candidate] = status;
    emit OperatorStatus(candidate, status);
  }

  /**************************************************
   *                   Migration
   **************************************************/

  function detachNFT(uint256 startingIndex, uint256 range) external onlyGovernance {
    IPenPoolFactory penPoolFactory = IPenPoolFactory(penPoolFactoryAddress);

    // calc endIndex, compare to existing penPoolsLength
    uint256 endIndex = startingIndex.add(range);
    uint256 penPoolsLength = penPoolFactory.penPoolsLength();
    if (endIndex > penPoolsLength) {
      endIndex = penPoolsLength;
    }

    // operation for each penPool
    for (uint256 i = startingIndex; i < endIndex; i++) {
      // get gauge via penPool
      IDystGauge gauge = IDystGauge(IPenPool(penPoolFactory.penPools(i)).gaugeAddress());

      // check if detached, detach if not
      if (gauge.tokenIds(address(this)) > 0) {
        gauge.withdrawToken(0, primaryTokenId);
      }
    }

    // if all done, transfer NFT and activate it in voterProxyAssets
    if (endIndex == penPoolsLength) {
      // clear votes
      voter.reset(primaryTokenId);

      // transfer NFT
      ve.safeTransferFrom(address(this), voterProxyAssetsAddress, primaryTokenId);

      // setup NFT in voterProxyAssets
      voterProxyAssets.setPrimaryTokenId();
    }
  }

  function setVoterProxyAssetsAddress(address _voterProxyAssetsAddress) external onlyGovernance {
    require(_voterProxyAssetsAddress != address(0), "Invalid _voterProxyAssetsAddress");
    IERC20 dyst = IERC20(dystAddress);
    voterProxyAssetsAddress = _voterProxyAssetsAddress;
    voterProxyAssets = IVoterProxyAssets(_voterProxyAssetsAddress);
    dyst.transfer(_voterProxyAssetsAddress, dyst.balanceOf(address(this)));
  }

  function migrateLp(address dystPoolAddress) public voterProxyAssetsSet {
    // this can replace auth, silently fail so it doesn't revert batch txs
    if (dystPoolMigrated[dystPoolAddress]) {
      return;
    }

    // Fetch gauge
    address gaugeAddress = voter.gauges(dystPoolAddress);

    // Determine voter proxy addresses
    address _voterProxyAddress = address(this);

    // Find gauge balance of voter proxy
    uint256 gaugeBalance = IDystGauge(gaugeAddress).balanceOf(_voterProxyAddress);

    // Withdraw LP from voter proxy
    IDystGauge(gaugeAddress).withdraw(gaugeBalance);

    // TODO: make sure balance increased

    // Find total LP amount in voter proxy
    IDystPool dystPool = IDystPool(dystPoolAddress);
    uint256 totalBalance = dystPool.balanceOf(address(this));

    // Transfer LP tokens to voterProxyAssets
    dystPool.transfer(voterProxyAssetsAddress, totalBalance);
    bool gaugeSynced = _batchCheckPointOrGetReward(gaugeAddress, dystAddress);
    if (gaugeSynced) {
      voterProxyAssets.depositInGauge(dystPoolAddress, gaugeAddress);
    } else {
      voterProxyAssets.withdrawFromGauge(dystPoolAddress, gaugeAddress, 0);
    }

    /**
     * Keep track of whether or not a migration is complete
     * This will be used during deposit and withdraw logic
     */
    dystPoolMigrated[dystPoolAddress] = true;
  }

  /**************************************************
   *               Ve Dillution mechanism
   **************************************************/

  /**
   * @notice Claims DYST inflation for veNFT, logs inflation record, mints corresponding penDYST, and distributes penDYST
   */
  function claim() external {
    uint256 lockedAmount = ve.locked(primaryTokenId);
    uint256 inflationAmount = voterProxyAssets.claim();
    dystInflationSinceInception = dystInflationSinceInception
      .mul((inflationAmount.add(lockedAmount)).mul(1e18).div(lockedAmount))
      .div(1e18);
    IPenDyst(penDystAddress).mint(voterProxyAddress, inflationAmount);
    IERC20(penDystAddress).safeTransfer(rewardsDistributorAddress, inflationAmount);
    IRewardsDistributor(rewardsDistributorAddress).notifyRewardAmount(
      voterProxyAddress,
      penDystAddress,
      inflationAmount
    );
  }

  /**************************************************
   *                    Claims
   **************************************************/

  function setClaimDisabledPenByPoolAddress(address poolAddress, bool disabled)
    public
    onlyGovernance
  {
    claimDisabledByPenPoolAddress[poolAddress] = disabled;
  }

  /**************************************************
   *                 NFT Interactions
   **************************************************/

  /**
   * @notice Deposit and merge NFT
   * @param tokenId The token ID to deposit
   * @dev Note: Depositing is a one way/nonreversible action
   */
  function depositNft(uint256 tokenId) public onlyPenDyst {
    // Set primary token ID if it hasn't been set yet
    bool primaryTokenIdSet = primaryTokenId > 0;
    if (!primaryTokenIdSet) {
      primaryTokenId = tokenId;
    }

    // Transfer NFT from msg.sender to voterProxyAssets
    ve.safeTransferFrom(msg.sender, voterProxyAssetsAddress, tokenId);

    // If primary token ID is set, merge the NFT
    if (primaryTokenIdSet) {
      voterProxyAssets.depositNft(tokenId);
    }
  }

  /**
   * @notice Convert DYST to veNFT and deposit for penDYST
   * @param amount The amount of DYST to lock
   */
  function lockDyst(uint256 amount) external {
    IDyst dyst = IDyst(dystAddress);
    dyst.transferFrom(msg.sender, voterProxyAssetsAddress, amount);
    voterProxyAssets.lockDyst(amount);
    IPenDyst(penDystAddress).mint(msg.sender, amount);
  }

  /**
   * @notice Don't do anything with direct NFT transfers
   */
  function onERC721Received(
    address operator,
    address from,
    uint256 tokenId,
    bytes calldata data
  ) external override returns (bytes4) {
    return IERC721Receiver.onERC721Received.selector;
  }

  // function voterAddress() public view returns (address) {
  //     return ve.voter();
  // }

  /**************************************************
   *                   View methods
   **************************************************/

  /**
   * @notice Calculate amount of DYST currently claimable by VoterProxy
   * @param gaugeAddress The address of the gauge VoterProxy has earned on
   */
  function dystEarned(address gaugeAddress) public view returns (uint256) {
    return IGauge(gaugeAddress).earned(dystAddress, voterProxyAssetsAddress);
  }

  function whitelistingFee() public view returns (uint256) {
    //calculation will be done here
    uint256 fees = 0;
    return fees;
  }
}
