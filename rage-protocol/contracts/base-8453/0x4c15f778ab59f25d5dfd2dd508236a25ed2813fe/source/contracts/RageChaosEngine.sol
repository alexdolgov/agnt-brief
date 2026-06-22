// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IRage} from "./IRage.sol";
import {ReentrancyGuard} from "./ReentrancyGuard.sol";
import {IERC20} from "./IERC20.sol";
import {ERC20} from "./ERC20.sol";
import {TickMath} from "./TickMath.sol";
import {LiquidityAmounts} from "./LiquidityAmounts.sol";
import {INonfungiblePositionManager} from "./INonfungiblePositionManager.sol";
import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {IUniswapV3Factory} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";
import {RageStructs} from "./RageStructs.sol";
import {IRageSwapper} from "./IRageSwapper.sol";

contract RageChaosEngine is ReentrancyGuard {
  // constant
  IERC20 private constant USDC = IERC20(0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913);
  IERC20 private constant PHESTIA = IERC20(0xF760fD8fEB1F5E3bf3651E2E4f227285a82470Ff);
  IERC20 private constant PCIRCLE = IERC20(0x55A81dA2a319dD60fB028c53Cb4419493B56f6c0);
  INonfungiblePositionManager private constant POSITION_MANAGER = INonfungiblePositionManager(0x03a520b32C04BF3bEEf7BEb72E919cf822Ed34f1);
  IUniswapV3Factory private constant FACTORY = IUniswapV3Factory(0x33128a8fC17869897dcE68Ed026d694621f6FDfD);
  uint256 private constant VERSION = 1;
  uint24 private constant POOL_FEE = 10_000;
  uint256 private constant BPS = 10000;
  uint256 private constant MAX_DEADLINE_DURATION = 2 minutes;
  uint256 private constant CONFIG_INTERVAL = 1 hours;
  uint256 private constant STACK_INTERVAL = 4 hours;
  uint256 private constant BOOST_INTERVAL = 8 hours;
  uint256 private constant CRUSH_INTERVAL = 8 hours;
  uint256 private constant BURST_INTERVAL = 8 hours;
  uint256 private constant YEARLY_ALLOWANCE_MAX_PERCENT = 20; // 20% of active supply can be sent yearly to multisig, all other rage tokens either go in the pool or in RBP
  uint256 private constant YEARLY_ALLOWANCE_DELAY = 365 days;
  address private constant MULTISIG = 0x507fbdE39ba40DA4Fc79426AD5E3C64944fE43d4;

  // state
  IUniswapV3Pool private POOL;
  RageStructs.RceStateValue private STATE;
  RageStructs.RceConfig private CONFIG;

  // immutable
  IRage private immutable RAGE;
  uint256 private immutable NFT_ID;
  IRageSwapper private immutable RAGE_SWAPPER;
  
  // events
  event LockNft(uint256 nftId);
  event AutomatorSet(address automator);
  event RageBuyingProtocolProposed(address indexed proposer, address indexed pendingRbp);
  event RageBuyingProtocolSet(address indexed newRbp);
  event OwnershipTransferred(address indexed oldOwner, address indexed newOwner);
  event SupplyRequested(uint256 percent);
  event SupplyBurned(uint256 amount);
  event YearlyAllowanceRequested(address indexed requester, address indexed recipient, uint256 amount, uint256 activeSupply);
  event RageTransferred(address recipient, uint256 amount);
  event ConfigChanged(uint256 stackRage, uint256 stackHestia, uint256 boostRage, uint128 crushDecrease, bool crushBuy, uint256 burstRage, uint256 burstLoop, uint256 slippage, address podAddress, address sideAddress1, address sideAddress2);
  event PoolBoosted(uint256 rageIncrease, uint256 usdcIncrease);
  event UnderlyingStacked(uint256 rageSold, uint256 pHestia, uint256 pCircle);
  event RageCrushed(uint256 rageBurned, uint256 usdcBought);
  event RageBursted(uint256 rageCollected, uint256 usdcCollected);

  // constructor
  constructor(address rage, address rSwap, uint256 nftId, address owner1, address owner2) {
    RAGE = IRage(rage);
    RAGE_SWAPPER = IRageSwapper(rSwap);
    
    STATE.owner1 = owner1;
    STATE.owner2 = owner2;
    STATE.automator = 0xCBe5a4103d4C7Ed5D73d9942101473C1Bc0A8020;

    CONFIG = RageStructs.RceConfig({
        stackRage: 100,
        stackHestia: 80,
        boostRage: 100,
        crushDecrease: 0,
        crushBuy: true,
        burstRage: 10e18,
        burstLoop: 2,
        slippage: 1000,
        podAddress: address(0),
        sideAddress1: 0xb278F52bC80B883da0729a863F853845965aF009,
        sideAddress2: address(0)
    });

    // approve rage swapper
    USDC.approve(address(RAGE_SWAPPER), type(uint256).max);
    RAGE.approve(address(RAGE_SWAPPER), type(uint256).max);

    // approve position manager
    RAGE.approve(address(POSITION_MANAGER), type(uint256).max);
    USDC.approve(address(POSITION_MANAGER), type(uint256).max);

    // nft and pool initialization
    (
        ,
        ,
        address nftToken0,
        address nftToken1,
        uint24 nftFee,
        ,
        ,
        ,
        ,
        ,
        ,
    ) = POSITION_MANAGER.positions(nftId);

    // check nft has correct tokens and fees
    require(
        (nftToken0 == address(USDC) && nftToken1 == address(RAGE)) ||
        (nftToken0 == address(RAGE) && nftToken1 == address(USDC)),
        "nftTokensDoNoMatchPoolTokens"
    );
    require(nftFee == POOL_FEE, "nftFeeTierDoesNotMatchPool");

    // initialize the usdc/rage pool
    POOL = IUniswapV3Pool(FACTORY.getPool(address(USDC), address(RAGE), POOL_FEE));
    require(address(POOL) != address(0),"invalidPoolAddress");

    // need to approve for liquidity increase
    USDC.approve(address(POOL), type(uint256).max);
    RAGE.approve(address(POOL), type(uint256).max);
    STATE.poolToken0 = POOL.token0();

    // set the nft
    NFT_ID = nftId;
  }

  // withdrawEth
  function withdrawEth() external {
    require(msg.sender == STATE.automator, "unauthorized");
    
    uint256 balance = address(this).balance;
    require(balance > 0, "noEthBalance");
    (bool success, ) = payable(MULTISIG).call{value: balance}("");
    require(success, "ethTransferFailed");
  }

  // withdrawToken
  // rage and usdc withdrawal is blocked
  // the only way to withdraw Rage to multisig is through the yearly allowance function
  function withdrawToken(address tokenAdr) external {
    require(msg.sender == STATE.automator, "unauthorized");
    require(tokenAdr != address(RAGE) && tokenAdr != address(USDC), "usdcAndRageNotWithdrawable");

    IERC20 token = IERC20(tokenAdr);
    uint256 balance = token.balanceOf(address(this));
    require(balance > 0, "noTokenBalance");
    require(token.transfer(MULTISIG, balance), "transferFailed");
  }

  // lockNft
  // transfer it to controller contract, only for owners
  function lockNFT() external nonReentrant {
    require(msg.sender == STATE.owner1 || msg.sender == STATE.owner2, "unauthorized");
    require(NFT_ID > 0, "nftNotSet");
    require(STATE.nftLocked == 0, "nftAlreadyLocked");
    POSITION_MANAGER.transferFrom(msg.sender, address(this), NFT_ID);
    STATE.nftLocked = 1;
    emit LockNft(NFT_ID);
  }

  // transferOwnership
  // the owner is able to transfer his own ownership to another address
  function transferOwnership(address newOwner) external nonReentrant {
    require(msg.sender == STATE.owner1 || msg.sender == STATE.owner2, "unauthorized");
    require(newOwner != address(0), "invalidOwnerAddress");
    require(newOwner != STATE.rageBuyingProtocol, "ownerCannotBeRbp");
    require(newOwner != STATE.automator, "ownerCannotBeAutomator");
    
    if (msg.sender == STATE.owner1) {
        require(newOwner != STATE.owner2, "ownersMustBeDifferent");
        STATE.owner1 = newOwner;
    } 
    else {
        require(newOwner != STATE.owner1, "ownersMustBeDifferent");
        STATE.owner2 = newOwner;
    }

    emit OwnershipTransferred(msg.sender, newOwner);
  }

  // setRageBuyingProtocol
  // both owners must specify the same new rbp address for the change to go in effect
  // this is a critical change as the rage buying protocol can mint Rage tokens
  function setRageBuyingProtocol(address newRbp) external nonReentrant {
    require(msg.sender == STATE.owner1 || msg.sender == STATE.owner2, "unauthorized");
    require(newRbp != address(0), "invalidRbpAddress");
    require(newRbp != STATE.owner1 && newRbp != STATE.owner2, "ownerCannotBeRbp");
    
    // if no pending rbp, this is the first proposal
    if (STATE.pendingRbp == address(0)) {
        STATE.pendingRbp = newRbp;
        STATE.ownerProposer = msg.sender;
        emit RageBuyingProtocolProposed(msg.sender, newRbp);
    }

    // if there's a pending rbp and it matches what the other owner proposed
    else if (STATE.pendingRbp == newRbp && STATE.ownerProposer != msg.sender) {
        STATE.rageBuyingProtocol = newRbp;
        STATE.pendingRbp = address(0);
        STATE.ownerProposer = address(0);
        emit RageBuyingProtocolSet(newRbp);
    }

    // if a same owner tries to set again or proposes a different address
    else {
        STATE.pendingRbp = newRbp;
        STATE.ownerProposer = msg.sender;
        emit RageBuyingProtocolProposed(msg.sender, newRbp);
    }
  }

  // setAutomator
  // even though its not the best practice, we choose to allow automator to name a successor himself
  function setAutomator(address automator) external nonReentrant {
    require(msg.sender == STATE.automator || msg.sender == STATE.owner1 || msg.sender == STATE.owner2, "unauthorized");
    require(automator != STATE.owner1 && automator != STATE.owner2 && automator != address(0), "invalidAutomatorAddress");
    STATE.automator = automator;
    emit AutomatorSet(automator);
  }

  // requestSupply
  // the rage chaos engine requests supply to the rage contract
  // the rage is stored within rce contract
  function requestSupply(uint256 percent) external nonReentrant {
    require(msg.sender == STATE.automator, "unauthorized");
    require(percent > 0, "invalidPercent"); // the rage contract will have further checks on the percent variable

    uint256 rageBalanceBefore = getRageBalance();
    RAGE.requestSupply(percent);

    uint256 rageBalanceAfter = getRageBalance();
    uint256 actualMintAmount = rageBalanceAfter - rageBalanceBefore;

    require(actualMintAmount > 0, "noSupplyMinted" );
    STATE.amountMint += actualMintAmount;

    emit SupplyRequested(percent);
  }

  // burnSupply
  // the automator can request to burn rage supply within the rce contract
  function burnSupply(uint256 amount) external nonReentrant {
    require(msg.sender == STATE.automator, "unauthorized");
    require(amount > 0, "invalidAmount");

    uint256 rageBalance = getRageBalance();
    require(rageBalance >= amount, "insufficientBalance");
    
    RAGE.burn(amount);

    emit SupplyBurned(amount);
  }

  // requestYearlyAllowance
  // automator can request once per year an allowance of activeSupply be sent to Multisig
  function requestYearlyAllowance(uint256 percent) external nonReentrant {
    require(msg.sender == STATE.automator, "unauthorized");
    require(block.timestamp >= STATE.nextYearlyAllowance, "mustWait1Year");
    require(percent <= YEARLY_ALLOWANCE_MAX_PERCENT, "invalidPercent" );

    uint256 activeSupply = getActiveSupply();
    uint256 allowanceAmount = (activeSupply * percent) / 100;
    require(allowanceAmount > 0, "noActiveSupply");
    
    uint256 rceBalance = getRageBalance();
    require(allowanceAmount <= rceBalance, "insufficientRceBalance");
    
    require(RAGE.transfer(MULTISIG, allowanceAmount), "transferFailed");
    
    STATE.amountAllowance += allowanceAmount;
    STATE.nextYearlyAllowance = block.timestamp + YEARLY_ALLOWANCE_DELAY;

    emit YearlyAllowanceRequested(STATE.automator, MULTISIG, allowanceAmount, activeSupply);
  }

  // setConfigs
  // automator can change a number of configuration on the contract
  function setConfigs(RageStructs.RceConfig calldata newConfig) external nonReentrant {
    require(msg.sender == STATE.automator, "unauthorized");
    require(block.timestamp >= STATE.nextConfigTime, "configTimeout");
    STATE.nextConfigTime = block.timestamp + CONFIG_INTERVAL;

    require(newConfig.stackRage >= 100 && newConfig.stackRage <= 10000, "invalidStackRage");
    require(newConfig.stackHestia >= 0 && newConfig.stackHestia <= 100, "invalidStackHestia");
    require(newConfig.boostRage == 0 || (newConfig.boostRage >= 100 && newConfig.boostRage <= 10000), "invalidBoostRage");
    require(newConfig.crushDecrease == 0 || (newConfig.crushDecrease >= 100 && newConfig.crushDecrease <= 10000), "invalidCrushDecrease");
    require(newConfig.burstRage >= 1e18 && newConfig.burstRage <= 200e18, "invalidBurstRage");
    require(newConfig.burstLoop >= 1 && newConfig.burstLoop <= 5, "invalidBurstLoop");
    require(newConfig.slippage <= 2500, "invalidLiquiditySlippage");
    require(newConfig.podAddress != MULTISIG && newConfig.podAddress != address(this), "invalidPodAddress");
    require(newConfig.sideAddress1 != MULTISIG && newConfig.sideAddress1 != address(this), "invalidSideAddress1");
    require(newConfig.sideAddress2 != MULTISIG && newConfig.sideAddress2 != address(this), "invalidSideAddress2");

    CONFIG = newConfig;

    emit ConfigChanged(
        newConfig.stackRage, 
        newConfig.stackHestia, 
        newConfig.boostRage, 
        newConfig.crushDecrease, 
        newConfig.crushBuy, 
        newConfig.burstRage,
        newConfig.burstLoop,
        newConfig.slippage, 
        newConfig.podAddress, 
        newConfig.sideAddress1, 
        newConfig.sideAddress2
    );
  }
  
  // getMultisig
  // returns the multisig address
  function getMultisig() external pure returns (address) {
      return MULTISIG;
  }

  // getAutomator
  // returns the automator address
  function getAutomator() external view returns (address) {
      return STATE.automator;
  }

  // getOwners
  // returns both owner addresses
  function getOwners() external view returns (address owner1, address owner2) {
      return (STATE.owner1, STATE.owner2);
  }

  // getRageBuyingProtocol
  // returns the rage buying protocol address
  function getRageBuyingProtocol() external view returns (address) {
      return STATE.rageBuyingProtocol;
  }
  
  // getState
  // returns the full state of the contract
  function getState() external view returns (RageStructs.RceState memory) {
    return RageStructs.RceState({
        version: VERSION,
        rageSwapper: address(RAGE_SWAPPER),
        multisig: MULTISIG,
        poolAddress: address(POOL),
        nftId: NFT_ID,
        activeSupply: getActiveSupply(),
        nftSupply: getRageInNft(),
        rageBalance: getRageBalance(),
        usdcBalance: getUsdcBalance(),
        config: CONFIG,
        state: STATE
    });
  }

  // transferRage
  // only the rbp address can make request to transfer Rage tokens
  function transferRage(address recipient, uint256 amount) external nonReentrant {
      require(msg.sender == STATE.rageBuyingProtocol, "notRbp");
      require(STATE.rageBuyingProtocol != address(0), "rbpNotSet");
      require(recipient != address(0), "invalidRecipient");
      require(amount > 0, "invalidAmount");
      
      uint256 rageBalance = getRageBalance();
      require(rageBalance >= amount, "insufficientRageBalance");

      require(RAGE.transfer(recipient, amount), "transferFailed");
      STATE.amountTransfer += amount;

      emit RageTransferred(recipient, amount);
  }

  // getRageBalance
  function getRageBalance() internal view returns(uint256) {
    return RAGE.balanceOf(address(this));
  }

  // getUsdcBalance
  function getUsdcBalance() internal view returns(uint256) {
    return USDC.balanceOf(address(this));
  }

  // getActiveSupply
  // returns the active supply of RAGE tokens
  // excludes: RCE balance, multisig balance, RAGE in liquidity NFT
  function getActiveSupply() public view returns (uint256) {
    // get total supply (already excludes tokens sent to 0 address and dead address)
    uint256 totalSupply = RAGE.getTotalSupply();
    
    uint256 rceBalance = getRageBalance();
    uint256 multisigBalance = RAGE.balanceOf(MULTISIG);
    uint256 rageInNft = getRageInNft();
    uint256 automatorBalance = RAGE.balanceOf(STATE.automator);

    // calculate active supply
    uint256 activeSupply = totalSupply - rceBalance - multisigBalance - rageInNft - automatorBalance;
    
    // those 3 exclusion addresses can be configured through setConfigs, we will use them to exclude side pools and pRage pool from active supply
    if(CONFIG.podAddress != address(0)) {
      activeSupply -= RAGE.balanceOf(CONFIG.podAddress);
    }
    if(CONFIG.sideAddress1 != address(0)) {
      activeSupply -= RAGE.balanceOf(CONFIG.sideAddress1);
    }
    if(CONFIG.sideAddress2 != address(0)) {
      activeSupply -= RAGE.balanceOf(CONFIG.sideAddress2);
    }

    return activeSupply;
  }

  // stackUnderlying
  // this function sends an amount of rage to the RBP contract
  // the rbp contract will sell the rage to pTokens and stack in the contract
  // this will boost fmv for all holders
  function stackUnderlying() external nonReentrant {
    require(msg.sender == STATE.automator, "unauthorized");
    require(block.timestamp >= STATE.nextStackTime, "stackTimeout");
    STATE.nextStackTime = block.timestamp + STACK_INTERVAL;

    // calculate percentage of RAGE in NFT to sell (CONFIG.stackRage is divider: 100 = 1%, 10000 = 0.01%)
    uint256 rageInNft = getRageInNft();
    require(rageInNft > 0, "noRageInNft");
    uint256 rageToSell = rageInNft / CONFIG.stackRage;
    require(rageToSell > 0, "amountTooSmall");

    // check we have enough RAGE to sell
    uint256 rageBalance = getRageBalance();
    require(rageBalance >= rageToSell, "insufficientRageBalance");

    // calculate stack circle amount
    uint256 stackCircle = 100 - CONFIG.stackHestia;

    // get initial balances
    uint256 pHestiaBefore = PHESTIA.balanceOf(address(this));
    uint256 pCircleBefore = PCIRCLE.balanceOf(address(this));

    // swap RAGE for underlying pTokens
    (uint256 pHestiaReceived, uint256 pCircleReceived) = 
        RAGE_SWAPPER.swapRageForUnderlying(
            rageToSell,
            CONFIG.stackHestia,
            stackCircle,
            CONFIG.slippage,
            block.timestamp + MAX_DEADLINE_DURATION
        );

    // verify balances increased correctly
    require(PHESTIA.balanceOf(address(this)) == pHestiaBefore + pHestiaReceived, "incorrectPHestiaBalance");
    require(PCIRCLE.balanceOf(address(this)) == pCircleBefore + pCircleReceived, "incorrectPCircleBalance");

    // transfer pTokens to RBP
    if(pHestiaReceived > 0) require(PHESTIA.transfer(STATE.rageBuyingProtocol, pHestiaReceived), "pHestiaTransferFailed");
    if(pCircleReceived > 0) require(PCIRCLE.transfer(STATE.rageBuyingProtocol, pCircleReceived), "pCircleTransferFailed");

    // finally collect the fees and leave them in contract, this prevents the fees from the sells to be added to active supply
    POSITION_MANAGER.collect(
      INonfungiblePositionManager.CollectParams({
          tokenId: NFT_ID,
          recipient: address(this),
          amount0Max: type(uint128).max,
          amount1Max: type(uint128).max
      })
    );

    STATE.amountRageStack += rageToSell;
    STATE.lastStackTime = block.timestamp;
    STATE.lastStackAmount = rageToSell;

    emit UnderlyingStacked(rageToSell, pHestiaReceived, pCircleReceived);
  }

  // poolBoost
  // this function is used to process liquidity increase
  // it is possible to sell rage to usdc before doing liquidity increase
  // we want to use this mostly when rage price is over fmv
  function poolBoost() external nonReentrant {
    require(msg.sender == STATE.automator, "unauthorized");
    require(block.timestamp >= STATE.nextBoostTime, "boostTimeout");
    STATE.nextBoostTime = block.timestamp + BOOST_INTERVAL;

    uint256 rageIncrease;
    uint256 usdcIncrease;
    uint256 rageToSell;

    // sell rage for usdc if configured (CONFIG.boostRage > 0 means enabled)
    if(CONFIG.boostRage > 0) {
        // calculate percentage of RAGE in NFT to sell (CONFIG.boostRage is divider: 100 = 1%, 10000 = 0.01%)
        uint256 rageInNft = getRageInNft();
        require(rageInNft > 0, "noRageInNft");
        rageToSell = rageInNft / CONFIG.boostRage;
        require(rageToSell > 0, "amountTooSmall");
        
        uint256 rageBalance = getRageBalance();
        require(rageBalance >= rageToSell, "insufficientRageBalance");
        
        uint256 usdcBefore = getUsdcBalance();
        uint256 usdcReceived = RAGE_SWAPPER.swapRageForUsdc(rageToSell, CONFIG.slippage, block.timestamp + MAX_DEADLINE_DURATION);
        
        require(usdcReceived > 0, "noUsdcReceived");
        require(getUsdcBalance() == usdcBefore + usdcReceived, "incorrectUsdcBalance");

        // then collect the fees and leave them in contract to be used in liquidity increase, this prevents the fees from the sells to be added to active supply
        POSITION_MANAGER.collect(
          INonfungiblePositionManager.CollectParams({
              tokenId: NFT_ID,
              recipient: address(this),
              amount0Max: type(uint128).max,
              amount1Max: type(uint128).max
          })
        );
    }

    // liquidity increase
    uint256 rageAmount = getRageBalance();
    uint256 usdcAmount = getUsdcBalance();
    if(rageAmount > 0 && usdcAmount > 0) {
        (rageIncrease, usdcIncrease) = increaseLiquidity(rageAmount, usdcAmount);
    }

    STATE.amountUsdcBoost += usdcIncrease;
    STATE.amountRageBoost += rageToSell;
    STATE.lastBoostTime = block.timestamp;
    STATE.lastBoostAmount = rageIncrease;

    emit PoolBoosted(rageIncrease, usdcIncrease);
  }

  // rageCrush
  // this daily function is use the acquiered trading fees to buy & burn rage
  // it is possible to decrease liquidity on the pool to make the buy & burn bigger
  function rageCrush() external nonReentrant {
    require(msg.sender == STATE.automator, "unauthorized");
    require(block.timestamp >= STATE.nextCrushTime, "rageTimeout");
    STATE.nextCrushTime = block.timestamp + CRUSH_INTERVAL;
    
    uint256 usdcBought = 0;
    uint256 rageToBurn = 0;
    
    // get initial balances before collecting fees
    uint256 rageBalanceBefore = getRageBalance();
    uint256 usdcBalanceBefore = getUsdcBalance();
    
    // liquidity decrease if requested, this will be collected as fees in the next step
    if(CONFIG.crushDecrease >= 100)
    {
        (, , , , , , , uint128 liquidity, , , , ) = POSITION_MANAGER.positions(NFT_ID);
        uint128 liquidityToBurn = liquidity / CONFIG.crushDecrease;
        uint256 amount0Min = 0;
        uint256 amount1Min = 0;
        
        // calculate slippage protection, can be disabled
        if(CONFIG.slippage >= 50)
        (amount0Min, amount1Min) = calculateMinimalDecreaseAmounts(liquidityToBurn);

        POSITION_MANAGER.decreaseLiquidity(
            INonfungiblePositionManager.DecreaseLiquidityParams({
                tokenId: NFT_ID,
                liquidity: liquidityToBurn,
                amount0Min: amount0Min,
                amount1Min: amount1Min,
                deadline: block.timestamp + MAX_DEADLINE_DURATION
            })
        );
    }

    // then collect fees
    POSITION_MANAGER.collect(
        INonfungiblePositionManager.CollectParams({
            tokenId: NFT_ID,
            recipient: address(this),
            amount0Max: type(uint128).max,
            amount1Max: type(uint128).max
        })
    );
    
    // calculate collected fees
    uint256 rageCollected = getRageBalance() - rageBalanceBefore;
    uint256 usdcCollected = getUsdcBalance() - usdcBalanceBefore;
    
    // add collected RAGE to burn amount
    rageToBurn = rageCollected;

    // buy more RAGE if enabled
    if(CONFIG.crushBuy && usdcCollected > 0) {
        uint256 rageBeforeSwap = getRageBalance();
        uint256 rageObtained = RAGE_SWAPPER.swapUsdcForRage(usdcCollected, CONFIG.slippage, block.timestamp + MAX_DEADLINE_DURATION);
        require(rageObtained > 0, "noRageObtained");
        require(getRageBalance() == rageBeforeSwap + rageObtained, "incorrectSwapAmount");
        usdcBought = usdcCollected;
        
        // add bought RAGE to burn amount
        rageToBurn += rageObtained;
    }
    
    if(rageToBurn > 0) {
        RAGE.burn(rageToBurn);
    }

    STATE.amountUsdcCrush += usdcBought;
    STATE.lastCrushTime = block.timestamp;
    STATE.lastCrushAmount = rageToBurn;

    emit RageCrushed(rageToBurn, usdcBought);
  }

  // rageBurst
  // simple volume generation using the rage within rce contract
  // this function will have a slight negative effect on price
  function rageBurst() external {
    require(msg.sender == STATE.automator, "unauthorized");
    require(block.timestamp >= STATE.nextBurstTime, "burstTimeout");
    require(CONFIG.burstLoop > 0, "noBurstLoop" );
    STATE.nextBurstTime = block.timestamp + BURST_INTERVAL;

    for(uint256 i = 0; i < CONFIG.burstLoop; i++)
    {
      if(getRageBalance() >= CONFIG.burstRage) 
      {
          uint256 usdcBeforeSwap = getUsdcBalance();
          uint256 usdcReceived = RAGE_SWAPPER.swapRageForUsdc(CONFIG.burstRage, CONFIG.slippage, block.timestamp + MAX_DEADLINE_DURATION);
          require(usdcReceived > 0, "noUsdcReceived");
          require(getUsdcBalance() == usdcBeforeSwap + usdcReceived, "incorrectUsdcBalance");

          uint256 rageBeforeSwap = getRageBalance();
          uint256 rageReceived = RAGE_SWAPPER.swapUsdcForRage(usdcReceived, CONFIG.slippage, block.timestamp + MAX_DEADLINE_DURATION);
          require(rageReceived > 0, "noRageReceived");
          require(getRageBalance() == rageBeforeSwap + rageReceived, "incorrectRageBalance");
      }
    }

    // then collect fees
    uint256 rageBeforeFees = getRageBalance();
    uint256 usdcBeforeFees = getUsdcBalance();
    POSITION_MANAGER.collect(
        INonfungiblePositionManager.CollectParams({
            tokenId: NFT_ID,
            recipient: address(this),
            amount0Max: type(uint128).max,
            amount1Max: type(uint128).max
        })
    );
    uint256 rageCollected = getRageBalance() - rageBeforeFees;
    uint256 usdcCollected = getUsdcBalance() - usdcBeforeFees;

    STATE.lastBurstAmount = rageCollected;
    STATE.lastBurstTime = block.timestamp;
    emit RageBursted(rageCollected, usdcCollected);
  }

  // getRageInNft
  // helper function to calculate how much RAGE is locked in the NFT position
  function getRageInNft() public view returns (uint256) {
      if (NFT_ID == 0) {
          return 0;
      }
      
      (
          ,
          ,
          address token0,
          ,
          ,
          int24 tickLower,
          int24 tickUpper,
          uint128 liquidity,
          ,
          ,
          ,
      ) = POSITION_MANAGER.positions(NFT_ID);
      
      if (liquidity == 0) {
        return 0;
      }

      (uint160 sqrtPriceX96, , , , , , ) = POOL.slot0();
      uint160 sqrtRatioAX96 = TickMath.getSqrtRatioAtTick(tickLower);
      uint160 sqrtRatioBX96 = TickMath.getSqrtRatioAtTick(tickUpper);
      
      (uint256 amount0, uint256 amount1) = LiquidityAmounts.getAmountsForLiquidity(
          sqrtPriceX96,
          sqrtRatioAX96,
          sqrtRatioBX96,
          liquidity
      );
      
      return (token0 == address(RAGE))? amount0 : amount1;
  }

  // increaseLiquidity
  function increaseLiquidity(uint256 rageGained, uint256 usdcGained) internal returns(uint256 rageIncrease, uint256 usdcIncrease) {
    bool isToken0Usdc = STATE.poolToken0 == address(USDC);
            
    (uint256 amount0Desired, uint256 amount1Desired, uint256 amount0Min, uint256 amount1Min) = calculateOptimalIncreaseAmounts(
        isToken0Usdc ? usdcGained : rageGained,
        isToken0Usdc ? rageGained : usdcGained
    );
        
    if(amount0Desired > 0 && amount1Desired > 0)
    {
        POSITION_MANAGER.increaseLiquidity(
            INonfungiblePositionManager.IncreaseLiquidityParams({
                tokenId: NFT_ID,
                amount0Desired: amount0Desired,
                amount1Desired: amount1Desired,
                amount0Min: amount0Min,
                amount1Min: amount1Min,
                deadline: block.timestamp + MAX_DEADLINE_DURATION
            })
        );

        rageIncrease = isToken0Usdc ? amount1Desired: amount0Desired;
        usdcIncrease = isToken0Usdc ? amount0Desired: amount1Desired;
    }
  }

  // calculateOptimalIncreaseAmounts
  // function used to increaseLiquidity to NFT, slippage can be enable or disabled in config
  function calculateOptimalIncreaseAmounts(uint256 amount0Available, uint256 amount1Available) internal view returns (uint256 amount0Desired, uint256 amount1Desired, uint256 amount0Min, uint256 amount1Min) {
    require(amount0Available > 0 && amount1Available > 0, "invalidAmounts");

    // get position details
    (
        ,
        ,
        ,
        ,
        ,
        int24 tickLower,
        int24 tickUpper,
        ,
        ,
        ,
        ,
    ) = POSITION_MANAGER.positions(NFT_ID);

    // get current sqrt price
    (uint160 sqrtPriceX96, , , , , , ) = POOL.slot0();

    uint160 sqrtRatioAX96 = TickMath.getSqrtRatioAtTick(tickLower);
    uint160 sqrtRatioBX96 = TickMath.getSqrtRatioAtTick(tickUpper);

    uint128 liquidity = LiquidityAmounts.getLiquidityForAmounts(
        sqrtPriceX96,
        sqrtRatioAX96,
        sqrtRatioBX96,
        amount0Available,
        amount1Available
    );
    require(liquidity > 0, "insufficientLiquidity");

    (amount0Desired, amount1Desired) = LiquidityAmounts.getAmountsForLiquidity(
        sqrtPriceX96,
        sqrtRatioAX96,
        sqrtRatioBX96,
        liquidity
    );
    require(amount0Desired > 0 || amount1Desired > 0, "invalidDesiredAmounts");

    // calculate minimum amounts accounting for slippage
    amount0Min = (CONFIG.slippage >= 50)? (amount0Desired * (BPS - CONFIG.slippage)) / BPS: 0;
    amount1Min = (CONFIG.slippage >= 50)? (amount1Desired * (BPS - CONFIG.slippage)) / BPS: 0;
  }

  // function used to decreaseLiquidity in NFT
  // this will only be called if decrease function wants slippage calculation
  function calculateMinimalDecreaseAmounts(uint128 liquidityToRemove) internal view returns (uint256 amount0Min, uint256 amount1Min) {
      require(liquidityToRemove > 0, "invalidLiquidityAmount");

      // get position details
      (
          ,
          ,
          ,
          ,
          ,
          int24 tickLower,
          int24 tickUpper,
          ,
          ,
          ,
          ,
      ) = POSITION_MANAGER.positions(NFT_ID);

      // get current sqrt price
      (uint160 sqrtPriceX96, , , , , , ) = POOL.slot0();

      // calculate expected amounts from liquidity
      (uint256 amount0Expected, uint256 amount1Expected) = LiquidityAmounts.getAmountsForLiquidity(
          sqrtPriceX96,
          TickMath.getSqrtRatioAtTick(tickLower),
          TickMath.getSqrtRatioAtTick(tickUpper),
          liquidityToRemove
      );

      // calculate minimum amounts accounting for slippage
      amount0Min = (amount0Expected * (BPS - CONFIG.slippage)) / BPS;
      amount1Min = (amount1Expected * (BPS - CONFIG.slippage)) / BPS;
  }
}