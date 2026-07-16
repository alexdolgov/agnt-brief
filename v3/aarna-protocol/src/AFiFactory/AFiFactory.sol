// SPDX-License-Identifier: GPL-3.0
pragma solidity =0.8.0;

import {Clones} from "./Clones.sol";
import {Ownable2Step} from "./Ownable2Step.sol";
import "./IAFi.sol";
import "./IPassiveRebal.sol";


/**
 * @title AFiFactory.
 * @notice Factory contract for creating/deploying new ATokens.
 */
contract AFiFactory is Ownable2Step {
  address[] public allUnderlyingTokens;
  mapping(address => mapping(address => bool)) public isUnderlyingTokenPresent;
  address public aTokenImplementation;
  address[] public aFiProducts;
  mapping(address => address[]) internal userATokenList;
  mapping(address => mapping(address => bool)) internal isUserInvestingIn;
  mapping(address => bool) public isATokenPresent;
  mapping(address => mapping(address => bool)) internal userAlreadyInvested;
  mapping(address => bool) internal initilizeStatus;
  mapping(address => bool) internal initializeTokenStatus;

  event TokenCreated(address indexed token, string name, string symbol);
  event AddUnderlyingTokens(address indexed afiContract, address utoken);

  /**
   * @notice To initialize/deploy the AFiFactory contract.
   * @param _aTokenImplementation Address of AFiBase contract.
   */
  constructor(address _aTokenImplementation) {
    //solhint-disable-next-line reason-string
    require(_aTokenImplementation != address(0), "AF01");
    aTokenImplementation = _aTokenImplementation;
  }

  /**
   * @notice Returns underlying tokens length.
   * @return uint256 Length of underlying tokens array.
   */
  function allUnderlyingTokensLength() external view returns (uint) {
    return allUnderlyingTokens.length;
  }

  /**
   * @notice Returns afiProducts count.
   * @return uint256 Length of aFiProducts array
   */
  function afiProductsCount() external view returns (uint) {
    return aFiProducts.length;
  }

  /**
   * @notice To create new ATokens.
   * @dev The params must be equal. Aarna engine address & underlying token address cannot be zero address.
   * @param _name Name of AToken.
   * @param _symbol Symbol of AToken.
   * @param data encoded data.
   * @param _teamWallets array of team wallets.
   * @param _isPassiveRebalanced i.e. passive rebalance status of the afiContract.
   * @param _isActiveRebalanced i.e. active rebalance status of the afiContract.
   * @param _aFiStorage address of AFiStorage contract
   * @param _rebalContract address of AFiPassiveRebalStrategies contract
   * @param _aFiManager address of AFiManager
   * @return aTokenAddress returns address of created afi contract(aToken)
   */
  function createAToken(
    string memory _name,
    string memory _symbol,
    bytes memory data,
    address[] memory _teamWallets,
    bool _isPassiveRebalanced,
    bool _isActiveRebalanced,
    IAFiStorage _aFiStorage,
    IPassiveRebal _rebalContract,
    address _aFiManager,
    address[] memory _nonOverlappingITokens
  ) external onlyOwner returns (address aTokenAddress) {

    IAFi.PoolsData memory pooldata = abi.decode(data, (IAFi.PoolsData));
    require(
        pooldata._underlyingTokensProportion.length == pooldata._compound.length &&
        pooldata._compound.length == pooldata._dToken.length &&
        pooldata._dToken.length == pooldata._aaveToken.length && 
        pooldata._aaveToken.length == pooldata._priceOracles.length,
      "AF: Array lengths"
    );
    // Check if the sum of proportions is equal to 100%
    uint256 totalProportion;
    for (uint256 i = 0; i < pooldata._underlyingTokensProportion.length; i++) {
      totalProportion += pooldata._underlyingTokensProportion[i];
    }
    require(totalProportion == 10000000, "AF: Proportions must add up to 100%");
    require(_aFiManager != address(0), "AF: zero addr");
    //require(_aarnaEngine != address(0), "AF: zero addr");
    require(address(_aFiStorage) != address(0), "AF: zero addr");
    require(!checkForZeroAddress(_teamWallets), "AF: zero addr");
    require(_teamWallets.length > 0, "AF: Array Length");
    aTokenAddress = Clones.clone(aTokenImplementation);
    uniPoolValidation(data, aTokenAddress, pooldata._underlyingTokensProportion.length);
    isATokenPresent[aTokenAddress] = true;
    aFiProducts.push(aTokenAddress);
    IAFi(aTokenAddress).initialize(
      msg.sender,
      _name,
      _symbol,
      data,
      _isActiveRebalanced,
      _aFiStorage,
      _nonOverlappingITokens
    );
    IAFi(aTokenAddress).initializeToken(pooldata._depositStableCoin, pooldata._depositCoinOracle, pooldata.underlyingData,   _teamWallets, _rebalContract, _isPassiveRebalanced, _aFiManager);
    emit TokenCreated(aTokenAddress, _name, _symbol);
  }

  function uniPoolValidation(bytes memory payload, address aToken, uint256 proLen) internal{
    IAFi.PoolsData memory pooldata = abi.decode(payload, (IAFi.PoolsData));
    IAFi.UnderlyingData memory uniData = abi.decode(pooldata.underlyingData, (IAFi.UnderlyingData));
    require(uniData._underlyingTokens.length == proLen, "LE");
    addUnderlyingTokens(aToken, uniData._underlyingTokens);
  }

  /**
   * @notice To add underlying token to allUnderlyingTokens array.
   * @param _underlyingTokens Array of ERC20 token's that forms the underlying token for an AToken.
   */
  function addUnderlyingTokens(
    address afiBase,
    address[] memory _underlyingTokens
  ) internal {
    uint uTokensLength = _underlyingTokens.length;

    require(!checkForZeroAddress(_underlyingTokens), "zero addr");
    for (uint i = 0; i < uTokensLength; i++) {
      if (!isUnderlyingTokenPresent[afiBase][_underlyingTokens[i]]) {
        allUnderlyingTokens.push(_underlyingTokens[i]);
        isUnderlyingTokenPresent[afiBase][_underlyingTokens[i]] = true;
        emit AddUnderlyingTokens(afiBase, _underlyingTokens[i]);
      }
    }
  }

  function checkForZeroAddress(
    address[] memory inputAddresses
  ) internal pure returns (bool containZeroAddr) {
    uint len = inputAddresses.length;
    for (uint i = 0; i < len; i++) {
      if (inputAddresses[i] == address(0)) {
        return true;
      }
    }
    return false;
  }

  function setIfUserInvesting(address user, address afiContract) external {
    require(msg.sender == afiContract, "AF02");
    require(isATokenPresent[afiContract], "AF: product not present");
    if(!isUserInvestingIn[user][afiContract]){
      if(!userAlreadyInvested[user][afiContract]){
        userATokenList[user].push(afiContract);
        userAlreadyInvested[user][afiContract] = true;
      }
      isUserInvestingIn[user][afiContract] = true;
    }
  }

  function hasUserInvestedAlready(address afiContract, address user) external view returns(bool){
    return isUserInvestingIn[user][afiContract];
  } 

  function getUserATokenList(address user) external view returns(address[] memory) {
    return userATokenList[user];
  }

  function withdrawAndResetInvestmentStatus(address user, address afiContract) external {
    require(msg.sender == afiContract, "AF03");
    require(isATokenPresent[afiContract], "AF: product is not present");
    require(isUserInvestingIn[user][afiContract], "AF: User is not investing"); 
    // Reset the investment status
    isUserInvestingIn[user][afiContract] = false;
  }
  
  // the purpose of the function is to encode the pool data that follows the structure declared in IAFi.sol
  function encodePoolData(
    IAFi.PoolsData memory pooldata
  ) external pure returns (bytes memory) {
    return (abi.encode(pooldata));
  }

  // the purpose of the function is to encode the pool data that follows the structure declared in IAFi.sol
  function encodeUnderlyingData(
    IAFi.UnderlyingData memory uData
  ) external pure returns (bytes memory) {
    return (abi.encode(uData));
  }

  function getPricePerFullShare(address afiContract, address afiStorage) public view returns (uint) {
    uint _pool = 0;
    uint256 _totalSupply =  IAFi(afiContract).totalSupply();
    _pool = IAFiStorage(afiStorage).calculatePoolInUsd(afiContract);
    if(_totalSupply == 0){
      return 1000000;
    }
    return _pool * (10000) / (_totalSupply);
  }

  // the purpose of this function is to call initialize functions of AFiContract only once
  function afiContractInitUpdate(address aFiContract, uint order) external {
    require(msg.sender == aFiContract, "NA");
    if(order == 1){
      require(!initilizeStatus[aFiContract], "AF00");
      initilizeStatus[aFiContract] = true;
    }else if(order == 2){
      require(!initializeTokenStatus[aFiContract], "AF00");
      initializeTokenStatus[aFiContract] = true;
    }
  }
  
  // the function returns the initialize status of an afi contract for all three initialize functions
  function getAFiInitStatus(address aFiContract) external view returns(bool, bool){
    return (initilizeStatus[aFiContract], initializeTokenStatus[aFiContract]);
  }
}
