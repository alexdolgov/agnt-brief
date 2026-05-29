// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.20;

import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";

import {IGMRouter} from "src/interfaces/gm/IGMRouter.sol";
import {IGMViewer} from "src/interfaces/gm/IGMViewer.sol";
import {ISequencer} from "src/interfaces/swap/ISequencer.sol";

import {IjGMIndex} from "src/interfaces/gm/IjGMIndex.sol";
import {IGMStrategy} from "src/interfaces/gm/IGMStrategy.sol";
import {IRebalance} from "src/interfaces/strategy/IRebalance.sol";
import {RebalanceStrategy} from "src/gm/strategies/RebalanceStrategy.sol";
import {IAggregatorV3} from "src/interfaces/swap/IAggregatorV3.sol";

import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {OwnableUpgradeable} from "openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IReader, Market, Price, MarketUtils} from "src/interfaces/gmx/IReader.sol";

contract GMViewer is IGMViewer, OwnableUpgradeable {
    using FixedPointMathLib for uint256;

    IGMRouter public router;
    IjGMIndex public vault;
    IGMStrategy public strategy;
    RebalanceStrategy public rebalance;

    /// @notice Asset => Oracle Contract
    mapping(address => IAggregatorV3) public oracles;

    address public constant USDC = 0xaf88d065e77c8cC2239327C5EDb3A432268e5831;
    uint256 public constant BASIS = 1e12;

    /// @notice ARB Sequencer
    ISequencer public sequencer;

    uint256 public gmxFee;

    function initialize(address _router, address _vault, address _strategy, address _rebalance) external initializer {
        __Ownable_init(msg.sender);

        router = IGMRouter(payable(_router));
        vault = IjGMIndex(_vault);
        strategy = IGMStrategy(payable(_strategy));
        rebalance = RebalanceStrategy(payable(_rebalance));

        gmxFee = 9986;

        sequencer = ISequencer(0xFdB631F5EE196F0ed6FAa767959853A9F217697D);
    }

    ///@notice Set Contracts

    function setRouter(address _router) external onlyOwner {
        router = IGMRouter(payable(_router));
    }

    function setVault(address _vault) external onlyOwner {
        vault = IjGMIndex(_vault);
    }

    function setStrategy(address _strategy) external onlyOwner {
        strategy = IGMStrategy(payable(_strategy));
    }

    function setRebalance(address _rebalance) external onlyOwner {
        rebalance = RebalanceStrategy(payable(_rebalance));
    }

    /**
     * @notice @notice Update Gmx Fee
     */
    function updateGmxFee(uint256 _newFee) external onlyOwner {
        gmxFee = _newFee;
    }

    /**
     * @notice Update Sequencer
     */
    function updateSequencer(address _sequencer) external onlyOwner {
        sequencer = ISequencer(_sequencer);
    }

    /**
     * @notice Add oracles
     * @param _assets Array of assets.
     * @param _oracles Array of oracle contracts.
     */
    function addOracles(address[] calldata _assets, address[] calldata _oracles) external onlyOwner {
        uint256 _length = _assets.length;
        for (uint256 i; i < _length;) {
            oracles[_assets[i]] = IAggregatorV3(_oracles[i]);

            unchecked {
                ++i;
            }
        }
    }

    ///@notice Get IO Info

    function getPreviewDeposit(uint256 _usdc, uint256 _usdTotalValue) public view returns (uint256) {
        uint256 supply = vault.totalSupply();

        /// @notice 18 decimals
        uint256 usdValueIn = _usdc * vault.USDCPrice() * 1e4;

        if (supply > 0) {
            return usdValueIn.mulDivDown(supply, _usdTotalValue); // 18 decimals
        } else {
            return usdValueIn; // 18 decimals
        }
    }

    ///@return USDC expected
    function getPreviewWithdraw(bytes calldata _data) public view returns (uint256) {
        return vault.previewRedeem(_data);
    }

    ///@notice Get System Info

    function getTotalSupply() public view returns (uint256) {
        return vault.totalSupply();
    }

    ///@notice Get Total Value USD; 18 decimals.
    function getTotalValue() public view returns (uint256) {
        strategy.operationCheck();

        uint8 _length = strategy.numOfGMs() + 1;

        uint256 _totalValue;

        for (uint8 i = 1; i < _length;) {
            IGMStrategy.GMToken memory gm = strategy.getTokenList(i);

            uint256 amount = IERC20(gm.token).balanceOf(address(strategy));
            amount = amount + strategy.rebalanceAmounts(gm.token);

            if (amount > 0) {
                // 18 + 18 = 36 decimals
                _totalValue = _totalValue + (amount * GMPrice(gm.oracle, gm.stalePeriod));
            }

            unchecked {
                ++i;
            }
        }
        return _totalValue / 1e18;
    }

    ///@notice Get Total Value of data provided
    ///@notice If deposit equals true return in USDC 6 decimals
    ///@notice If deposit equals false return in USD 18 decimals
    function getDataValue(bytes calldata _data, bool deposit) public view returns (uint256) {
        ///@notice Decode Data
        IGMRouter.Data memory data = abi.decode(_data, (IGMRouter.Data));

        uint256 amountOut;

        uint256 length = data.gmData.length;

        if (deposit) {
            for (uint256 i; i < length;) {
                amountOut = amountOut + data.gmData[i].amount;

                unchecked {
                    ++i;
                }
            }
        } else {
            for (uint256 i; i < length;) {
                IGMStrategy.GMToken memory gm = strategy.getTokenList(data.gmData[i].gmTokenIndex);

                amountOut = amountOut + (data.gmData[i].amount * GMPrice(gm.oracle, gm.stalePeriod));

                unchecked {
                    ++i;
                }
            }
        }

        return deposit ? amountOut : amountOut / 1e18;
    }

    ///@notice Get GM Weight; 12 decimals.
    function getGMWeight(address _gmToken) public view returns (uint256) {
        IGMStrategy.GMToken memory gm = strategy.getGMToken(_gmToken);
        uint256 totalAmount = IERC20(gm.token).balanceOf(address(strategy)) + strategy.rebalanceAmounts(gm.token);
        if (totalAmount == 0) {
            return 0;
        }
        totalAmount = totalAmount.mulDivDown(GMPrice(gm.oracle, gm.stalePeriod), 1e18); // 18 decimals
        uint256 totalValue = getTotalValue();
        if (totalValue == 0) {
            return 0;
        }
        return totalAmount.mulDivDown(BASIS, totalValue);
    }

    function getGMTokens() public view returns (IGMStrategy.GMToken[] memory gms) {
        uint8 length = strategy.numOfGMs();
        gms = new IGMStrategy.GMToken[](length);

        for (uint8 i = 0; i < length;) {
            uint8 y = i + 1;
            gms[i] = strategy.getTokenList(y);

            unchecked {
                ++i;
            }
        }
        return gms;
    }

    function getGMToken(address marketToken) public view returns (IGMStrategy.GMToken memory) {
        return strategy.getGMToken(marketToken);
    }

    /**
     * @notice Get GM Token Price; 18 decimals.
     */
    function GMPrice(IAggregatorV3 oracle, uint256 stalePeriod) public view returns (uint256) {
        (
            /*uint80 roundID*/
            ,
            int256 answer,
            /*uint256 startedAt*/
            ,
            /*uint256 updatedAt*/
            ,
            /*uint80 answeredInRound*/
        ) = sequencer.latestRoundData();

        if (answer == 1) {
            revert SequencerDown();
        }

        (, int256 currentPrice,, uint256 updatedAt,) = oracle.latestRoundData();

        if (currentPrice == 0) {
            revert InvalidPrice();
        }

        if (stalePeriod == 0) {
            stalePeriod = 86400;
        }

        if (block.timestamp > updatedAt + stalePeriod) {
            revert StalePriceUpdate();
        }

        return uint256(currentPrice);
    }

    /**
     * @notice Calculate usdc out from selling a market token.
     * @param data GM Token data.
     * @return Min amount out
     */
    function getUSDCOut(IGMStrategy.GMData memory data) external view returns (uint256) {
        return data.longMinAmountOut + data.shortMinAmountOut;
    }

    /**
     * @notice Operation data.
     * @param key GMX key.
     * @return Operation data
     */
    function getOperationData(bytes32 key) external view returns (uint8, address, uint256, uint256, uint256) {
        return strategy.gmxData(strategy.keys(key));
    }
}
