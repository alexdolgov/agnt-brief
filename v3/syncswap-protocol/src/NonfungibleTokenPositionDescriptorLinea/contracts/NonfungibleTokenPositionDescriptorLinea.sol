// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;
pragma abicoder v2;

import "./interfaces/ISyncSwapRangePool.sol";

import "./libraries/external/SafeERC20Namer.sol";
import "./libraries/external/Base64.sol";
import "./libraries/external/ChainId.sol";

import "./interfaces/INonfungiblePositionManager.sol";
import "./interfaces/INonfungibleTokenPositionDescriptor.sol";
import "./interfaces/external/IERC20Metadata.sol";

import "./libraries/PoolAddress.sol";
import "./libraries/NFTDescriptor.sol";
import "./libraries/TokenRatioSortOrder.sol";
import "./libraries/NFTSVG.sol";

/// @title Describes NFT token positions
/// @notice Produces a string containing the data URI for a JSON metadata string
contract NonfungibleTokenPositionDescriptorLinea is INonfungibleTokenPositionDescriptor {
    address private constant USDCE = 0x176211869cA2b568f2A7D4EE941E073a821EE1ff;
    address private constant USDT = 0xA219439258ca9da29E9Cc4cE5596924745e12B93;
    address private constant WBTC = 0x3aAB2285ddcDdaD8edf438C1bAB47e1a9D05a9b4;

    address public immutable WETH9 = 0xe5D7C2a44FfDDf6b295A15c148167daaAf5Cf34f;

    /// @notice Returns the native currency label as a string
    function nativeCurrencyLabel() public pure returns (string memory) {
        return "ETH";
    }

    /// @inheritdoc INonfungibleTokenPositionDescriptor
    function tokenURI(INonfungiblePositionManager positionManager, uint256 tokenId)
        external
        view
        override
        returns (string memory)
    {
        (,, address token0, address token1, int24 tickSpacing, int24 tickLower, int24 tickUpper,,,,,) =
            positionManager.positions(tokenId);

        ISyncSwapRangePool pool = ISyncSwapRangePool(
            PoolAddress.computeAddress(
                positionManager.factory(),
                PoolAddress.PoolKey({token0: token0, token1: token1, tickSpacing: tickSpacing})
            )
        );

        NFTDescriptor.ConstructTokenURIParams memory params;
        {
            bool _flipRatio = flipRatio(token0, token1, 0);
            address quoteTokenAddress = !_flipRatio ? token1 : token0;
            address baseTokenAddress = !_flipRatio ? token0 : token1;
            (, int24 tick, , , , ) = pool.slot0();
            params = NFTDescriptor.ConstructTokenURIParams({
                tokenId: tokenId,
                quoteTokenAddress: quoteTokenAddress,
                baseTokenAddress: baseTokenAddress,
                quoteTokenSymbol: quoteTokenAddress == WETH9
                    ? nativeCurrencyLabel()
                    : SafeERC20Namer.tokenSymbol(quoteTokenAddress),
                baseTokenSymbol: baseTokenAddress == WETH9
                    ? nativeCurrencyLabel()
                    : SafeERC20Namer.tokenSymbol(baseTokenAddress),
                quoteTokenDecimals: IERC20Metadata(quoteTokenAddress).decimals(),
                baseTokenDecimals: IERC20Metadata(baseTokenAddress).decimals(),
                flipRatio: _flipRatio,
                tickLower: tickLower,
                tickUpper: tickUpper,
                tickCurrent: tick,
                tickSpacing: tickSpacing,
                poolAddress: address(pool)
            });
        }

        string memory image = Base64.encode(bytes(generateSVG(params)));

        string memory nameAndDescription = NFTDescriptor.constructTokenURI(params);

        return string(
            abi.encodePacked(
                "data:application/json;base64,",
                Base64.encode(
                    bytes(
                        abi.encodePacked(
                            "{", nameAndDescription, ', "image": "', "data:image/svg+xml;base64,", image, '"}'
                        )
                    )
                )
            )
        );
    }

    function generateSVG(
        NFTDescriptor.ConstructTokenURIParams memory params
    ) internal pure returns (string memory) {
        return NFTSVG.generateSVG({
            quoteTokenAddress: params.quoteTokenAddress,
            baseTokenAddress: params.baseTokenAddress,
            quoteTokenSymbol: params.quoteTokenSymbol,
            baseTokenSymbol: params.baseTokenSymbol,
            tokenId: params.tokenId,
            tickLower: params.tickLower,
            tickUpper: params.tickUpper,
            tickCurrent: params.tickCurrent,
            tickSpacing: params.tickSpacing
        });
    }

    function tokensOwed(INonfungiblePositionManager positionManager, uint256 tokenId, bool _flipRatio)
        internal
        view
        returns (uint256 quoteTokensOwed, uint256 baseTokensOwed)
    {
        (,,,,,,,,,, uint256 tokensOwed0, uint256 tokensOwed1) = positionManager.positions(tokenId);
        quoteTokensOwed = _flipRatio ? tokensOwed1 : tokensOwed0;
        baseTokensOwed = _flipRatio ? tokensOwed0 : tokensOwed1;
    }

    function flipRatio(address token0, address token1, uint256 chainId) public view returns (bool) {
        return tokenRatioPriority(token0, chainId) > tokenRatioPriority(token1, chainId);
    }

    function tokenRatioPriority(address token, uint256) public view returns (int256) {
        if (token == WETH9) {
            return TokenRatioSortOrder.DENOMINATOR;
        }
        if (token == USDCE) {
            return TokenRatioSortOrder.NUMERATOR_MOST;
        } else if (token == USDT) {
            return TokenRatioSortOrder.NUMERATOR_MORE;
        } else if (token == WBTC) {
            return TokenRatioSortOrder.DENOMINATOR_MOST;
        }
        return 0;
    }
}