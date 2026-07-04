// SPDX-License-Identifier: ISC
pragma solidity ^0.8.20;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// ======================= FraxswapTwapOracle =========================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

// ====================================================================

import { ERC165Storage } from "src/contracts/utils/ERC165Storage.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { IFraxswapPair } from "dev-fraxswap/src/contracts/core/interfaces/IFraxswapPair.sol";
import { UQ112x112 } from "src/contracts/utils/UQ112x112.sol";

struct ConstructorParams {
    address fraxswapPair;
    address toQuote;
    uint32 twapDuration;
}

/// @title FraxSwapTwapOracle
/// @notice Will fetch the twap price of the quote asset denominated in the base token
/// @notice Only intended to work for pairs in which both of the assets have 18 decimals
abstract contract FraxSwapTwapOracle is ERC165Storage {
    /// @notice Fraxswap Pair to source twap
    IFraxswapPair public immutable FRAXSWAP_PAIR;

    /// @notice The token in the fraxswap pair which the price of the base token is denominated in
    address public FRAXSWAP_BASE_TOKEN;

    /// @notice The token in the fraxswap pair which we would like the twap of
    address public FRAXSWAP_QUOTE_TOKEN;

    /// @notice The duration of the time wieghted moving average is
    uint32 public twapDuration;

    /// @notice flow control to perform the operation on token0|token1 accounting
    bool isToken0;

    using UQ112x112 for uint224;

    constructor(ConstructorParams memory _params) {
        // Fraxswap Oracle Config
        FRAXSWAP_PAIR = IFraxswapPair(_params.fraxswapPair);
        twapDuration = _params.twapDuration;
        address token0 = FRAXSWAP_PAIR.token0();
        address token1 = FRAXSWAP_PAIR.token1();

        if (token0 == _params.toQuote) {
            isToken0 = true;
            FRAXSWAP_QUOTE_TOKEN = _params.toQuote;
            FRAXSWAP_BASE_TOKEN = token1;
        } else if (token1 == _params.toQuote) {
            // isToken0 initalizes to false
            FRAXSWAP_QUOTE_TOKEN = _params.toQuote;
            FRAXSWAP_BASE_TOKEN = token0;
        } else {
            revert TokenNotInPair();
        }

        // Sanity check tokens
        if (FRAXSWAP_PAIR.getTWAPHistoryLength() < 5) revert PairNotOldEnough();
        if (IERC20Metadata(token0).decimals() != 18) revert WrongDecimals();
        if (IERC20Metadata(token1).decimals() != 18) revert WrongDecimals();
    }

    // ====================================================================
    // Post Construction Setters
    // ====================================================================

    function setTwapDurationFraxSwap(uint32 _newTwapDuration) external virtual;

    /// @notice The ```_setTwapDurationFraxSwap``` function is called to modify the twap duration post deployment
    /// @dev Contains no access control
    /// @param _newTwapDuration The new twap duration to set
    function _setTwapDurationFraxSwap(uint32 _newTwapDuration) internal {
        emit NewTwapDurationSet(twapDuration, _newTwapDuration);
        twapDuration = _newTwapDuration;
    }

    // ====================================================================
    // Twap Pricinge Function
    // ====================================================================

    /// @notice The ```_getTwapFraxSwapPair``` function is called to get the twap of the fraxswap pair
    /// @return _basePerQuote returns the amount of base token per quote token
    function _getTwapFraxSwapPair() public view virtual returns (uint256 _basePerQuote) {
        uint256 len = FRAXSWAP_PAIR.getTWAPHistoryLength();
        IFraxswapPair.TWAPObservation memory obsCurrent = FRAXSWAP_PAIR.TWAPObservationHistory(len - 1);

        // Update last observation up to the current block
        if (obsCurrent.timestamp < block.timestamp) {
            // Update the reserves
            (uint112 _reserve0, uint112 _reserve1, ) = FRAXSWAP_PAIR.getReserves();
            uint32 blockTimestamp = uint32(block.timestamp % 2 ** 32);
            // Get the latest observed prices
            unchecked {
                uint32 timeElapsed = blockTimestamp - uint32(obsCurrent.timestamp);
                obsCurrent.price0CumulativeLast += uint256(UQ112x112.encode(_reserve1).uqdiv(_reserve0)) * timeElapsed;
                obsCurrent.price1CumulativeLast += uint256(UQ112x112.encode(_reserve0).uqdiv(_reserve1)) * timeElapsed;
                obsCurrent.timestamp = blockTimestamp;
            }
        }

        IFraxswapPair.TWAPObservation memory obsLast;

        uint256 j;
        // Cannot be > 1 obs per second and > 1 block per second
        for (uint256 i = twapDuration / 40; i < twapDuration; i += twapDuration / 20) {
            obsLast = FRAXSWAP_PAIR.TWAPObservationHistory(len - (1 + i));
            unchecked {
                if ((obsCurrent.timestamp - obsLast.timestamp) < twapDuration) {
                    j = i;
                } else {
                    break;
                }
            }
        }
        for (j; j < len; j++) {
            obsLast = FRAXSWAP_PAIR.TWAPObservationHistory(len - (1 + j));
            unchecked {
                if ((obsCurrent.timestamp - obsLast.timestamp) > twapDuration) break;
            }
        }
        if (isToken0) {
            uint256 encoded;
            unchecked {
                encoded =
                    (obsCurrent.price0CumulativeLast - obsLast.price0CumulativeLast) /
                    uint32(obsCurrent.timestamp - obsLast.timestamp);
            }
            _basePerQuote = decode112with18(encoded);
        } else {
            uint256 encoded;
            unchecked {
                encoded =
                    (obsCurrent.price1CumulativeLast - obsLast.price1CumulativeLast) /
                    uint32(obsCurrent.timestamp - obsLast.timestamp);
            }
            _basePerQuote = decode112with18(encoded);
        }
    }

    // ====================================================================
    // Math Utilities
    // ====================================================================

    // Inspired by https://gist.github.com/alexroan/629172728f82cb5c88554896163b35a0#file-uniswapanchoredview-sol-L24
    // decode a uq112x112 into a uint with 18 decimals of precision
    function decode112with18(uint256 valToDecode) internal pure returns (uint256) {
        // we only have 256 - 224 = 32 bits to spare, so scaling up by ~60 bits is dangerous
        // instead, get close to:
        //  (x * 1e18) >> 112
        // without risk of overflowing, e.g.:
        //  (x) / 2 ** (112 - lg(1e18))
        return valToDecode / 5_192_296_858_534_827;
    }

    event NewTwapDurationSet(uint32 oldDuration, uint32 newDuration);

    error TokenNotInPair();
    error WrongDecimals();
    error PairNotOldEnough();
}
