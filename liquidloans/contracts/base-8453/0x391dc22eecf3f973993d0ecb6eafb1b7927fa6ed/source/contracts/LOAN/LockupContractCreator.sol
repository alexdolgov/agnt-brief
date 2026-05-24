// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "../Dependencies/CheckContract.sol";
import "../Dependencies/Ownable.sol";
import "../Interfaces/ILockupContractFactory.sol";
import "./LockupContract.sol";
import "../Dependencies/SafeMath.sol";

contract LockupContractCreator is Ownable, CheckContract {
    using SafeMath for uint256;

    string constant public NAME = "LockupContractCreator";

    uint constant internal UNLOCK_TIME_START = 365 days;

    ILOANToken internal loanToken;
    ILockupContractFactory internal lockupContractFactory;

    uint internal _1_MILLION = 1e24;    // 1e6 * 1e18 = 1e24
    uint internal _1_BILLION = 1e27;    // 1e9 * 1e18 = 1e27
                                                                                              
    uint256 internal entitlementA = _1_BILLION.mul(275); // Team A Lockup contract allocation 275.000.000.000
    uint256 internal entitlementB = _1_BILLION.mul(825); // Team B Lockup contract allocation 825.000.000.000

    address internal teamLockA;
    address internal teamLockB;

    uint256 internal startTime;
    
    // --- Events ---
    event LockupContractCreatorParamsSet(address _teamLockA, address _teamLockB);

    function setParamsAndDeployLockupContract(
        address _loanTokenAddress,
        address _lockupFactoryAddress,
        address _beneficiaryA,
        address _beneficiaryB) external onlyOwner {

        checkContract(_loanTokenAddress);
        checkContract(_lockupFactoryAddress);

        loanToken = ILOANToken(_loanTokenAddress);
        lockupContractFactory = ILockupContractFactory(_lockupFactoryAddress);

        startTime = block.timestamp.add(UNLOCK_TIME_START);

        teamLockA = lockupContractFactory.deployLockupContract(_beneficiaryA, block.timestamp, LockupContract.LockupClass.C);
        teamLockB = lockupContractFactory.deployLockupContract(_beneficiaryB, startTime, LockupContract.LockupClass.B);

        loanToken.transfer(teamLockA, entitlementA);
        loanToken.transfer(teamLockB, entitlementB);

        emit LockupContractCreatorParamsSet(teamLockA, teamLockB);

        _renounceOwnership();
    }

    function getContracts() public view returns (address,address) {
        return (teamLockA, teamLockB);
    }
}
// 2023 Liquid Loans