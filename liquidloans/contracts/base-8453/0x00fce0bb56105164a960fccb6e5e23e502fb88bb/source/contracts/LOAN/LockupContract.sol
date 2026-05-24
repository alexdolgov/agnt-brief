// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "../Dependencies/SafeMath.sol";
import "../Interfaces/ILOANToken.sol";

/*
* The Liquid Loans LockupContract architecture is a modified implemention of the original forked LockupContract.
* 
* The token balance is locked for at least 1 year from inception and 
* then vests 1/24 of the balance amount over a 30 day period.
*/
contract LockupContract {
    using SafeMath for uint;

    // --- Data ---
    string constant public NAME = "LockupContract";

    uint constant internal UNLOCK_TIME_START = 365 days;

    uint constant internal UNLOCK_TIME_SLOT =  30 days;

    address public immutable beneficiary;

    ILOANToken internal loanToken;

    // Unix point in time at which the funds can be withdrawn.
    uint public startTime;
    // Unix point in time at which the next unlock can occur.
    uint public nextUnlockTime;
    // How much the contract has dispersed
    uint public released;
    // Released slot for Team A contracts
    uint internal currentReleaseSlot;
    // Released amount for Team A contracts
    uint internal releaseAmountPerSlot;
    // Category of team user
    enum LockupClass { A, B, C }
    LockupClass public lockupClass;

    // --- Events ---

    event LockupContractCreated(address _beneficiary, uint _startTime, LockupClass _class);
    event LockupContractEmptied(uint _LOANwithdrawal);

    // --- Functions ---

    constructor 
    (
        address _loanTokenAddress,
        address _beneficiary,
        uint _startTime,
        LockupClass _class
    )
        public 
    {
        loanToken = ILOANToken(_loanTokenAddress);

        if (_class == LockupClass.A || _class == LockupClass.B) {
            _requireStartTimeIsAtLeastOneYear(_startTime);
        }

        _requireBeneficiaryAddressIsValid(_beneficiary);

        startTime = _startTime;
        nextUnlockTime = _startTime;
        beneficiary = _beneficiary;
        lockupClass = _class;
        currentReleaseSlot = 0;

        emit LockupContractCreated(_beneficiary, _startTime, _class);
    }

    function withdrawLOAN() external {
        _requireCallerIsBeneficiary();
        _requireLockupDurationHasPassed();

        uint balance = loanToken.balanceOf(address(this));

        // Transfer 100% of the token balance if 1 year has passed for class B.
        if (lockupClass == LockupClass.B || lockupClass == LockupClass.C) {
            loanToken.transfer(beneficiary, balance);
            return;
        }

        uint unlockAmount = _getUnlockAmount(balance);

        if (unlockAmount == 0) {
            emit LockupContractEmptied(unlockAmount);
        }

        if (loanToken.transfer(beneficiary, unlockAmount)) {
            released += unlockAmount;
            currentReleaseSlot++;
            nextUnlockTime = startTime + (currentReleaseSlot * UNLOCK_TIME_SLOT);
        }
    }

    function _getUnlockAmount(uint _balance) internal returns (uint) {
        // Class A investor withdraws 1/3 of token balance after 12 months.
        if (released == 0 && currentReleaseSlot == 0) {

            uint _unlockAmount = _balance / 3;

            // 1/24 of remaining amount per each withdraw
            releaseAmountPerSlot = ((_balance - _unlockAmount) * 41666666666666664)  / 1e18;

            return _unlockAmount;
        }

        // If the FULL vesting period has elapsed, Class A investor withdraws 100% of balance.
        if (block.timestamp >= (startTime + (UNLOCK_TIME_SLOT * 24))) {
            return _balance;
        }

        return releaseAmountPerSlot;
    }

    // --- 'require' functions ---

    function _requireCallerIsBeneficiary() internal view {
        require(msg.sender == beneficiary, "LockupContract: caller is not the beneficiary");
    }

    function _requireBeneficiaryAddressIsValid(address _beneficiary) internal pure {
        require(_beneficiary != address(0), "LockupContract: Beneficiary address is 0");
    }

    function _requireLockupDurationHasPassed() internal view {
        require(block.timestamp >= nextUnlockTime, "LockupContract: The lockup duration must have passed");
    }

    function _requireStartTimeIsAtLeastOneYear(uint _startTime) internal view {
        uint systemDeploymentTime = loanToken.getDeploymentStartTime();
        require(_startTime >= systemDeploymentTime.add(UNLOCK_TIME_START), "LockupContract: unlock time must be at least one year after system deployment");
    }
}
// 2025 Liquid Loans