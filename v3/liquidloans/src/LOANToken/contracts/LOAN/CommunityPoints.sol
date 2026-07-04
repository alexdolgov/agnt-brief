// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "../Dependencies/SafeMath.sol";
import "../Dependencies/Ownable.sol";

/*
* This contract holds community allocations for entitlements or any other rewards
*/
contract CommunityPoints is Ownable {

    using SafeMath for uint;

    string constant public NAME = "CommunityPoints";

    // --- Structs and Enums ---
    struct BeneficiaryData {
        bool beneficiaryIncluded;
        uint256 entitlementTotal;
    }

    mapping(address => BeneficiaryData) internal _beneficiaries;

    // --- Events ---
    event CommunityPointsBeneficiaryAdded(address _beneficiary, uint _entitlement, uint timestamp);

   function addBeneficiary(
        address _beneficiary,
        uint256 _entitlementTotal
    ) external onlyOwner {
        require(_beneficiary != address(0), "INVALID_ADDRESS");
        _beneficiaries[_beneficiary].beneficiaryIncluded = true;
        _beneficiaries[_beneficiary].entitlementTotal = _entitlementTotal;
        emit CommunityPointsBeneficiaryAdded(_beneficiary, _entitlementTotal, block.timestamp);
    }

    function getEntitlements(address _beneficiary) external view returns (bool, uint256) {
        BeneficiaryData memory beneficiary_ = _beneficiaries[_beneficiary];
        return (beneficiary_.beneficiaryIncluded, beneficiary_.entitlementTotal);
    }

    function finalize() external onlyOwner {
        _renounceOwnership();
    }
}
// 2023 Liquid Loans