// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

/*
    _    _  ___  _   _ _   _ ____
   | \  / |/ _ \| | | | \ | |  _ \
   | |\/| | | | | | | |  \| | | | \
   | |  | | |_| | |_| | |\  | |_| /
   |_|  |_|\___/ \___/|_| \_|____/


*
* MIT License
* ===========
*
* Copyright (c) 2021 MOUND FINANCE
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
*/

import "@openzeppelin/contracts/math/Math.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";
import "@pancakeswap/pancake-swap-lib/contracts/math/SafeMath.sol";

import "./interfaces/IMoundToken.sol";
import "./interfaces/IPriceCalculator.sol";

contract MoundOfferingBSC is OwnableUpgradeable {
    using SafeBEP20 for IBEP20;
    using SafeMath for uint;

    /* ========== CONSTANT ========== */

    address public constant BUNNY = 0xC9849E6fdB743d08fAeE3E34dd2D1bc69EA11a51;

    uint public constant DIST_THRESHOLD = 500;

    /* ========== STATE VARIABLES ========== */

    address public offeringToken;

    bool public archived;
    uint public startAt;
    uint public closeAt;
    uint public totalSupply;

    uint public totalUserCount;
    uint private _distributionCursor;
    address[] private _userList;
    mapping(address => bool) private _depositedUsers;

    uint public defaultTotalBalance;
    mapping(address => uint) public defaultBalances;

    uint private _boostedTotalBalance;
    mapping(address => uint) private _boostedBalances;

    /* ========== EVENTS ========== */

    event Deposited(address indexed user, address indexed token, uint amount);
    event Distributed(uint count, uint remain);
    event Recovered(address token, uint amount);

    /* ========== INITIALIZER ========== */

    function initialize() external initializer {
        __Ownable_init();
    }

    /* ========== VIEWS ========== */

    function getBoostRate() public view returns (uint) {
        uint weekNum = uint(-1);

        if (startAt <= block.timestamp && block.timestamp <= closeAt) {
            weekNum = block.timestamp.sub(startAt).div(7 days);
        }

        if (weekNum == 0) return 150e16;
        if (weekNum == 1) return 125e16;
        if (weekNum == 2) return 110e16;
        return 100e16;
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function schedule(uint _startAt, uint _closeAt) external onlyOwner {
        require(_closeAt > _startAt, "!schedule");
        startAt = _startAt;
        closeAt = _closeAt;
    }

    function offer(address _offeringToken, uint _totalSupply) external onlyOwner {
        require(_offeringToken != address(0) && _totalSupply > 0, "!offer");
        offeringToken = _offeringToken;
        totalSupply = _totalSupply;

        IBEP20(BUNNY).approve(_offeringToken, uint(-1));
    }

    function archive() external onlyOwner {
        require(offeringToken != address(0), "!offeringToken");
        require(block.timestamp > closeAt, "!archive");
        archived = true;

        IBEP20(BUNNY).approve(offeringToken, 0);
    }

    function distribute() external onlyOwner {
        require(offeringToken != address(0), "!offeringToken");
        require(archived, "archived");

        uint start = _distributionCursor;
        uint remain = totalUserCount > _distributionCursor ? totalUserCount - _distributionCursor : 0;
        uint length = Math.min(remain, DIST_THRESHOLD);
        for (uint i = start; i < start + length; i++) {
            address user = _userList[i];
            uint share = _boostedBalances[user].mul(1e18).div(_boostedTotalBalance);
            uint amount = totalSupply.mul(share).div(1e18);

            delete defaultBalances[user];
            delete _boostedBalances[user];

            IMoundToken(offeringToken).mint(user, amount);
            _distributionCursor++;
        }

        remain = totalUserCount > _distributionCursor ? totalUserCount - _distributionCursor : 0;
        emit Distributed(length, remain);
    }

    function transferReserves() external onlyOwner {
        require(offeringToken != address(0), "!offeringToken");
        require(archived, "archived");
        IBEP20(offeringToken).safeTransfer(owner(), IBEP20(offeringToken).balanceOf(address(this)));
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function deposit(address token, uint amount) external {
        require(!archived, "archived");
        require(startAt <= block.timestamp && block.timestamp <= closeAt, "!schedule");
        require(token == BUNNY, "!token");

        IBEP20(token).safeTransferFrom(msg.sender, address(this), amount);
        IMoundToken(offeringToken).deposit(token, amount);

        uint boostAmount = amount.mul(getBoostRate()).div(1e18);

        defaultBalances[msg.sender] = defaultBalances[msg.sender].add(amount);
        defaultTotalBalance = defaultTotalBalance.add(amount);

        _boostedBalances[msg.sender] = _boostedBalances[msg.sender].add(boostAmount);
        _boostedTotalBalance = _boostedTotalBalance.add(boostAmount);

        if (!_depositedUsers[msg.sender]) {
            _depositedUsers[msg.sender] = true;
            _userList.push(msg.sender);
            totalUserCount++;
        }
        emit Deposited(msg.sender, token, amount);
    }

    /* ========== SALVAGE PURPOSE ONLY ========== */

    function recoverToken(address _token, uint amount) external virtual onlyOwner {
        IBEP20(_token).safeTransfer(owner(), amount);

        emit Recovered(_token, amount);
    }
}
