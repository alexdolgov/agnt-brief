/* SPDX-License-Identifier: UNLICENSED */
pragma solidity ^0.8.0;

import '@itb/quant-common/contracts/solidity8/ITBContract.sol';
import './interfaces/ICollateral.sol';

/// @title PositionManager for Symbiotic with no vault support
/// @author IntoTheBlock Corp
contract PositionManagerNoVault is ITBContract {
    struct PositionConfig {
        ICollateral collateral;
        address underlying;
        address vault;
    }

    event DepositCollateral(address indexed caller, address token, uint underlying_amount, uint collateral_amount);
    event WithdrawCollateral(address indexed caller, address token, uint underlying_amount, uint collateral_amount);

    event Assemble(address indexed caller, address[] tokens, uint[] amounts, uint collateral_amount);
    event Disassemble(address indexed caller, address[] tokens, uint[] amounts, uint collateral_amount);

    event UpdatePositionConfig(address indexed caller, address collateral, address underlying, address vault);

    PositionConfig public positionConfig;

    function VERSION() external pure returns (string memory) {
        return "1.0.0";
    }

    constructor(address[] memory _executors, address payable _wnative, address _collateral, address _underlying) ITBContract(_executors, _wnative) {
        updatePositionConfig(_collateral, _underlying, address(0));
    }

    function updatePositionConfig(address _collateral, address _underlying, address _vault) public onlyOwner {
        positionConfig = PositionConfig(
            ICollateral(_collateral),
            _underlying,
            _vault
        );
        emit UpdatePositionConfig(msg.sender, _collateral, _underlying, _vault);
    }

    modifier hasConfig() {
        require(address(positionConfig.collateral) != address(0), 'A3'); // position_config is missing
        _;
    }

    function _percentageAmount(uint _amount, uint _percentage) internal pure returns (uint) {
        return _amount * _percentage / 1e18;
    }

    function getPositionAssets() public view returns (address[] memory) {
        address[] memory assets = new address[](1);
        assets[0] = positionConfig.underlying;
        return assets;
    }

    function getCollateralBalance() public view returns (uint) {
        PositionConfig memory c = positionConfig;
        return _balance(address(c.collateral));
    }

    function getUnderlyings() public view returns (address[] memory assets, uint[] memory amounts) {
        address[] memory tokens = getPositionAssets();
        uint[] memory balances = new uint[](tokens.length);
        balances[0] = getCollateralBalance();
            
        return (tokens, balances);
    }

    function getTotalCollateral() public virtual view returns (uint) {
        return getCollateralBalance();
    }

    function depositCollateral(uint _max_amount, uint _min_collateral_out) public onlyExecutor hasConfig returns (uint underlying_in, uint collateral_out) {
        PositionConfig memory c = positionConfig;
        uint amount_available = c.collateral.limit() - c.collateral.totalSupply();
        underlying_in = _max_amount > amount_available ? amount_available : _max_amount;
        if (underlying_in == 0)
            return (0, 0);
        collateral_out = c.collateral.deposit(address(this), underlying_in);
        require(collateral_out >= _min_collateral_out, "C1");
        emit DepositCollateral(msg.sender, c.underlying, underlying_in, collateral_out);
    }
    
    function withdrawCollateral(uint _amount, uint _min_underlying_out) public onlyExecutor hasConfig returns (uint underlying_out) {
        PositionConfig memory c = positionConfig;
        uint bal_before = _balance(c.underlying);
        c.collateral.withdraw(address(this), _amount);
        underlying_out = _balance(c.underlying) - bal_before;
        require(underlying_out >= _min_underlying_out, "C2");
        emit WithdrawCollateral(msg.sender, c.underlying, underlying_out, _amount);
    }

    function assemble(uint _min_shares_or_collateral_out) public onlyExecutor hasConfig returns (uint shares_or_collateral_out) {
        (uint underlying_in, uint collateral_out, uint s_c_out) = _assemble(_balance(positionConfig.underlying), _min_shares_or_collateral_out);
        shares_or_collateral_out = s_c_out;
        
        address[] memory tokens = getPositionAssets();
        uint[] memory underlyings_change = new uint[](tokens.length);
        underlyings_change[0] = underlying_in;
        emit Assemble(msg.sender, tokens, underlyings_change, collateral_out);
    }

    function disassemble(uint _percentage, uint _min_underlying_out) public onlyExecutor hasConfig returns (uint underlying_out) {
        uint collateral_burnt;
        (collateral_burnt, underlying_out) = _disassemble(_percentage, _min_underlying_out);

        address[] memory tokens = getPositionAssets();
        uint[] memory underlyings_change = new uint[](tokens.length);
        underlyings_change[0] = underlying_out;
        emit Disassemble(msg.sender, tokens, underlyings_change, collateral_burnt);
    }

    function fullDisassemble(uint _min_underlying_out) external onlyExecutor hasConfig returns (uint) {
        return disassemble(1e18, _min_underlying_out);
    }

    function _assemble(uint _underlying_in, uint _min_collateral_out) internal virtual returns (uint underlying_in, uint collateral_out, uint shares_or_collateral_out) {
        (underlying_in, collateral_out) = depositCollateral(_underlying_in, _min_collateral_out);
        shares_or_collateral_out = collateral_out;
    }

    function _disassemble(uint _percentage, uint _min_underlying_out) internal virtual returns (uint collateral_burnt, uint underlying_out) {
        if (_percentage == 0)
            return (0, 0);
        collateral_burnt = _percentageAmount(getCollateralBalance(), _percentage);
        underlying_out = withdrawCollateral(collateral_burnt, _min_underlying_out);
    }
}