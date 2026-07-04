// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface IFeeVault {
    function initialize(address _pool, address _permissionRegistry, address _voter, address _gammaFeeRecipient, address _pairFactoryClassic) external;

    function isFeeVault() external pure returns(bool);

    function claimFees() external returns(uint256 claimed0, uint256 claimed1);
}