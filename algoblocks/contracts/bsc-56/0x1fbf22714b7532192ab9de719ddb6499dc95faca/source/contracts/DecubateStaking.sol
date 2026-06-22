//** Decubate Staking Contract */
//** Author Aceson */

pragma solidity ^0.8.10;

//SPDX-License-Identifier: UNLICENSED

import "@openzeppelin/contracts/interfaces/IERC20Metadata.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@uniswap/v2-periphery/contracts/libraries/UniswapV2OracleLibrary.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "./libraries/InterestHelper.sol";
import "./interfaces/IDecubateStaking.sol";
import "./interfaces/IDecubateNFT.sol";

contract DecubateStaking is Ownable, InterestHelper, IDecubateStaking {
  using SafeMath for uint256;
  using SafeMath for uint16;

  struct User {
    uint256 totalInvested;
    uint256 totalWithdrawn;
    uint256 lastPayout;
    uint256 depositTime;
    uint256 totalClaimed;
  }

  IDecubateNFT public nftContract;
  address private feeAddress; //Address which receives fee
  uint8 private feePercent; //Percentage of fee deducted (/1000)
  uint32 private timeGap; //Time interval between price update

  mapping(uint256 => mapping(address => User)) public users;
  mapping(uint256 => uint256[2]) public priceBuffer;

  // /**
  //  *
  //  * @dev PoolInfo reflects the info of each pools
  //  *
  //  * If APY is 12%, we provide 12 as input. lockPeriodInDays
  //  * would be the number of days which the claim is locked.
  //  * So if we want to lock claim for 1 month, lockPeriodInDays would be 30.
  //  *
  //  * @param {apy} Percentage of yield produced by the pool
  //  * @param {nftMultiplier} Multiplier for apy if user holds nft
  //  * @param {lockPeriodInDays} Amount of time claim will be locked
  //  * @param {totalDeposit} Total deposit in the pool
  //  * @param {hardCap} hardCap of the pool
  //  * @param {endDate} ending time of pool in unix timestamp
  //  * @param {inputToken} Token deposited onto the pool
  //  * @param {rewardToken} Token received as reward
  //  * @param {ratio} Price difference between input and output token
  //  * @param {isRewardAboveInput} Price difference between input and output token
  //  *
  //  */
  Pool[] public poolInfo;

  event Stake(address indexed addr, uint256 amount, uint256 time);
  event Claim(address indexed addr, uint256 amount, uint256 time);
  event Reinvest(address indexed addr, uint256 amount, uint256 time);
  event Unstake(address indexed addr, uint256 amount, uint256 time);
  event RatioUpdated(uint256 _pid, uint256 newRatio);

  constructor(address _nft) {
    nftContract = IDecubateNFT(_nft);
    feeAddress = msg.sender;
    feePercent = 5;
    timeGap = 24 hours;
  }

  receive() external payable {
    revert("BNB deposit not supported");
  }

  /**
   *
   * @dev add new period to the pool, only available for owner
   *
   */
  function add(
    uint256 _apy,
    uint16 _multiplier,
    uint16 _startIdx,
    uint16 _endIdx,
    uint256 _lockPeriodInDays,
    bool _isUsed,
    uint256 _endDate,
    address _tradesAgainst,
    PoolToken memory _inputToken,
    PoolToken memory _rewardToken,
    uint256 _hardCap
  ) external override onlyOwner {
    poolInfo.push(
      Pool({
        apy: _apy,
        nft: NFTMultiplier({
          active: _isUsed,
          startIdx: _startIdx,
          endIdx: _endIdx,
          multiplier: _multiplier
        }),
        lockPeriodInDays: _lockPeriodInDays,
        hardCap: _hardCap,
        totalDeposit: 0,
        endDate: _endDate,
        inputToken: _inputToken,
        rewardToken: _rewardToken,
        ratio: 1,
        tradesAgainst: _tradesAgainst,
        lastUpdatedTime: 0,
        isRewardAboveInput: false
      })
    );

    uint256 poolIndex = poolLength() - 1;

    updateRatio(poolIndex);
  }

  /**
   *
   * @dev update the given pool's Info
   *
   */
  function set(
    uint256 _pid,
    uint256 _apy,
    uint16 _multiplier,
    uint16 _startIdx,
    uint16 _endIdx,
    uint256 _lockPeriodInDays,
    bool _isUsed,
    uint256 _endDate,
    address _tradesAgainst,
    uint256 _hardCap
  ) external override onlyOwner {
    require(_pid < poolLength(), "Invalid pool Id");

    Pool storage pool = poolInfo[_pid];
    NFTMultiplier storage nft = pool.nft;

    pool.apy = _apy;
    pool.lockPeriodInDays = _lockPeriodInDays;
    pool.endDate = _endDate;
    pool.tradesAgainst = _tradesAgainst;
    pool.hardCap = _hardCap;

    nft.active = _isUsed;
    nft.multiplier = _multiplier;
    nft.startIdx = _startIdx;
    nft.endIdx = _endIdx;
  }

  function setNftContract(address _nft) external onlyOwner {
    nftContract = IDecubateNFT(_nft);
  }

  /**
   *
   * @dev update the given pool's tokens
   *
   */
  function setTokens(
    uint256 _pid,
    PoolToken memory _inputToken,
    PoolToken memory _rewardToken
  ) external override onlyOwner {
    require(_pid < poolLength(), "Invalid pool Id");

    poolInfo[_pid].inputToken = _inputToken;
    poolInfo[_pid].rewardToken = _rewardToken;
  }

  /**
   *
   * @dev Allow owner to transfer token from contract
   *
   * @param {address} contract address of corresponding token
   * @param {uint256} amount of token to be transferred
   *
   * This is a generalized function which can be used to transfer any accidentally
   * sent (including DCB) out of the contract to wowner
   *
   */
  function transferToken(address _addr, uint256 _amount) external onlyOwner returns (bool) {
    IERC20 token = IERC20(_addr);
    bool success = token.transfer(address(owner()), _amount);
    return success;
  }

  /**
   *
   * @dev depsoit tokens to staking for reward allocation
   *
   * @param {_pid} Id of the pool
   * @param {_amount} Amount to be staked
   *
   * @return {bool} Status of stake
   *
   */
  function stake(uint256 _pid, uint256 _amount) external override returns (bool) {
    Pool memory pool = poolInfo[_pid];
    IERC20 token = IERC20(pool.inputToken.addr);

    require(
      token.allowance(msg.sender, address(this)) >= _amount,
      "Decubate : Set allowance first!"
    );

    bool success = token.transferFrom(msg.sender, address(this), _amount);
    require(success, "Decubate : Transfer failed");

    _claim(_pid, msg.sender);

    _stake(_pid, msg.sender, _amount);

    return success;
  }

  /**
   *
   * @dev withdraw tokens from Staking
   *
   * @param {_pid} id of the pool
   * @param {_amount} amount to be unstaked
   *
   * @return {bool} Status of stake
   *
   */
  function unStake(uint256 _pid, uint256 _amount) external override returns (bool) {
    User storage user = users[_pid][msg.sender];
    Pool storage pool = poolInfo[_pid];

    require(user.totalInvested >= _amount, "You don't have enough funds");

    require(canUnstake(_pid, msg.sender), "Stake still in locked state");

    _claim(_pid, msg.sender);

    pool.totalDeposit = pool.totalDeposit.sub(_amount);
    user.totalInvested = user.totalInvested.sub(_amount);

    safeTransfer(pool.inputToken.addr, msg.sender, _amount);

    emit Unstake(msg.sender, _amount, block.timestamp);

    return true;
  }

  /**
   *
   * @dev update fee values
   *
   */
  function updateFeeValues(uint8 _feePercent, address _feeWallet) external onlyOwner {
    feePercent = _feePercent;
    feeAddress = _feeWallet;
  }

  /**
   *
   * @dev update time gap
   *
   */
  function updateTimeGap(uint32 newValue) external onlyOwner {
    timeGap = newValue;
  }

  /**
   *
   * @dev claim accumulated reward reward for a single pool
   *
   * @param {_pid} pool identifier
   *
   * @return {bool} status of claim
   */

  function claim(uint256 _pid) public override returns (bool) {
    _claim(_pid, msg.sender);

    return true;
  }

  /**
   *
   * @dev claim accumulated  reward from all pools
   *
   * Beware of gas fee!
   *
   */
  function claimAll() public override returns (bool) {
    uint256 len = poolInfo.length;

    for (uint256 pid = 0; pid < len; ++pid) {
      _claim(pid, msg.sender);
    }

    return true;
  }

  /**
   *
   * @dev Update ratio of a given pool
   *
   * @param {_pid} pool identifier
   *
   * @return {bool} Status of update
   */
  function updateRatio(uint256 _pid) public returns (bool) {
    _updateRatio(_pid);

    return true;
  }

  /**
   *
   * @dev Update ratio of all pools
   *
   * Beware of gas fee!
   *
   */
  function updateRatioAll() public returns (bool) {
    uint256 len = poolInfo.length;

    for (uint256 pid = 0; pid < len; ++pid) {
      _updateRatio(pid);
    }

    return true;
  }

  /**
   *
   * @dev check whether user can Unstake or not
   *
   * @param {_pid}  id of the pool
   * @param {_addr} address of the user
   *
   * @return {bool} Status of Unstake
   *
   */

  function canUnstake(uint256 _pid, address _addr) public view override returns (bool) {
    User storage user = users[_pid][_addr];
    Pool storage pool = poolInfo[_pid];

    return (block.timestamp >= user.depositTime.add(pool.lockPeriodInDays.mul(1 days)));
  }

  /**
   *
   * @dev check whether user have NFT multiplier
   *
   * @param _pid  id of the pool
   * @param _addr address of the user
   *
   * @return multi Value of multiplier
   *
   */

  function calcMultiplier(uint256 _pid, address _addr) public view override returns (uint16 multi) {
    NFTMultiplier memory nft = poolInfo[_pid].nft;

    if (nft.active && ownsCorrectNFT(_addr, _pid)) {
      multi = nft.multiplier;
    } else {
      multi = 10;
    }
  }

  /**
   *
   * @dev get length of the pools
   *
   * @return {uint256} length of the pools
   *
   */
  function poolLength() public view override returns (uint256) {
    return poolInfo.length;
  }

  /**
   *
   * @dev get info of all pools
   *
   * @return {PoolInfo[]} Pool info struct
   *
   */
  function getPools() public view returns (Pool[] memory) {
    return poolInfo;
  }

  function payout(uint256 _pid, address _addr) public view override returns (uint256 value) {
    User memory user = users[_pid][_addr];
    Pool memory pool = poolInfo[_pid];

    uint256 from = user.lastPayout > user.depositTime ? user.lastPayout : user.depositTime;
    uint256 to = block.timestamp > pool.endDate ? pool.endDate : block.timestamp;

    uint256 multiplier = calcMultiplier(_pid, _addr);

    if (from < to) {
      uint256 rayValue = yearlyRateToRay((pool.apy * 10**18) / 1000);
      value = (accrueInterest(user.totalInvested, rayValue, to.sub(from))).sub(user.totalInvested);
    }

    if (pool.isRewardAboveInput) {
      value = value.div(pool.ratio).mul(multiplier).div(10);
    } else {
      value = value.mul(pool.ratio).mul(multiplier).div(10);
    }

    uint8 iToken = IERC20Metadata(pool.inputToken.addr).decimals();
    uint8 rToken = IERC20Metadata(pool.rewardToken.addr).decimals();

    if (iToken > rToken) {
      value = value.div(10**(iToken - rToken));
    } else if (rToken > iToken) {
      value = value.mul(10**(rToken - iToken));
    }

    return value;
  }

  function ownsCorrectNFT(address _addr, uint256 _pid) public view returns (bool) {
    NFTMultiplier memory nft = poolInfo[_pid].nft;

    uint256[] memory ids = nftContract.walletOfOwner(_addr);
    for (uint256 i = 0; i < ids.length; i++) {
      if (ids[i] >= nft.startIdx && ids[i] <= nft.endIdx) {
        return true;
      }
    }
    return false;
  }

  function _claim(uint256 _pid, address _addr) internal {
    User storage user = users[_pid][_addr];
    Pool memory pool = poolInfo[_pid];

    _updateRatio(_pid);

    uint256 amount = payout(_pid, _addr);

    if (amount > 0) {
      if (feePercent > 0) {
        uint256 feeAmount = amount.mul(feePercent).div(1000);
        safeTransfer(pool.rewardToken.addr, feeAddress, feeAmount);
        amount = amount.sub(feeAmount);
      }

      safeTransfer(pool.rewardToken.addr, _addr, amount);

      user.lastPayout = block.timestamp;
      user.totalWithdrawn = user.totalWithdrawn.add(amount);
      user.totalClaimed = user.totalClaimed.add(amount);
    }

    emit Claim(_addr, amount, block.timestamp);
  }

  function _stake(
    uint256 _pid,
    address _sender,
    uint256 _amount
  ) internal {
    User storage user = users[_pid][_sender];
    Pool storage pool = poolInfo[_pid];

    uint256 stopDepo = pool.endDate.sub(pool.lockPeriodInDays.mul(1 days));

    require(block.timestamp <= stopDepo, "Staking is disabled for this pool");
    require(pool.totalDeposit + _amount <= pool.hardCap, "Pool is full");

    user.totalInvested = user.totalInvested.add(_amount);
    pool.totalDeposit = pool.totalDeposit.add(_amount);
    user.lastPayout = block.timestamp;
    user.depositTime = block.timestamp;

    emit Stake(_sender, _amount, block.timestamp);
  }

  /**
   *
   * @dev safe  transfer function, require to have enough reward to transfer
   *
   */
  function safeTransfer(
    address _token,
    address _to,
    uint256 _amount
  ) internal {
    IERC20 token = IERC20(_token);
    uint256 bal = token.balanceOf(address(this));

    require(bal >= _amount, "Not enough funds in treasury");

    token.transfer(_to, _amount);
  }

  function _updateRatio(uint256 _pid) internal {
    Pool storage pool = poolInfo[_pid];

    if (pool.endDate > block.timestamp && pool.lastUpdatedTime + timeGap <= block.timestamp) {
      //skipping expired pools

      (uint256 input, uint256 reward) = getPrices(_pid);
      uint32 timeElapsed = uint32(block.timestamp) - pool.lastUpdatedTime;

      uint256 priceInputAverage = (input - priceBuffer[_pid][0]) / timeElapsed;
      uint256 priceRewardAverage = (reward - priceBuffer[_pid][1]) / timeElapsed;

      IERC20Metadata iToken = IERC20Metadata(pool.inputToken.addr);
      IERC20Metadata rToken = IERC20Metadata(pool.rewardToken.addr);

      // Price of 1 input token in BNB
      uint256 priceOfInput = priceInputAverage.mul(10**(iToken.decimals()));
      // Price of 1 reward token in BNB
      uint256 priceOfReward = priceRewardAverage.mul(10**(rToken.decimals()));

      if (priceOfInput > priceOfReward) {
        pool.ratio = priceOfInput / priceOfReward;
        pool.isRewardAboveInput = false;
      } else {
        pool.ratio = priceOfReward / priceOfInput;
        pool.isRewardAboveInput = true;
      }

      priceBuffer[_pid][0] = input;
      priceBuffer[_pid][1] = reward;

      pool.lastUpdatedTime = uint32(block.timestamp);

      emit RatioUpdated(_pid, pool.ratio);
    }
  }

  /**
   *
   * @dev Fetching price from AMM for calculating ratio
   *
   */
  function getPrices(uint256 _pid) internal view returns (uint256 priceInput, uint256 priceReward) {
    Pool memory pool = poolInfo[_pid];

    priceInput = getTokenPrice(pool.inputToken, pool.tradesAgainst);
    priceReward = getTokenPrice(pool.rewardToken, pool.tradesAgainst);
  }

  /**
   *
   * @dev Fetching cumulative price of token
   *
   */
  function getTokenPrice(PoolToken memory _token, address against) internal view returns (uint256) {
    IUniswapV2Router02 router = IUniswapV2Router02(_token.router);
    IUniswapV2Factory factory = IUniswapV2Factory(router.factory());

    address _pair = factory.getPair(_token.addr, against);
    IUniswapV2Pair pair = IUniswapV2Pair(_pair);

    bool tokenIsToken0 = _token.addr == pair.token0();

    (uint256 price0, uint256 price1, ) = UniswapV2OracleLibrary.currentCumulativePrices(_pair);

    return tokenIsToken0 ? price0 : price1;
  }
}
