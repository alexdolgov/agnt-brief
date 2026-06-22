// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.21;

import {IPoints2Manager} from "./interfaces/IPoints2Manager.sol";
import {Ownable} from "points-periphery_@openzeppelin-contracts/access/Ownable.sol";
import {IChainlinkOracle} from "./external/IChainlinkOracle.sol";
import {IERC20} from "points-periphery_@openzeppelin-contracts/token/ERC20/IERC20.sol";
import {IPointsVaultExtension} from "points-periphery_points/interfaces/IPointsVaultExtension.sol";
import {IPoints} from "points-periphery_points/interfaces/IPoints.sol";
import {IButtonswapPair} from "points-periphery_buttonswap-core/interfaces/IButtonswapPair/IButtonswapPair.sol";
import {IButtonswapFactory} from "points-periphery_buttonswap-core/interfaces/IButtonswapFactory/IButtonswapFactory.sol";
import {Math} from "./libraries/Math.sol";

// ToDo: Gotta support a list of tokens with arbitrary rates

contract Points2Manager is IPoints2Manager, Ownable {
    IPointsVaultExtension public immutable pointsProgram;
    IButtonswapFactory public immutable factory;
    IChainlinkOracle public immutable wethChainlinkOracle;

    address public immutable USDC;
    address public immutable USDT;
    address public immutable WETH;
    address public immutable USDM;
    address public immutable SPOT;

    constructor(
        address pointsProgram_,
        address factory_,
        address wethChainlinkOracle_,
        address USDC_,
        address USDT_,
        address WETH_,
        address USDM_,
        address SPOT_
    ) Ownable(msg.sender) {
        pointsProgram = IPointsVaultExtension(pointsProgram_);
        factory = IButtonswapFactory(factory_);
        wethChainlinkOracle = IChainlinkOracle(wethChainlinkOracle_);
        USDC = USDC_;
        USDT = USDT_;
        WETH = WETH_;
        USDM = USDM_;
        SPOT = SPOT_;
    }

    /**
     * @inheritdoc IPoints2Manager
     */
    function setPaused(bool paused_) external onlyOwner {
        pointsProgram.setPaused(paused_);
    }

    /**
     * @inheritdoc IPoints2Manager
     */
    function setAuthorizedBurner(address authorizedBurner_) external onlyOwner {
        pointsProgram.setAuthorizedBurner(authorizedBurner_);
    }

    /**
     * @inheritdoc IPoints2Manager
     */
    function setAddressWhitelist(address account, bool status) external onlyOwner {
        pointsProgram.setAddressWhitelist(account, status);
    }

    function validateToken(address token) public view returns (bool token0Valid, bool token1Valid) {
        IButtonswapPair pair = IButtonswapPair(token);
        // Check that this is a LP token
        if (token != factory.getPair(pair.token0(), pair.token1())) {
            revert InvalidToken(token);
        }
        // Validate that one of the underlying tokens is or USDC/USDT/WETH/USDM/SPOT
        address token0 = pair.token0();
        address token1 = pair.token1();
        token0Valid = (token0 == USDC || token0 == USDT || token0 == WETH || token0 == USDM || token0 == SPOT);
        token1Valid = (token1 == USDC || token1 == USDT || token1 == WETH || token1 == USDM || token1 == SPOT);
        if (!token0Valid && !token1Valid) {
            revert InvalidToken(token);
        }
    }

    function convertTo18USD(address token, uint256 value) public view returns (uint256) {
        // If ETH, it uses the oracle to convert into USD with 18 decimals
        if (token == WETH) {
            return (value * uint256(wethChainlinkOracle.latestAnswer())) / 1e8;
        }
        // If USDT/USDC scale into USD with 18 decimals
        if (token == USDC || token == USDT) {
            return value * 1e12;
        }
        // SPOT has 9 decimals and on average is 1.15 USD
        if (token == SPOT) {
            return value * 1_500_000_000; // (1.15e9)
        }
        // Otherwise, assume it's already in USD with 18 decimals
        return value;
    }

    function calculateRate(address pair, bool token0Valid) public view returns (uint96 rate) {
        uint256 movingAveragePrice0 = IButtonswapPair(pair).movingAveragePrice0();

        // Value per token assigns the value of 1 LP token in terms of the validated underlying token
        // Scaled up by 10**18
        uint256 valuePerToken;
        if (token0Valid) {
            valuePerToken = ((1e18) * (2 ** 57)) / Math.sqrt(movingAveragePrice0);
            valuePerToken = convertTo18USD(IButtonswapPair(pair).token0(), valuePerToken);
        } else {
            valuePerToken = (2e18 * Math.sqrt(movingAveragePrice0)) / (2 ** 56);
            valuePerToken = convertTo18USD(IButtonswapPair(pair).token1(), valuePerToken);
        }

        // Divide the value per token by 1 day to get the rate of 1 Point per second
        rate = uint96(valuePerToken / 86400);
    }

    /**
     * @inheritdoc IPoints2Manager
     */
    function setRates(address[] calldata tokens) external {
        uint96[] memory rates = new uint96[](tokens.length);

        for (uint256 i = 0; i < tokens.length; i++) {
            // Validate the token is an LP token with one of the underlying tokens being USDC/USDT/WETH/USDM/SPOT
            (bool token0Valid,) = validateToken(tokens[i]);
            // Calculate the rate
            uint96 rate = calculateRate(tokens[i], token0Valid);
            rates[i] = rate;
        }

        pointsProgram.setRates(tokens, rates);
    }

    /**
     * @inheritdoc IPoints2Manager
     */
    function updateRates(uint16 startIndex, uint16 endIndex) external {
        address[] memory tokens = new address[](endIndex - startIndex);
        uint96[] memory rates = new uint96[](endIndex - startIndex);

        for (uint256 i = startIndex; i < endIndex; i++) {
            // Fetch token address
            address pair = IPoints(pointsProgram).tokenAt(i);
            // Validate the token is an LP token with one of the underlying tokens being USDC/USDT/WETH/USDM/SPOT
            (bool token0Valid,) = validateToken(pair);
            // Calculate the rate
            uint96 rate = calculateRate(pair, token0Valid);
            // Add to the list
            tokens[i] = pair;
            rates[i] = rate;
        }

        pointsProgram.setRates(tokens, rates);
    }

    /**
     * @inheritdoc IPoints2Manager
     */
    function transferPointsOwnership(address newOwner) external onlyOwner {
        Ownable(address(pointsProgram)).transferOwnership(newOwner);
    }
}
