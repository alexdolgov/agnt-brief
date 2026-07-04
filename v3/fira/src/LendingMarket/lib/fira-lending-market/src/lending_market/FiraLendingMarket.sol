// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import {IBondToken} from "../interfaces/IBondToken.sol";
import {Id, Market, MarketParams} from "../interfaces/ILendingMarket.sol";
import {ErrorsLib} from "../libraries/ErrorsLib.sol";
import {MarketParamsLib} from "../libraries/MarketParamsLib.sol";
import {LendingMarket} from "./LendingMarket.sol";

contract FiraLendingMarket is LendingMarket {
    using MarketParamsLib for MarketParams;

    constructor(address owner_) LendingMarket(owner_) {}

    /// @notice Liquidates a borrower's entire position when the BT token has reached maturity
    /// @param marketParams The market parameters
    /// @param borrower The borrower to liquidate
    /// @param data Additional data for the callback
    /// @return seizedAssets The amount of collateral seized
    /// @return repaidAssets The amount of loan token repaid
    function liquidateExpiredBt(MarketParams memory marketParams, address borrower, bytes calldata data)
        external
        returns (uint256 seizedAssets, uint256 repaidAssets)
    {
        Id id = marketParams.id();
        Market storage market_ = market[id];
        require(market_.lastUpdate != 0, ErrorsLib.MARKET_NOT_CREATED);

        require(
            block.timestamp >= IBondToken(marketParams.loanToken).expiry() + marketConstants[id].maturityGracePeriod,
            ErrorsLib.BT_NOT_EXPIRED
        );
        return _liquidatePostMaturity(market_, marketParams, id, borrower, data);
    }
}
