// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "../LOAN/CommunityIssuance.sol";

contract CommunityIssuanceTester is CommunityIssuance {
    function obtainLOAN(uint _amount) external {
        loanToken.transfer(msg.sender, _amount);
    }

    function getCumulativeIssuanceFraction() external view returns (uint) {
       return _getCumulativeIssuanceFraction();
    }

    function unprotectedIssueLOAN() external returns (uint) {
        // No checks on caller address
       
        uint latestTotalLOANIssued = LOANSupplyCap.mul(_getCumulativeIssuanceFraction()).div(DECIMAL_PRECISION);
        uint issuance = latestTotalLOANIssued.sub(totalLOANIssued);
      
        totalLOANIssued = latestTotalLOANIssued;
        return issuance;
    }
}
// 2025 Liquid Loans