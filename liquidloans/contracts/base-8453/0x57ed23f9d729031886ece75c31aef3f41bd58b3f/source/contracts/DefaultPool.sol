// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import './Interfaces/IDefaultPool.sol';
import "./Dependencies/SafeMath.sol";
import "./Dependencies/Ownable.sol";
import "./Dependencies/CheckContract.sol";
import "./Dependencies/console.sol";

/*
 * The Default Pool holds the ETH and USDL debt (but not USDL tokens) from liquidations that have been redistributed
 * to active vaults but not yet "applied", i.e. not yet recorded on a recipient active vault's struct.
 *
 * When a vault makes an operation that applies its pending ETH and USDL debt, its pending ETH and USDL debt is moved
 * from the Default Pool to the Active Pool.
 */
contract DefaultPool is Ownable, CheckContract, IDefaultPool {
    using SafeMath for uint256;

    string constant public NAME = "DefaultPool";

    address public vaultManagerAddress;
    address public activePoolAddress;
    uint256 internal ETH;  // deposited ETH tracker
    uint256 internal USDLDebt;  // debt

    event VaultManagerAddressChanged(address _newVaultManagerAddress);
    event DefaultPoolUSDLDebtUpdated(uint _USDLDebt);
    event DefaultPoolETHBalanceUpdated(uint _ETH);

    // --- Dependency setters ---

    function setAddresses(
        address _vaultManagerAddress,
        address _activePoolAddress
    )
        external
        onlyOwner
    {
        checkContract(_vaultManagerAddress);
        checkContract(_activePoolAddress);

        vaultManagerAddress = _vaultManagerAddress;
        activePoolAddress = _activePoolAddress;

        emit VaultManagerAddressChanged(_vaultManagerAddress);
        emit ActivePoolAddressChanged(_activePoolAddress);

        _renounceOwnership();
    }

    // --- Getters for public variables. Required by IPool interface ---

    /*
    * Returns the ETH state variable.
    *
    * Not necessarily equal to the the contract's raw ETH balance - eth can be forcibly sent to contracts.
    */
    function getETH() external view override returns (uint) {
        return ETH;
    }

    function getUSDLDebt() external view override returns (uint) {
        return USDLDebt;
    }

    // --- Pool functionality ---

    function sendETHToActivePool(uint _amount) external override {
        _requireCallerIsVaultManager();
        address activePool = activePoolAddress; // cache to save an SLOAD
        ETH = ETH.sub(_amount);
        emit DefaultPoolETHBalanceUpdated(ETH);
        emit PulseSent(activePool, _amount);

        (bool success, ) = activePool.call{ value: _amount }("");
        require(success, "DefaultPool: sending ETH failed");
    }

    function increaseUSDLDebt(uint _amount) external override {
        _requireCallerIsVaultManager();
        USDLDebt = USDLDebt.add(_amount);
        emit DefaultPoolUSDLDebtUpdated(USDLDebt);
    }

    function decreaseUSDLDebt(uint _amount) external override {
        _requireCallerIsVaultManager();
        USDLDebt = USDLDebt.sub(_amount);
        emit DefaultPoolUSDLDebtUpdated(USDLDebt);
    }

    // --- 'require' functions ---

    function _requireCallerIsActivePool() internal view {
        require(msg.sender == activePoolAddress, "DefaultPool: Caller is not the ActivePool");
    }

    function _requireCallerIsVaultManager() internal view {
        require(msg.sender == vaultManagerAddress, "DefaultPool: Caller is not the VaultManager");
    }

    // --- Fallback function ---

    receive() external payable {
        _requireCallerIsActivePool();
        ETH = ETH.add(msg.value);
        emit DefaultPoolETHBalanceUpdated(ETH);
    }
}
// 2025 Liquid Loans