// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@pancakeswap/pancake-swap-lib/contracts/access/Ownable.sol";
import "@pancakeswap/pancake-swap-lib/contracts/math/SafeMath.sol";
import "../../cvaults/bsc/lending/BankConfig.sol";
import {InterestModel} from "../../cvaults/bsc/lending/Comptroller.sol";

contract ComptrollerTester is BankConfig, Ownable {
    /// The portion of interests allocated to the reserve pool.
    string public constant warning = "This is a test contract.";

    uint256 public override getReservePoolBps;

    /// Interest rate model
    InterestModel public interestModel;

    constructor(
        uint256 _reservePoolBps,
        address _addr
    ) public {
        setParams(_reservePoolBps, _addr);
    }

    function setParams(
        uint256 _reservePoolBps,
        address _addr
    ) public onlyOwner {
        getReservePoolBps = _reservePoolBps;
        interestModel = InterestModel(_addr);
    }

    /// @dev Return the interest rate per second, using 1e18 as denom.
    function getInterestRate(uint256 debt, uint256 floating) external view override returns (uint256) {
        return interestModel.getInterestRate(debt, floating);
    }
}