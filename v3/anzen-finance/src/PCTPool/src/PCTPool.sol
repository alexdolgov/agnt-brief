// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import "./PCT.sol";
import "./utils/SafeMath.sol";

import "./interfaces/ISPCT.sol";
import "./interfaces/ISPCTPriceOracle.sol";

/**
 * @title Interest-bearing ERC20-like token for Anzen protocol.
 */

contract PCTPool is PCT, AccessControl, Pausable {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    bytes32 public constant POOL_MANAGER_ROLE = keccak256("POOL_MANAGER_ROLE");

    // Restricting call deposit and redeem in the same block.
    mapping(address => uint256) private _status;

    // Interest mode
    bool public mode = false;

    // Used to calculate total executed shares.
    uint256 public executedShares;
    // Used to calculate total pooled SPCT.
    uint256 public totalPooledSPCT;
    // Used to calculate collateral rate.
    uint256 public collateralRate = 1;

    // Fee Zone
    uint256 public constant FEE_COEFFICIENT = 1e8;
    // Fee should be less than 1%.
    uint256 public constant maxMintFeeRate = FEE_COEFFICIENT / 100;
    uint256 public constant maxRedeemFeeRate = FEE_COEFFICIENT / 100;
    uint256 public mintFeeRate;
    uint256 public redeemFeeRate;
    // Protocol treasury should be a mulsig wallet.
    address public treasury;

    // Lend token
    IERC20 public usdc;
    // Collateral token
    ISPCT public spct;
    // Price oracle
    ISPCTPriceOracle public oracle;

    event ModeSwitch(bool mode, uint256 timestamp);

    event Deposit(address indexed user, uint256 amount, uint256 timestamp);
    event Redeem(address indexed user, uint256 amount, uint256 timestamp);
    event Mint(address indexed user, uint256 amount, uint256 timestamp);
    event Burn(address indexed user, uint256 amount, uint256 timestamp);

    event mintFeeRateChanged(uint256 newFeeRate, uint256 timestamp);
    event redeemFeeRateChanged(uint256 newFeeRate, uint256 timestamp);
    event treasuryChanged(address newTreasury, uint256 timestamp);
    event oracleChanged(address newOracle, uint256 timestamp);

    constructor(address admin, IERC20 _usdc, ISPCT _spct, ISPCTPriceOracle _oracle)
        ERC20("Private Credit Token", "PCT")
    {
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        usdc = _usdc;
        spct = _spct;
        oracle = _oracle;
    }

    modifier checkCollateralRate() {
        _checkCollateralRate();
        _;
    }

    modifier checkRebasing() {
        _checkRebasing();
        _;
    }

    /**
     * @notice Check collateral rate.
     */
    function _checkCollateralRate() internal {
        if (oracle.getPrice() / 1e18 < collateralRate) {
            _pause();
            revert("UNDER_COLLATERAL_RATE,SMART_CONTRACT_IS_PAUSED_NOW");
        }
    }

    /**
     * @notice Check rebasing.
     */
    function _checkRebasing() internal {
        totalPooledSPCT = spct.getPooledUSDByShares(executedShares);
    }

    /**
     * @notice Pause the contract. Revert if already paused.
     */
    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    /**
     * @notice Unpause the contract. Revert if already unpaused.
     */
    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    /**
     * @notice Switch to interest mode.
     * Emits a `ModeSwitch` event.
     */
    function switchMode() external onlyRole(DEFAULT_ADMIN_ROLE) {
        mode = !mode;
        emit ModeSwitch(mode, block.timestamp);
    }

    /**
     * @notice deposit USDC. (borrow USDC from user and deposit collateral)
     * Emits a `Deposit` event.
     *
     * @param _amount the amount of USDC
     */
    function deposit(uint256 _amount) external whenNotPaused checkCollateralRate checkRebasing {
        require(mode == false, "PLEASE_MIGRATE_TO_NEW_VERSION");
        require(_amount > 0, "DEPOSIT_AMOUNT_IS_ZERO");
        require(_status[tx.origin] != block.number, "FUNCTION_RESTRICTION");

        usdc.transferFrom(msg.sender, address(this), _amount);
        usdc.approve(address(spct), _amount); // approve for depositing collateral

        // Due to different precisions, convert it to PCT.
        uint256 convertToSPCT = _amount.mul(1e12);
        // Get mint rate from spct for calculating.
        uint256 spctMintFeeRate = spct.mintFeeRate();

        // calculate fee with PCT
        if (mintFeeRate == 0) {
            if (spctMintFeeRate == 0) {
                _mintPCT(msg.sender, convertToSPCT);

                spct.deposit(_amount);
            } else {
                uint256 spctFeeAmount = convertToSPCT.mul(spctMintFeeRate).div(FEE_COEFFICIENT);
                uint256 spctAmountAfterFee = convertToSPCT.sub(spctFeeAmount);

                _mintPCT(msg.sender, spctAmountAfterFee);

                spct.deposit(_amount);
            }
        } else {
            if (spctMintFeeRate == 0) {
                uint256 feeAmount = convertToSPCT.mul(mintFeeRate).div(FEE_COEFFICIENT);
                uint256 amountAfterFee = convertToSPCT.sub(feeAmount);

                _mintPCT(msg.sender, amountAfterFee);

                if (feeAmount != 0) {
                    _mintPCT(treasury, feeAmount);
                }

                spct.deposit(_amount);
            } else {
                uint256 spctFeeAmount = convertToSPCT.mul(spctMintFeeRate).div(FEE_COEFFICIENT);
                uint256 spctAmountAfterFee = convertToSPCT.sub(spctFeeAmount);
                uint256 feeAmount = spctAmountAfterFee.mul(mintFeeRate).div(FEE_COEFFICIENT);
                uint256 amountAfterFee = spctAmountAfterFee.sub(feeAmount);

                _mintPCT(msg.sender, amountAfterFee);

                if (feeAmount != 0) {
                    _mintPCT(treasury, feeAmount);
                }

                spct.deposit(_amount);
            }
        }

        _status[tx.origin] = block.number;
        emit Deposit(msg.sender, _amount, block.timestamp);
    }

    /**
     * @notice redeem PCT. (get back USDC from borrower and release collateral)
     * 6 decimal input
     * Emits a `Redeem` event.
     *
     * @param _amount the amount of PCT.
     */
    function redeem(uint256 _amount) external whenNotPaused checkCollateralRate checkRebasing {
        require(spct.reserveUSD().mul(1e12) >= _amount, "RESERVE_INSUFFICIENT");
        require(_amount > 0, "REDEEM_AMOUNT_IS_ZERO");
        require(_status[tx.origin] != block.number, "FUNCTION_RESTRICTION");

        // Due to different precisions, convert it to PCT.
        uint256 convertToUSDC;
        // Get redeem rate from spct for calculating.
        uint256 spctRedeemFeeRate = spct.redeemFeeRate();

        // calculate fee with PCT
        if (redeemFeeRate == 0) {
            if (spctRedeemFeeRate == 0) {
                _burnPCT(msg.sender, _amount);

                spct.redeem(_amount);
                convertToUSDC = _amount.div(1e12);
                usdc.transfer(msg.sender, convertToUSDC);
            } else {
                uint256 spctFeeAmount = _amount.mul(spctRedeemFeeRate).div(FEE_COEFFICIENT);
                uint256 spctAmountAfterFee = _amount.sub(spctFeeAmount);

                _burnPCT(msg.sender, _amount);

                spct.redeem(_amount);
                convertToUSDC = spctAmountAfterFee.div(1e12);
                usdc.transfer(msg.sender, convertToUSDC);
            }
        } else {
            if (spctRedeemFeeRate == 0) {
                uint256 feeAmount = _amount.mul(redeemFeeRate).div(FEE_COEFFICIENT);
                uint256 amountAfterFee = _amount.sub(feeAmount);

                _burnPCT(msg.sender, amountAfterFee);

                if (feeAmount != 0) {
                    _transfer(msg.sender, treasury, feeAmount);
                }

                spct.redeem(amountAfterFee);
                convertToUSDC = amountAfterFee.div(1e12);
                usdc.transfer(msg.sender, convertToUSDC);
            } else {
                uint256 feeAmount = _amount.mul(redeemFeeRate).div(FEE_COEFFICIENT);
                uint256 amountAfterFee = _amount.sub(feeAmount);
                uint256 spctFeeAmount = amountAfterFee.mul(spctRedeemFeeRate).div(FEE_COEFFICIENT);
                uint256 spctAmountAfterFee = amountAfterFee.sub(spctFeeAmount);

                _burnPCT(msg.sender, amountAfterFee);

                if (feeAmount != 0) {
                    _transfer(msg.sender, treasury, feeAmount);
                }

                spct.redeem(amountAfterFee);
                convertToUSDC = spctAmountAfterFee.div(1e12);
                usdc.transfer(msg.sender, convertToUSDC);
            }
        }

        _status[tx.origin] = block.number;
        emit Redeem(msg.sender, _amount, block.timestamp);
    }

    /**
     * @notice total pooled SPCT.
     */
    function _getTotalPooledSPCT() internal view override returns (uint256) {
        return spct.getPooledUSDByShares(executedShares);
    }

    /**
     * @dev mint PCT for _receiver.
     * Emits `Mint` and `Transfer` event.
     *
     * @param _receiver address to receive SPCT.
     * @param _amount the amount of SPCT.
     */
    function _mintPCT(address _receiver, uint256 _amount) internal {
        uint256 sharesAmount = getSharesByPooledSPCT(_amount);
        if (sharesAmount == 0) {
            // 1 PCT shares are equal to 1 USDC.
            sharesAmount = _amount;
        }
        _mintShares(_receiver, sharesAmount);

        executedShares = executedShares.add(sharesAmount);
        totalPooledSPCT = totalPooledSPCT.add(_amount);
        emit Mint(msg.sender, _amount, block.timestamp);
        emit Transfer(address(0), _receiver, _amount);
    }

    /**
     * @dev burn PCT from _receiver.
     * Emits `Burn` and `Transfer` event.
     *
     * @param _account address to burn PCT from.
     * @param _amount the amount of PCT.
     */
    function _burnPCT(address _account, uint256 _amount) internal {
        uint256 sharesAmount = getSharesByPooledSPCT(_amount);
        require(sharesAmount > 0, "SHARES_AMOUNT_IS_ZERO");
        _burnShares(_account, sharesAmount);

        executedShares = executedShares.sub(sharesAmount);
        totalPooledSPCT = totalPooledSPCT.sub(_amount);
        emit Burn(msg.sender, _amount, block.timestamp);
        emit Transfer(_account, address(0), _amount);
    }

    /**
     * @notice Mint fee.
     *
     * @param newMintFeeRate new mint fee rate.
     */
    function setMintFeeRate(uint256 newMintFeeRate) external onlyRole(POOL_MANAGER_ROLE) {
        require(newMintFeeRate <= maxMintFeeRate, "SHOULD_BE_LESS_THAN_1P");
        mintFeeRate = newMintFeeRate;
        emit mintFeeRateChanged(mintFeeRate, block.timestamp);
    }

    /**
     * @notice Redeem fee.
     *
     * @param newRedeemFeeRate new redeem fee rate.
     */
    function setRedeemFeeRate(uint256 newRedeemFeeRate) external onlyRole(POOL_MANAGER_ROLE) {
        require(newRedeemFeeRate <= maxRedeemFeeRate, "SHOULD_BE_LESS_THAN_1P");
        redeemFeeRate = newRedeemFeeRate;
        emit redeemFeeRateChanged(redeemFeeRate, block.timestamp);
    }

    /**
     * @notice Treasury address.
     *
     * @param newTreasury new treasury address.
     */
    function setTreasury(address newTreasury) external onlyRole(POOL_MANAGER_ROLE) {
        require(newTreasury != address(0), "SET_UP_TO_ZERO_ADDR");
        treasury = newTreasury;
        emit treasuryChanged(treasury, block.timestamp);
    }

    /**
     * @notice Oracle address.
     *
     * @param newOracle new Oracle address.
     */
    function setOracle(address newOracle) external onlyRole(POOL_MANAGER_ROLE) {
        require(newOracle != address(0), "SET_UP_TO_ZERO_ADDR");
        oracle = ISPCTPriceOracle(newOracle);
        emit oracleChanged(newOracle, block.timestamp);
    }

    /**
     * @notice Rescue ERC20 tokens locked up in this contract.
     * @param token ERC20 token contract address.
     * @param to recipient address.
     * @param amount amount to withdraw.
     */
    function rescueERC20(IERC20 token, address to, uint256 amount) external onlyRole(POOL_MANAGER_ROLE) {
        // If is SPCT, check total pooled amount first.
        if (address(token) == address(spct)) {
            require(amount <= spct.balanceOf(address(this)).sub(totalPooledSPCT), "SPCT_RESCUE_AMOUNT_EXCEED_DEBIT");
        }
        token.safeTransfer(to, amount);
    }
}
