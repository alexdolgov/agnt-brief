// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "./interfaces/IAddressesProvider.sol";
import "./interfaces/IAccessManager.sol";
import "./interfaces/ICommissionsDistributor.sol";
import "./RewardsDistributor.sol";

contract CommissionsDistributor is ICommissionsDistributor, Initializable {
    uint128 public constant MAX_PERCENT = 1000000;
    IAddressesProvider public addressesProvider;

    mapping(address => CommissionInfo[]) public investmentsCommission;
    mapping(address => CommissionInfo[]) public rentCommission;

    modifier onlySuperOracle() {
        IAccessManager accessManager = IAccessManager(addressesProvider.getAccessManager());
        require(accessManager.isSuperOracle(msg.sender), "Only admin can call this function");
        _;
    }

    modifier onlyRewardsDistributor() {
        require(msg.sender == addressesProvider.getRewardsDistributor(), "Only rewards distributor can call this function");
        _;
    }

    function getVersion() external pure returns (uint256) {
        return 1;
    }

    function setInvestmentsCommission(address _asset, CommissionInfo[] memory _commissions) external override onlySuperOracle {
        delete investmentsCommission[_asset];
        for (uint i = 0; i < _commissions.length; i++) {
            require(_commissions[i].percent <= MAX_PERCENT, "Commission percent must be equal or less than 100%");
            investmentsCommission[_asset].push(_commissions[i]);
        }
    }

    function setPayForRentCommission(address _asset, CommissionInfo[] memory _commissions) external override onlySuperOracle {
        delete rentCommission[_asset];
        for (uint i = 0; i < _commissions.length; i++) {
            require(_commissions[i].percent <= MAX_PERCENT, "Commission percent must be equal or less than 100%");
            rentCommission[_asset].push(_commissions[i]);
        }
    }

    function getPayForRentCommissionAmount(address asset, uint256 totalAmount) external view override returns (uint256) {
        CommissionInfo[] memory commissions = rentCommission[asset];
        return _getCommissions(commissions, totalAmount);
    }

    function payRentCommission(
        address propertyToken,
        address commissionToken,
        uint256 totalAmount
    ) external override onlyRewardsDistributor returns (uint256) {
        IRewardsDistributor rewardsDistributor = IRewardsDistributor(addressesProvider.getRewardsDistributor());
        uint256 totalSupply = rewardsDistributor.getPoolInfo(propertyToken).totalSupply;
        require(totalSupply > 0, "Pool must be created in rewards distributor");
        CommissionInfo[] memory commissions = rentCommission[propertyToken];
        uint256 totalCommission = _payCommission(address(rewardsDistributor), commissions, commissionToken, totalAmount);
        emit RentCommissionPaid(propertyToken, totalCommission);
        return totalCommission;
    }

    function getInvestmentsCommissionAmount(address asset, uint256 totalAmount) external view override returns (uint256) {
        CommissionInfo[] memory commissions = investmentsCommission[asset];
        return _getCommissions(commissions, totalAmount);
    }

    function payInvestmentsCommission(address commissionToken, uint256 totalAmount) external override returns (uint256) {
        CommissionInfo[] memory commissions = investmentsCommission[msg.sender];
        uint256 totalCommission = _payCommission(msg.sender, commissions, commissionToken, totalAmount);
        emit InvestmentCommissionPaid(msg.sender, totalCommission);
        return totalCommission;
    }

    function initialize(address _addressesProvider) public initializer {
        addressesProvider = IAddressesProvider(_addressesProvider);
    }

    function getInvestmentsCommission(address asset) public view override returns (CommissionInfo[] memory) {
        return investmentsCommission[asset];
    }

    function getRentCommission(address asset) public view override returns (CommissionInfo[] memory) {
        return rentCommission[asset];
    }

    function _getCommissions(CommissionInfo[] memory commissions, uint256 totalAmount) private view returns (uint256) {
        uint256 totalCommission = 0;
        for (uint i = 0; i < commissions.length; i++) {
            uint256 amount = 0;
            if (commissions[i].percent > 0) {
                amount = (totalAmount * commissions[i].percent) / MAX_PERCENT;
            } else {
                amount = commissions[i].fixedAmount;
            }
            totalCommission += amount;
        }
        require(totalCommission <= totalAmount, "Total commission must be less than amount");
        return totalCommission;
    }

    function _payCommission(
        address treasury,
        CommissionInfo[] memory commissions,
        address commissionToken,
        uint256 totalAmount
    ) private returns (uint256) {
        uint256 totalCommission = 0;
        for (uint i = 0; i < commissions.length; i++) {
            uint256 amount = 0;
            if (commissions[i].percent > 0) {
                amount = (totalAmount * commissions[i].percent) / MAX_PERCENT;
            } else {
                amount = commissions[i].fixedAmount;
            }
            totalCommission += amount;
            IERC20(commissionToken).transferFrom(treasury, commissions[i].destination, amount);
        }
        require(totalCommission <= totalAmount, "Total commission must be less than amount");
        return totalCommission;
    }
}
