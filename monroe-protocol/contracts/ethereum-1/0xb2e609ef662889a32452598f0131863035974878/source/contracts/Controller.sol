// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/proxy/Clones.sol";
import "./interfaces/IOnDemandOracle.sol";
import "./interfaces/IController.sol";
import "./interfaces/IBaseVault.sol";
import "./interfaces/ISynth.sol";


contract Controller is Ownable, IController {

  event SetTreasury(address treasury, uint16 treasuryFee);
  event SetControllerParameters(uint16 emergencyPoolShare, uint16 priceBounds, uint16 yieldAdjustmentSpeed);
  event SetAddresses(address _synth, address _savingsPool, address _lz0Endpoint, address _uniswapV3Factory, address _usdc);
  event AddedVault(address vault);
  event CreatedSynth(address newSynth, string name, address oracle);
  event SetLiquidationThresholds(address collateral, uint liquidationThreshold, uint hardLiquidationThreshold);

  /// @notice Treasury
  address public treasury;
  /// @notice Treasury fee percentage X4
  uint16 public treasuryFee;
  
  /// @notice The emergency pool as target percentage of total deposits: adjust fees up or down (X4)
  uint16 public emergencyPoolShare = 1000;
  
  /// @notice Staking yield bounds beyond which the staking yield is either 0 or 100% (X4)
  uint16 internal priceBounds = 500;
  /// @notice Yield adjustment speed. 
  // Eg, yield is 50-50 and price moves to the upper bound (1 synth = $1.05), increase yield by 10% if yieldAdjustmentSpeed == 10%
  uint16 internal yieldAdjustmentSpeed = 1000;
  
  /// @notice Vaults
  address[] public vaults;
  // @notice Collateral to Vault implementation mapping
  mapping(address => address) public collateralToVault;
  
  /// @notice Liquidation thresholds in percent X2 per collateral vault
  mapping(address => uint16) internal liquidationThresholds;
  mapping(address => uint16) internal hardLiquidationThresholds;
  
  
  /// @notice Savings contract logic for clones
  address public savingsPoolLogic;
  /// @notice Synth contract logic for clones
  address public synth;
  /// @notice Synths
  address[] public synths;
  
  /// @notice LayerZero v2 endpoint
  address public lzEndpoint;
  /// @notice Uniswap v3 factory, used to query twap
  address public uniswapV3Factory; // mainnet = 0x1F98431c8aD98523631AE4a59f267346ea31F984;
  /// @notice Stablecoin counterparty used for price checks
  address public usdcAddress;
  /// @notice Stablecoin counterparty used for price checks
  address public twapPriceLib;

  uint32 internal constant TWAP_DURATION = 3600;
  
  
  function setAddresses(address _synth, address _savingsPool, address _lzEndpoint, address _uniswapV3Factory, address _usdc) public onlyOwner {
    require(
      _lzEndpoint != address(0) 
      && _uniswapV3Factory != address(0) 
      && _synth != address(0) 
      && _savingsPool != address(0) 
      && _usdc != address(0) ,
      "Conf: Invalid Addresses"
    );
    synth = _synth;
    savingsPoolLogic = _savingsPool;
    lzEndpoint = _lzEndpoint;
    uniswapV3Factory = _uniswapV3Factory;
    usdcAddress = _usdc;
    emit SetAddresses(_synth, _savingsPool, _lzEndpoint, _uniswapV3Factory, _usdc);
  }
  
  /// @notice Get vaults length
  function getVaultsLength() public view returns (uint) {
    return vaults.length;
  }
  
  
  /// @notice Get synths length
  function getSynthsLength() public view returns (uint) {
    return synths.length;
  }

  
  /// @notice Get liquidation thresholds
  function getLiquidationThresholds(address collateral) public view returns (uint16 liquidationThreshold, uint16 hardLiquidationThreshold){
    return (liquidationThresholds[collateral], hardLiquidationThresholds[collateral]);
  }
  /// @notice Set liquidation thresholds
  function setLiquidationThresholds(address collateral, uint16 _liquidationThreshold, uint16 _hardLiquidationThreshold) public onlyOwner {
    // cant have both levels with same value or will cause DIV_0 issues in vaults
    require(_liquidationThreshold > _hardLiquidationThreshold, "Ctrl: Invalid Range");
    require(_liquidationThreshold > 120, "Ctrl: Invalid Liq Threshold");
    require(_hardLiquidationThreshold > 110, "Ctrl: Invalid Hard Threshold");
    liquidationThresholds[collateral] = _liquidationThreshold;
    hardLiquidationThresholds[collateral] = _hardLiquidationThreshold;
  }
  
  
  /// @notice Set treasury
  function setTreasury(address _treasury, uint16 _treasuryFee) public onlyOwner {
    require(_treasury != address(0), "Ctrl: Null Address");
    require(_treasuryFee <= 10000, "Ctrl: Fee Over 100%");
    treasury = _treasury;
    treasuryFee = _treasuryFee;
    emit SetTreasury(_treasury, _treasuryFee);
  }
  
  /// @notice Set various parameters
  function setParameters(uint16 _emergencyPoolShare, uint16 _priceBounds, uint16 _yieldAdjustmentSpeed) public onlyOwner {
    require(_emergencyPoolShare < 5000, "Ctrl: EP share too high");
    require(_priceBounds < 2000, "Ctrl: Price bounds too high");
    require(_yieldAdjustmentSpeed < 5000, "Ctrl: Adj. Speed too high");
    emergencyPoolShare = _emergencyPoolShare;
    priceBounds = _priceBounds;
    yieldAdjustmentSpeed = _yieldAdjustmentSpeed;
    emit SetControllerParameters(_emergencyPoolShare, _priceBounds, _yieldAdjustmentSpeed);
  }
  
  
  /// @notice Add a new collateral vault
  function addVault(address vault) public onlyOwner returns (uint) {
    require(vault != address(0), "Ctrl: Invalid Vault");
    address collateral = IBaseVault(vault).collateralAsset();
    address oracle = IBaseVault(vault).oracle();
    require(collateral != address(0) && oracle != address(0), "Ctrl: Invalid Vault");
    require(collateralToVault[collateral] == address(0), "Ctrl: Vault Already Exists");
      
    vaults.push(vault);
    collateralToVault[collateral] = vault;
    // set default liquidation thresholds
    setLiquidationThresholds(collateral, 150, 120);
    emit AddedVault(vault);
    return vaults.length;
  }
  
  
  /// @notice Get UniswapV3 pool parameters: factory address, quote pair, decimals
  function getUniswapParams() public view 
    returns (address uniswapFactory, address quoteToken, uint8 tokenDecimals, uint32 twapDuration, uint16 priceBoundsX4, uint16 yieldAdjustmentSpeedX4) 
  {
    return (uniswapV3Factory, usdcAddress, 6, TWAP_DURATION, priceBounds, yieldAdjustmentSpeed);
  }
  
  
  /// @notice Create a new synth
  /// @dev oracle == address(0) -> will use fixed value 1e8 for USD peg
  function createSynth(string memory name, address oracle) public onlyOwner returns (address newSynth) {
    if (oracle != address(0)) require(IOnDemandOracle(oracle).latestAnswer() > 0, "Ctrl: No Such Oracle");
    string memory _name = string(abi.encodePacked("Monroe ", name));
    string memory _symbol = string(abi.encodePacked("mon", name));
    newSynth = Clones.cloneDeterministic(synth, keccak256(abi.encodePacked("Monroe ", name)));
    ISynth(newSynth).initialize(_name, _symbol, oracle, lzEndpoint, savingsPoolLogic);
    synths.push(newSynth);
    ISynth(newSynth).transferOwnership(msg.sender);
    emit CreatedSynth(newSynth, name, oracle);
  }
  
}