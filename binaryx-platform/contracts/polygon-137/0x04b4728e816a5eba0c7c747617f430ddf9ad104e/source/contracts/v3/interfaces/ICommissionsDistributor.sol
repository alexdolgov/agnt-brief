// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ICommissionsDistributor {
    // if percent is not set(0), it is used fixed amount of commission
    struct CommissionInfo {
        address destination; // address to send commission to
        uint32 percent; // 1000000 = 100% | 100000 = 10% | 10000 = 1% | 1000 = 0.1%
        uint256 fixedAmount; // with decimals
    }

    event InvestmentCommissionPaid(address indexed asset, uint256 amount);
    event RentCommissionPaid(address indexed asset, uint256 amount);

    function getInvestmentsCommission(address asset) external view returns (CommissionInfo[] memory);

    function getRentCommission(address asset) external view returns (CommissionInfo[] memory);

    function setInvestmentsCommission(address _asset, CommissionInfo[] memory _commissions) external;

    function setPayForRentCommission(address _asset, CommissionInfo[] memory _commissions) external;

    function getPayForRentCommissionAmount(address propertyToken, uint256 totalAmount) external view returns (uint256);

    function payRentCommission(address propertyToken, address commissionToken, uint256 totalAmount) external returns (uint256);

    function getInvestmentsCommissionAmount(address asset, uint256 totalAmount) external view returns (uint256);

    function payInvestmentsCommission(address commissionToken, uint256 totalAmount) external returns (uint256);
}
