// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {IERC20} from "./IERC20.sol";
import {IWETH} from "./IWETH.sol";
import {ERC20} from "./ERC20.sol";
import {Owned} from "./Owned.sol";
import {ReentrancyGuard} from "./ReentrancyGuard.sol";
import {IUniswapV3Pool} from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import {TickMath} from './TickMath.sol';

contract RagePresale is Owned, ReentrancyGuard {
  // constant
  string private constant VERSION = '1.0';
  address private constant MULTISIG = 0x507fbdE39ba40DA4Fc79426AD5E3C64944fE43d4;
  IERC20 private constant USDC = IERC20(0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913);
  IERC20 private constant OHM = IERC20(0x060cb087a9730E13aa191f31A6d86bFF8DfcdCC0);
  IWETH private constant WETH = IWETH(0x4200000000000000000000000000000000000006);
  uint256 private constant CONFIG_INTERVAL = 1 hours;
  uint256 private constant PRESALE_TIER_BONUS = 1; // bonus is 1% extra rage per tier
  uint160 private constant MIN_SQRT_RATIO = 4295128739;
  uint160 private constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342;
  IUniswapV3Pool private USDC_WETH_POOL = IUniswapV3Pool(0xb2cc224c1c9feE385f8ad6a55b4d94E92359DC59);
  IUniswapV3Pool private USDC_OHM_POOL = IUniswapV3Pool(0x183ea22691c54806FE96555436dd312b6BeFAc2F);

  // state
  address private AUTOMATOR = 0xCBe5a4103d4C7Ed5D73d9942101473C1Bc0A8020;
  uint256 private NEXT_CONFIG_TIME;
  mapping(address => Investor) private INVESTORS;
  address[] private WALLETS;
  uint256 private LAST_TRANSACTION_TIME;
  uint256 private LAST_TRANSACTION_AMOUNT;
  address private LAST_TRANSACTION_WALLET;
  string private LAST_TRANSACTION_TYPE;
  uint256 private TOTAL_RAISED;
  uint256 private TOTAL_INVESTORS;
  uint256 private TOTAL_ETH_RAISED;
  uint256 private TOTAL_OHM_RAISED;
  uint256 private TOTAL_USDC_RAISED;
  address private USDC_WETH_POOL_TOKEN_0;
  address private USDC_OHM_POOL_TOKEN_0;

  // config
  uint256 private PRESALE_STATUS = 0;
  uint256 private PRESALE_TIER_AMOUNT = 10000e6; // amount to cross one tier
  uint256 private POOL_SUPPLY = 20; // 20% supply extra for the pool
  uint256 private MULTISIG_SUPPLY = 10; // 10% supply extra for the multisig
  uint256 private RAGE_FMV = 5e6; // fmv is $5 at launch, 6 decimals for usdc
  uint32 private OHM_TWAP_INTERVAL = 1800; // 30 minutes TWAP period

  // structs
  struct Investor {
    address wallet;
    uint256 amount;
    uint256 transactions;
    uint256 firstTransaction;
    uint256 lastTransaction;
  }
  struct InvestorOverview {
    bool exists;
    address wallet;
    uint256 usdcAmount;
    uint256 transactions;
    uint256 firstTransaction;
    uint256 lastTransaction;
    uint256 rageAmount;
    uint256 rageValue;
    uint256 ownership;
  }
  struct State {
    string version;
    address owner;
    address automator;
    uint256 nextConfigTime;
    uint256 presaleStatus;
    uint256 presaleTier;
    uint256 presaleTierAmount;
    uint256 poolSupply;
    uint256 multisigSupply;
    uint256 rageFmv;
    uint256 totalRaised;
    uint256 totalEthRaised;
    uint256 totalOhmRaised;
    uint256 totalUsdcRaised;
    uint256 totalInvestors;
    uint256 lastTransactionTime;
    uint256 lastTransactionAmount;
    address lastTransactionWallet;
    string lastTransactionType;
    uint256 totalRageAmount;
    uint256 totalRageValue;
    uint256 totalRageAmountSupply;
    uint256 totalRageValueSupply;
    uint32 ohmTwapInterval;
    uint256 currentOhmPrice;
    address usdcWethPoolToken0;
    address usdcOhmPoolToken0;
  }

  // events
  event Invest(address investor, uint256 tokenAmount);
  event InvestEth(address investor, uint256 ethAmount, uint256 usdcAmount);
  event InvestOhm(address investor, uint256 ohmAmount, uint256 usdcAmount);
  event SetInvestorTransaction(address wallet, uint256 amount);
  event SetAutomator(address automator);
  event SetConfigs(uint256 status, uint256 tierAmount, uint256 poolSupply, uint256 multisigSupply, uint256 rageFmv, uint32 ohmTwapInterval);
  event SwapFailed(address tokenIn, address tokenOut, uint256 amount);
  
  // constructor
  constructor() Owned(msg.sender) {
    USDC_WETH_POOL_TOKEN_0 = USDC_WETH_POOL.token0();
    USDC_OHM_POOL_TOKEN_0 = USDC_OHM_POOL.token0();
  }

  // receive
  receive() external payable nonReentrant {
    require(tx.origin == msg.sender, "onlyEOA"); // prevent contracts transferring ETH
    processEthInvestment('receiveEth');
  }

  // withdrawEth
  function withdrawEth() external {
    require(msg.sender == AUTOMATOR, "unauthorized");
    payable(MULTISIG).transfer(address(this).balance);
  }

  // withdrawToken
  function withdrawToken(IERC20 token) external {
    require(msg.sender == AUTOMATOR, "unauthorized");
    uint256 balance = token.balanceOf(address(this));
    require(balance > 0, 'noTokenBalance');
    require(token.transfer(MULTISIG, balance), 'transferFailed');
  }

  // setInvestorTransaction
  function setInvestorTransaction(address wallet, uint256 tokenAmount) external nonReentrant {
    require(msg.sender == owner, "unauthorized");
    require(wallet != address(0), "invalidWallet");
    require(tokenAmount >= RAGE_FMV, 'underMinimumInvestment');
    
    registerTransaction(wallet, tokenAmount, 'investUsdcOtc');
    
    emit SetInvestorTransaction(wallet, tokenAmount);
  }

  // invest
  function invest(uint256 tokenAmount) external nonReentrant {
    require(PRESALE_STATUS == 1,'presaleInactive');
    require(tokenAmount >= RAGE_FMV, 'underMinimumInvestment');

    require(USDC.transferFrom(msg.sender, address(this), tokenAmount),'tokenTransferFromFailed');
    
    require(USDC.transfer(MULTISIG, tokenAmount),'tokenTransferToFailed');

    registerTransaction(msg.sender, tokenAmount, 'investUsdc');
    TOTAL_USDC_RAISED += tokenAmount;

    emit Invest(msg.sender, tokenAmount);
  }

  // investEth
  function investEth() external payable nonReentrant {
    processEthInvestment('investEth');
  }

  // investOhm
  function investOhm(uint256 tokenAmount) external nonReentrant {
    require(PRESALE_STATUS == 1,'presaleInactive');
    require(tokenAmount > 0, 'noOhmSent');

    require(OHM.transferFrom(msg.sender, address(this), tokenAmount),'tokenTransferFromFailed');
    
    uint256 usdcEquivalent = getOhmTwapPrice(tokenAmount);
    require(usdcEquivalent >= RAGE_FMV, 'underMinimumInvestment');
    require(OHM.transfer(MULTISIG, tokenAmount),'tokenTransferToFailed');
    
    registerTransaction(msg.sender, usdcEquivalent,'investOhm');
    TOTAL_OHM_RAISED += tokenAmount;

    emit InvestOhm(msg.sender, tokenAmount, usdcEquivalent);
  }

  // getOhmTwapPrice
  function getOhmTwapPrice(uint256 ohmAmount) internal view returns (uint256 usdcAmount) {
    // Setup time points for TWAP
    uint32[] memory secondsAgos = new uint32[](2);
    secondsAgos[0] = OHM_TWAP_INTERVAL; // e.g., 1800 for 30 minutes ago
    secondsAgos[1] = 0; // now
    
    // Get tick cumulatives from the pool
    (int56[] memory tickCumulatives,) = USDC_OHM_POOL.observe(secondsAgos);
    
    // Calculate time-weighted average tick
    int56 tickCumulativesDelta = tickCumulatives[1] - tickCumulatives[0];
    int24 arithmeticMeanTick = int24(tickCumulativesDelta / int56(uint56(OHM_TWAP_INTERVAL)));
    
    // Convert average tick back to sqrt price
    uint160 sqrtPriceX96 = TickMath.getSqrtRatioAtTick(arithmeticMeanTick);
    
    // Determine token order and calculate USDC amount
    if (USDC_OHM_POOL_TOKEN_0 == address(USDC)) {
        // USDC is token0, OHM is token1
        uint256 priceX192 = uint256(sqrtPriceX96) * uint256(sqrtPriceX96);
        usdcAmount = (ohmAmount * (2**192)) / priceX192;
    } else {
        // OHM is token0, USDC is token1
        uint256 priceX192 = uint256(sqrtPriceX96) * uint256(sqrtPriceX96);
        usdcAmount = (ohmAmount * priceX192) / (2**192);
    }
  }

  // processEthInvestment
  function processEthInvestment(string memory transactionType) internal {
    require(PRESALE_STATUS == 1, 'presaleInactive');
    require(msg.value > 0, 'noEthSent');

    uint256 usdcBefore = USDC.balanceOf(address(this));
    WETH.deposit{value: msg.value}();
    swapWethForUsdc(msg.value);
    
    uint256 usdcReceived = USDC.balanceOf(address(this)) - usdcBefore;
    require(usdcReceived >= RAGE_FMV, 'underMinimumInvestment');
    
    require(USDC.transfer(MULTISIG, usdcReceived), 'tokenTransferToFailed');
    
    registerTransaction(msg.sender, usdcReceived, transactionType);
    TOTAL_ETH_RAISED += msg.value;

    emit InvestEth(msg.sender, msg.value, usdcReceived);
  }

  // getRageFromUsdc
  function getRageFromUsdc(uint256 usdcAmount) external view returns (uint256 rageAmount, uint256 rageValue) {
    return calculateRageFromUsdc(usdcAmount, false);
  }

  // calculateRageFromUsdc
  function calculateRageFromUsdc(uint256 usdcAmount, bool withSupplies) internal view returns (uint256 rageAmount, uint256 rageValue) {
    if (usdcAmount == 0) return (0, 0);
    
    uint256 presaleTier = getPresaleTier();
    uint256 baseRageAmount = (usdcAmount * 1e18) / RAGE_FMV;
    uint256 bonusAmount = (baseRageAmount * presaleTier * PRESALE_TIER_BONUS) / 100;

    rageAmount = baseRageAmount + bonusAmount;
    
    if (withSupplies) {
        uint256 poolSupplyAmount = (rageAmount * POOL_SUPPLY) / 100;
        uint256 multisigSupplyAmount = (rageAmount * MULTISIG_SUPPLY) / 100;
        rageAmount += poolSupplyAmount + multisigSupplyAmount;
    }
    
    rageValue = (rageAmount * RAGE_FMV) / 1e18;
  }

  // getPresaleTier
  function getPresaleTier() internal view returns(uint256 tier) {
    if (PRESALE_TIER_AMOUNT == 0) return 0;
    return TOTAL_RAISED / PRESALE_TIER_AMOUNT;
  }

  // registerTransaction
  function registerTransaction(address wallet, uint256 tokenAmount, string memory transactionType) internal {
    Investor storage investor = INVESTORS[wallet];
        
    if (investor.wallet == address(0)) {
        investor.wallet = wallet;
        investor.firstTransaction = block.timestamp;
        WALLETS.push(wallet);
        TOTAL_INVESTORS++;
    }
    
    investor.amount += tokenAmount;
    investor.transactions++;
    investor.lastTransaction = block.timestamp;
    
    LAST_TRANSACTION_TIME = block.timestamp;
    LAST_TRANSACTION_AMOUNT = tokenAmount;
    LAST_TRANSACTION_WALLET = wallet;
    LAST_TRANSACTION_TYPE = transactionType;
    TOTAL_RAISED += tokenAmount;
  }

  // setAutomator
  function setAutomator(address automator) external nonReentrant {
      require(msg.sender == AUTOMATOR || msg.sender == owner, "unauthorized");
      require(automator != owner && automator != address(0), "invalidAutomatorAddress");
      AUTOMATOR = automator;
      emit SetAutomator(automator);
  }

  // setConfigs
  function setConfigs(uint256 status, uint256 tierAmount, uint256 poolSupply, uint256 multisigSupply, uint256 rageFmv, uint32 ohmTwapInterval) external nonReentrant {
      require(msg.sender == AUTOMATOR, "unauthorized");
      require(block.timestamp >= NEXT_CONFIG_TIME, "configTimeout");
      NEXT_CONFIG_TIME = block.timestamp + CONFIG_INTERVAL;

      require(status <= 1, "invalidStatus");
      require(tierAmount >= 5000e6 && tierAmount <= 25000e6, "invalidTierAmount");
      require(poolSupply >= 0 && poolSupply <= 25, "invalidPoolSupply");
      require(multisigSupply >= 0 && multisigSupply <= 25, "invalidMultisigSupply");
      require(rageFmv >= 3e6 && rageFmv <= 10e6, "invalidRageFmv");
      require(ohmTwapInterval >= 300 && ohmTwapInterval <= 7200, "invalidTwapInterval"); // 5 minutes to 2 hours

      PRESALE_STATUS = status;
      PRESALE_TIER_AMOUNT = tierAmount;
      POOL_SUPPLY = poolSupply;
      MULTISIG_SUPPLY = multisigSupply;
      RAGE_FMV = rageFmv;
      OHM_TWAP_INTERVAL = ohmTwapInterval;

      emit SetConfigs(status, tierAmount, poolSupply, multisigSupply, rageFmv, ohmTwapInterval);
  }

  // getState
  function getState() external view returns (State memory) {
    (uint256 totalRageAmount, uint256 totalRageValue) = calculateRageFromUsdc(TOTAL_RAISED, false);
    (uint256 totalRageAmountSupply, uint256 totalRageValueSupply) = calculateRageFromUsdc(TOTAL_RAISED, true);
    uint256 currentOhmPrice = getOhmTwapPrice(1e9);

    return State({
      version: VERSION,
      owner: owner,
      automator: AUTOMATOR,
      nextConfigTime: NEXT_CONFIG_TIME,
      presaleStatus: PRESALE_STATUS,
      presaleTier: getPresaleTier(),
      presaleTierAmount: PRESALE_TIER_AMOUNT,
      poolSupply: POOL_SUPPLY,
      multisigSupply: MULTISIG_SUPPLY,
      rageFmv: RAGE_FMV,
      totalRaised: TOTAL_RAISED,
      totalEthRaised: TOTAL_ETH_RAISED,
      totalOhmRaised: TOTAL_OHM_RAISED,
      totalUsdcRaised: TOTAL_USDC_RAISED,
      totalInvestors: TOTAL_INVESTORS,
      lastTransactionTime: LAST_TRANSACTION_TIME,
      lastTransactionAmount: LAST_TRANSACTION_AMOUNT,
      lastTransactionWallet: LAST_TRANSACTION_WALLET,
      lastTransactionType: LAST_TRANSACTION_TYPE,
      totalRageAmount: totalRageAmount,
      totalRageValue: totalRageValue,
      totalRageAmountSupply: totalRageAmountSupply,
      totalRageValueSupply: totalRageValueSupply,
      ohmTwapInterval: OHM_TWAP_INTERVAL,
      currentOhmPrice: currentOhmPrice,
      usdcWethPoolToken0: USDC_WETH_POOL_TOKEN_0,
      usdcOhmPoolToken0: USDC_OHM_POOL_TOKEN_0
    });
  }
  
  // getInvestorOverview
  function getInvestorOverview(address wallet) public view returns (InvestorOverview memory) {
    Investor storage investor = INVESTORS[wallet];
    (uint256 investorRageAmount, uint256 investorRageValue) = calculateRageFromUsdc(investor.amount, false);
    bool exists = investor.wallet != address(0);

    (uint256 totalRageAmountSupply, ) = calculateRageFromUsdc(TOTAL_RAISED, true);
    
    uint256 ownership = 0;
    if (totalRageAmountSupply > 0) {
        ownership = (investorRageAmount * 10000) / totalRageAmountSupply;
    }

    return InvestorOverview({
      exists: exists,
      wallet: investor.wallet,
      usdcAmount: investor.amount,
      transactions: investor.transactions,
      firstTransaction: investor.firstTransaction,
      lastTransaction: investor.lastTransaction,
      rageAmount: investorRageAmount,
      rageValue: investorRageValue,
      ownership: ownership
    });
  }
  
  // getInvestorsOverview
  function getInvestorsOverview(uint256 offset, uint256 limit) external view returns (InvestorOverview[] memory) {
    uint256 walletAmount = WALLETS.length;
    
    if (walletAmount == 0 || offset >= walletAmount) {
        return new InvestorOverview[](0);
    }

    uint256 end = offset + limit;
    if (end > walletAmount) {
        end = walletAmount;
    }
    uint256 length = end - offset;

    InvestorOverview[] memory investors = new InvestorOverview[](length);

    for (uint256 i = 0; i < length; ++i) {
        address wallet = WALLETS[i + offset];
        InvestorOverview memory investor = getInvestorOverview(wallet);
        investors[i] = investor;
    }

    return investors;
  }

  // getWallets
  function getWallets() external view returns (address[] memory) {
    return WALLETS;
  }

  // swapWethForUsdc
  function swapWethForUsdc(uint256 amount) internal {
      require(amount > 0, "swapZeroAmount");
      bool zeroForOne = address(WETH) == USDC_WETH_POOL_TOKEN_0;
      uint160 sqrtPriceLimitX96 = zeroForOne ? MIN_SQRT_RATIO + 1 : MAX_SQRT_RATIO - 1;
      
      try USDC_WETH_POOL.swap(
          address(this),
          zeroForOne,
          int256(amount),
          sqrtPriceLimitX96,
          abi.encode(address(WETH))
      ) {
      } catch {
          emit SwapFailed(address(WETH), address(USDC), amount);
          revert("swapFailed");
      }
  }

  // uniswapV3SwapCallback
  function uniswapV3SwapCallback(int amount0, int amount1, bytes calldata data) external {
    require(msg.sender == address(USDC_WETH_POOL), "swapCallbackNotAuthorized");
    
    (address tokenIn) = abi.decode(data, (address));

    IUniswapV3Pool pool = IUniswapV3Pool(msg.sender);
    bool isToken0 = pool.token0() == tokenIn;
    
    int256 amountOwed = isToken0 ? amount0 : amount1;
    require(amountOwed > 0, "invalidSwapAmount");
    
    ERC20(tokenIn).transfer(msg.sender, uint256(amountOwed));
  }
}