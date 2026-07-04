// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "layerzero/token/oft/v2/OFTV2.sol";

import "./interfaces/IOnDemandOracle.sol";
import "./interfaces/IBaseVault.sol";
import "./utils/SavingsYield.sol";
import "./Configurator.sol";


/** @notice Synth token
  * @dev Can only  be minted by collateral vaults or through layer zero inbound transfer
  */
contract Synth is Configurator, OFTV2 {
  using SafeERC20 for ERC20;

  constructor() OFTV2("Monroe USD", "roeUSD", 8, address(0)) {}
  
  /// @notice Update the layerZero endpoint
  /// @dev Useful to deploy on chains without layer0, and add the endpoint later when released
  function setLzEndpoint(address _lzEndpoint) public onlyOwner {
    require(_lzEndpoint != address(0), "Invalid endpoint");
    lzEndpoint = ILayerZeroEndpoint(_lzEndpoint);
  }
  

  /// @notice Set the savings pool (has to be created after this; only once)
  function setSavingsPool(address _savingsPool) public onlyOwner {
    require(savingsPool == address(0) 
      && _savingsPool != address(0) 
      && SavingsPool(payable(_savingsPool)).asset() == address(this)
      && SavingsPool(payable(_savingsPool)).totalSupply() == 0
      , 
      "Conf: Invalid Savings Pool"
    );
    savingsPool = payable(_savingsPool);
    // Mint and deposit 1e9 to the SP to prevent inflation attacks
    _mint(address(this), 1e9);
    _approve(address(this), _savingsPool, 1e9);
    SavingsPool(payable(_savingsPool)).deposit(1e9, address(this));
    emit SetSavingsPool(_savingsPool);
  }
  
  /// @notice Get target price of the synth, 1e8 in case of USD synth
  function getPrice() public virtual view returns (uint priceX8){
    priceX8 = 1e8;
  }
  
  // Collateral vaults can mint and burn 
  function mint(address _recipient, uint256 _amount) public  {
    onlyVault();
    _mint(_recipient, _amount);
  }
  function burn(address _recipient, uint256 _amount) public  {
    onlyVault();
    _burn(_recipient, _amount);
  }
  
  /// @notice Get LSD income and auction it, proceeds go to the savings pool
  function collectSavingsIncome(address asset, uint amount) public  {
    onlyVault();
    ERC20(asset).safeTransferFrom(msg.sender, savingsPool, amount);
    SavingsPool(savingsPool).startAuction(asset);
  }
  
  
  /// @notice Get savings yield X4
  /// @dev More rewards are allocated to Synth to incentivize demand if price is low
  /// @dev Default: 50%: 5000 
  function getSavingsYield() public returns (uint savingsYieldX4) {
    savingsYieldX4 = 5000;
    if (savingsYieldContract != address(0)) 
      savingsYieldX4 = SavingsYield(savingsYieldContract).getSavingsYield(address(this), int(getPrice()));
  }

  
  /// @notice Override crosschain transfers to limit daily volume
  /// @dev Security measure in case one chain collateral gets compromised, avoids hitting all chains before
  /// transfers can be disabled
  function sendFrom(address _from, uint16 _dstChainId, bytes32 _toAddress, uint _amount, LzCallParams calldata _callParams) 
    public payable virtual override 
  {
    checkUpdateDailyTransfer(_amount);
    _send(_from, _dstChainId, _toAddress, _amount, _callParams.refundAddress, _callParams.zroPaymentAddress, _callParams.adapterParams);
  }

  function sendAndCall(
    address _from,
    uint16 _dstChainId,
    bytes32 _toAddress,
    uint _amount,
    bytes calldata _payload,
    uint64 _dstGasForCall,
    LzCallParams calldata _callParams
  ) public payable override {
    checkUpdateDailyTransfer(_amount);
    _sendAndCall( 
      _from,
      _dstChainId,
      _toAddress,
      _amount,
      _payload,
      _dstGasForCall,
      _callParams.refundAddress,
      _callParams.zroPaymentAddress,
      _callParams.adapterParams
    );
  }
  
  // If receiving tokens, maybe bc a transfer out failed, reduce the outgoing balance
  function callOnOFTReceived(
    uint16 _srcChainId,
    bytes calldata _srcAddress,
    uint64 _nonce,
    bytes32 _from,
    address _to,
    uint _amount,
    bytes calldata _payload,
    uint _gasForCall
  ) public override {
    uint32 today = uint32(block.timestamp / 86400);
    if (dailyTransfers[today] > _amount) dailyTransfers[today] -= _amount;
    else dailyTransfers[today] = 0;
    super.callOnOFTReceived(_srcChainId, _srcAddress, _nonce, _from, _to, _amount, _payload, _gasForCall);
  }
}