// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./external/openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./external/openzeppelin/contracts/utils/Address.sol";
import "./external/openzeppelin/contracts/utils/Context.sol";
import "./external/openzeppelin/contracts/access/Ownable.sol";

/**
 * @title VestingWallet
 * @dev This contract handles the vesting of Eth and ERC20 tokens for a given beneficiary. Custody of multiple tokens
 * can be given to this contract, which will release the token to the beneficiary following a given vesting schedule.
 * The vesting schedule is customizable through the {vestedAmount} function.
 *
 * Any token transferred to this contract will follow the vesting schedule as if they were locked from the beginning.
 * Consequently, if the vesting has already started, any amount of tokens sent to this contract will (at least partly)
 * be immediately releasable.
 */
contract VestingWallet is Context, Ownable {
    event EtherReleased(uint256 amount);
    event ERC20Released(address indexed token, uint256 amount);

    uint256 private _released;
    mapping(address => uint256) private _erc20Released;

    event VestingConfigUpdate(
        address beneficiary,
        uint64 start,
        uint64 duration,
        uint64 releaseIntervals,
        uint64 decayFactor,
        uint64 cliff,
        uint256 firstRoundVestAmount
    );

    struct VestingConfig {
        address beneficiary;
        uint64 start;
        uint64 duration;
        uint64 releaseIntervals;
        uint64 decayFactor;
        uint64 cliff;
        uint256 firstRoundVestAmount;
    }

    VestingConfig public vestingConfig;

    /**
     * @dev Set the beneficiary, start timestamp and vesting duration of the vesting wallet.
     */
    constructor(
        address beneficiaryAddress,
        uint64 startTimestamp,
        uint64 durationSeconds,
        uint64 releaseIntervalSeconds,
        uint64 decayFactorPercent,
        uint64 cliffSeconds,
        uint256 firstRoundVestAmounts
    ) payable {
        require(
            beneficiaryAddress != address(0),
            "VestingWallet: beneficiary is zero address"
        );

        require(
            firstRoundVestAmounts > 0,
            "VestingWallet: firstRoundVestAmount is zero"
        );

        vestingConfig.beneficiary = beneficiaryAddress;
        vestingConfig.start = startTimestamp;
        vestingConfig.duration = durationSeconds;

        vestingConfig.releaseIntervals = releaseIntervalSeconds;

        vestingConfig.decayFactor = decayFactorPercent;
        vestingConfig.cliff = cliffSeconds;
        vestingConfig.firstRoundVestAmount = firstRoundVestAmounts;
    }

    /**
     * @dev The contract should be able to receive Eth.
     */
    receive() external payable virtual {}

    /**
     * @dev Getter for the cliff.
     */
    function cliff() public view returns (uint64) {
        return vestingConfig.cliff;
    }

    /**
     * @dev Getter for the decayFactor.
     */
    function decayFactor() public view returns (uint64) {
        return vestingConfig.decayFactor;
    }

    /**
     * @dev Getter for the releaseIntervals.
     */
    function releaseIntervals() public view returns (uint64) {
        return vestingConfig.releaseIntervals;
    }

    /**
     * @dev Getter for the firstRoundVestAmount.
     */
    function firstRoundVestAmount() public view returns (uint256) {
        return vestingConfig.firstRoundVestAmount;
    }

    /**
     * @dev Getter for the beneficiary address.
     */
    function beneficiary() public view virtual returns (address) {
        return vestingConfig.beneficiary;
    }

    /**
     * @dev Getter for the start timestamp.
     */
    function start() public view virtual returns (uint256) {
        return vestingConfig.start;
    }

    /**
     * @dev Getter for the vesting duration.
     */
    function duration() public view virtual returns (uint256) {
        return vestingConfig.duration;
    }

    /**
     * @dev Amount of eth already released
     */
    function released() public view virtual returns (uint256) {
        return _released;
    }

    /**
     * @dev Amount of token already released
     */
    function released(address token) public view virtual returns (uint256) {
        return _erc20Released[token];
    }

    /**
     * @dev Getter for the amount of releasable eth.
     */
    function releasable() public view virtual returns (uint256) {
        return vestedAmount(uint64(block.timestamp)) - released();
    }

    /**
     * @dev Getter for the amount of releasable `token` tokens. `token` should be the address of an
     * IERC20 contract.
     */
    function releasable(address token) public view virtual returns (uint256) {
        return vestedAmount(token, uint64(block.timestamp)) - released(token);
    }

    /**
     * @dev update vesting config
     *
     * Emits a {VestingConfigUpdate} event.
     */
    function updateVestingConfig(
        address beneficiaryAddress,
        uint64 startTimestamp,
        uint64 durationSeconds,
        uint64 releaseIntervalSeconds,
        uint64 decayFactorPercent,
        uint64 cliffSeconds,
        uint256 firstRoundVestAmounts
    ) external payable onlyOwner {
        require(block.timestamp < vestingConfig.start, "Vesting Already Start");

        vestingConfig.beneficiary = beneficiaryAddress;
        vestingConfig.start = startTimestamp;
        vestingConfig.duration = durationSeconds;
        vestingConfig.releaseIntervals = releaseIntervalSeconds;
        vestingConfig.decayFactor = decayFactorPercent;
        vestingConfig.cliff = cliffSeconds;
        vestingConfig.firstRoundVestAmount = firstRoundVestAmounts;

        emit VestingConfigUpdate(
            beneficiaryAddress,
            startTimestamp,
            durationSeconds,
            releaseIntervalSeconds,
            decayFactorPercent,
            cliffSeconds,
            firstRoundVestAmounts
        );
    }

    /**
     * @dev Release the native token (ether) that have already vested.
     *
     * Emits a {EtherReleased} event.
     */
    function release() public virtual {
        uint256 amount = releasable();
        require(amount > 0, "no releasable token");

        _released += amount;
        emit EtherReleased(amount);
        Address.sendValue(payable(beneficiary()), amount);
    }

    /**
     * @dev Release the tokens that have already vested.
     *
     * Emits a {ERC20Released} event.
     */
    function release(address token) public virtual {
        uint256 amount = releasable(token);
        require(amount > 0, "no releasable token");

        _erc20Released[token] += amount;
        emit ERC20Released(token, amount);
        SafeERC20.safeTransfer(IERC20(token), beneficiary(), amount);
    }

    /**
     * @dev Calculates the amount of ether that has already vested. Default implementation is a linear vesting curve.
     */
    function vestedAmount(
        uint64 timestamp
    ) public view virtual returns (uint256) {
        return _vestingSchedule(address(this).balance + released(), timestamp);
    }

    /**
     * @dev Calculates the amount of tokens that has already vested. Default implementation is a linear vesting curve.
     */
    function vestedAmount(
        address token,
        uint64 timestamp
    ) public view virtual returns (uint256) {
        return
            _vestingSchedule(
                IERC20(token).balanceOf(address(this)) + released(token),
                timestamp
            );
    }

    /**
     * @dev Virtual implementation of the vesting formula. This returns the amount vested, as a function of time, for
     * an asset given its total historical allocation.
     */
    function _vestingSchedule(
        uint256 totalAllocation,
        uint64 timestamp
    ) internal view virtual returns (uint256) {
        if (timestamp < start() + cliff()) {
            return 0;
        }

        if (timestamp >= start() + duration()) {
            return totalAllocation;
        }

        uint256 vested = vestingConfig.firstRoundVestAmount;
        uint256 lastRoundRelease = vestingConfig.firstRoundVestAmount;
        uint256 i = start() + cliff() + vestingConfig.releaseIntervals;

        for (; i < timestamp; i += vestingConfig.releaseIntervals) {
            lastRoundRelease =
                (lastRoundRelease * vestingConfig.decayFactor) /
                10000;
            vested += lastRoundRelease;

            if (vested > totalAllocation) {
                vested = totalAllocation;
                break;
            }
        }

        return vested;
    }
}
