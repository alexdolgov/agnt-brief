// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

interface IERC20 {
    function balanceOf(address _address) external view returns (uint256);
}

interface IPair {
    function totalSupply() external view returns (uint256);
    function balanceOf(address _address) external view returns (uint256);
    function getReserves() external view returns (uint112 _reserve0, uint112 _reserve1, uint32 _blockTimestampLast);
}

interface IGauge {
    function balanceOf(address account) external view returns (uint256);
}

interface IYearnTokenVault {
    function balanceOf(address account) external view returns (uint256);
}

interface IRewardTracker {
    function depositBalances(address _account, address _depositToken) external view returns (uint256);
}

/// @title BMX Governance - Snapshot strategy for Base
/// @author 0xdaedboi
contract BMXGovernanceStrategy {
    address public bmx = 0x548f93779fBC992010C07467cBaf329DD5F059B7;
    address public stakedBmx = 0x3085F25Cbb5F34531229077BAAC20B9ef2AE85CB;
    address public aerodromePair = 0x61907C8C3E6ef7eD813aCc2fBbBf8C05ac0F31d5;
    address public aerodromeGauge = 0xeB86878fBF8329b1ED8C40d8f6736Ae7fc965Be8;
    address public velocimeterPair = 0xd272920B2b4eBeE362a887451EDBd6d68A76E507;
    address public velocimeterGauge = 0x1F7B5E65c09dF12742255BB8Fe26958f4B52F9bb;
    address public pBmx = 0xF3E25c1512BEF952F01252F4d5f6415f408C0D23;
    address public pBmxPair = 0x688E929463BCA0670c84e8F18446cfE9E160A681;
    address public pBmxGauge = 0xB57e3Eaf840f08B60E3d6f955840BC60dD5b5873;
    address public yearnVault = 0x31Ce9aB5A358E5c802Cc01080F29a65a14EB45b8;

    function balanceOf(address wallet) public view returns (uint256 balance) {
        // Getting BMX held in wallet
        balance = IERC20(bmx).balanceOf(wallet);

        // Getting staked BMX
        balance += IRewardTracker(stakedBmx).depositBalances(wallet, bmx);

        // Getting BMX balances of BMX-wBLT on Aerodrome and on Yearn (BMX-wBLT vault)
        uint256 aerodromeTotalSupply = IPair(aerodromePair).totalSupply();
        (,uint256 aerodromeReserve1,) = IPair(aerodromePair).getReserves();
        uint256 aerodromeAmount = IGauge(aerodromeGauge).balanceOf(wallet);
        uint256 yearnAmount = IYearnTokenVault(yearnVault).balanceOf(wallet);
        // Apply 1.25 weight to BMX balance in LP and add to the balance
        balance += ((aerodromeReserve1 * aerodromeAmount) / aerodromeTotalSupply) * 125 / 100;
        balance += ((aerodromeReserve1 * yearnAmount) / aerodromeTotalSupply) * 125 / 100;

        // Getting BMX balances of BMX-wBLT on Velocimeter
        uint256 velocimeterTotalSupply = IPair(velocimeterPair).totalSupply();
        (,uint256 velocimeterReserve1,) = IPair(velocimeterPair).getReserves();
        uint256 velocimeterAmount = IGauge(velocimeterGauge).balanceOf(wallet);
        // Apply 1.25 weight to BMX balance in LP and add to the balance
        balance += ((velocimeterReserve1 * velocimeterAmount) / velocimeterTotalSupply) * 125 / 100;

        // Getting pBMX holders
        balance += IERC20(pBmx).balanceOf(wallet);

        // Getting pBMX balances of pBMX-PEAS on Aerodrome
        uint256 pairTotalSupply = IPair(pBmxPair).totalSupply();
        (,uint256 pairReserve1,) = IPair(pBmxPair).getReserves();
        uint256 pairAmount = IGauge(pBmxGauge).balanceOf(wallet);
        balance += ((pairReserve1 * pairAmount) / pairTotalSupply);

        return balance;
    }
}