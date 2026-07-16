// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import {IBondingCurve} from "src/interfaces/IBondingCurve.sol";
import {IReferralManager} from "src/interfaces/IReferralManager.sol";
import {IWETH} from "src/interfaces/IWETH.sol";

import {CurveMath} from "src/math/CurveMath.sol";
import {BCToken} from "src/BCToken.sol";
import {BCTokenFactory} from "src/BCTokenFactory.sol";

/**
 * @title BondingCurve.
 * @author Camelot
 * @notice Bonding curve contract managing buy and sell operations for BCTokens
 * with referral fee distribution.
 */
contract BondingCurve is ReentrancyGuard, IBondingCurve {
    /// @notice The maximum fee that can be charged on transactions.
    uint256 public constant MAX_FEE = 500;

    /// @notice Address of the deployed bonding curve formula contract.
    address public immutable formula;

    /// @notice Address of the deployed factory contract.
    BCTokenFactory public immutable factory;

    /// @notice Address of the WETH contract.
    address public immutable weth;

    /// @notice The buy/sell fee charged by the protocol.
    uint256 public txFee;

    /// @notice The address of the referral manager.
    address public referralManager;

    /**
     * @notice Initialises the bonding curve with factory, formula, WETH, and referral manager.
     * @param _factory The address of the factory of the protocol.
     * @param _formula The address of the bonding curve formula.
     * @param _weth The address of the WETH contract.
     * @param _referralManager The address of the referral manager contract.
     */
    constructor(address _factory, address _formula, address _weth, address _referralManager) {
        factory = BCTokenFactory(payable(_factory));
        formula = _formula;
        weth = _weth;
        referralManager = _referralManager;
    }

    /**
     * @inheritdoc IBondingCurve
     */
    function buy(address token, address affiliate, uint256 expectedOut)
        external
        payable
        nonReentrant
        returns (uint256)
    {
        if (factory.PROTOCOL_PAUSED()) revert ProtocolPaused();
        if (msg.value == 0) revert InvalidAmount();

        if (affiliate != address(0)) {
            IReferralManager(referralManager).setReferral(affiliate, msg.sender);
        }

        uint256 initialBalance = address(this).balance - msg.value;

        uint256 fee = _calculateFee(msg.value);
        uint256 cost = msg.value - fee;
        uint256 amountOut = getAmountOutBuy(token, cost);
        if (amountOut == 0) revert InvalidAmount();

        BCToken coin = BCToken(token);

        uint256 supplyLeft = coin.MAX_SUPPLY() - coin.totalSupply();

        if (amountOut > supplyLeft) {
            amountOut = supplyLeft;
            cost = CurveMath(formula).purchaseCost(
                supplyLeft + coin.INITIAL_SUPPLY(),
                coin.reserveBalance(),
                amountOut
            );

            fee = txFee > 0 ? (cost * txFee) / 10_000 : 0;

            (bool ok,) = payable(msg.sender).call{value: msg.value - cost - fee}("");

            if (!ok) revert FailedToSendETH();
        }

        if (amountOut < expectedOut) revert SlippageTooHigh();

        coin.mint{value: cost}(msg.sender, amountOut, cost);

        uint256 price = getAmountOutSell(token, 1 ether);
        uint256 totalSupply = coin.totalSupply();

        emit Buy(
            msg.sender,
            token,
            cost + fee,
            amountOut,
            totalSupply,
            price * totalSupply,
            price,
            coin.reserveBalance()
        );

        if (coin.isLPd()) emit LPSeeded(token, coin.lp());

        // Handle referral fees if referral manager is set.
        uint256 referralFee = _handleReferralFees(msg.sender, fee);

        return amountOut;
    }

    /**
     * @inheritdoc IBondingCurve
     */
    function sell(address token, address affiliate, uint256 amount, uint256 expectedOut)
        external
        nonReentrant
        returns (uint256)
    {
        if (factory.PROTOCOL_PAUSED()) revert ProtocolPaused();
        if (amount == 0) revert InvalidAmount();

        if (affiliate != address(0)) {
            IReferralManager(referralManager).setReferral(affiliate, msg.sender);
        }

        uint256 initialBalance = address(this).balance;

        uint256 amountOut = getAmountOutSell(token, amount);
        BCToken coin = BCToken(token);

        if (amountOut == 0 || amountOut > coin.TVL()) revert InvalidAmount();

        uint256 fee = _calculateFee(amountOut + 1);
        if (amountOut - fee < expectedOut) revert SlippageTooHigh();

        coin.burnCurve(msg.sender, amount, amountOut);

        (bool ok,) = msg.sender.call{value: amountOut - fee}("");
        if (!ok) revert FailedToSendETH();

        uint256 price = getAmountOutSell(token, 1 ether);
        uint256 totalSupply = coin.totalSupply();

        emit Sell(
            msg.sender,
            token,
            amount,
            amountOut - fee,
            totalSupply,
            price * totalSupply,
            price,
            coin.reserveBalance()
        );

        // Handle referral fees if referral manager is set.
        uint256 referralFee = _handleReferralFees(msg.sender, fee);

        return amountOut - fee;
    }

    /**
     * @inheritdoc IBondingCurve
     */
    function getAmountOutBuy(address token, uint256 amount) public view returns (uint256) {
        _validateToken(token);
        BCToken coin = BCToken(token);

        return CurveMath(formula).purchaseTargetAmount(
            coin.MAX_SUPPLY() - coin.totalSupply() + coin.INITIAL_SUPPLY(), coin.reserveBalance(), amount
        );
    }

    /**
     * @inheritdoc IBondingCurve
     */
    function getAmountOutSell(address token, uint256 amount) public view returns (uint256) {
        _validateToken(token);
        BCToken coin = BCToken(token);

        return CurveMath(formula).saleTargetAmount(
            coin.MAX_SUPPLY() - coin.totalSupply() + coin.INITIAL_SUPPLY(), coin.reserveBalance(), amount
        );
    }

    /**
     * @inheritdoc IBondingCurve
     */
    function getAmountOutBuySupplyCapped(address token, uint256 amount) external view returns (uint256) {
        _validateToken(token);
        BCToken coin = BCToken(token);

        uint256 maxSupply = coin.MAX_SUPPLY();
        uint256 out = CurveMath(formula).purchaseTargetAmount(
            maxSupply - coin.totalSupply() + coin.INITIAL_SUPPLY(), coin.reserveBalance(), amount
        );

        uint256 supplyLeft = maxSupply - coin.totalSupply();
        if(out > supplyLeft) {
            out = supplyLeft;
        }

        return out;
    }

    /**
     * @inheritdoc IBondingCurve
     */
    function withdraw(uint256 amount) external {
        _validateFactoryOwner();

        (bool ok,) = factory.owner().call{value: amount}("");

        if (!ok) revert FailedToSendETH();
    }

    /**
     * @inheritdoc IBondingCurve
     */
    function setTxFee(uint256 _fee) external {
        _validateFactoryOwner();

        if (_fee > MAX_FEE) revert MaxFeeExceeded(MAX_FEE);

        txFee = _fee;
        emit TxFeeUpdated(txFee);
    }

    /**
     * @inheritdoc IBondingCurve
     */
    function setReferralManager(address _referralManager) external {
        _validateFactoryOwner();

        referralManager = _referralManager;
        emit ReferralManagerUpdated(_referralManager);
    }

    /**
     * @notice Calculates the fee to charge on buy/sell operations.
     * @param amount The amount to calculate the fee on.
     * @return The calculated fee amount.
     */
    function _calculateFee(uint256 amount) internal view returns (uint256) {
        return txFee > 0 ? (amount * txFee) / (10_000 + txFee) : 0;
    }

    /**
     * @notice Handles referral fees by converting ETH to WETH and sending to ReferralManager.
     * @param user The user who is buying/selling.
     * @param protocolFee The total protocol fee collected.
     * @return referralFee The amount of fee sent to the referral manager.
     */
    function _handleReferralFees(address user, uint256 protocolFee) internal returns (uint256 referralFee) {
        if (referralManager == address(0) || protocolFee == 0) return 0;

        referralFee = IReferralManager(referralManager).quoteReferralFee(user, protocolFee);

        if (referralFee == 0) return 0;

        // Convert ETH to WETH.
        IWETH(weth).deposit{value: referralFee}();

        // Approve and send to referral manager.
        IWETH(weth).approve(referralManager, referralFee);
        IReferralManager(referralManager).receiveReferral(user, weth, referralFee);
    }

    /**
     * @notice Validates that the caller is the factory owner.
     */
    function _validateFactoryOwner() internal view {
        if (msg.sender != factory.owner()) revert InvalidCaller();
    }

    /**
     * @notice Validates that the token address is a valid BCToken.
     */
    function _validateToken(address token) internal view {
        if (!factory.bcTokens(token)) revert InvalidToken();
    }

    /**
     * @notice Receives ETH from sell refunds and fee distribution.
     */
    receive() external payable {}
}
