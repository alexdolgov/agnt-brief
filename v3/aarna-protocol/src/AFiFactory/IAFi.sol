// SPDX-License-Identifier: Unlicensed

pragma solidity =0.8.0;

import {IERC20Extended as IERC20} from "./IERC20Extended.sol";
import "./IAFiStorage.sol";
import "./IPassiveRebal.sol";
/**
 * @title PassiveRebal.
 * @notice Interface of the Passive Rebalance contract.
 */
interface PassiveRebal {

  function applyRebalForProportions(
    address _aFiContract,
    address _aFiManager,
    uint _strategyNumber,
    address[] memory _tokens
  ) external returns (uint[] memory proportions);

  function getPauseStatus() external returns (bool);

  function getRebalPeriod(address aFiContract) external returns (uint);

  function updateRebalPeriod(address aFiContract, uint _newRebalPeiod) external;

  function setPassiveRebalancedStatus(address aFiContract, bool status) external;

  function isAFiPassiveRebalanced(
    address aFiContract
  ) external returns (bool _isPassiveRebalanced);

  function getRebalStrategyNumber(address aFiContract) external returns (uint);

  function updateRebalStrategyNumber(
    address aFiContract,
    uint updatedStrategy
  ) external;
}

interface IAFiOracle{
    function _distributeProfitShare(
    address aFiStorage,
    address aFiContract,
    uint profit,
    address oToken,
    uint256 depositNAV,
    uint256 redemptionNAV
  ) external returns (uint totalProfitShare);
}

interface IAFiManager {

  function updateUTokenProportion(address aFiContract,address aFiStorage) external returns(uint256[] memory);

  function intializeData(address aFiContract,address[] memory underlyingTokens,uint[] memory underlyingProportion) external;

  function uTokenslippage(address aFiContract, address uToken) external view returns(uint uTokenSlippage);

}

/**
 * @title IAFi.
 * @notice Interface of the AToken.
 */
interface IAFi {

  struct StablePools{
    address[] _pools; // 
  }

  struct UnderlyingData{
    address[] _underlyingTokens;  //uTokens
    address[] _underlyingUniPoolToken; //uToken - MiddleToken
    address[] _underlyingUniPool; //uToken - Middle Token Pool
    address[] _underlyingPoolWithWETH; //uToken pool with WETH
    StablePools[] stablePools; //Stable - Middle pool
    address[] stableWethPool; //Stalbe - WETH Token
  }

  struct PoolsData {
    address[] _depositStableCoin;
    address[] _depositCoinOracle;
    bytes underlyingData;                                                                             
    address _apr;
    address[] _compound;
    address[] _aaveToken;
    address[] _priceOracles;
    uint[] _underlyingTokensProportion;
    uint[] _dToken;
    uint _typeOfProduct;
  }

  /**
   * @param account Address of the account that paused the contract.
   * @param isDeposit True if we want to pause deposit otherwise false if want to pause withdraw.
   */
  event Paused(address account,bool isDeposit);
  /**
   * @param account Address of the account that unpaused the contract.
   * @param isDeposit True if we want to unpause deposit otherwise false if want to unpause withdraw.
   */
  event Unpaused(address account,bool isDeposit);

  /**
   * @notice Function to initialize the data, owner and afi token related data.
   * @dev the function should be called once only by factory
   * @param newOwner indicates the owner of the created afi product.
   * @param _name indicates the name of the afi Token
   * @param _symbol indicates symbol of the the afi Token.
   * @param data indicates the encoded data that follows the PoolsData struct format.
   * @param _isActiveRebalanced indicates the active rebalance status of the afi contract.
   * @param _aFiStorage indicates the afi storage contract address.
   */
  function initialize(
    address newOwner,
    string memory _name,
    string memory _symbol,
    bytes memory data,
    bool _isActiveRebalanced,
    IAFiStorage _aFiStorage,
    address[] memory _commonInputTokens
  ) external;

  /**
   * @notice Function to initialize accepted tokens in deposit and withdraw functions.
   * @dev  the function should be called once only by factory
   * @param iToken indicates the array of the accepted token addressess.
   */
  function initializeToken(
    address[] memory iToken,
    address[] memory iTokenOracle,
    bytes memory _poolData,
    address[] memory _teamWallets,
    IPassiveRebal _rebalContract,
    bool _isPassiveRebalanced,
    address _aFiManager
  ) external;

  /**
   * @notice Returns the array of underlying tokens.
   * @return uTokensArray Array of underlying tokens.
   */
  function getUTokens() external view returns (address[] memory uTokensArray);
  function swapViAFiStorage(
    address from,
    address to,
    uint amount,
    uint deadline,
    address midTok,
    uint[] memory slippageFactor,
    uint8 counter
  ) external returns(uint256);
  
  /**
   * @notice Returns the paused status of the contract.
   */
  function isPaused() external view returns (bool,bool);
  function getProportionsAndRebalTime() external view returns (uint[] memory, uint[] memory, uint256);
  /**
   * @notice Updates the pool data during Active Rebalance.
   * @param data that follows PoolsData format indicates the data of the token being rebalanced in Active Rebalance.
   */
  function updatePoolData(bytes memory data) external;

  function sendProfitOrFeeToManager(address wallet, uint profitShare, address oToken) external;

  function totalSupply() external view returns (uint);

  function updateUnderlyingData(address[] memory _uTokens,uint256[] memory _uTokenProportion,uint256[] memory _defaultProportion)external;

  function _supplyDydx(address tok, uint amount) external;

  function _supplyAave(address tok, uint amount) external;

  function _supplyCompound(address tok, uint amount) external;

  function getPriceOracle(address tok) external view returns(address);

  function updateOracleData(address _uTokens, address _oracleAddress, address _underlyingMidToken, address uniPool)external;

  function _withdrawAave(address tok, uint amount) external;

  function _withdrawDydx(address tok, uint amount) external;

  function _withdrawCompound(address tok, uint amount) external;

  function getTVLandRebalContractandType() external view returns (uint256, address, uint256);

  function upDateInputTokPool(bytes memory uniData) external;
  
  function updateuniPool(address tok, address midTok) external;

  function getMidToken(address tok) external view returns (address);

  function getPool(
    address tok,
    address midTok
  ) external view returns (address);

  function getInputToken() external view returns (address[] memory , address[] memory );
  
  function swap(
    address inputToken,
    address uTok,
    uint256 amountAsPerProportion,
    uint _deadline,
    uint256[] memory slippageFactor
  ) external;

  function redeemTxFee(address _inputToken, uint256 _fee ) external returns (uint256 redFee);

  function underlyingTokensStaking(
    ) external;

  function getAFiVaultWallet() external view returns(address);

  function depositUserNav(address user) external view returns(uint256);

  function getPreSwapDepositsTokens(address stableToken) external view returns(uint256);
}