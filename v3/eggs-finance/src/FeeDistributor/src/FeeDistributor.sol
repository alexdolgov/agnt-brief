//SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {IDistributionCreator} from "./IDistributionCreator.sol";

interface WrappedSonic is IERC20 {
    function deposit() external payable;
}

interface Gauge {
    function incentivize(address token, uint256 amount) external;
}

contract FeeDistributor is Ownable2Step, ReentrancyGuard {
    /*
     * Name: splitFees
     * Purpose: Tranfer SONIC to guage and team
     * Parameters: n/a
     * Return: n/a
     */
    using SafeERC20 for WrappedSonic;
    address payable private TEAM_WALLET;

    Gauge public GAUGE = Gauge(0x417c98Fd55D81b96aC2B217004f1e43FD8d8a0a1);

    /// @notice The wSONIC token used for rewards distribution within the gauge.
    address public wS = 0x039e2fB66102314Ce7b64Ce5Ce3E5183bc94aD38;
    WrappedSonic m_sonic;
    constructor() Ownable(msg.sender) {
        m_sonic = WrappedSonic(wS);
        m_sonic.approve(address(GAUGE), 10e36);
    }

    receive() external payable nonReentrant {
        uint256 bal = address(this).balance;
        if (bal > 10e11) {
            uint256 m_balance = bal / (2);
            m_sonic.deposit{value: m_balance}();
            sendSonic(TEAM_WALLET, bal - m_balance);
        }
        uint256 wSbal = m_sonic.balanceOf(address(this));
        if (wSbal > 10e11) {
            try GAUGE.incentivize(wS, wSbal) {} catch {}
        }
    }

    function setTEAMWallet(address _address) external onlyOwner {
        require(_address != address(0x0));
        TEAM_WALLET = payable(_address);
    }
    function setGauge(address _address) external onlyOwner {
        require(_address != address(0x0));
        GAUGE = Gauge(_address);
        m_sonic.approve(address(GAUGE), 10e36);
    }

    function emergencyWithdraw() external onlyOwner {
        uint256 wSbal = m_sonic.balanceOf(address(this));
        m_sonic.transferFrom(address(this), TEAM_WALLET, wSbal);
    }

    /*
     * Name: sendSonic
     * Purpose: Tranfer SONIC tokens
     * Parameters:
     *    - @param 1: Address
     *    - @param 2: Value
     * Return: n/a
     */
    function sendSonic(address _address, uint256 _value) internal {
        (bool success, ) = _address.call{value: _value}("");
        require(success, "SONIC Transfer failed.");
    }
}
