// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./BaseStrategy.sol";

contract StrategyToken is BaseStrategy {
    using SafeERC20 for IERC20;

    function initialize(
        address _wethAddress,
        address _vaultAddress,
        address _tokenAddress,
        address _wantAddress,
        address _farmContractAddress
    ) public virtual initializer {
        Ownable.__Ownable_init();
		isAutoComp = false;
        wethAddress = _wethAddress;
        govAddress = msg.sender;
        vaultAddress = _vaultAddress;
        tokenAddress = _tokenAddress;

        wantAddress = _wantAddress;
        farmContractAddress = _farmContractAddress;

        transferOwnership(vaultAddress);
    }

    function _vaultDeposit(uint256 _amount) internal override returns (uint256)
    {
        return _amount;
    }

    function _vaultWithdraw(uint256 _amount) internal override
    {
    }

    function _vaultHarvest() internal override
    {
    }

    function _vaultUserInfo() public override view returns (uint256)
    {
    }

    function _vaultPending() public override view returns (uint, uint)
    {
        return (0, 0);
    }

    function _vaultEmergencyWithdraw() internal override
    {
    }

    function _vaultEmergencyDeposit() internal override
    {
    }
}
