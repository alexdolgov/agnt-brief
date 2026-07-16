// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {FixedPointMathLib} from "solady/utils/FixedPointMathLib.sol";
import {ISpotOracle} from "src/interfaces/core/spotOracles/ISpotOracle.sol";
import {IBPTStablePool} from "src/interfaces/utils/integrations/IBPTStablePool.sol";
import {IBexVault} from "src/interfaces/utils/integrations/IBexVault.sol";
import {IPriceFeed} from "src/interfaces/core/IPriceFeed.sol";
import {IAsset} from "src/interfaces/utils/tokens/IAsset.sol";
import {TokenValidationLib} from "src/libraries/TokenValidationLib.sol";

/**
 * @title BPTStableOracle
 * @dev This design ensures users cannot borrow against the maximum price (which could lead to over-borrowing) and instead values BPT conservatively.
 *      The oracle will undervalue BPT relative to its spot price. This can delve into unfair liquidations.
 *      The team will continuously monitor BPT prices and stable depegs under this oracle.
 */
contract BPTStableOracle is ISpotOracle {
    using FixedPointMathLib for uint256;
    using FixedPointMathLib for int256;
    using TokenValidationLib for address[];

    struct TokenInfo {
        address token;
        uint8 decimals;
    }

    IBexVault public immutable BEX_VAULT;
    IBPTStablePool public immutable BEX_POOL;
    uint8 public immutable BEX_POOL_DECIMALS;
    IPriceFeed public immutable PRICE_FEED;

    TokenInfo[2] public tokens;

    error NoFeed();
    error InvalidPoolToken(address token);
    error InvalidToken();
    error NotAllowed();

    constructor(
        address _vaultAddress,
        address _poolAddress,
        address _priceFeed,
        address[2] memory _tokens
    ) {
        BEX_VAULT = IBexVault(_vaultAddress);
        BEX_POOL = IBPTStablePool(_poolAddress);
        BEX_POOL_DECIMALS = IBPTStablePool(_poolAddress).decimals();

        PRICE_FEED = IPriceFeed(_priceFeed);

        (address[] memory poolTokens,,) = IBexVault(_vaultAddress).getPoolTokens(IBPTStablePool(_poolAddress).getPoolId());

        for (uint256 i; i < _tokens.length; i++) {
            if (poolTokens.contains(_tokens[i]) == 0) revert InvalidPoolToken(_tokens[i]);
        }

        if (PRICE_FEED.fetchPrice(_tokens[0]) == 0 || PRICE_FEED.fetchPrice(_tokens[1]) == 0) {
            revert NoFeed();
        }

        tokens[0] = TokenInfo({token: _tokens[0], decimals: IAsset(_tokens[0]).decimals()});
        tokens[1] = TokenInfo({token: _tokens[1], decimals: IAsset(_tokens[1]).decimals()});
    }

    function fetchPrice() external view returns (uint256) {
        _checkReentrancy();
        return _calculatePrice();
    }

    function _calculatePrice() internal view returns (uint256) {
        TokenInfo[2] storage tokenInfo = tokens;

        uint256 min = type(uint256).max;

        // 18 decimals
        uint256[2] memory prices = _getTokenPrices([tokenInfo[0].token, tokenInfo[1].token]);

        try BEX_POOL.getTokenRate(address(tokenInfo[0].token)) returns (uint256 rate) {
            prices[0] = prices[0].divWad(rate);
        } catch {}

        if (prices[0] < min) {
            min = prices[0];
        }

        try BEX_POOL.getTokenRate(address(tokenInfo[1].token)) returns (uint256 rate) {
            prices[1] = prices[1].divWad(rate);
        } catch {}

        if (prices[1] < min) {
            min = prices[1];
        }

        uint256 poolRate = BEX_POOL.getRate();

        return min.mulWad(poolRate);
    }

    function _getTokenPrices(address[2] memory _tokens) internal view returns (uint256[2] memory prices) {
        prices[0] = PRICE_FEED.fetchPrice(_tokens[0]);
        prices[1] = PRICE_FEED.fetchPrice(_tokens[1]);
    }

    function _checkReentrancy() internal view {
        (, bytes memory revertData) =
            address(BEX_VAULT).staticcall{gas: 10_000}(abi.encodeWithSelector(BEX_VAULT.manageUserBalance.selector, 0));

        require(revertData.length == 0, "Reentrancy");
    }
}