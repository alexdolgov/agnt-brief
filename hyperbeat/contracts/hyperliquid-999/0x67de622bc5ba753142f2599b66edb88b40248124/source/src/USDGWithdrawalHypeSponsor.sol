// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.29;

import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { ECDSA } from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import { Pausable } from "@openzeppelin/contracts/utils/Pausable.sol";
import { IAggregatorV3 } from "./interfaces/IAggregatorV3.sol";
import { FixedPointMathLib } from "solady/utils/FixedPointMathLib.sol";

/// @title USDGWithdrawalHypeSponsor
/// @notice Allows users to exchange USDG for HYPE at oracle price with an optional fee.
/// @dev Users provide USDG, contract sends HYPE. Requires operator signature for each withdrawal.
contract USDGWithdrawalHypeSponsor is Ownable, ReentrancyGuard, Pausable {
    using SafeERC20 for IERC20Metadata;
    using ECDSA for bytes32;
    using FixedPointMathLib for uint256;

    address public immutable usdg;

    address public operatorSigner;

    mapping(address => uint256) public nonces;

    uint256 public constant BASE = 10e4;

    uint256 public maxOracleStaleness = 1 hours;

    uint256 public sponsorFee;

    address public hypeOracle;

    address public feeRecipient;

    event OperatorSignerSet(address _operatorSigner);
    event SponsorFeeSet(uint256 _sponsorFee);
    event HypeOracleSet(address _hypeOracle);
    event FeeRecipientSet(address _feeRecipient);
    event MaxOracleStalenessSet(uint256 _maxOracleStaleness);
    event SponsoredWithdrawal(
        address _user, uint256 _amount, uint256 _usdgAmount, uint256 _hypePrice, uint256 _sponsorFeeAmount
    );

    error USDGWithdrawalHypeSponsor__InvalidOperatorSignature(
        bytes32 _hash, address _expectedSigner, address _user, uint256 _nonce
    );
    error USDGWithdrawalHypeSponsor__FailedToSendFunds(address _user, uint256 _amount);
    error USDGWithdrawalHypeSponsor__HypePriceIsNegative();
    error USDGWithdrawalHypeSponsor__StaleOraclePrice(uint256 _updatedAt, uint256 _currentTime);
    error USDGWithdrawalHypeSponsor__ZeroAddress();
    error USDGWithdrawalHypeSponsor__DeadlineExpired(uint256 _deadline, uint256 _currentTime);

    /// @param _usdg USDG token address
    /// @param _operatorSigner Address that signs withdrawal authorizations
    /// @param _hypeOracle Chainlink-compatible HYPE/USD price feed
    constructor(address _usdg, address _operatorSigner, address _hypeOracle) Ownable(msg.sender) {
        if (_usdg == address(0) || _operatorSigner == address(0) || _hypeOracle == address(0)) {
            revert USDGWithdrawalHypeSponsor__ZeroAddress();
        }
        usdg = _usdg;
        operatorSigner = _operatorSigner;
        hypeOracle = _hypeOracle;
    }

    /// @notice Exchange USDG for HYPE at current oracle price
    /// @dev Signature must be from operatorSigner over keccak256(chainId, msg.sender, _amount, _deadline, nonce)
    /// @param _amount Amount of HYPE (in wei) to receive
    /// @param _deadline Timestamp after which the signature is invalid
    /// @param _signature Operator signature authorizing this withdrawal
    function sponsorWithdrawal(
        uint256 _amount,
        uint256 _deadline,
        bytes calldata _signature
    )
        external
        nonReentrant
        whenNotPaused
    {
        if (block.timestamp > _deadline) {
            revert USDGWithdrawalHypeSponsor__DeadlineExpired(_deadline, block.timestamp);
        }
        uint256 userNonce = nonces[msg.sender];
        bytes32 hash = keccak256(abi.encode(block.chainid, msg.sender, _amount, _deadline, userNonce));
        if (hash.recover(_signature) != operatorSigner) {
            revert USDGWithdrawalHypeSponsor__InvalidOperatorSignature(hash, operatorSigner, msg.sender, userNonce);
        }
        nonces[msg.sender]++;
        (uint256 usdgAmount, uint256 hypePrice) = _calculateSponsoredHypeInUSDG(_amount);
        uint256 sponsorFeeAmount;
        if (sponsorFee > 0 && feeRecipient != address(0)) {
            sponsorFeeAmount = usdgAmount.mulDivUp(sponsorFee, BASE);
            IERC20Metadata(usdg).safeTransferFrom(msg.sender, feeRecipient, sponsorFeeAmount);
        }
        IERC20Metadata(usdg).safeTransferFrom(msg.sender, address(this), usdgAmount);
        (bool success,) = payable(msg.sender).call{ value: _amount }("");
        if (!success) {
            revert USDGWithdrawalHypeSponsor__FailedToSendFunds(msg.sender, _amount);
        }

        emit SponsoredWithdrawal(msg.sender, _amount, usdgAmount, hypePrice, sponsorFeeAmount);
    }

    /// @notice Pause the contract, preventing new withdrawals
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Unpause the contract, allowing withdrawals
    function unpause() external onlyOwner {
        _unpause();
    }

    /// @notice Withdraw accumulated tokens or native HYPE from contract
    /// @param _token Token address (use address(0) for native HYPE)
    /// @param _amount Amount to withdraw
    function withdrawFunds(address _token, uint256 _amount) external onlyOwner {
        if (_token == address(0)) {
            (bool success,) = payable(msg.sender).call{ value: _amount }("");
            if (!success) {
                revert USDGWithdrawalHypeSponsor__FailedToSendFunds(msg.sender, _amount);
            }
        } else {
            IERC20Metadata(_token).safeTransfer(msg.sender, _amount);
        }
    }

    /// @notice Update the operator signer address
    /// @param _operatorSigner New signer address
    function setOperatorSigner(address _operatorSigner) external onlyOwner {
        operatorSigner = _operatorSigner;
        emit OperatorSignerSet(_operatorSigner);
    }

    /// @notice Update the sponsor fee (in basis points relative to BASE)
    /// @param _sponsorFee Fee amount (e.g., 100 = 1% when BASE is 10e4)
    function setSponsorFee(uint256 _sponsorFee) external onlyOwner {
        sponsorFee = _sponsorFee;
        emit SponsorFeeSet(_sponsorFee);
    }

    /// @notice Update the HYPE/USD price oracle
    /// @param _hypeOracle New oracle address (must be non-zero)
    function setHypeOracle(address _hypeOracle) external onlyOwner {
        if (_hypeOracle == address(0)) revert USDGWithdrawalHypeSponsor__ZeroAddress();
        hypeOracle = _hypeOracle;
        emit HypeOracleSet(_hypeOracle);
    }

    /// @notice Update the fee recipient address
    /// @param _feeRecipient Address to receive sponsor fees (can be zero to disable fees)
    function setFeeRecipient(address _feeRecipient) external onlyOwner {
        feeRecipient = _feeRecipient;
        emit FeeRecipientSet(_feeRecipient);
    }

    /// @notice Update the maximum allowed oracle staleness
    /// @param _maxOracleStaleness Max seconds since last oracle update
    function setMaxOracleStaleness(uint256 _maxOracleStaleness) external onlyOwner {
        maxOracleStaleness = _maxOracleStaleness;
        emit MaxOracleStalenessSet(_maxOracleStaleness);
    }

    /// @notice Calculate USDG required for a given HYPE withdrawal amount
    /// @param _hypeAmount Amount of HYPE (in wei) to withdraw
    /// @return totalUsdgRequired Total USDG needed (base amount + fee)
    /// @return usdgAmount Base USDG amount at current oracle price
    /// @return feeAmount Fee portion of USDG
    function getRequiredUsdg(uint256 _hypeAmount)
        external
        view
        returns (uint256 totalUsdgRequired, uint256 usdgAmount, uint256 feeAmount)
    {
        (usdgAmount,) = _calculateSponsoredHypeInUSDG(_hypeAmount);
        if (sponsorFee > 0 && feeRecipient != address(0)) {
            feeAmount = usdgAmount.mulDivUp(sponsorFee, BASE);
        }
        totalUsdgRequired = usdgAmount + feeAmount;
    }

    function _calculateSponsoredHypeInUSDG(uint256 _amount)
        internal
        view
        returns (uint256 usdgAmount, uint256 hypePrice)
    {
        uint8 decimals = IAggregatorV3(hypeOracle).decimals();
        (, int256 hypePriceInt,, uint256 updatedAt,) = IAggregatorV3(hypeOracle).latestRoundData();
        if (hypePriceInt < 0) {
            revert USDGWithdrawalHypeSponsor__HypePriceIsNegative();
        }
        if (block.timestamp - updatedAt > maxOracleStaleness) {
            revert USDGWithdrawalHypeSponsor__StaleOraclePrice(updatedAt, block.timestamp);
        }
        hypePrice = uint256(hypePriceInt);
        usdgAmount =
            _convertDecimals(_amount.mulDiv(uint256(hypePrice), 10 ** decimals), 18, IERC20Metadata(usdg).decimals());
    }

    /**
     * @notice Convert the decimals of the amount.
     * @param _amount The amount to change the decimals of.
     * @param _fromDecimals The decimals of the amount.
     * @param _toDecimals The decimals to change the amount to.
     * @return The amount with the new decimals.
     */
    function _convertDecimals(
        uint256 _amount,
        uint8 _fromDecimals,
        uint8 _toDecimals
    )
        internal
        pure
        returns (uint256)
    {
        if (_fromDecimals == _toDecimals) {
            return _amount;
        }
        unchecked {
            return _fromDecimals > _toDecimals
                ? _amount / 10 ** (_fromDecimals - _toDecimals)
                : _amount * 10 ** (_toDecimals - _fromDecimals);
        }
    }

    receive() external payable { }
}
