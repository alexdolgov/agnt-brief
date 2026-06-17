// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;
import {IERC20} from "./interface/IERC20.sol";
import {SignatureChecker} from "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import {TokenLib} from "./Token.sol";

library PriceOracle {
    uint256 public constant EXCHANGE_RATIO_BASE = 10000;
    uint256 public constant FEE_BASE = 10000;
    uint256 public constant EXCHANGE_RATIO_MIN = 9800;
    uint256 public constant EXCHANGE_RATIO_MAX = 10200;

    error Timeout();
    error InvalidSignature();
    error InvalidUser();
    error InvalidChainId();
    error InvalidToken();
    error InvalidPrice();

    struct Oracle {
        IERC20 token;
        uint256 price;
        uint256 effectiveTime;
        uint256 chainid;
        bytes signature;
    }

    function checkOracle(
        Oracle memory oracle,
        address priceOracle,
        TokenLib.Token storage baseToken
    ) internal view returns (bool) {
        bytes memory signature = oracle.signature;
        oracle.signature = bytes("");
        bytes32 msgHash = keccak256(abi.encode(oracle));
        require(
            SignatureChecker.isValidSignatureNow(
                priceOracle,
                msgHash,
                signature
            ),
            InvalidSignature()
        );
        require(oracle.chainid == block.chainid, InvalidChainId());
        require(oracle.effectiveTime > block.timestamp, Timeout());
        require(oracle.price >= EXCHANGE_RATIO_MIN, InvalidPrice());
        require(oracle.price <= EXCHANGE_RATIO_MAX, InvalidPrice());
        require(oracle.token == baseToken.token, InvalidToken());
        return true;
    }

    function calculateMintAmount(
        Oracle memory oracle,
        TokenLib.Token storage baseToken,
        uint256 amount,
        IERC20 usdtToken,
        address priceOracle
    ) internal view returns (uint256) {
        uint256 rate = oracle.price;
        if (baseToken.token == usdtToken) {
            rate = EXCHANGE_RATIO_BASE;
        } else {
            checkOracle(oracle, priceOracle, baseToken);
        }
        return applyExchangeRateAndFee(amount, rate, 0, true);
    }

    function calculateRedeemAmount(
        Oracle memory oracle,
        TokenLib.Token storage baseToken,
        uint256 amount,
        IERC20 usdtToken,
        address priceOracle
    ) internal view returns (uint256) {
        uint256 rate = oracle.price;
        if (baseToken.token == usdtToken) {
            rate = EXCHANGE_RATIO_BASE;
        } else {
            checkOracle(oracle, priceOracle, baseToken);
        }
        return applyExchangeRateAndFee(amount, rate, baseToken.feeBps, false);
    }

    function applyExchangeRateAndFee(
        uint256 amount,
        uint256 exchangeRate,
        uint256 feeBps,
        bool isMint
    ) internal pure returns (uint256) {
        uint256 n = isMint
            ? (amount * exchangeRate) / EXCHANGE_RATIO_BASE
            : (amount * EXCHANGE_RATIO_BASE) / exchangeRate;
        if (feeBps > 0) {
            uint256 feeRatio = FEE_BASE - feeBps;
            n = (n * feeRatio) / FEE_BASE;
        }
        return n;
    }
}
