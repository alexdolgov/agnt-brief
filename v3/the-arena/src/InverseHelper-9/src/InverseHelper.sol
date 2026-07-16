// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {ITokenManagerERC20} from "./interfaces/ITokenManagerERC20.sol";
import {ITokenTemplate} from "./interfaces/ITokenTemplate.sol";
import {IUniswapV2Router02} from "./interfaces/IUniswapV2Router02.sol";

contract InverseHelper {
    ITokenManagerERC20 public immutable TOKEN_MANAGER;
    uint256 public constant GRANULARITY_SCALER = 1e18;
    address public constant WAVAX_ADDRESS = 0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7;
    address public constant ARENA_ADDRESS = 0xB8d7710f7d8349A506b75dD184F05777c82dAd0C;
    IUniswapV2Router02 public constant uniswapRouter = IUniswapV2Router02(0xF56D524D651B90E4B84dc2FffD83079698b9066E);

    constructor(address _tokenManagerAddress) {
        TOKEN_MANAGER = ITokenManagerERC20(_tokenManagerAddress);
    }



    function floorCbrt(uint256 n) internal pure returns (uint256) {
        unchecked {
            if (n > 84) {
                uint256 x = n;
                uint256 y = 1 << (floorLog2(n) / 3 + 1);
                while (x > y) {
                    x = y;
                    y = ((x << 1) + n / x ** 2) / 3;
                }
                return x;
            }
            return 0x49249249249249246db6db6db6db6db6db6db6db6db692492492492492249248 >> (n * 3) & 0x7;
        }
    }

    function floorLog2(uint256 n) internal pure returns (uint8) {
        unchecked {
            uint8 res = 0;

            if (n < 256) {
                // at most 8 iterations
                while (n > 1) {
                    n >>= 1;
                    res += 1;
                }
            } else {
                // exactly 8 iterations
                for (uint8 s = 128; s > 0; s >>= 1) {
                    if (n >= 1 << s) {
                        n >>= s;
                        res |= s;
                    }
                }
            }

            return res;
        }
    }

    function calculateBuyAmount(uint256 _inputAmountInWei, uint256 lowerBound, uint256 a, uint256 curveScaler) public pure returns (uint256) {
        if(_inputAmountInWei == 0) {
            return 0;
        }
        uint256 S = curveScaler * 6;        // S·6
        uint256 C = S - 1;                        // (S·6 - 1)
        uint256 numerator = _inputAmountInWei * S;
        require(numerator >= C, "underflow");

        uint256 diff = (numerator - C) / (2 * a);
        uint256 sumCubes = lowerBound**3 + diff; 
        uint256 upperBound = floorCbrt(sumCubes);
        if(upperBound < lowerBound) {
            revert("upperBound < lowerBound");
        }
        uint256 difference = upperBound - lowerBound;
        return difference * 10 ** 18; 
    }

    function invertTotalToRaw(uint256 protocolFeeBasisPoint, uint256 referralFeeBasisPoint, uint256 creatorFeeBasisPoint, uint256 tokenCreationBuyFeeAmount, uint256 totalPaid) public pure returns (uint256 rawCost) {
        uint256 computedTotal;
        uint256 approx;
        uint256 flatFee  = tokenCreationBuyFeeAmount;
        if(totalPaid == 0) {
            return 0;
        }

        require(totalPaid >= flatFee, "total < flatFee");

        // --- 1) “ideal” raw ignoring per‐fee rounding ---
        // totalPaid-flatFee = raw + (raw·sumBP)/10000  (exact arithmetic)
        // ⇒ raw = (totalPaid-flatFee)*10000/(10000+sumBP)
        {
            uint256 sumBP = protocolFeeBasisPoint + creatorFeeBasisPoint + referralFeeBasisPoint;
            uint256 numer = (totalPaid - flatFee) * 10000;
            uint256 denom = 10000 + sumBP;
            approx = numer / denom;

            // --- 2) recompute each fee at approx to capture its rounding ---
            uint256 protoFee    = (approx * protocolFeeBasisPoint   + 5000) / 10000;
            uint256 creatorFee  = (approx * creatorFeeBasisPoint + 5000) / 10000;
            uint256 referralFee = (approx * referralFeeBasisPoint      + 5000) / 10000;
            protoFee += referralFee;


            uint256 feeSum   = protoFee + creatorFee;
            computedTotal = approx + feeSum + flatFee;
        }

        // --- 3) correct approx by the small integer gap Δ ---
        //    Δ = totalPaid - computedTotal  ∈ {–2..+2} typically
        if (computedTotal == totalPaid) {
            return approx;
        } else if (computedTotal < totalPaid) {
            return approx + (totalPaid - computedTotal);
        } else {
            // computedTotal > totalPaid
            return approx - (computedTotal - totalPaid);
        }
    }
    function invertTotalToRaw(uint256 tokenId,uint256 totalPaid) public view returns (uint256 rawCost) {
        uint256 computedTotal;
        uint256 approx;

        (uint256 protoBP, uint256 refBP, uint256 creatorBP,uint256 tokenCreationBuyFeeAmount, uint256 tokenIdentifier) = TOKEN_MANAGER.getFeeInfoAndCurrentTokenIdentifier(tokenId);
        uint256 flatFee  = (tokenId == tokenIdentifier)
                            ? tokenCreationBuyFeeAmount
                            : 0;

        require(totalPaid >= flatFee, "total < flatFee");

        // --- 1) “ideal” raw ignoring per‐fee rounding ---
        // totalPaid-flatFee = raw + (raw·sumBP)/10000  (exact arithmetic)
        // ⇒ raw = (totalPaid-flatFee)*10000/(10000+sumBP)
        {
            uint256 sumBP = protoBP + creatorBP + refBP;
            uint256 numer = (totalPaid - flatFee) * 10000;
            uint256 denom = 10000 + sumBP;
            approx = numer / denom;

            // --- 2) recompute each fee at approx to capture its rounding ---
            uint256 protoFee    = (approx * protoBP   + 5000) / 10000;
            uint256 creatorFee  = (approx * creatorBP + 5000) / 10000;
            uint256 referralFee = (approx * refBP      + 5000) / 10000;
            protoFee += referralFee;


            uint256 feeSum   = protoFee + creatorFee;
            computedTotal = approx + feeSum + flatFee;
        }

        // --- 3) correct approx by the small integer gap Δ ---
        //    Δ = totalPaid - computedTotal  ∈ {–2..+2} typically
        if (computedTotal == totalPaid) {
            return approx;
        } else if (computedTotal < totalPaid) {
            return approx + (totalPaid - computedTotal);
        } else {
            // computedTotal > totalPaid
            return approx - (computedTotal - totalPaid);
        }
    }

    function getPurchaseAmountAndPriceWithGivenAvax(uint256 _tokenId, uint256 avaxAmount) public view returns (uint256 purchaseAmount, uint256 price) {
        uint256 arenaAmount = getArenaAmountForGivenAvax(avaxAmount);
        uint256 rawCost = invertTotalToRaw(_tokenId, arenaAmount);
        uint256 currentSupply = ITokenTemplate(TOKEN_MANAGER.getTokenParameters(_tokenId).tokenContractAddress).totalSupply() / 10 ** 18;
        purchaseAmount = calculateBuyAmount(rawCost, currentSupply, TOKEN_MANAGER.getTokenParameters(_tokenId).a, TOKEN_MANAGER.getTokenParameters(_tokenId).curveScaler);
        price = TOKEN_MANAGER.calculateCostWithFees(purchaseAmount / 10 ** 18, _tokenId);
        return (purchaseAmount, price);
    }

    function getPurchaseAmountAndPriceWithGivenAvaxForNewToken(uint256 a, uint256 curveScaler, uint256 creatorFeeBasisPoints, uint256 avaxAmount) public view returns (uint256 purchaseAmount, uint256 price) { 
        uint256 currentTokenIdentifier = TOKEN_MANAGER.tokenIdentifier();
        uint256 arenaAmount = getArenaAmountForGivenAvax(avaxAmount);
        uint256 rawCost = invertTotalToRaw(currentTokenIdentifier, arenaAmount);
        purchaseAmount = calculateBuyAmount(rawCost, 0, a, curveScaler);
        price = TOKEN_MANAGER.calculateCostScaledParametricWithFees(purchaseAmount, 0, a, 0, curveScaler, creatorFeeBasisPoints);
        return (purchaseAmount, price);

    }


    function getAvaxAmountForSell(uint256 tokenId, uint256 sellAmount) public view returns (uint256 avaxAmount) {   
        uint256 arenaAmount = TOKEN_MANAGER.calculateRewardWithFees(sellAmount / 10 ** 18, tokenId);
        avaxAmount = getAvaxAmountForGivenArenaAmount(arenaAmount);
    }

    function getArenaAmountForGivenAvax(uint256 _avaxAmount) public view returns (uint256 arenaAmount) { 
        address[] memory path = new address[](2);
        path[0] = WAVAX_ADDRESS;
        path[1] = ARENA_ADDRESS;

        uint256[] memory amountsOut = uniswapRouter.getAmountsOut(_avaxAmount, path);
        arenaAmount = amountsOut[1];
    }

    function getAvaxAmountForGivenArenaAmount(uint256 _arenaAmount) public view returns (uint256 avaxAmount) { 
        address[] memory path = new address[](2);
        path[0] = ARENA_ADDRESS;
        path[1] = WAVAX_ADDRESS;
        uint256[] memory amountsOut = uniswapRouter.getAmountsOut(_arenaAmount, path);
        avaxAmount = amountsOut[1];
    }




}