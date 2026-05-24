// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

/*
  ___                      _   _
 | _ )_  _ _ _  _ _ _  _  | | | |
 | _ \ || | ' \| ' \ || | |_| |_|
 |___/\_,_|_||_|_||_\_, | (_) (_)
                    |__/

*
* MIT License
* ===========
*
* Copyright (c) 2020 BunnyFinance
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
* SOFTWARE.
*/

import "@openzeppelin/contracts/math/Math.sol";
import "@pancakeswap/pancake-swap-lib/contracts/math/SafeMath.sol";
import "@pancakeswap/pancake-swap-lib/contracts/token/BEP20/SafeBEP20.sol";

import "../library/PausableUpgradeable.sol";

import "../interfaces/IStrategy.sol";

contract VaultMND is PausableUpgradeable {
    using SafeMath for uint;
    using SafeBEP20 for IBEP20;

    /* ========== CONSTANT VARIABLES ========== */

    IBEP20 private constant BUNNY = IBEP20(0x4C16f69302CcB511c5Fac682c7626B9eF0Dc126a);
    IStrategy private constant BUNNY_MAXIMIZER = IStrategy(0x4Ad69DC9eA7Cc01CE13A37F20817baC4bF0De1ba);

    struct UserInfo {
        uint reward;
        uint updatedAt;
    }

    /* ========== STATE VARIABLES ========== */

    address public keeper;

    uint public totalRewards;
    mapping(address => UserInfo) public rewards;

    /* ========== EVENTS ========== */

    event ProfitPaid(address indexed user, uint profit, uint performanceFee);
    event RewardAdded(uint amount);

    /* ========== MODIFIERS ========== */

    modifier onlyKeeper() {
        require(msg.sender == keeper || msg.sender == owner(), "VaultController: caller is not the owner or keeper");
        _;
    }

    /* ========== INITIALIZER ========== */

    function initialize() external initializer {
        __PausableUpgradeable_init();

        keeper = 0x898Ae1562E8C1e9b9ADe052AA9c966df1Cf09452;

        BUNNY.approve(address(BUNNY_MAXIMIZER), uint(- 1));
    }

    /* ========== VIEWS FUNCTIONS ========== */

    function earned(address account) public view returns (uint) {
        return rewards[account].reward;
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function setKeeper(address _keeper) external onlyKeeper {
        require(_keeper != address(0), "VaultMND: invalid keeper address");
        keeper = _keeper;
    }

    function harvest() external onlyKeeper {
        uint balance = BUNNY.balanceOf(address(this));
        BUNNY_MAXIMIZER.getReward();
        uint _harvested = BUNNY.balanceOf(address(this)).sub(balance);
        totalRewards = totalRewards.add(_harvested);

        emit RewardAdded(totalRewards);
    }

    function setRewards(address[] memory accounts, uint[] memory amounts) external onlyKeeper {
        for(uint i = 0; i < accounts.length; i++) {
            address account = accounts[i];
            uint amount = amounts[i];

            UserInfo memory info = rewards[account];
            if (block.timestamp > info.updatedAt && block.timestamp.sub(info.updatedAt) >= 1 days) {
                info.reward = info.reward.add(amount);
                info.updatedAt = block.timestamp;
                rewards[account] = info;
                totalRewards = totalRewards.sub(amount);
            }
        }
    }

    function deposit(uint amount) external onlyKeeper {
        require(amount <= BUNNY.balanceOf(msg.sender), "VaultMND: invalid amount");
        uint balance = BUNNY.balanceOf(address(this));
        BUNNY.safeTransferFrom(msg.sender, address(this), amount);

        BUNNY_MAXIMIZER.deposit(BUNNY.balanceOf(address(this)).sub(balance));
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function getReward() external {
        uint reward = rewards[msg.sender].reward;
        if (reward > 0) {
            BUNNY.safeTransfer(msg.sender, reward);
            rewards[msg.sender].reward = 0;
            emit ProfitPaid(msg.sender, reward, 0);
        }
    }

    /* ========== SALVAGE PURPOSE ONLY ========== */

    function recoverToken(address _token, uint amount) external virtual onlyOwner {
        require(_token != address(BUNNY), "VaultMND: cannot recover underlying token");
        IBEP20(_token).safeTransfer(owner(), amount);
    }
}