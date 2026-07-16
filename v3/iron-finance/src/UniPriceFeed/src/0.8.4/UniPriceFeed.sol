// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./TokenConfigWrapper.sol";
import "./IRToken.sol";
import "./ChainlinkLib.sol";
import "./UniswapOracle.sol";

contract UniPriceFeed is Ownable, TokenConfigWrapper, UniswapOracle {
    address public uniswapOracle;
    mapping (address => address) public getChainlinkFeedByUnderlying;

    function getUnderlyingPrice(IRToken _rToken) external view returns (uint256) {
        TokenConfig storage config = getTokenConfigByRToken[address(_rToken)];
         // Comptroller needs prices in the format: ${raw price} * 1e(36 - baseUnit)
         // Since the prices in this view have 6 decimals, we must scale them by 1e(36 - 6 - baseUnit)
        return 1e18 * getPrice(config) / config.baseUnit;
    }

    function getPrice(TokenConfig memory config) internal view returns(uint256) {
        if (config.priceSource == PriceSource.chainlink) {
            return ChainlinkLib.consult(getChainlinkFeedByUnderlying[config.underlying], PRECISION);
        }

        if (config.priceSource == PriceSource.pairOracle) {
            return getTwapPrice(config.underlying, PRECISION);
        }

        return 0; // price is not available
    }

    // Operating function
    function setTokenConfig(
        address _rToken,
        address _underlying,
        string memory _symbol,
        uint256 _decimals,
        PriceSource _priceSource,
        address _chainlinkFeed,
        BaseToken[] calldata _baseTokens,
        address[] calldata _lpPairs
    ) external onlyOwner {
        setTokenConfigInternal(_rToken, _underlying, _symbol, _decimals, _priceSource);

        if (_priceSource == PriceSource.chainlink) {
            require(_chainlinkFeed != address(0), "!chainlink");
            getChainlinkFeedByUnderlying[_underlying] = _chainlinkFeed;
        }

        if (_priceSource == PriceSource.pairOracle) {
            addTokenLPPairInternal(_underlying, _baseTokens, _lpPairs);
        }
    }
}
