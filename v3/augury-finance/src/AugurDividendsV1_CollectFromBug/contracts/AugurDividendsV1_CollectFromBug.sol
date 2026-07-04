// SPDX-License-Identifier: Augury Finance
// COPIED FROM https://github.com/compound-finance/compound-protocol/blob/master/contracts/Governance/GovernorAlpha.sol
// Copyright Augury Finance, 2021. Do not re-use without permission.
// Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
// 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
// 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
// 3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//

pragma solidity ^0.6.12;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v3.1.0/contracts/access/Ownable.sol';
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v3.1.0/contracts/math/SafeMath.sol';
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v3.1.0/contracts/token/ERC20/SafeERC20.sol';
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v3.1.0/contracts/utils/ReentrancyGuard.sol';

import './AugurDividendsV1.sol';
import './Operators.sol';

contract AugurDividendsV1_CollectFromBug is Ownable, ReentrancyGuard, Operators {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    struct UserInfo {
      uint256 didCollect; // 0 = false, 1 = true
      uint256 collectedAmountOfUsdc;
    }

    AugurDividendsV1 public dividends;
    IERC20 public dividendToken;

    uint256 public affectedEpoch = 2;
    uint256 public totalSingleStakedOmen_d18 = 5138359733611023321419112;
    uint256 public totalPairedStakedOmen_d18 = 1772946669841288117;
    uint256 public totalSingledStakedUsdcAvailable_d6 = 196334000000;
    uint256 public totalPairedStakedUsdcAvailable_d6 = 126667000000;

    mapping(address => UserInfo) public userInfos;

    event DividendsCollected(address indexed user, uint256 amount);

    constructor(IERC20 _dividendToken, AugurDividendsV1 _dividends) public {
        dividendToken = _dividendToken;
        dividends = _dividends;
    }

    function wasUserAffectedByBug(address _userAddress) public view returns (bool) {
      // the only people affected by this bug, had withdrawn from one of the pools
      // we can identify that because their staked amount will be MAX_UINT_256
    
      (uint256 _userPairedStakedTotal_d18) = dividends.userStakeHistories_lp(_userAddress, affectedEpoch);
      (uint256 _userSingleStakedTotal_d18) = dividends.userStakeHistories_nlp(_userAddress, affectedEpoch);

      return _userPairedStakedTotal_d18 == dividends.MAX_UINT_256()
        || _userSingleStakedTotal_d18 == dividends.MAX_UINT_256();
    }

    function calculateOwedDividends(address _userAddress) public view returns (uint256) {
      if(userInfos[_userAddress].didCollect > 0) {
        return 0;
      }

      if(!wasUserAffectedByBug(_userAddress)) {
        return 0;
      }

      (uint256 _userPairedStakedTotal_d18) = dividends.userStakeHistories_lp(_userAddress, affectedEpoch);
      (uint256 _userSingleStakedTotal_d18) = dividends.userStakeHistories_nlp(_userAddress, affectedEpoch);

      uint256 _owedFromPairedStake_d6 = _userPairedStakedTotal_d18 == dividends.MAX_UINT_256() ? 0
        : dividends.calculateEpochUsdcAmount_d6(totalPairedStakedUsdcAvailable_d6, totalPairedStakedOmen_d18, _userPairedStakedTotal_d18);
      uint256 _owedFromSingleStaking_d6 = _userSingleStakedTotal_d18 == dividends.MAX_UINT_256() ? 0
        : dividends.calculateEpochUsdcAmount_d6(totalSingledStakedUsdcAvailable_d6, totalSingleStakedOmen_d18, _userSingleStakedTotal_d18);

      return _owedFromPairedStake_d6.add(_owedFromSingleStaking_d6);
    }

    function _collectDividends(address _userAddress) private nonReentrant returns (uint256) {

        uint256 _totalDividends = calculateOwedDividends(_userAddress);

        userInfos[_userAddress].collectedAmountOfUsdc = _totalDividends;
        userInfos[_userAddress].didCollect = 1;

        if (_totalDividends == 0) {
            return 0;
        }

        dividendToken.safeTransfer(address(_userAddress), _totalDividends);

        emit DividendsCollected(_userAddress, _totalDividends);
        return _totalDividends;
    }

    function collectDividends() external returns (uint256) {
        return _collectDividends(msg.sender);
    }
}
