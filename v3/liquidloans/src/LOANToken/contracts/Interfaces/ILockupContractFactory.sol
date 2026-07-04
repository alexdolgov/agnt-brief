// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "../LOAN/LockupContract.sol";

interface ILockupContractFactory {
    
    // --- Events ---

    event LOANTokenAddressSet(address _loanTokenAddress);
    event LockupContractDeployedThroughFactory(address _lockupContractAddress, address _beneficiary, uint _unlockTime, address _deployer);

    // --- Functions ---

    function setLOANTokenAddress(address _loanTokenAddress) external;

    function deployLockupContract(address _beneficiary, uint _unlockTime, LockupContract.LockupClass _lockupClass) external returns (address);

    function isRegisteredLockup(address _addr) external view returns (bool);
}
// 2025 Liquid Loans