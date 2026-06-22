// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./interfaces/IConfigurator.sol";
import "./interfaces/IBaseVault.sol";
import "./pools/SavingsPool.sol";


contract Configurator is Ownable, IConfigurator {
  event SetTreasury(address treasury, uint16 treasuryFee);
  event SetSafetyPoolShare(uint16 safetyPoolShare);
  event SetLiquidationThresholds(address collateral, uint liquidationThreshold, uint hardLiquidationThreshold);
  event AddedVault(address vault);
  event SetSavingsYieldContract(address savingsYieldContract);
  event SetDailyTransfer(uint _maxDailyTransfer);
  event SetSavingsPool(address _savingsPool);
  event SetVaultStatus(address vault, bool isEnabled);

  /// @notice Vaults
  address[] public vaults;
  mapping(address => bool) public isVaultEnabled;
  // @notice Collateral to Vault implementation mapping
  mapping(address => address) public collateralToVault;

  /// @notice Treasury
  address public treasury;
  /// @notice Treasury fee percentage X4
  uint16 public treasuryFee;
  
  /// @notice The safety pool share X4 of the yield from users deposits, default: 5%
  uint16 public safetyPoolShare = 500;

  /// @notice Savings yield calculation contract address
  address public savingsYieldContract;
  
  /// @notice Savings pool
  address payable public savingsPool;
  
  /// @notice Max daily transfer: default: 100k
  uint public maxDailyTransfer = 100_000e18;
  mapping(uint32 => uint) public dailyTransfers;
  
  /// @notice Liquidation thresholds in percent X2 per collateral vault
  mapping(address => uint16) internal liquidationThresholds;
  mapping(address => uint16) internal hardLiquidationThresholds;
  
  
  /// @notice Set the maximum daily volume of synth that can be sent crosschainS
  function setDailyTransfer(uint _maxDailyTransfer) public onlyOwner {
    maxDailyTransfer = _maxDailyTransfer;
    emit SetDailyTransfer(_maxDailyTransfer);
  }
  
  /// @notice Check and update the daily transfer limit
  function checkUpdateDailyTransfer(uint amount) internal {
    uint32 today = uint32(block.timestamp / 86400);
    require(dailyTransfers[today] + amount <= maxDailyTransfer, "Conf: Transfer Limit Reached");
    dailyTransfers[today] += amount;
  }
  
  /// @notice Get liquidation thresholds
  function getLiquidationThresholds(address collateral) public view returns (uint16 liquidationThreshold, uint16 hardLiquidationThreshold){
    return (liquidationThresholds[collateral], hardLiquidationThresholds[collateral]);
  }
  /// @notice Set liquidation thresholds
  function setLiquidationThresholds(address collateral, uint16 _liquidationThreshold, uint16 _hardLiquidationThreshold) public onlyOwner {
    // cant have both levels with same value or will cause DIV_0 issues in vaults
    require(_liquidationThreshold > _hardLiquidationThreshold, "Conf: Invalid Range");
    require(_liquidationThreshold > 120, "Conf: Invalid Liq Threshold");
    require(_hardLiquidationThreshold > 110, "Conf: Invalid Hard Threshold");
    liquidationThresholds[collateral] = _liquidationThreshold;
    hardLiquidationThresholds[collateral] = _hardLiquidationThreshold;
    emit SetLiquidationThresholds(collateral, _liquidationThreshold, _hardLiquidationThreshold);
  }
  
  /// @notice Set twap price contract address, set to 0x0 to ignore and use basic 50/50
  function setSavingsYieldContract(address _savingsYieldContract) public onlyOwner {
    savingsYieldContract = _savingsYieldContract;
    emit SetSavingsYieldContract(_savingsYieldContract);
  }
  
  /// @notice Set treasury
  function setTreasury(address _treasury, uint16 _treasuryFee) public onlyOwner {
    require(_treasury != address(0), "Conf: Null Address");
    require(_treasuryFee <= 10000, "Conf: Fee Over 100%");
    treasury = _treasury;
    treasuryFee = _treasuryFee;
    emit SetTreasury(_treasury, _treasuryFee);
  }
  
  /// @notice Set various parameters
  function setSafetyPoolShare(uint16 _safetyPoolShare) public onlyOwner {
    require(_safetyPoolShare < 5000, "Conf: EP share too high");
    safetyPoolShare = _safetyPoolShare;
    emit SetSafetyPoolShare(_safetyPoolShare);
  }
  
  
  /// @notice Get vaults length
  function getVaultsLength() public view returns (uint) {
    return vaults.length;
  }
  
  
  /// @notice Add a new collateral vault
  function addVault(address vault) public onlyOwner returns (uint) {
    require(vault != address(0), "Conf: Invalid Vault");
    address collateral = IBaseVault(vault).collateralAsset();
    address oracle = IBaseVault(vault).oracle();
    require(collateral != address(0) && oracle != address(0), "Conf: Invalid Vault");
    require(collateralToVault[collateral] == address(0), "Conf: Vault Already Exists");
      
    vaults.push(vault);
    isVaultEnabled[vault] = true;
    collateralToVault[collateral] = vault;
    SavingsPool(payable(savingsPool)).addOracle(collateral, oracle);
    // set default liquidation thresholds
    setLiquidationThresholds(collateral, 150, 120);
    emit AddedVault(vault);
    return vaults.length;
  }
  
  function setVaultStatus(address _vault, bool isEnabled) public onlyOwner {
    isVaultEnabled[_vault] = isEnabled;
    emit SetVaultStatus(_vault, isEnabled);
  }
  
  
  /// @notice Require to be a minter vault
  /// @dev Function rather than modifer to save contract space
  function onlyVault() internal {
    require(isVaultEnabled[msg.sender], "ST: Unauthorized Minter");
  }
}