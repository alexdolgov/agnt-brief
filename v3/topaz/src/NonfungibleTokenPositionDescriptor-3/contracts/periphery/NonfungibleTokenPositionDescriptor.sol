// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity =0.7.6;
pragma abicoder v2;

import "contracts/core/interfaces/ICLPool.sol";
import "contracts/core/libraries/TickMath.sol";
import "lib/solidity-lib/contracts/libraries/SafeERC20Namer.sol";
import "lib/openzeppelin-contracts/contracts/utils/Strings.sol";
import "./libraries/base64.sol";
import "./libraries/ChainId.sol";
import "./interfaces/INonfungiblePositionManager.sol";
import "./interfaces/INonfungibleTokenPositionDescriptor.sol";
import "./interfaces/IERC20Metadata.sol";
import "./libraries/PoolAddress.sol";
import "./libraries/LiquidityAmounts.sol";
import "./libraries/NFTDescriptor.sol";
import "./libraries/TokenRatioSortOrder.sol";
import "./libraries/NFTSVG.sol";

/// @title Describes NFT token positions
/// @notice Produces a string containing the data URI for a JSON metadata string
contract NonfungibleTokenPositionDescriptor is INonfungibleTokenPositionDescriptor {
    using Strings for uint256;

    // BNB Chain (chain id 56) reference tokens for price-ratio orientation.
    // WBNB is the native wrapped token and is handled separately via the WETH9 immutable.
    address private constant USDT = 0x55d398326f99059fF775485246999027B3197955;
    address private constant USDC = 0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d;
    address private constant USD1 = 0x8d0D000Ee44948FC98c9B98A4FA4921476f08B0d;
    address private constant ETH = 0x2170Ed0880ac9A755fd29B2688956BD959F933F8;
    address private constant BTCB = 0x7130d2A12B9BCbFAe4f2634d864A1Ee1Ce3Ead9c;

    address public immutable WETH9;
    /// @dev A null-terminated string
    bytes32 public immutable nativeCurrencyLabelBytes;

    constructor(address _WETH9, bytes32 _nativeCurrencyLabelBytes) {
        WETH9 = _WETH9;
        nativeCurrencyLabelBytes = _nativeCurrencyLabelBytes;
    }

    /// @notice Returns the native currency label as a string
    function nativeCurrencyLabel() public view returns (string memory) {
        uint256 len = 0;
        while (len < 32 && nativeCurrencyLabelBytes[len] != 0) {
            len++;
        }
        bytes memory b = new bytes(len);
        for (uint256 i = 0; i < len; i++) {
            b[i] = nativeCurrencyLabelBytes[i];
        }
        return string(b);
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

        ICLPool pool = ICLPool(
            PoolAddress.computeAddress(
                positionManager.factory(),
                PoolAddress.PoolKey({token0: token0, token1: token1, tickSpacing: tickSpacing})
            )
        );

        bool _flipRatio = flipRatio(token0, token1, ChainId.get());
        address quoteTokenAddress = !_flipRatio ? token1 : token0;
        address baseTokenAddress = !_flipRatio ? token0 : token1;
        NFTDescriptor.ConstructTokenURIParams memory params = NFTDescriptor.ConstructTokenURIParams({
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
            tickSpacing: tickSpacing,
            poolAddress: address(pool)
        });

        string memory image = Base64.encode(bytes(generateSVG(positionManager, params)));

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
        INonfungiblePositionManager positionManager,
        NFTDescriptor.ConstructTokenURIParams memory params
    ) internal view returns (string memory) {
        return NFTSVG.generateSVG(buildSVGParams(positionManager, params));
    }

    function buildSVGParams(
        INonfungiblePositionManager positionManager,
        NFTDescriptor.ConstructTokenURIParams memory params
    ) internal view returns (NFTSVG.SVGParams memory s) {
        (,,,,,,, uint128 liquidity,,,,) = positionManager.positions(params.tokenId);
        (uint160 sqrtPriceX96, int24 currentTick,,,,) = ICLPool(params.poolAddress).slot0();
        (uint256 amount0, uint256 amount1) = LiquidityAmounts.getAmountsForLiquidity(
            sqrtPriceX96,
            TickMath.getSqrtRatioAtTick(params.tickLower),
            TickMath.getSqrtRatioAtTick(params.tickUpper),
            liquidity
        );

        bool flip = params.flipRatio;
        s.baseSymbol = escapeSVG(params.baseTokenSymbol);
        s.quoteSymbol = escapeSVG(params.quoteTokenSymbol);
        s.baseColor = tokenColor(params.baseTokenAddress);
        s.quoteColor = tokenColor(params.quoteTokenAddress);
        s.priceLeft = NFTDescriptor.tickToDecimalString(
            flip ? params.tickUpper : params.tickLower,
            params.tickSpacing,
            params.baseTokenDecimals,
            params.quoteTokenDecimals,
            flip
        );
        s.priceRight = NFTDescriptor.tickToDecimalString(
            flip ? params.tickLower : params.tickUpper,
            params.tickSpacing,
            params.baseTokenDecimals,
            params.quoteTokenDecimals,
            flip
        );
        s.priceCurrent = NFTDescriptor.tickToDecimalString(
            currentTick, params.tickSpacing, params.baseTokenDecimals, params.quoteTokenDecimals, flip
        );
        s.baseAmount = decimalString(flip ? amount1 : amount0, params.baseTokenDecimals);
        s.quoteAmount = decimalString(flip ? amount0 : amount1, params.quoteTokenDecimals);
        s.tickLeft = flip ? params.tickUpper : params.tickLower;
        s.tickRight = flip ? params.tickLower : params.tickUpper;
        s.tickCurrent = currentTick;
        s.spanTicks = uint256(int256(params.tickUpper) - int256(params.tickLower));
        s.tickSpacing = uint256(uint24(params.tickSpacing));
        s.inRange = params.tickLower <= currentTick && currentTick <= params.tickUpper;
        s.tokenId = params.tokenId;
    }

    /// @notice Escapes XML-significant characters so token symbols are safe inside SVG text.
    function escapeSVG(string memory s) internal pure returns (string memory) {
        bytes memory b = bytes(s);
        bytes memory out = "";
        for (uint256 i = 0; i < b.length; i++) {
            bytes1 c = b[i];
            if (c == 0x26) {
                out = abi.encodePacked(out, "&amp;");
            } else if (c == 0x3C) {
                out = abi.encodePacked(out, "&lt;");
            } else if (c == 0x3E) {
                out = abi.encodePacked(out, "&gt;");
            } else {
                out = abi.encodePacked(out, c);
            }
        }
        return string(out);
    }

    /// @notice Brand colour for known BNB Chain tokens, otherwise a deterministic hue from the address.
    function tokenColor(address token) internal view returns (string memory) {
        if (token == WETH9) return "#F0B90B";
        if (token == USDT) return "#26A17B";
        if (token == USDC) return "#2775CA";
        if (token == USD1) return "#D4AF37";
        if (token == ETH) return "#627EEA";
        if (token == BTCB) return "#F7931A";
        uint256 hue = uint256(uint160(token)) % 360;
        return string(abi.encodePacked("hsl(", hue.toString(), ",65%,55%)"));
    }

    /// @notice Formats a raw token balance with up to 5 decimal places (fewer if the token has fewer).
    function decimalString(uint256 balance, uint8 decimals) internal pure returns (string memory) {
        uint256 places = decimals > 5 ? 5 : decimals;
        if (places == 0) {
            return balance.toString();
        }
        uint256 divisor = 10 ** decimals;
        uint256 integerPart = balance / divisor;
        uint256 fractionalPart = balance % divisor;
        if (decimals > 5) {
            fractionalPart = fractionalPart / (10 ** (decimals - 5));
        }
        string memory frac = fractionalPart.toString();
        uint256 zerosToAdd = places > bytes(frac).length ? places - bytes(frac).length : 0;
        string memory leadingZeros = "";
        for (uint256 i = 0; i < zerosToAdd; i++) {
            leadingZeros = string(abi.encodePacked("0", leadingZeros));
        }
        return string(abi.encodePacked(integerPart.toString(), ".", leadingZeros, frac));
    }

    function flipRatio(address token0, address token1, uint256 chainId) public view returns (bool) {
        return tokenRatioPriority(token0, chainId) > tokenRatioPriority(token1, chainId);
    }

    function tokenRatioPriority(address token, uint256 chainId) public view returns (int256) {
        if (token == WETH9) {
            return TokenRatioSortOrder.DENOMINATOR;
        }
        if (chainId == 56) {
            if (token == USDT) {
                return TokenRatioSortOrder.NUMERATOR_MOST;
            } else if (token == USDC) {
                return TokenRatioSortOrder.NUMERATOR_MORE;
            } else if (token == USD1) {
                return TokenRatioSortOrder.NUMERATOR;
            } else if (token == ETH) {
                return TokenRatioSortOrder.DENOMINATOR_MORE;
            } else if (token == BTCB) {
                return TokenRatioSortOrder.DENOMINATOR_MOST;
            } else {
                return 0;
            }
        }
        return 0;
    }
}
