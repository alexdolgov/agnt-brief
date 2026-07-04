// SPDX-License-Identifier: gpl-3.0

pragma solidity 0.7.5;

import './VestingReserve.sol';

/**
 * @title CrowdEquityVestingReserve
 * @author Ethichub
 */
contract CrowdEquityVestingReserve is VestingReserve {
    address[] public allInvestors;

    event InvestorAdded(address investor, uint256);

    constructor(
        IERC20 _token,
        uint256 _startTime,
        uint256 _endTime,
        uint256 _editAddressUntil
    ) VestingReserve(_token, _startTime, _endTime, _editAddressUntil) {}

    function initialize() external override {
        require(!initialized, 'CrowdEquityVestingReserve: Already initialized');
        initialized = true;
    }

    /**
     * @notice Function to get investors length
     * @return uint
     */
    function allInvestorsLength() external view returns (uint256) {
        return allInvestors.length;
    }

    /**
     * @notice Function to get array of addresses for all investors
     */
    function getAllInvestors() external view returns (address[] memory) {
        return allInvestors;
    }

    /**
     * @notice Function to add new investor
     * @param investor address
     * @param amount uint256 amount of tokens correspond
     */
    function addInvestor(address investor, uint256 amount) external onlyOwner returns (address) {
        investor = _addInvestor(investor, amount);
        return investor;
    }

    function _addInvestor(address _investor, uint256 _amount) internal returns (address) {
        require(locked[_investor] == 0 && claimed[_investor] == 0, 'This investor already exists');
        allInvestors.push(address(_investor));
        locked[_investor] = _amount;
        emit InvestorAdded(_investor, allInvestors.length);
        return _investor;
    }
}
