// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

/**
 * @title IAFiStorage.
 * @notice Interface of the AFiStorage.
 */

interface IIEarnManager {
  function recommend(
    address _token,
    address afiBase,
    address afiStorage
  ) external view returns (string memory choice, uint capr, uint aapr, uint dapr);
}

interface IAFiStorage {
  /**
   * @notice Struct representing investor details.
   * @param isPresent Boolean indicating whether an investor exists.
   * @param uTokenBalance Investor underlying token balance.
   * @param investedAmount Amount of StableCoin invested in the underlying token
   */
  struct Investor {
    bool isPresent;
    uint depositNAV;
    uint redemptionNAV;
  }

  struct RedemptionParams {
    address baseContract;
    uint r;
    address oToken;
    uint256 cSwapCounter;
    address[] uTokens;
    address[] iTokens;
    uint256 deadline;
    uint256[] minimumReturnAmount;
    uint256 _pool;
    uint256 tSupply;
    uint256 depositNAV;
    uint256 minAmountOut;
  }

  /**
   * @notice Struct representing Rebalance details.
   * @param scenario Scenario can be either of 0, 1 or 2.
   * @param rebalancedUToken Address of the underlying token that is rebalanced.
   * @param rebalancedToUTokens Array of addresses of underlying tokens to which the uToken has been rebalanced.
   */
  struct RebalanceDetails {
    uint8 scenario;
    address rebalancedUToken;
    address[] rebalancedToUTokens;
  }

  struct RedemptionData {
    uint256 price;
    bool stakedStatus;
    uint256 redemptionFromContract;
    uint256 multiplier;
    uint256 tvl;
  }

  /**
   * @param walletAddress Address of the wallet.
   * @param isActive Boolean indicating wallet active status.
   */
  event TeamWalletActive(address indexed walletAddress, bool isActive);

  /**
   * @param walletAddress Address of the wallet.
   * @param isActive Boolean indicating wallet active status.
   */
  event TeamWalletAdd(address indexed walletAddress, bool isActive);
  function handleRedemption(
    RedemptionParams memory params,
    uint _shares,
    uint swapMethod,
    bytes[] calldata pendleWithdrawData,
    bytes[] calldata swapData
  ) external returns (uint256 redemptionFromContract);
 
  /**
   * @notice Sets the address for team wallets.
   * @param aFiContract Address of the AFi contract.
   * @param _teamWallets Array of addresses for the team wallets.
   */
  function setTeamWallets(address aFiContract, address[] memory _teamWallets) external;

  /**
   * @notice Sets the status for the AFi in the storage contract.
   * @param aFiContract Address of the AFi contract.
   * @param active status for afiContracts.
   */
  function setAFiActive(address aFiContract, bool active) external;

  /**
   * @notice Sets Active Rebalance status of an AFi.
   * @param aFiContract Address of the AFi contract.
   * @param status indicating active rebalance status of the AFi contract.
   */
  function setActiveRebalancedStatus(address aFiContract, bool status) external;
  function calcPoolValue(
    address tok,
    address afiContract
  ) external view returns (uint);

  function calculateBalanceOfUnderlying(
    address tok,
    address afiContract
  ) external view returns (uint);

  function calculatePoolInUsd(address afiContract) external view returns (uint);
  function updateFinalProvider(address _vault, address tok, uint256 _provider) external;
  function afiSync(
    address afiContract,
    address tok,
    address aaveTok,
    address moonwellMToken,
    address _pendleMarketPlace,
    address _morphoVault
  ) external;

  function getPriceInUSD(
    address tok
  ) external view returns (uint256, uint256);

  function validateAndGetDecimals(address tok) external view returns (uint256);

  function getStakedStatus(
    address aFiContract,
    address uToken
  ) external view returns (bool);

  function rearrange(
    address aFiContract,
    address[] memory underlyingTokens,
    uint256[] memory newProviders,
    bytes[] calldata pendleData,
    bool enableLeverage
  ) external  returns (uint256 lpOut);

  function swapForOtherProduct(
    address afiContract,
    uint deadline,
    uint[] memory minimumReturnAmount,
    address[] memory uToken,
    bytes calldata pendleWithdrawData,
    bytes[] calldata swapdata
  ) external returns (uint256);

  function _withdrawAll(address afiContract, address tok, bytes calldata pendleWithdrawData) external returns(bool);
 
  function getAFiOracle() external view returns(address);

  function tvlRead(
    address tok,
    address afiContract
  ) external view returns (uint, uint256);

  function getPreSwapDepositsTokens(
    address aFiContract,
    uint256 _cSwapCounter,
    address stableToken
  ) external view returns (uint256);

  function setPreDepositedInputToken(uint256 _cSwapCounter, uint256 _amount,address _oToken) external;
  function setPreDepositedInputTokenInRebalance(
    address aficontract,
    uint256 _cSwapCounter,
    uint256 _amount,
    address _oToken
  ) external;

  function convertInUSDAndTok(
    address tok,
    uint256 amt,
    bool usd
  ) external view returns (uint256);

  function calculateShares(
    address afiContract,
    uint256 amount,
    uint256 prevPool,
    uint256 _totalSupply,
    address iToken,
    uint256 currentDepositNAV,
    uint256 prevBalance
  ) external view returns (uint256 shares, uint256 newDepositNAV);

  function deletePreDepositedInputToken(
    address aFiContract,
    address oToken,
    uint256 currentCounter
  )external;

 function doSwapForThewhiteListRemoval(
    address tok,
    uint256 _cSwapCounter,
    address swapToken,
    uint256 deadline,
    uint256 minAmountOut,
    bytes calldata swapData
  ) external;

 
  function setPreDepositedInputTokenInReInitialize(
    address aficontract,
    uint256 _cSwapCounter,
    uint256 _amount,
    address _oToken
  ) external;

  function getPendleStakeStatus(address atvContract, address token) external view returns (bool);

  function aaveTokenCopy(address afiContract, address tok) external view returns (address);

  function pendleMarketPlace(address afiContract, address tok) external view returns (address);

  function moonwellToken(address afiContract, address tok) external view returns (address);

  function morphoVault(address afiContract, address tok) external view returns (address);

  function provider(address afiContract, address tok) external view returns (uint256);
  function finalProvider(address afiContract, address tok) external view returns (uint256);

  function isPendleStaked(address afiContract, address tok) external view returns (bool);

  function getRebal() external view returns (address);

  function stakingManager() external view returns (address);

  function usePTToken(address vault, address token) external view returns (bool);
  function pendlePTToken(address vault, address token) external view returns (address);
  function pendlePTUnderlyingToken(address vault, address token) external view returns (address);
  function setPendleTokenConfig(
    address afiContract,
    address tok,
    address _pendlePTUnderlying,
    bool _usePTToken,
    address _pendlePTToken
  ) external;


  function withdrawStableTokens(
    address afiContract,
    uint r,
    address oToken,
    address[] memory token,
    uint256 deadline,
    uint256[] memory minimumReturnAmount,
    bytes[] calldata swapData
  ) external returns (uint256 redemptionBalance);
  
  function setTempVars(address oToken, uint256 rValue) external;

  function pendleMarketUnderlyingToken(
        address vault,
        address marketToken
    ) external view returns (address);
}
