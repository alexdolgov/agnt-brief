// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.20;

import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";

import {ERC20Upgradeable} from "openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";

import {UpgradeableOperable} from "src/common/UpgradeableOperable.sol";
import {IGMViewer} from "src/interfaces/gm/IGMViewer.sol";

import {IAggregatorV3} from "src/interfaces/swap/IAggregatorV3.sol";
import {ISequencer} from "src/interfaces/swap/ISequencer.sol";

import {GMStrategy} from "src/gm/strategies/GMStrategy.sol";

import {IjGMIndex} from "src/interfaces/gm/IjGMIndex.sol";

import {IGMRouter} from "src/interfaces/gm/IGMRouter.sol";

contract jGMIndex is IjGMIndex, UpgradeableOperable, ERC20Upgradeable {
    using FixedPointMathLib for uint256;

    /* -------------------------------------------------------------------------- */
    /*                                  VARIABLES                                 */
    /* -------------------------------------------------------------------------- */

    IGMViewer public viewer;

    /// @notice USDC Oracle
    IAggregatorV3 public oracle;

    /// @notice ARB Sequencer
    ISequencer public sequencer;

    /// @notice Oracle grace period
    uint256 private STALE_GRACE_PERIOD;

    // @notice Last total AUM in USD; 18 decimals.
    uint256 public lastUSDTotalValue;

    /* -------------------------------------------------------------------------- */
    /*                                 INITIALIZE                                 */
    /* -------------------------------------------------------------------------- */

    function initialize(address _viewer) external initializer {
        __Governable_init(msg.sender);
        __ERC20_init("Jones GM", "jGM");

        viewer = IGMViewer(_viewer);
        oracle = IAggregatorV3(0x50834F3163758fcC1Df9973b6e91f0F0F0434aD3);
        sequencer = ISequencer(0xFdB631F5EE196F0ed6FAa767959853A9F217697D);

        STALE_GRACE_PERIOD = 86400;
    }

    /* -------------------------------------------------------------------------- */
    /*                                 ONLY OPERATOR                              */
    /* -------------------------------------------------------------------------- */

    function mint(uint256 shares, address receiver) external virtual onlyOperator {
        _mint(receiver, shares);
    }

    function burn(address owner, uint256 shares) external virtual onlyOperator {
        _burn(owner, shares);
    }

    function updateTotalValue(uint256 _lastUSDTotalValue) external onlyOperator {
        lastUSDTotalValue = _lastUSDTotalValue;
    }

    /* -------------------------------------------------------------------------- */
    /*                                ONLY GOVERNOR                               */
    /* -------------------------------------------------------------------------- */

    function updateViewer(address _viewer) external virtual onlyGovernor {
        viewer = IGMViewer(_viewer);
    }

    /**
     * @notice Update Oracle
     */
    function updateOracle(address _oracle) external onlyGovernor {
        oracle = IAggregatorV3(_oracle);
    }

    /**
     * @notice Update Sequencer
     */
    function updateSequencer(address _sequencer) external onlyGovernor {
        sequencer = ISequencer(_sequencer);
    }

    /**
     * @notice Update Oracle grace period.
     */
    function updateOracleGracePeriod(uint256 _gracePeriod) external onlyGovernor {
        STALE_GRACE_PERIOD = _gracePeriod;
    }

    /* -------------------------------------------------------------------------- */
    /*                                   ONLY VIEW                                */
    /* -------------------------------------------------------------------------- */

    /**
     * @dev most likely 18.
     */
    function decimals() public view override(ERC20Upgradeable, IjGMIndex) returns (uint8) {
        return super.decimals();
    }

    /**
     * @dev Get total supply.
     */
    function totalSupply() public view override(ERC20Upgradeable, IjGMIndex) returns (uint256) {
        return super.totalSupply();
    }

    /**
     * @dev Get account balance..
     */
    function balanceOf(address account) public view override(ERC20Upgradeable, IjGMIndex) returns (uint256) {
        return super.balanceOf(account);
    }

    /**
     * @dev Total Value in USD
     */
    function totalValue() public view returns (uint256) {
        return viewer.getTotalValue();
    }

    /**
     * @dev See {IERC4626-previewDeposit}.
     */
    function previewDeposit(uint256 assets) external view returns (uint256) {
        uint256 supply = totalSupply();

        /// @notice 18 decimals
        uint256 usdValueIn = assets * USDCPrice() * 1e4;

        if (supply > 0) {
            return usdValueIn.mulDivDown(supply, lastUSDTotalValue); // 18 decimals
        } else {
            return usdValueIn; // 18 decimals
        }
    }

    /**
     * @dev See {IERC4626-previewRedeem}.
     */
    function previewRedeem(uint256 shares) external view returns (uint256) {}

    /**
     * @dev preview redeem based on data provided by the bot.
     */
    function previewRedeem(bytes calldata _data) external view returns (uint256) {
        //18 decimals - 8 decimals - 4 decimals = 6 decimals
        return viewer.getDataValue(_data, false) / USDCPrice() / 1e4;
    }

    /**
     * @notice Get USD Price; 8 decimals.
     */
    function USDCPrice() public view returns (uint256) {
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

        if (block.timestamp > updatedAt + STALE_GRACE_PERIOD) {
            revert StalePriceUpdate();
        }

        return uint256(currentPrice);
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}
