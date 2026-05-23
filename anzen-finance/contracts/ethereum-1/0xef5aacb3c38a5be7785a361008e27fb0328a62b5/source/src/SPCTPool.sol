// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

import "./interfaces/ISPCT.sol";
import "./SPCT.sol";
import "./utils/SafeMath.sol";

/**
 * @title Whitelist Interest-bearing ERC20-like token for Anzen protocol.
 */

contract SPCTPool is SPCT, AccessControl, Pausable {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    bytes32 public constant POOL_MANAGER_ROLE = keccak256("POOL_MANAGER_ROLE");

    // Restricting call deposit and redeem in the same block.
    mapping(address => uint256) private _status;

    // Used to record last distribution timestamp.
    uint256 public lastDistribution;
    // Used to calculate total executed shares.
    uint256 public executedShares;
    // Used to calculate total pooled USD.
    uint256 public totalPooledUSD;
    // Used to calculate the reserve USD in pool.
    uint256 public reserveUSD;

    // Fee Zone
    uint256 public constant FEE_COEFFICIENT = 1e8;
    // Fee should be less than 1%.
    uint256 public constant maxMintFeeRate = FEE_COEFFICIENT / 100;
    uint256 public constant maxRedeemFeeRate = FEE_COEFFICIENT / 100;
    uint256 public mintFeeRate;
    uint256 public redeemFeeRate;
    // Protocol treasury should be a mulsig wallet.
    address public treasury;

    // Used to mint SPCT.
    IERC20 public usdc;

    event Deposit(address indexed user, uint256 amount, uint256 timestamp);
    event Redeem(address indexed user, uint256 amount, uint256 timestamp);
    event Mint(address indexed user, uint256 amount, uint256 timestamp);
    event Burn(address indexed user, uint256 amount, uint256 timestamp);
    event Execute(uint256 amount, uint256 timestamp);
    event Repay(uint256 amount, uint256 timestamp);
    event InterestsDistribute(uint256 amount, uint256 fromTime, uint256 toTime);

    event mintFeeRateChanged(uint256 newFeeRate, uint256 timestamp);
    event redeemFeeRateChanged(uint256 newFeeRate, uint256 timestamp);
    event treasuryChanged(address newTreasury, uint256 timestamp);

    constructor(address admin, IERC20 _usdc) ERC20("Secured Private Credit Token", "SPCT") {
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        usdc = _usdc;
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
     * @notice Deposit USDC.
     * Emits a `Deposit` event.
     *
     * @param _amount the amount of USDC
     */
    function deposit(uint256 _amount) external whenNotPaused {
        require(_amount > 0, "DEPOSIT_AMOUNT_IS_ZERO");
        require(_status[tx.origin] != block.number, "FUNCTION_RESTRICTION");

        usdc.transferFrom(msg.sender, address(this), _amount);
        reserveUSD = reserveUSD.add(_amount);

        // Due to different precisions, convert it to SPCT.
        uint256 convertToSPCT = _amount.mul(1e12);

        // calculate fee with SPCT
        if (mintFeeRate == 0) {
            _mintSPCT(msg.sender, convertToSPCT);
        } else {
            uint256 feeAmount = convertToSPCT.mul(mintFeeRate).div(FEE_COEFFICIENT);
            uint256 amountAfterFee = convertToSPCT.sub(feeAmount);

            _mintSPCT(msg.sender, amountAfterFee);

            if (feeAmount != 0) {
                _mintSPCT(treasury, feeAmount);
            }
        }

        _status[tx.origin] = block.number;
        emit Deposit(msg.sender, _amount, block.timestamp);
    }

    /**
     * @notice Deposit via fiat.
     * Emits a `Deposit` event.
     *
     * @param _amount the amount of USD
     */
    function depositByFiat(address _user, uint256 _amount) external whenNotPaused onlyRole(POOL_MANAGER_ROLE) {
        require(_amount > 0, "DEPOSIT_AMOUNT_IS_ZERO");
        _mintSPCT(_user, _amount);
        emit Deposit(msg.sender, _amount, block.timestamp);
    }

    /**
     * @notice Redeem SPCT.
     * Emits a `Redeem` event.
     *
     * @param _amount the amount of SPCT.
     */
    function redeem(uint256 _amount) external whenNotPaused {
        require(_amount > 0, "REDEEM_AMOUNT_IS_ZERO");
        require(_status[tx.origin] != block.number, "FUNCTION_RESTRICTION");

        // Due to different precisions, convert it to SPCT.
        uint256 convertToUSDC;

        // calculate fee with SPCT
        if (redeemFeeRate == 0) {
            _burnSPCT(msg.sender, _amount);
            convertToUSDC = _amount.div(1e12);
        } else {
            uint256 feeAmount = _amount.mul(redeemFeeRate).div(FEE_COEFFICIENT);
            uint256 amountAfterFee = _amount.sub(feeAmount);

            _burnSPCT(msg.sender, amountAfterFee);
            convertToUSDC = amountAfterFee.div(1e12);

            if (feeAmount != 0) {
                _transfer(msg.sender, treasury, feeAmount);
            }
        }

        usdc.transfer(msg.sender, convertToUSDC);
        reserveUSD = reserveUSD.sub(convertToUSDC);

        _status[tx.origin] = block.number;
        emit Redeem(msg.sender, _amount, block.timestamp);
    }

    /**
     * @notice Redeem via fiat.
     * Emits a `Redeem` event.
     *
     * @param _amount the amount of USD
     */
    function redeemByFiat(address _user, uint256 _amount) external whenNotPaused onlyRole(POOL_MANAGER_ROLE) {
        require(_amount > 0, "REDEEM_AMOUNT_IS_ZERO");
        _burnSPCT(_user, _amount);
        emit Redeem(msg.sender, _amount, block.timestamp);
    }

    /**
     * @notice Execute USDC to buy private credit.
     * Emits a `Execute` event.
     *
     * @param _amount the amount of USDC (6 decimals).
     */

    function execute(uint256 _amount) external onlyRole(POOL_MANAGER_ROLE) {
        require(_amount > 0, "EXECUTE_AMOUNT_IS_ZERO");

        executedShares = executedShares.add(_amount);
        reserveUSD = reserveUSD.sub(_amount);
        usdc.safeTransfer(msg.sender, _amount);

        emit Execute(_amount, block.timestamp);
    }

    /**
     * @notice Repay USDC from private credit.
     * Emits a `Repay` event.
     *
     * @param _amount the amount of USDC (6 decimals).
     */
    function repay(uint256 _amount) external onlyRole(POOL_MANAGER_ROLE) {
        require(_amount > 0, "REPAY_AMOUNT_IS_ZERO");
        require(executedShares.sub(_amount) >= 0, "REPAY_AMOUNT_EXCEED_EXECUTED_SHARES");

        executedShares = executedShares.sub(_amount);
        reserveUSD = reserveUSD.add(_amount);
        usdc.safeTransferFrom(msg.sender, address(this), _amount);
    }

    /**
     * @notice Distribute interests from private credit.
     * Emits a `InterestsDistribute` event.
     *
     * @param _amount the amount of USDC.
     * @param _fromTime interests timestamp starts from.
     * @param _toTime interests timestamp ends from.
     */
    function distributeInterests(uint256 _amount, uint256 _fromTime, uint256 _toTime)
        external
        onlyRole(POOL_MANAGER_ROLE)
    {
        require(_amount > 0, "DISTRIBUTE_AMOUNT_IS_ZERO");

        usdc.safeTransferFrom(msg.sender, address(this), _amount);

        // Due to different precisions, convert it to SPCT.
        uint256 convertToSPCT = _amount.mul(1e12);

        totalPooledUSD = totalPooledUSD.add(convertToSPCT);
        reserveUSD = reserveUSD.add(_amount);
        lastDistribution = block.timestamp;

        emit InterestsDistribute(_amount, _fromTime, _toTime);
    }

    /**
     * @notice Only KYC users are allow to operate.
     *
     * @param _user user's address.
     */
    function addToWhitelist(address _user) external onlyRole(POOL_MANAGER_ROLE) {
        _addToWhitelist(_user);
    }

    /**
     * @notice Only KYC users are allow to operate.
     *
     * @param _users array of user addresses.
     */
    function addBatchToWhitelist(address[] calldata _users) external onlyRole(POOL_MANAGER_ROLE) {
        uint256 numUsers = _users.length;
        for (uint256 i; i < numUsers; ++i) {
            _addToWhitelist(_users[i]);
        }
    }

    /**
     * @notice Only KYC users are allow to operate.
     *
     * @param _user user's address.
     */
    function removeFromWhitelist(address _user) external onlyRole(POOL_MANAGER_ROLE) {
        _removeFromWhitelist(_user);
    }

    /**
     * @notice Only KYC users are allow to operate.
     *
     * @param _users array of user addresses.
     */
    function removeBatchFromWhitelist(address[] calldata _users) external onlyRole(POOL_MANAGER_ROLE) {
        uint256 numUsers = _users.length;
        for (uint256 i; i < numUsers; ++i) {
            _removeFromWhitelist(_users[i]);
        }
    }

    /**
     * @dev mint SPCT for _receiver.
     * Emits `Mint` and `Transfer` event.
     *
     * @param _receiver address to receive SPCT.
     * @param _amount the amount of SPCT.
     */
    function _mintSPCT(address _receiver, uint256 _amount) internal {
        uint256 sharesAmount = getSharesByPooledUSD(_amount);
        if (sharesAmount == 0) {
            // 1 SPCT shares are equal to 1 USDC.
            sharesAmount = _amount;
        }
        _mintShares(_receiver, sharesAmount);

        totalPooledUSD = totalPooledUSD.add(_amount);
        emit Mint(msg.sender, _amount, block.timestamp);
        emit Transfer(address(0), _receiver, _amount);
    }

    /**
     * @dev burn SPCT from _receiver.
     * Emits `Burn` and `Transfer` event.
     *
     * @param _account address to burn SPCT from.
     * @param _amount the amount of SPCT.
     */
    function _burnSPCT(address _account, uint256 _amount) internal {
        uint256 sharesAmount = getSharesByPooledUSD(_amount);
        require(sharesAmount > 0, "SHARES_AMOUNT_IS_ZERO");
        _burnShares(_account, sharesAmount);

        totalPooledUSD = totalPooledUSD.sub(_amount);
        emit Burn(msg.sender, _amount, block.timestamp);
        emit Transfer(_account, address(0), _amount);
    }

    /**
     * @notice total pooled USD.
     */
    function _getTotalPooledUSD() internal view override returns (uint256) {
        return totalPooledUSD;
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
     * @notice Rescue ERC20 tokens locked up in this contract.
     * @param token ERC20 token contract address.
     * @param to recipient address.
     * @param amount amount to withdraw.
     */
    function rescueERC20(IERC20 token, address to, uint256 amount) external onlyRole(POOL_MANAGER_ROLE) {
        // If is USDC, check reserve usd amount first.
        if (address(token) == address(usdc)) {
            require(amount <= usdc.balanceOf(address(this)).sub(reserveUSD), "USDC_RESCUE_AMOUNT_EXCEED_DEBIT");
        }
        token.safeTransfer(to, amount);
    }
}
