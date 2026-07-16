// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import '@openzeppelin/contracts/access/Ownable2Step.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '@openzeppelin/contracts/utils/Nonces.sol';
import '@openzeppelin/contracts/utils/Pausable.sol';
import '@openzeppelin/contracts/utils/ReentrancyGuard.sol';
import { EIP712 } from '@openzeppelin/contracts/utils/cryptography/EIP712.sol';
import { SignatureChecker } from '@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol';

import '../../interfaces/IRewardGauge.sol';

contract RewardDistributor is Ownable2Step, Pausable, EIP712, Nonces, ReentrancyGuard {
    using SafeERC20 for IERC20;

    struct Gauge {
        address addr;
        uint256 portion;
    }

    Gauge[] public gauges;

    IERC20[] public rewardTokens;

    event Distributed(uint256[] distributedAmounts);
    event GaugeAdded(address gauge);
    event GaugeDeleted(uint256 gaugeId);
    event SetRewardTokens(IERC20[] rewardTokens);
    event SetGaugePortions(uint256[] gaugePortions);

    error ZeroAddress();
    error WrongGaugeId();
    error WrongLength();
    error DistributionAlreadyHappened();
    error InvalidGaugeImplementation(address gauge);
    error GaugeAlreadyExists(address gauge);
    error WrongRewardTokens(IERC20[] rewardTokens);
    error WrongRewardTokensLength(uint256 length);
    error ZeroTokenAddress(uint256 index);

    constructor(
        string memory _name,
        address _owner,
        address[] memory _gaugeAddrs,
        uint256[] memory _gaugePortions
    ) Ownable(_owner) EIP712(_name, '1') {

        uint256 gaugesLength_ = _gaugeAddrs.length;
        // init gauges
        if (gaugesLength_ != _gaugePortions.length) {
            revert WrongLength();
        }
        for (uint256 i; i < gaugesLength_; ++i) {
            address gaugeAddr = _gaugeAddrs[i];
            if (gaugeAddr == address(0)) revert ZeroAddress();
            gauges.push(Gauge(gaugeAddr, _gaugePortions[i]));
        }
    }

    function setRewardTokens(IERC20[] memory rewardTokens_) external onlyOwner {
        uint256 rewardsLength_ = rewardTokens_.length;
        if (rewardsLength_ == 0) revert WrongRewardTokens(rewardTokens_);

        for (uint256 i = 0; i < rewardsLength_; ++i) {
            if (address(rewardTokens_[i]) == address(0)) revert ZeroTokenAddress(i);
        }

        rewardTokens = rewardTokens_;
        emit SetRewardTokens(rewardTokens);
    }

    function setGaugePortions(uint256[] memory _gaugePortions) external onlyOwner {
        uint256 gaugesLength_ = _gaugePortions.length;
        // init gauges
        if (gaugesLength_ != gauges.length) {
            revert WrongLength();
        }
        for (uint256 i; i < gaugesLength_; ++i) {
            uint256 gaugePortion = _gaugePortions[i];
            gauges[i].portion = gaugePortion;
        }
        emit SetGaugePortions(_gaugePortions);
    }

    function gaugesLength() external view returns (uint256) {
        return gauges.length;
    }

    function distribute()
        external
        whenNotPaused
        nonReentrant
        returns (uint256[] memory distributedAmounts)
    {

        uint256 gaugesLength_ = gauges.length;
        uint256 total;
        for (uint256 i; i < gaugesLength_; ++i) {
            total += gauges[i].portion;
        }

        uint256 rewardTokensLength_ = rewardTokens.length;
        distributedAmounts = new uint256[](rewardTokensLength_);
        uint256 amount;
        for (uint256 j; j < rewardTokensLength_; ++j) {
            IERC20 token = rewardTokens[j];
            distributedAmounts[j] = token.balanceOf(address(this));
            if (distributedAmounts[j] == 0) { continue; }

            for (uint256 i; i < gaugesLength_; ++i) {
                Gauge memory gauge = gauges[i];

                amount = (distributedAmounts[j] * gauge.portion) / total;

                if (amount == 0) { continue; }
                token.safeTransfer(gauge.addr, amount);
                IRewardGauge(gauge.addr).distribute(token,amount);
            }
        }

        emit Distributed(distributedAmounts);
    }

    function pause() external onlyOwner whenNotPaused {
        _pause();
    }

    function unpause() external onlyOwner whenPaused {
        _unpause();
    }

    function addGauge(address newGauge) external onlyOwner whenNotPaused {
        if (newGauge == address(0)) {
            revert ZeroAddress();
        }
        if (newGauge.code.length == 0) {
            revert InvalidGaugeImplementation(newGauge);
        }

        uint256 gaugesLength_ = gauges.length;
        for (uint256 i = 0; i < gaugesLength_; ++i) {
            if (gauges[i].addr == newGauge) {
                revert GaugeAlreadyExists(newGauge);
            }
        }

        gauges.push(Gauge(newGauge, 0));
        emit GaugeAdded(newGauge);
    }

    // don't forget update gauges' indexes on frontend
    function deleteGauge(uint256 gaugeId) external onlyOwner whenNotPaused {
        uint256 gaugesLength_ = gauges.length;
        if (gaugeId >= gaugesLength_) {
            revert WrongGaugeId();
        }
        for (uint256 i = gaugeId; i < gaugesLength_ - 1; ++i) {
            gauges[i] = gauges[i + 1];
        }
        gauges.pop();
        emit GaugeDeleted(gaugeId);
    }

    /**
     * @dev Allows the owner to emergency withdraw tokens from the contract.
     * @param _token The ERC20 token to withdraw from.
     * @notice Only the owner can withdraw tokens.
     */
    function withdrawEmergency(IERC20 _token) external onlyOwner {
        uint256 tokenBalance = _token.balanceOf(address(this));
        if (tokenBalance > 0) {
            _token.safeTransfer(msg.sender, tokenBalance);
        }
    }
}
