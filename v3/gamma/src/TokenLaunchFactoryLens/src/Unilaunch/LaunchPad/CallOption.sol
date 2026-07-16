// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {FullMath} from "v4-core/libraries/FullMath.sol";

interface ICallOptionFactory {
    function strikePriceX96() external view returns (uint160);
    function strikeSet() external view returns (bool);
}

/// @title CallOption
/// @notice European-style call option with factory-set strike price
contract CallOption {
    using SafeERC20 for IERC20;

    uint256 public constant MIN_CLIFF = 30 days;
    uint256 public constant MIN_VESTING = 365 days;

    address public immutable token;
    address public immutable treasury;
    address public immutable buybackAddress;
    address public immutable factory;

    address public team;
    uint256 public immutable totalAmount;

    uint256 public immutable vestingStart;
    uint256 public immutable vestingCliff;
    uint256 public vestingEnd;
    uint256 public exercised;

    event HolderChanged(address indexed oldHolder, address indexed newHolder);
    event Exercised(address indexed holder, uint256 tokenAmount, uint256 ethPaid);

    error InvalidAddress();
    error InvalidAmount();
    error Unauthorized();
    error StrikeNotSet();
    error CliffTooSoon();
    error CliffAfterVestingEnd();
    error VestingTooShort();

    constructor(
        address _token,
        address _team,
        uint256 _totalAmount,
        address _buybackAddress,
        address _treasury,
        address _factory,
        uint256 _vestingCliff,
        uint256 _vestingEnd
    ) {
        if (_token == address(0) || _team == address(0)) revert InvalidAddress();
        if (_buybackAddress == address(0) || _treasury == address(0) || _factory == address(0)) {
            revert InvalidAddress();
        }
        if (_totalAmount == 0) revert InvalidAmount();

        token = _token;
        team = _team;
        totalAmount = _totalAmount;
        buybackAddress = _buybackAddress;
        treasury = _treasury;
        factory = _factory;
        vestingStart = block.timestamp;
        if (_vestingCliff < vestingStart + MIN_CLIFF) revert CliffTooSoon();
        if (_vestingEnd < vestingStart + MIN_VESTING) revert VestingTooShort();
        if (_vestingEnd < _vestingCliff) revert CliffAfterVestingEnd();
        vestingCliff = _vestingCliff;
        vestingEnd = _vestingEnd;
    }

    function updateTeam(address newTeam) external {
        if (msg.sender != team) revert Unauthorized();
        if (newTeam == address(0)) revert InvalidAddress();
        address old = team;
        team = newTeam;
        emit HolderChanged(old, newTeam);
    }

    function getExercisableAmount() public view returns (uint256) {
        if (block.timestamp < vestingCliff) return 0;
        if (block.timestamp >= vestingEnd) {
            return totalAmount - exercised;
        }
        uint256 elapsed = block.timestamp - vestingStart;
        uint256 duration = vestingEnd - vestingStart;
        uint256 vested = (totalAmount * elapsed) / duration;
        return vested > exercised ? vested - exercised : 0;
    }

    function exercise(uint256 tokenAmount) external payable {
        if (msg.sender != team) revert Unauthorized();
        if (!ICallOptionFactory(factory).strikeSet()) revert StrikeNotSet();
        if (tokenAmount == 0) revert InvalidAmount();
        if (tokenAmount > getExercisableAmount()) revert InvalidAmount();

        uint160 strikePriceX96 = ICallOptionFactory(factory).strikePriceX96();
        uint256 sqrtPriceSquared = uint256(strikePriceX96) * uint256(strikePriceX96);
        uint256 ethRequired = FullMath.mulDiv(tokenAmount, sqrtPriceSquared, 1 << 192);
        if (msg.value < ethRequired) revert InvalidAmount();

        exercised += tokenAmount;

        uint256 treasuryAmount = ethRequired / 100;
        uint256 buybackAmount = ethRequired - treasuryAmount;

        (bool success1,) = treasury.call{value: treasuryAmount}("");
        if (!success1) revert InvalidAmount();

        (bool success2,) = buybackAddress.call{value: buybackAmount}("");
        if (!success2) revert InvalidAmount();

        IERC20(token).safeTransfer(team, tokenAmount);

        if (msg.value > ethRequired) {
            (bool refund,) = msg.sender.call{value: msg.value - ethRequired}("");
            if (!refund) revert InvalidAmount();
        }

        emit Exercised(team, tokenAmount, ethRequired);
    }

    receive() external payable {}
}
