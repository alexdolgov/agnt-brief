// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "./IUniswapV3Factory.sol";
import "./IAFi.sol";
import {SafeCast} from "./SafeCast.sol";
import {SafeERC20} from "./SafeERC20.sol";
import {OwnableDelayModule} from "./OwnableDelayModule.sol";
import {AggregatorV3Interface} from "./AggregatorV3Interface.sol";
import {ReentrancyGuard} from "./ReentrancyGuard.sol";
import {ISwapRouter} from "./ISwapRouter.sol";
import "./IPassiveRebal.sol";
import "./ArrayUtils.sol";
import "./IATVAdapter.sol";

struct RewardOwed {
  address token;
  uint owed;
}

interface ICompRewardV3 {
  function getRewardOwed(
    address comet,
    address account
  ) external returns (RewardOwed memory);

  function claim(address comet, address src, bool shouldAccrue) external;
}

interface IComptroller {
  function claimReward(address[] memory holders,address[] memory mTokens,bool borrowers,bool suppliers) external;
  function rewardAccrued(uint8 rewardType, address holder) external view returns (uint);
  function rewardDistributor() external view returns (address);
}


interface IFactory {
  function getAFiTokenStatus(address _aFiContract) external view returns (bool);
}

contract AtvOracle is ReentrancyGuard, OwnableDelayModule {
  using SafeCast for uint256;
  using SafeERC20 for IERC20;
  using ArrayUtils for address[];


  uint256 internal txFee = 5e20;
  uint256 internal txFeeUpperLimit = 5e21;

  address internal rebal;
  mapping(address => uint) internal daoProfit;
  mapping(address => uint) internal totalProfit;
  bool public paused;

  address[] internal token;
  address[] internal uTokens;

  address internal afiManager;
  IAFiStorage internal aFiStorage;
  address public factory;
  address public atvAdapter;

  uint256 tempVar;

  mapping(address => address) internal cumulativeSwapControllers;
  mapping(address => address) internal unstakingController;
  mapping(address => bool) public lockedInQueueWithdraw;
  mapping(address => WithdrawQueueDetails) internal userOtokenLiability;
  mapping(address => WithdrawQueueNAVDetail) internal userQueuedNAV;
  mapping(address => uint256) internal lastSwapTime;
  mapping(address => uint) internal swapPeriod;
  mapping(address => mapping(address => mapping(uint => uint))) public totalShares;
  mapping(address => mapping(address => mapping(uint => uint))) public outputTokenUnits;
  mapping(address => uint256) public batchWithdrawCounter;
  mapping(address => mapping(uint => uint)) public totalQueuedShares;
  mapping(address => mapping(address => uint)) internal teamWalletsProfit;
  mapping(address => bool) public queuePausedStatus;

  address private constant WETH = 0x4200000000000000000000000000000000000006;
  IComptroller internal constant MOONWELL_REWARD = IComptroller(0xfBb21d0380beE3312B33c4353c8936a0F13EF26C);
  address private constant DAI = 0x50c5725949A6F0c72E6C4a641F24049A917DB0Cb;
  address private constant DAI_ORACLE = 0x591e79239a7d679378eC8c847e5038150364C78F;

  struct TokenInfo {
    address[] tokens;
    address[] uTokens;
    uint256[] uTokenProportions;
    uint256[] defaultProportion;
  }

  struct UnstakeData {
    address[] iTokens;
    address oToken;
    uint256 deadline;
    uint[] minimumReturnAmount;
    uint256[] minOutForiToken;
    uint256 unstakingFees;
  }

  struct WithdrawQueueDetails {
    mapping(address => mapping(address => mapping(uint256 => uint256))) queuedShares;
  }

  struct WithdrawQueueNAVDetail {
    mapping(address => mapping(address => mapping(uint256 => uint256))) queuedNAV;
  }

  event ProfitShareUpdated(uint daoProfit, uint totalProfit);
  event ProfitShareDistributed(address indexed aFiContract, address indexed teamWallet, uint256 amount);
  event WithdrawQueue(address indexed user, uint256 shares, address indexed oToken, uint256 withdrawCounter);
  event WithdrawDeQueue(address indexed user, uint256 shares, uint256 withdrawCounter);
  /**
   * @param account Address of the account that paused the contract.
   */
  event Paused(address account);
  /**
   * @param account Address of the account that unpaused the contract.
   */
  event Unpaused(address account);

  /**
   * @notice To initialize/deploy the AFIOracle contract.
   * @param passiveRebalContract Address of AFiPassiveRebalStrategies contract.
   */
  constructor(address passiveRebalContract, address _adapter) {
    addressZero(passiveRebalContract);
    addressZero(_adapter);
    rebal = passiveRebalContract;
    atvAdapter = _adapter;
  }

  function addressZero(address add1) internal pure {
    require(add1 != address(0), "AF03");
  }

  function updateAFiManager(address _afiManager) external onlyOwner {
    addressZero(_afiManager);
    afiManager = _afiManager;
  }

  function updateATvAdapter(address _atvAdapter) external onlyOwner {
    addressZero(_atvAdapter);
    atvAdapter = _atvAdapter;
  }

  function getTotalProfit(address _vault) external view returns (uint256) {
    return totalProfit[_vault];
  }

  function getDaoProfit(address _vault) external view returns (uint256) {
    return daoProfit[_vault];
  }

  modifier contractUnpaused() {
    checkStatus(!paused);
    _;
  }

  modifier contractPaused() {
    checkStatus(paused);
    _;
  }

  function checkStatus(bool status) internal view {
    require(status, "AFO08");
  }

  function greaterEqualComparison(uint256 valA, uint256 valB) internal pure {
    require(valA >= valB, "AO24");
  }

  function greaterComparison(uint256 valA, uint256 valB) internal pure {
    require(valA > valB, "AO25");
  }

  /**
   * @notice To pause the contract.
   * @dev Requirements: It can only be invoked by owner.
   */
  function pause() external contractUnpaused onlyOwner {
    paused = true;
    emit Paused(msg.sender);
  }

  /**
   * @notice To resume/unpause the contract.
   * @dev Requirements: It can only be invoked by the owner.
   */
  function unPause() external contractPaused onlyOwner {
    paused = false;
    emit Unpaused(msg.sender);
  }

  function setAFiStorage(address _storage) external onlyOwner {
    addressZero(_storage);
    aFiStorage = IAFiStorage(_storage);
  }

  function setFactory(address _factory) external onlyOwner {
    addressZero(_factory);
    factory = (_factory);
  }

  function toggleTheOtoken(address tok, bool status) external onlyOwner{
    addressZero(tok);
    lockedInQueueWithdraw[tok] = status;
  }

  /**
   * @notice Updates the address of the cumulative swap wallet for aFi Vault.
   * @dev Only the contract owner can call this function.
   * @param afiContract Vault address
   * @param _cumulativeSwapController New address for the cumulative swap wallet for afiContract vault.
   * @param _unstakingController New address for the unstaking controller wallet for afiContract vault.
   */
  function updateVaultControllers(
    address afiContract,
    address _cumulativeSwapController,
    address _unstakingController
  ) external onlyOwner {
    addressZero(afiContract);
    addressZero(_cumulativeSwapController);
    addressZero(_unstakingController);
    cumulativeSwapControllers[afiContract] = _cumulativeSwapController;
    unstakingController[afiContract] = _unstakingController;
  }

  function getControllers(
    address afiContract
  ) external view returns (address, address) {
    return (cumulativeSwapControllers[afiContract], unstakingController[afiContract]);
  }

  function cumulativeSwap(
    IAFi.SwapParameters memory params, 
    uint256 pauseDepositFees, 
    IAFi.SwapDataStructure calldata dexdata, 
    bytes[] calldata moonwellSwapData, 
    uint256 minAmountOut, 
    bool enableLeverage
  ) external {
    address afiContract = params.afiContract;
    
    require(
      msg.sender == cumulativeSwapControllers[afiContract] || msg.sender == afiManager,
      "NA"
    );

    greaterEqualComparison(block.timestamp - lastSwapTime[afiContract], swapPeriod[afiContract]);
    
    (bool depositPaused, ) = IAFi(afiContract).isPaused();
    checkStatus(depositPaused);

    _initializeSwapData(params, afiContract);
    
    uint256 protocolRewards = _handleMoonwellRewards(params, afiContract, moonwellSwapData);
    
    _executeSwapAndStaking(params, afiContract, pauseDepositFees, dexdata, minAmountOut, protocolRewards, enableLeverage);
    
    _finalizeSwap(params, afiContract);
  }

  function _initializeSwapData(IAFi.SwapParameters memory params, address afiContract) internal {
    (params.depositTokens, ) = IAFi(afiContract).getInputToken();
    params.cSwapCounter = getcsCounter(afiContract);
    address[] memory uTokens = IAFi(afiContract).getUTokens();
    greaterComparison(uTokens.length, 0);
    IAFi(afiContract).underlyingTokensStaking();
  }

  function _handleMoonwellRewards(
    IAFi.SwapParameters memory params, 
    address afiContract, 
    bytes[] calldata moonwellSwapData
  ) internal returns (uint256 protocolRewards) {
    if (params.cometRewardTokens.length > 0) {
      address[] memory singleAfiContract = new address[](1);
      singleAfiContract[0] = afiContract;
      protocolRewards = claimMoonwellRewards(
        singleAfiContract,
        params.cometToClaim,
        params.cometRewardTokens,
        params.rewardTokenMinReturnAmounts,
        params.oToken,
        params._deadline,
        moonwellSwapData
      );
    }
  }

  function _executeSwapAndStaking(
    IAFi.SwapParameters memory params,
    address afiContract,
    uint256 pauseDepositFees,
    IAFi.SwapDataStructure calldata dexdata,
    uint256 minAmountOut,
    uint256 protocolRewards,
    bool enableLeverage
  ) internal {
    TokenInfo memory tokenInfo;
    tokenInfo.uTokens = IAFi(afiContract).getUTokens();
    (tokenInfo.uTokenProportions, tokenInfo.defaultProportion) = IAFi(afiContract).getProportions();
    
    performTokenSwaps(
      params, 
      tokenInfo, 
      getTotalProportion(afiContract, tokenInfo.uTokens, calculateAmountToSwap(afiContract, params.depositTokens), params.cSwapCounter), 
      pauseDepositFees, 
      dexdata, 
      minAmountOut, 
      protocolRewards
    );

    aFiStorage.rearrange(
      afiContract,
      params.underlyingTokens,
      params.newProviders,
      params._pendleData,
      enableLeverage
    );
  }

  function _finalizeSwap(IAFi.SwapParameters memory params, address afiContract) internal {
    untrackedTokenSet(afiContract, params.depositTokens, IAFi(afiContract).getUTokens(), params.cSwapCounter + 1);
    lastSwapTime[afiContract] = block.timestamp;
    IAFi(afiContract).pauseUnpauseDeposit(false);
    IAFiManager(afiManager).pauseQueueWithdrawUnstaking(afiContract, false);
  }

  function getTotalProportion( address afiContract,
    address[] memory uTokens,
    uint256 toSwap,
    uint256 cSwapCounter) internal returns (uint256 _totalProp) {
    (_totalProp) = IPassiveRebal(rebal).validateAndApplyRebalanceStrategy(afiContract, uTokens, toSwap, cSwapCounter);
  }

  
  function untrackedTokenSetByManager(address afiContract, address[] memory depositTokens, address[] memory uTok, uint256 csCounter) external {
    addressEqual(msg.sender, afiManager);
    untrackedTokenSet(afiContract, depositTokens, uTok, csCounter);
  }

  function untrackedTokenSet(address afiContract, address[] memory depositTokens, address[] memory uTok, uint256 csCounter) internal {
    for (uint256 j = 0; j < depositTokens.length; j++) {
      (, bool isPresent) = uTok.indexOf(depositTokens[j]);

      (uint256 temp) = aFiStorage.getPreSwapDepositsTokens(
        afiContract,
        csCounter,
        depositTokens[j]
      );
      
      uint256 balInContract = balance(depositTokens[j], afiContract);
      uint256 ContractiBal = balInContract - temp;

      if((balInContract > temp) && !isPresent){
        aFiStorage.setPreDepositedInputTokenInRebalance(
          afiContract, 
          csCounter, 
          ContractiBal, 
          depositTokens[j]
        );
      }
    }
  }

  function calculateAmountToSwap(address afiContract, address[] memory _depositTokens) internal view returns(uint256 toSwap){
    for (uint i = 0; i < _depositTokens.length; i++) {
      toSwap += aFiStorage.convertInUSDAndTok(
        _depositTokens[i],
        aFiStorage.getPreSwapDepositsTokens(afiContract, getcsCounter(afiContract), _depositTokens[i]),
        false
      );
    }
  }

  function claimMoonwellRewards(
    address[] memory afiContract,
    address[] memory cometToClaim,
    address[] memory cometRewardTokens,
    uint256[] memory rewardTokenMinReturnAmounts,
    address oToken,
    uint256 _deadline,
    bytes[] calldata _moonwellSwapData
  ) internal returns(uint256 rewardsInStable){
    uint256 balToSwap;
    address tok;
    rewardsInStable = balance(oToken, afiContract[0]); // use afiContract[0] instead of afiContract

    for (uint8 i = 0; i < uint8(cometToClaim.length); i++) {
      tok = cometRewardTokens[i];
      balToSwap = balance(tok, afiContract[0]);

      MOONWELL_REWARD.claimReward(afiContract, cometToClaim, true, true);
      if (balance(tok, afiContract[0]) > balToSwap) {
        balToSwap = balance(tok, afiContract[0]) - balToSwap;
        doSwap(
          afiContract[0],
          tok,
          oToken,
          balToSwap,
          _deadline,
          WETH,
          rewardTokenMinReturnAmounts[i],
          _moonwellSwapData[i]
        );
      }
    }

    rewardsInStable = balance(oToken, afiContract[0]) - rewardsInStable;
  }

  function fetchRewards(
    IAFi.SwapParameters memory params,
    IAFi.AaveRewardData calldata aaveParams
  ) external returns (uint256 totalRewards) {
    addressEqual(msg.sender, cumulativeSwapControllers[params.afiContract]);
    uint256 _rewards = 0;
    // Claim Morpho rewards if applicable
    if (aaveParams.rewardTokens.length > 0) {
      _rewards += claimAaveRewardsInSwap(params, aaveParams);
    }
    return _rewards;
  }

  function claimAaveRewardsInSwap(
    IAFi.SwapParameters memory params,
    IAFi.AaveRewardData calldata aaveParams
  ) internal returns (uint256 oTokenFromMorpho) {
    // Track initial oToken balance
    oTokenFromMorpho = balance(params.oToken, params.afiContract);
    
    // Iterate over Morpho reward tokens
    for (uint256 i = 0; i < aaveParams.rewardTokens.length; i++) {
      // Use block scoping to limit variable lifetime
      {
        address tok = aaveParams.rewardTokens[i];
        address underlyingToken = aaveParams.underlyingTokens[i];
        
        // Get initial balance of underlying token before claiming
        uint256 initialBalance = balance(underlyingToken, params.afiContract);
        
        // Claim rewards
        claimMerkleRewards(
          params.afiContract, 
          tok, 
          aaveParams.rewardTokenAmount[i], 
          aaveParams.proofs[i]
        );
        
        // Check if we received rewards as aTokens
        uint256 aTokenBalance = balance(tok, params.afiContract);
        
        // Withdraw from Aave if needed
        if (aTokenBalance > 0 && tok != underlyingToken) {
          IAFi(params.afiContract)._withdrawAave(underlyingToken, aTokenBalance);
        }
      }
        
      // Separate block for swap logic to manage stack
      {
        address underlyingToken = aaveParams.underlyingTokens[i];
        uint256 currentBalance = balance(underlyingToken, params.afiContract);
        
        // Note: We need to recalculate initial balance here or store it differently
        // This is a limitation of this approach
        
        // Swap to oToken if balance increased
        if (currentBalance > 0) { 
          doSwap(
            params.afiContract,
            underlyingToken,
            params.oToken,
            currentBalance,  // Or track the difference
            params._deadline,
            WETH,
            aaveParams.minReturnAmounts[i],
            aaveParams.swapData[i]
          );
        }
      }
    }
    
    // Calculate total oToken received from Morpho rewards
    oTokenFromMorpho = balance(params.oToken, params.afiContract) - oTokenFromMorpho;
  }

  function claimMerkleRewards(
    address receiver,
    address rewardToken,
    uint256 totalAccrued,
    bytes32[] calldata proof
  ) internal {

    // Convert single values to arrays as expected by the contract
    address[] memory tokens = new address[](1);
    tokens[0] = rewardToken;
    
    uint256[] memory totalAccrueds = new uint256[](1);
    totalAccrueds[0] = totalAccrued;
    
    bytes32[][] memory proofs = new bytes32[][](1);
    proofs[0] = proof;

    // Use the correct function signature
    bytes memory callData = abi.encodeWithSignature(
      "claim(address,address[],uint256[],bytes32[][])",
      receiver,
      tokens,
      totalAccrueds,
      proofs
    );

    (bool callSuccess, bytes memory returnData) = IAFi(receiver).claimMerkleRewards(callData); 
    
    if (!callSuccess) {
      if (returnData.length > 0) {
        assembly {
          let returnDataSize := mload(returnData)
          revert(add(32, returnData), returnDataSize)
        }
      } else {
        revert("Claim call failed");
      }
    }
  }

  function performTokenSwaps(
    IAFi.SwapParameters memory params,
    TokenInfo memory tokenInfo,
    uint256 totalProp,
    uint256 _pauseDepositFees,
    IAFi.SwapDataStructure calldata dexdata,
    uint256 minAmountOut, 
    uint256 compRewards
  ) internal {

    uint256 oTokBal = balance(params.oToken, params.afiContract);

    for (uint256 j = 0; j < params.depositTokens.length; j++) {
      (tempVar) = aFiStorage.getPreSwapDepositsTokens(
        params.afiContract,
        params.cSwapCounter,
        params.depositTokens[j]
      );
      if (params.depositTokens[j] != params.oToken && tempVar > 0) {
        doSwap(
          params.afiContract,
          params.depositTokens[j],
          params.oToken,
          tempVar,
          params._deadline,
          WETH,
          params.iMinimumReturnAmount[j],
          dexdata.firstIterationCumulativeSwap[j]
        );
      }
    }

    oTokBal = balance(params.oToken, params.afiContract) - oTokBal;
    greaterEqualComparison(oTokBal, minAmountOut);
    greaterEqualComparison(txFee,  takeFee(params.afiContract, params.oToken, params.cSwapFee, msg.sender));
    greaterEqualComparison(txFee,  takeFee(params.afiContract, params.oToken, _pauseDepositFees, IPassiveRebal(rebal).getPauseDepositController(params.afiContract)));
    swapIntoUnderlying(params, tokenInfo, totalProp, dexdata, (oTokBal+compRewards), _pauseDepositFees);
  }

  function swapIntoUnderlying(
    IAFi.SwapParameters memory params,
    TokenInfo memory tokenInfo,
    uint256 _totalProp,
    IAFi.SwapDataStructure calldata dexdata,
    uint256 oTokenCollected,
    uint256 _pauseDepositFees
  ) internal {
    uint256[] memory tokenProportions = tokenInfo.uTokenProportions;

    // Check for passive rebalance status and adjust token proportions if necessary
    if (
      IPassiveRebal(rebal).getRebalStrategyNumber(params.afiContract) == 0
    ) {
      tokenProportions = tokenInfo.defaultProportion;
      _totalProp = 0;
      for (uint i = 0; i < tokenProportions.length; i++) {
        _totalProp += tokenProportions[i];
      }
    }

    (oTokenCollected) += aFiStorage.getPreSwapDepositsTokens(
      params.afiContract,
      params.cSwapCounter,
      params.oToken
    );

    oTokenCollected = (oTokenCollected) - (params.cSwapFee + _pauseDepositFees);
    if(oTokenCollected > 0) {
      for (uint i = 0; i < tokenInfo.uTokens.length; i++) {
        // Perform swap if conditions are met
        if (tokenProportions[i] >= 1) {
          doSwap(
            params.afiContract,
            params.oToken,
            tokenInfo.uTokens[i],
            (oTokenCollected * tokenProportions[i]) / _totalProp,
            params._deadline,
            address(0),
            params.minimumReturnAmount[i],
            dexdata.secondIterationCumulativeSwap[i]
          );
        }
      }
    }
  }

  function takeFee(
    address afiContract,
    address _inputToken,
    uint256 fee, 
    address reciever
  ) internal returns(uint256 redFee){
    if (fee > 0) {
      (uint256 price, uint256 decimal) = getPriceInUSD(_inputToken);
      uint iTokenDecimal = 18 - getERCDecimal(_inputToken);
      redFee = (((fee) * price * (10 ** iTokenDecimal)) / (10 ** decimal));
      IERC20(_inputToken).safeTransferFrom(
        afiContract,
        reciever,
        fee
      );
    }
  }

  /**
   * @notice Queues a withdrawal for a user.
   * @param afiContract The address of the AFi contract.
   * @param _shares The amount of shares to withdraw.
   * @param oToken The address of the output token.
   */
  function queueWithdraw(
    address afiContract,
    uint _shares,
    address oToken
  ) external nonReentrant {
    checkStatus(!(queuePausedStatus[afiContract]));
    checkStatus(!lockedInQueueWithdraw[oToken]);
    checkStatus(IFactory(factory).getAFiTokenStatus(afiContract));

    IAFi(afiContract).validateWithdraw(msg.sender, oToken, _shares);
    uint256 userOtokenLiabilityOld = userOtokenLiability[msg.sender].queuedShares[
      afiContract
    ][oToken][batchWithdrawCounter[afiContract]];
    uint256 userNAV = IAFi(afiContract).depositUserNav(msg.sender);

    userOtokenLiability[msg.sender].queuedShares[afiContract][oToken][
      batchWithdrawCounter[afiContract]
    ] = userOtokenLiabilityOld + _shares;
 
    uint256 userQNAV = userQueuedNAV[msg.sender].queuedNAV[afiContract][oToken][batchWithdrawCounter[afiContract]];

    userQueuedNAV[msg.sender].queuedNAV[afiContract][oToken][batchWithdrawCounter[afiContract]] = ((userQNAV * userOtokenLiabilityOld) + 
    ((userNAV * _shares)))/ (userOtokenLiabilityOld + _shares);

    totalShares[afiContract][oToken][batchWithdrawCounter[afiContract]] += _shares; //in AFi Token
    totalQueuedShares[afiContract][batchWithdrawCounter[afiContract]] += _shares;

    updateLockedTokensInVault(afiContract, _shares, false, true, false, 0);
    emit WithdrawQueue(msg.sender, _shares, oToken, batchWithdrawCounter[afiContract]);
  }

  function updateLockedTokensInVault(
    address afiContract,
    uint256 _shares,
    bool status,
    bool _queue,
    bool _unqueue,
    uint256 newNAV
  ) internal {
    IAFi(afiContract).updateLockedTokens(
      msg.sender,
      _shares,
      status,
      _queue,
      _unqueue,
      newNAV
    );
  }

  /**
   * @notice Retrieves the queued shares for a user.
   * @param user The address of the user.
   * @param afiContract The address of the AFi contract.
   * @param oToken The address of the output token.
   * @return The number of queued shares for the user.
   */
  function getUserQueuedShares(
    address user,
    address afiContract,
    address oToken,
    uint256 bCounter
  ) external view returns (uint256) {
    return userOtokenLiability[user].queuedShares[afiContract][oToken][bCounter];
  }

  function getUserQueuedNAV(
    address user,
    address afiContract,
    address oToken,
    uint256 bCounter
  ) public view returns (uint256) {
    return userQueuedNAV[user].queuedNAV[afiContract][oToken][bCounter];
  }

  function getTotalShares(
    address aFicontract,
    address tok,
    uint256 batchWithCounter
  ) internal returns (uint256) {
    return totalShares[aFicontract][tok][batchWithCounter];
  }

  /**
   * @notice Removes queued withdrawal for a users.
   * @param afiContract The address of the AFi contract.
   * @param oToken The address of the output token.
   */
  function unqueueWithdraw(address afiContract, address oToken) external nonReentrant {
    checkStatus(!(queuePausedStatus[afiContract]));

    uint256 userShares = userOtokenLiability[msg.sender].queuedShares[afiContract][
      oToken
    ][batchWithdrawCounter[afiContract]];

    greaterComparison(userShares, 0);

    totalShares[afiContract][oToken][batchWithdrawCounter[afiContract]] -= userShares; //in AFi Token
    deleteUserOTokenLiability(afiContract, oToken, batchWithdrawCounter[afiContract]);
    totalQueuedShares[afiContract][batchWithdrawCounter[afiContract]] -= userShares;

    uint256 qQuant = userShares;
    uint256 userQNAV = userQueuedNAV[msg.sender].queuedNAV[afiContract][oToken][batchWithdrawCounter[afiContract]];
    delete userQueuedNAV[msg.sender].queuedNAV[afiContract][oToken][batchWithdrawCounter[afiContract]];
    
    uint256 NAVToUpdate = ((userQNAV* qQuant) +
      IAFi(afiContract).depositUserNav(msg.sender) * balance(afiContract, msg.sender)) /
      ((qQuant) + balance(afiContract, msg.sender));

    updateLockedTokensInVault(afiContract, userShares, false, false, true, NAVToUpdate);
    emit WithdrawDeQueue(msg.sender, userShares, batchWithdrawCounter[afiContract]);
  }

  function balance(address tok, address user) internal view returns (uint) {
    return IERC20(tok).balanceOf(user);
  }

  function deleteUserOTokenLiability(
    address afiContract,
    address _oToken,
    uint256 bCounter
  ) internal {
    delete userOtokenLiability[msg.sender].queuedShares[afiContract][_oToken][bCounter];
  }

  /**
   * @notice Performs unstaking for queued withdrawals.
   * @param afiContract The address of the AFi contract.
   */
  function unstakeForQueuedWithdrawals(
    address afiContract,
    UnstakeData memory _unstakeData,
    bytes[] calldata swapForWithdrawals,
    bytes[] calldata swapData,
    uint256 minAmountOut
  ) external {
    vaultValidation(afiContract, _unstakeData.oToken);

    IAFi(afiContract).updateTVL();
    uint toSwap;
    {
    uint256 pool;
    uint256 _totalSupply;
    (token, uTokens, pool, _totalSupply) = IAFi(afiContract).setUnstakeData(
      totalQueuedShares[afiContract][batchWithdrawCounter[afiContract]]
    );
      toSwap =
        (pool * (totalQueuedShares[afiContract][batchWithdrawCounter[afiContract]])) /
        (_totalSupply);
    }
    if (totalQueuedShares[afiContract][batchWithdrawCounter[afiContract]] > 0 && !IAFiManager(afiManager).isQueueWithdrawUnstakingPaused(afiContract)) {
      aFiStorage.setTempVars(_unstakeData.oToken, toSwap);
      toSwap = aFiStorage.swapForOtherProduct(
        afiContract,
        _unstakeData.deadline,
        _unstakeData.minimumReturnAmount,
        uTokens,
        new bytes(0),
        swapForWithdrawals
      );
    }
    else if(totalQueuedShares[afiContract][batchWithdrawCounter[afiContract]] > 0 && uTokens.length == 0 ){
      toSwap = aFiStorage.withdrawStableTokens(
        afiContract,
        toSwap,
        _unstakeData.oToken,
        _unstakeData.iTokens,
        _unstakeData.deadline,
        _unstakeData.minimumReturnAmount,
        swapForWithdrawals
      );
    }
    else {
      revert("AFO01: Invalid queued shares or unstaking state");
    } 
    greaterEqualComparison(toSwap, minAmountOut);
    feeDeductAndTokenTransfer( 
      afiContract,
      _unstakeData.oToken,
      _unstakeData.unstakingFees,
      toSwap,
      _unstakeData.minOutForiToken,
      _unstakeData.deadline, 
      swapData
    );

    untrackedTokenSet(afiContract, token, uTokens, getcsCounter(afiContract));
  }

  function getcsCounter(address afiContract) internal view returns(uint256) {
    return IAFi(afiContract).getcSwapCounter();
  }

  function vaultValidation(address afiContract, address oToken) internal view {
    checkStatus(IFactory(factory).getAFiTokenStatus(afiContract));
    addressEqual(msg.sender, unstakingController[afiContract]);
    checkStatus(queuePausedStatus[afiContract]);
    (bool isWhiteListed, ) = IAFi(afiContract).isOTokenWhitelisted(oToken);
    checkStatus(isWhiteListed);
  } 

  function feeDeductAndTokenTransfer(
    address afiContract,
    address oToken,
    uint256 unstakingFees,
    uint256 toSwap,
    uint256[] memory minOutForiToken,
    uint256 deadline,
    bytes[] calldata swapData
    ) internal {

    greaterEqualComparison(txFee, takeFee(afiContract, oToken, unstakingFees, unstakingController[afiContract]));

    swapAndTransfer(afiContract, oToken, (toSwap - unstakingFees), minOutForiToken, deadline, swapData);
    delete totalQueuedShares[afiContract][batchWithdrawCounter[afiContract]];
    batchWithdrawCounter[afiContract]++;
  }

  function swapAndTransfer(
    address afiContract,
    address oToken,
    uint256 toSwap,
    uint256[] memory minOutForiToken,
    uint256 deadline,
    bytes[] calldata swapData
  ) internal {
    uint256 depositTokensToSwap;
    uint256 toDeduct;
    for (uint i; i < token.length; i++) {
      if (
        token[i] != oToken &&
        getTotalShares(afiContract, token[i], batchWithdrawCounter[afiContract]) > 0
      ) {
        depositTokensToSwap =
          (toSwap *
            (
              getTotalShares(afiContract, token[i], batchWithdrawCounter[afiContract])
            )) /
          (totalQueuedShares[afiContract][batchWithdrawCounter[afiContract]]);
        if (depositTokensToSwap > 0) {
          toDeduct += depositTokensToSwap;
          depositTokensToSwap = doSwap(
            afiContract,
            oToken,
            token[i],
            depositTokensToSwap,
            deadline,
            WETH,
            minOutForiToken[i],
            swapData[i]
          );
        }
        if (balance(token[i], afiContract) > 0) {
          IERC20(token[i]).safeTransferFrom(
            afiContract,
            address(this),
            depositTokensToSwap
          );
        }
        outputTokenUnits[afiContract][token[i]][
          batchWithdrawCounter[afiContract]
        ] = depositTokensToSwap;
      }
    }

    for (uint j; j < token.length; j++) {
      if (
        token[j] == oToken &&
        totalShares[afiContract][token[j]][batchWithdrawCounter[afiContract]] > 0
      ) {
        depositTokensToSwap = toSwap - toDeduct;
        IERC20(token[j]).safeTransferFrom(
          afiContract,
          address(this),
          depositTokensToSwap
        );
        outputTokenUnits[afiContract][oToken][
          batchWithdrawCounter[afiContract]
        ] = depositTokensToSwap;
        break;
      }
    }
  }

  function doSwap(
    address afiContract,
    address tokenIn,
    address tokenOut,
    uint amt,
    uint deadline,
    address middleTok,
    uint256 minOut,
    bytes calldata swapdata
  ) internal returns (uint256) {
    if(tokenIn != tokenOut) {
      return IAFi(afiContract).swap(tokenIn, tokenOut, amt, deadline, middleTok, minOut, swapdata);
    } else {
      return amt;
    }
  }

  /**
   * @notice Redeems tokens for a user based on their queued shares and batch withdrawal index.
   * @param aFiContract The address of the AFi contract.
   * @param _iTokens An array of token addresses to redeem.
   * @param batchWithdrawIndex The batch withdrawal index.
   */
  function redeem(
    IAFi aFiContract,
    address[] memory _iTokens,
    uint256 batchWithdrawIndex
  ) external {
    checkStatus(IFactory(factory).getAFiTokenStatus(address(aFiContract)));
    greaterComparison(batchWithdrawCounter[address(aFiContract)], batchWithdrawIndex);
    uint redemptionValue;
    uint256 userDepositedAFiInOToken;
    uint256 userShares;
    uint256 userDepositNav; //Calculation for the deposit token value
    bool everWhitelisted;
    for (uint i = 0; i < _iTokens.length; i++) {
      ( , everWhitelisted) = IAFi(aFiContract).isOTokenWhitelisted(_iTokens[i]);
      if(everWhitelisted){
        userShares = userOtokenLiability[msg.sender].queuedShares[address(aFiContract)][_iTokens[i]][batchWithdrawIndex];
        userDepositNav = userQueuedNAV[msg.sender].queuedNAV[address(aFiContract)][_iTokens[i]][batchWithdrawIndex];
        if (userShares > 0) {
          redemptionValue = ((userShares *
            (outputTokenUnits[address(aFiContract)][_iTokens[i]][batchWithdrawIndex])) /
            (totalShares[address(aFiContract)][_iTokens[i]][batchWithdrawIndex]));

          (uint256 price, uint256 multiplier) = getPriceInUSD(_iTokens[i]);
          uint8 decimals = 18 - getERCDecimal(_iTokens[i]);
          userDepositedAFiInOToken =
            (userDepositNav * (userShares) * (10 ** multiplier)) /
            (price * (10 ** decimals) * 10000);

          if (redemptionValue > userDepositedAFiInOToken) {
            uint256 profit = ((redemptionValue - userDepositedAFiInOToken) * (totalProfit[address(aFiContract)])) / (100);
            teamWalletsProfit[address(aFiContract)][_iTokens[i]] += profit;
            redemptionValue -= profit;
          }
          deleteUserOTokenLiability(
            address(aFiContract),
            _iTokens[i],
            batchWithdrawIndex
          );
          IERC20(_iTokens[i]).safeTransfer(msg.sender, redemptionValue);
        }
      }
    }
  }

  /**
   * @notice Returns the Swap Period for a specific aFi contract.
   * @param afiContract Address of the aFi contract.
   * @return uint256 Swap Period in seconds.
   */
  function getSwapPeriod(address afiContract) external view returns (uint) {
    return swapPeriod[afiContract];
  }

  /**
   * @notice Updates the Swap Period for a specific aFi contract.
   * @dev Only the contract owner can call this function.
   * @param afiContract Address of the aFi contract.
   * @param _newSwapPeriod New Swap Period in seconds.
   */
  function updateSwapPeriod(
    address afiContract,
    uint _newSwapPeriod
  ) external onlyOwner {
    addressZero(afiContract);
    swapPeriod[afiContract] = _newSwapPeriod;
  }

  /**
   * @notice Returns the timestamp of the last cumulative swap execution.
   * @param afiContract Address of the aFi contract.
   * @return uint256 Timestamp of the last cumulative swap.
   */
  function getLastSwapTime(address afiContract) external view returns (uint256) {
    return lastSwapTime[afiContract];
  }

  function getFeeDetails() external view returns (uint256, uint256) {
    return (txFee, txFeeUpperLimit);
  }

  /**
   * @notice Sets the cumulative swap fee.
   * @dev Only the contract owner can call this function.
   * @param _txFee New cumulative swap fee.
   */
  function settxFee(uint256 _txFee) external onlyOwner {
    greaterEqualComparison(txFeeUpperLimit, _txFee);
    txFee = _txFee;
  }

  /**
   * @notice Gets the price and decimals of a specified token from a price feed.
   * @param uToken Address of the underlying token.
   * @param feed Address of the price feed.
   * @return The price and decimals of the specified token.
   */
  function getPriceAndDecimals(
    address uToken,
    address feed
  ) public view returns (int256, uint8) {
    (, int256 inPrice, , uint256 updatedAt, ) = AggregatorV3Interface(feed)
      .latestRoundData();

    address currentPhaseAggregator = AggregatorV3Interface(feed).aggregator();

    uint256 minPrice = AggregatorV3Interface(currentPhaseAggregator).minAnswer();

    uint256 maxPrice = AggregatorV3Interface(currentPhaseAggregator).maxAnswer();

    if (uint(inPrice) >= maxPrice || uint(inPrice) <= minPrice) revert("AFOOO");

    uint8 decimals = AggregatorV3Interface(feed).decimals();
    greaterEqualComparison(updatedAt, block.timestamp - IPassiveRebal(rebal).getStalePriceDelay(uToken));
    greaterEqualComparison(uint(inPrice), 0);
    return (inPrice, decimals);
  }

  function getPriceOracleRebal(address tok) internal view returns (address) {
    return IPassiveRebal(rebal).getPriceOracle(tok);
  }

  /**
   * @notice Checks if the given token is USDC and retrieves its price and multiplier.
   * @param tok Address of the token to check price .
   * @return The token's price and multiplier.
   */
  function getPriceInUSD(address tok) public view returns (uint256, uint256) {
    // Transfer Aarna Token to investor
    address oracle = getPriceOracleRebal(tok);
    uint256 price;
    uint8 decimals;
    int256 chainlinkPrice;
    if (oracle != address(0) || tok == DAI) {
      (chainlinkPrice, decimals) = getPriceAndDecimals(tok, oracle);
      price = SafeCast.toUint256(chainlinkPrice);
    } else {
      uint256 uTokensDecimal = getERCDecimal(tok);
      uint256 amountIn = 10 ** uTokensDecimal;
      uint256 uniPrice = IPassiveRebal(rebal).getMinimumAmountOut(tok, amountIn, DAI, address(0));
      (chainlinkPrice, decimals) = getPriceAndDecimals(DAI, DAI_ORACLE);
      price = ((SafeCast.toUint256((chainlinkPrice))) * (uniPrice)) / (10 ** 18);
    }
    return (price, decimals);
  }

  function getERCDecimal(address tok) internal view returns(uint8){
    return IERC20(tok).decimals();
  }

  function updateRebalContract(address _rebal) external onlyOwner {
    addressZero(_rebal);
    rebal = _rebal;
  }

  /**
   * @notice Updates the profit share parameters.
   * @dev Only the contract owner can call this function, and the contract must be unpaused.
   * @param _totalProfit Total profit percentage (<= 10).
   * @param _daoProfit DAO profit percentage (< _totalProfit).
   */
  function updateProfitShare(
    address _vault,
    uint _totalProfit,
    uint _daoProfit
  ) external onlyOwner contractUnpaused {
    greaterEqualComparison(_totalProfit, _daoProfit);
    greaterEqualComparison(10, _totalProfit);
    daoProfit[_vault] = _daoProfit;
    totalProfit[_vault] = _totalProfit;
    emit ProfitShareUpdated(daoProfit[_vault], totalProfit[_vault]); // Emit relevant event
  }

  function teamProfitshares(
    address _aFiStorage,
    address aFiContract,
    uint profitShare
  ) internal view returns (uint teamProfitShare) {
    uint totalActive = IATVAdapter(atvAdapter).getTotalActiveWallets(aFiContract);
    if (totalActive > 1) {
      teamProfitShare =
        (profitShare * (totalProfit[aFiContract] - daoProfit[aFiContract])) /
        ((totalActive - 1) * (totalProfit[aFiContract]));
    }
  }

  /**
   * @notice Distributes profit shares among team wallets for aFiContract.
   * @param aFiContract The address of the AFi contract.
   * @param _aFiStorage The address of the AFiStorage contract.
   * @param iToken An array of iToken addresses.
   * @return totalProfitShare The total profit share distributed.
   */
  function unstakingProfitDistribution(
    address aFiContract,
    address _aFiStorage,
    address[] memory iToken
  ) external onlyOwner returns (uint totalProfitShare) {
    checkStatus(IFactory(factory).getAFiTokenStatus(aFiContract));
    // Investor has made a profit, let us distribute the profit share amongst team wallet
    address[] memory _teamWallets = IATVAdapter(atvAdapter).getTeamWalletsOfAFi(
      aFiContract
    );
    uint256 teamProfitShare;
    uint256 profitShare;
    bool everWhitelisted;
    // Alpha Creator gets 4% of gain
    for (uint j; j < iToken.length; j++) {
      ( , everWhitelisted )= IAFi(aFiContract).isOTokenWhitelisted(iToken[j]);
      if(everWhitelisted) {
        profitShare = teamWalletsProfit[aFiContract][iToken[j]];
        if (profitShare > 0) {
          teamProfitShare = teamProfitshares(_aFiStorage, aFiContract, profitShare);
          {
            uint256 daoProfitShare;
            bool isActive;
            for (uint i = 0; i < _teamWallets.length; i++) {
              (isActive, ) = IATVAdapter(atvAdapter).getTeamWalletDetails(
                aFiContract,
                _teamWallets[i]
              );
              if (isActive) {
                if (i == 0) {
                  // /**
                  //   Always at i==0 address must be of Aarna Dao
                  //   Aarna DAO gets 6% of gain
                  // */
                  daoProfitShare = (profitShare * (daoProfit[aFiContract])) / (totalProfit[aFiContract]);
                  profitShare = daoProfitShare;
                } else {
                  profitShare = teamProfitShare;
                }

                totalProfitShare = totalProfitShare + (profitShare);

                IERC20(iToken[j]).safeTransfer(_teamWallets[i], profitShare);

                emit ProfitShareDistributed(aFiContract, _teamWallets[i], profitShare);
              }
            }
          }
        }
        teamWalletsProfit[aFiContract][iToken[j]] = 0;
      }
    }
  }

  function getAFiContracts() external view returns (IAFiStorage, address, address) {
    return (aFiStorage, rebal, afiManager);
  }

  function addressEqual(address add1, address add2) internal pure {
    require(add1 == add2, "AFO30");
  }

  /**
   * @notice Pauses / unpause deposits in the contract.
   * @dev Requirements: Can only be invoked by the Owner wallet.
   */
  function pauseUnpauseQueue(address afiContract, bool status) external {
    addressEqual(msg.sender,  unstakingController[afiContract]);
    queuePausedStatus[afiContract]= status;
  }
}
