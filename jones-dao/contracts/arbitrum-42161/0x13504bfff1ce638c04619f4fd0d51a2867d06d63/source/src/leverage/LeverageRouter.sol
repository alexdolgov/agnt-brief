// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.20;

import {ReentrancyGuardUpgradeable} from "openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {PausableUpgradeable} from "openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {UpgradeableOperable} from "src/common/UpgradeableOperable.sol";
import {IUSDC} from "src/interfaces/leverage/IUSDC.sol";

import {FixedPointMathLib} from "solmate/utils/FixedPointMathLib.sol";
import {IGMRouter} from "src/interfaces/gm/IGMRouter.sol";

import {IjGM} from "src/interfaces/leverage/IjGM.sol";

import {ILeverageStrategy} from "src/interfaces/leverage/ILeverageStrategy.sol";
import {ILeverageRouter} from "src/interfaces/leverage/ILeverageRouter.sol";

contract LeverageRouter is ILeverageRouter, UpgradeableOperable, ReentrancyGuardUpgradeable, PausableUpgradeable {
    using FixedPointMathLib for uint256;

    IjGM public jGM;
    ILeverageStrategy public leverageStrategy;

    ///@notice Nonce for struct param
    uint256 public nonce;

    ///@notice Signer Bot
    address public leverageRouter;

    IUSDC public constant USDC = IUSDC(0xaf88d065e77c8cC2239327C5EDb3A432268e5831);

    /// @notice Incentives
    address public incentiveReceiver;
    uint256 public depositRate;

    /// @notice Basis Points
    uint256 public constant BASIS = 1e12;

    /// @notice Min deposit
    uint256 public minDeposit;

    /// @notice Min whitdrawal
    uint256 public minWithdrawal;

    /// @notice slippage
    uint256 public slippage;

    /// @notice Censorship List
    mapping(address => bool) public censorshipList;

    function initialize(address _strategy, address _vault, address _incentiveReceiver, uint256 _depositRate)
        external
        initializer
    {
        __Governable_init(msg.sender);
        __ReentrancyGuard_init();

        jGM = IjGM(_vault);
        leverageStrategy = ILeverageStrategy(payable(_strategy));

        incentiveReceiver = _incentiveReceiver;
        if (_depositRate > BASIS) {
            revert InvalidRate();
        }
        depositRate = _depositRate;

        minDeposit = 5e6;
        minWithdrawal = 5e18;

        slippage = BASIS.mulDivDown(995, 1000); // 0.5%
    }

    /**
     * @notice Deposit USDC and get Jones GM.
     * @param _assets Amount of USDC.
     * @param _receiver Who will receive jGM.
     * @param _data Deposit Data.
     */
    function createDeposit(uint256 _assets, address _receiver, bytes calldata _data)
        external
        payable
        nonReentrant
        whenNotPaused
    {
        if (censorshipList[msg.sender] || censorshipList[_receiver]) {
            revert Censored();
        }

        if (_assets < minDeposit) {
            revert NotEnoughAmount();
        }

        if (_receiver == address(0)) {
            revert ZeroAddress();
        }

        ///@notice Decode Data
        ILeverageRouter.GMData memory data = abi.decode(_data, (ILeverageRouter.GMData));

        if (data.data.deadline < block.timestamp) {
            revert DataOutdated();
        }

        if (_assets != data.data.amount || msg.value != data.data.executionAmount) {
            revert InvalidAmount();
        }

        if (data.data.action != 2) {
            revert InvalidAction();
        }

        uint256 usdAUM = jGM.viewer().getTotalValue();

        ///@notice Chheck if bot prices are similar to current prices
        _isInRange(data.data.aum, usdAUM);

        /// @notice Apply deposit retention
        _assets = _applyRetention(_assets, depositRate);

        ///@notice Transfer Assets to Strategy
        USDC.transferFrom(msg.sender, address(leverageStrategy), _assets);

        ///@notice Trigger Deposit in Strategy
        leverageStrategy.onGMDeposit{value: msg.value}(_assets, _receiver, usdAUM, data);

        emit NewDeposit(msg.sender, _receiver, _assets);
    }

    /**
     * @notice Withdraw USDC by burning jGM
     * @param _shares Amount of jGM
     * @param _receiver Who will receive USDC
     * @param _data Withdrawal Data.
     */
    function createWithdrawal(uint256 _shares, address _receiver, bytes calldata _data)
        external
        payable
        nonReentrant
        whenNotPaused
    {
        if (censorshipList[msg.sender] || censorshipList[_receiver]) {
            revert Censored();
        }

        if (_shares < minWithdrawal) {
            revert NotEnoughAmount();
        }

        if (_receiver == address(0)) {
            revert ZeroAddress();
        }

        if (USDC.isBlacklisted(_receiver)) {
            revert ReceiverBlacklisted();
        }

        ///@notice Decode Data
        ILeverageRouter.GMData memory data = abi.decode(_data, (ILeverageRouter.GMData));

        if (!jGM.viewer().isWithdrawInRange(_shares, abi.encode(data.data))) {
            revert OutOfRange();
        }

        if (data.data.deadline < block.timestamp) {
            revert DataOutdated();
        }

        if (_shares != data.data.amount || msg.value != data.data.executionAmount) {
            revert InvalidAmount();
        }

        if (data.data.action != 3) {
            revert InvalidAction();
        }

        uint256 usdAUM = jGM.viewer().getTotalValue();

        ///@notice Check if bot prices are similar to current prices
        _isInRange(data.data.aum, usdAUM);

        uint256 _jGMIndex;

        uint256 supply = jGM.totalSupply(); // 18 decimals

        if (supply > 0) {
            _jGMIndex = _shares.mulDivDown(jGM.viewer().getUnderlyingjGM(usdAUM), supply); // 18 decimals
        } else {
            _jGMIndex = _shares; // 18 decimals
        }

        /// @notice burn shares
        jGM.burn(msg.sender, _shares);

        // Trigger withdraw in Strategy
        leverageStrategy.onGMWithdrawal{value: msg.value}(_jGMIndex, _receiver, usdAUM, data);

        emit NewWithdraw(msg.sender, _receiver, _jGMIndex, _shares);
    }

    /* -------------------------------------------------------------------------- */
    /*                                    VIEW                                    */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Check if this contract is paused.
     */
    function isPaused() external view returns (bool) {
        return super.paused();
    }

    /* -------------------------------------------------------------------------- */
    /*                                 Only Owner                                 */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Censor or un Censor an address.
     */
    function censor(address _user) external onlyGovernor {
        censorshipList[_user] = !censorshipList[_user];
    }

    /**
     * @notice Update slippage.
     */
    function updateSlippage(uint256 _slippage) external onlyGovernor {
        slippage = _slippage;
    }

    /**
     * @notice Update min amounts.
     */
    function updateMin(uint256 _minDeposit, uint256 _minWithdrawal) external onlyGovernor {
        minDeposit = _minDeposit;
        minWithdrawal = _minWithdrawal;
    }

    /**
     * @notice Update incentives.
     */
    function updateIncentives(address _incentiveReceiver, uint256 _rate) external onlyGovernor {
        incentiveReceiver = _incentiveReceiver;
        if (_rate > BASIS) {
            revert InvalidRate();
        }
        depositRate = _rate;
    }

    /**
     * @notice Update contracts.
     */
    function updateContracts(address _vault, address _strategy) external onlyGovernor {
        jGM = IjGM(_vault);
        leverageStrategy = ILeverageStrategy(payable(_strategy));
    }

    /**
     * @notice Pause Deposits.
     */
    function pause() external onlyGovernor {
        if (paused()) {
            _unpause();
        } else {
            _pause();
        }
    }

    /* -------------------------------------------------------------------------- */
    /*                                 PRIVATE                                    */
    /* -------------------------------------------------------------------------- */

    function _applyRetention(uint256 amount, uint256 rate) private returns (uint256 amountAfterRetention) {
        address _receiver = incentiveReceiver;

        if (_receiver != address(0)) {
            if (amount > 0) {
                amountAfterRetention = amount.mulDivDown(rate, BASIS);
                USDC.transferFrom(msg.sender, _receiver, amountAfterRetention);
            }

            emit Retention(_receiver, amount, amountAfterRetention);
        }

        amountAfterRetention = amount - amountAfterRetention;
    }

    /**
     * @notice Apply slippage to specific amount.
     */
    function _applySlippage(uint256 _amount) private view returns (uint256) {
        return _amount.mulDivDown(slippage, BASIS);
    }

    /**
     * @notice Add slippage to specific amount.
     */
    function _addSlippage(uint256 _amount) private view returns (uint256) {
        return _amount.mulDivDown(BASIS, slippage);
    }

    /**
     * @notice Verify if signed AUM is not far from current system AUM.
     * @param _botAUM signed AUM
     * @param _actualAUM current AUM
     */
    function _isInRange(uint256 _botAUM, uint256 _actualAUM) private {
        if (_botAUM > _addSlippage(_actualAUM) || _botAUM < _applySlippage(_actualAUM)) {
            revert OutOfRange();
        }
    }
}
