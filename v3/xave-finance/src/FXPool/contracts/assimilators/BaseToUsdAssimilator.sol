// SPDX-License-Identifier: MIT

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

pragma solidity 0.7.6;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/math/SafeMath.sol';
import '../core/lib/ABDKMath64x64.sol';
import '../core/interfaces/IAssimilator.sol';
import '../core/interfaces/IOracle.sol';

import '../interfaces/IVaultPoolBalances.sol';
import '../interfaces/IERC20Detailed.sol';

contract BaseToUsdAssimilator is IAssimilator {
    using ABDKMath64x64 for int128;
    using ABDKMath64x64 for uint256;

    using SafeMath for uint256;

    IERC20 public immutable baseToken;
    uint256 public immutable baseDecimals;
    IERC20 public immutable quoteToken;
    uint256 public immutable quoteDecimals;
    IOracle public immutable oracle;
    uint256 public immutable oracleDecimals;

    constructor(
        IERC20 _baseToken,
        IERC20 _quoteToken,
        IOracle _oracle
    ) {
        baseToken = _baseToken;
        quoteToken = _quoteToken;
        oracle = _oracle;
        baseDecimals = 10 ** uint256(IERC20Detailed(address(_baseToken)).decimals());
        oracleDecimals = 10 ** uint256(IERC20Detailed(address(_oracle)).decimals());
        quoteDecimals = 10 ** uint256(IERC20Detailed(address(_quoteToken)).decimals());
    }

    function getRate() public view override returns (uint256) {
        (
            uint80 roundId,
            int256 price,
            uint256 startedAt,
            /*uint256 updatedAt*/,
            uint80 answeredInRound
        ) = oracle.latestRoundData();

        require(price > 0, "ORACLE_PRICE_ZERO");
        require(startedAt != 0, "ORACLE_ROUND_NOT_COMPLETE");
        // in cases where the time threshold is reached, allow for an additional 15 minute
        // window during which the oracle nodes can push new data to the aggregator
        // only after this time the price is considered stale
        // this fixes the issue whereby nodes might wait until the 24h time limit is reached
        // in order to push new price data to the aggregator. During this short period of time
        // the price would be considered stale and the assimilator would revert
        require(startedAt + (3600 * 24) + 900 > block.timestamp , "ORACLE_STALE_PRICE");
        require(answeredInRound >= roundId, "STALE_PRICE_ROUND");

        return uint256(price);
    }

    // takes a numeraire amount and returns the raw amount
    function viewRawAmount(int128 _amount) external view override returns (uint256 amount_) {
        uint256 _rate = getRate();

        amount_ = _amount.mulu(baseDecimals).mul(oracleDecimals).div(_rate);
    }

    function _getBalancesFromVault(
        address vault,
        bytes32 poolId,
        address quoteTokenAddressToCompare
    ) internal view returns (uint256 baseTokenBal, uint256 quoteTokenBal) {
        (IERC20[] memory tokens, uint256[] memory balances, ) = IVaultPoolBalances(vault).getPoolTokens(poolId);

        if (address(tokens[0]) == quoteTokenAddressToCompare) {
            baseTokenBal = balances[1];
            quoteTokenBal = balances[0];
        } else if (address(tokens[1]) == quoteTokenAddressToCompare) {
            baseTokenBal = balances[0];
            quoteTokenBal = balances[1];
        } else {
            revert('_getBalancesFromVault: quoteToken is not present in token array returned by Vault.getPoolTokens method');
        }
    }

    function viewRawAmountLPRatio(
        uint256 _baseWeight,
        uint256 _quoteWeight,
        int128 _amount,
        address vault,
        bytes32 poolId
    ) external view override returns (uint256 amount_) {
        (uint256 baseTokenBal, uint256 quoteTokenBal) = _getBalancesFromVault(vault, poolId, address(quoteToken));

        if (baseTokenBal <= 0) return 0;

        // base decimals
        baseTokenBal = baseTokenBal.mul(1e18).div(_baseWeight);
        quoteTokenBal = quoteTokenBal.mul(1e18).div(_quoteWeight);
        uint256 _rate = quoteTokenBal.mul(baseDecimals).div(baseTokenBal);
        amount_ = _amount.mulu(baseDecimals).mul(quoteDecimals).div(_rate);
    }

    // takes a raw amount and returns the numeraire amount
    function viewNumeraireAmount(uint256 _amount) external view override returns (int128 amount_) {
        uint256 _rate = getRate();

        amount_ = _amount.mul(_rate).div(oracleDecimals).divu(baseDecimals);
    }

    // views the numeraire value of the current balance of the reserve, in this case baseToken
    function viewNumeraireBalance(address vault, bytes32 poolId) external view override returns (int128 balance_) {
        uint256 _rate = getRate();

        (uint256 baseTokenBal, ) = _getBalancesFromVault(vault, poolId, address(quoteToken));

        if (baseTokenBal <= 0) return ABDKMath64x64.fromUInt(0);

        balance_ = baseTokenBal.mul(_rate).div(oracleDecimals).divu(baseDecimals);
    }

    // views the numeraire value of the current balance of the reserve, in this case baseToken
    // adds intakeAmount to baseTokenBal to simulate LP deposit
    function virtualViewNumeraireBalanceIntake(
        address vault,
        bytes32 poolId,
        uint256 intakeAmount
    ) external view override returns (int128 balance_) {
        uint256 _rate = getRate();

        (uint256 baseTokenBal, ) = _getBalancesFromVault(vault, poolId, address(quoteToken));
        baseTokenBal = baseTokenBal.add(intakeAmount);

        if (baseTokenBal <= 0) return ABDKMath64x64.fromUInt(0);

        balance_ = baseTokenBal.mul(_rate).div(oracleDecimals).divu(baseDecimals);
    }

    // views the numeraire value of the current balance of the reserve, in this case baseToken
    // subtracts outputAmount to baseTokenBal to simulate LP withdrawal
    function virtualViewNumeraireBalanceOutput(
        address vault,
        bytes32 poolId,
        uint256 outputAmount
    ) external view override returns (int128 balance_) {
        uint256 _rate = getRate();

        (uint256 baseTokenBal, ) = _getBalancesFromVault(vault, poolId, address(quoteToken));
        baseTokenBal = baseTokenBal.sub(outputAmount);

        if (baseTokenBal <= 0) return ABDKMath64x64.fromUInt(0);

        balance_ = baseTokenBal.mul(_rate).div(oracleDecimals).divu(baseDecimals);
    }

    // views the numeraire value of the current balance of the reserve, in this case baseToken
    // called for swaps
    function viewNumeraireAmountAndBalance(
        uint256 _amount,
        address vault,
        bytes32 poolId
    ) external view override returns (int128 amount_, int128 balance_) {
        uint256 _rate = getRate();
        amount_ = _amount.mul(_rate).div(oracleDecimals).divu(baseDecimals);

        (uint256 baseTokenBal, ) = _getBalancesFromVault(vault, poolId, address(quoteToken));

        balance_ = baseTokenBal.mul(_rate).div(oracleDecimals).divu(baseDecimals);
    }

    // views the numeraire value of the current balance of the reserve, in this case baseToken
    // instead of calculating with chainlink's "rate" it'll be determined by the existing
    // token ratio. This is in here to prevent LPs from losing out on future oracle price updates
    function viewNumeraireBalanceLPRatio(
        uint256 _baseWeight,
        uint256 _quoteWeight,
        // address _addr,
        address vault,
        bytes32 poolId
    ) external view override returns (int128 balance_) {
        (uint256 baseTokenBal, uint256 quoteTokenBal) = _getBalancesFromVault(vault, poolId, address(quoteToken));

        if (baseTokenBal <= 0) return ABDKMath64x64.fromUInt(0);

        quoteTokenBal = quoteTokenBal.mul(1e18).div(_quoteWeight);
        uint256 _rate = quoteTokenBal.mul(1e18).div(
          baseTokenBal.mul(1e18).div(_baseWeight)
        );

        // baseTokenBal * (quoteTokenBal / baseTokenBal) -> quoteTokenBal
        // for XSGD / USDC pool -> returns USDC balance in USD

        balance_ = baseTokenBal.mul(_rate).div(quoteDecimals).divu(1e18);
    }
}
