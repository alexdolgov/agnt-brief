// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {ERC20PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PausableUpgradeable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import {IERC20Burnable} from "../interfaces/IERC20Burnable.sol";
import {IXFly} from "../interfaces/IXFly.sol";

error NoVest();
error NotWhitelisted();
error ZeroAmount();
error InvalidParameters();

contract XFly is
    Initializable,
    IXFly,
    ERC20Upgradeable,
    ERC20PausableUpgradeable,
    Ownable2StepUpgradeable,
    UUPSUpgradeable
{
    using EnumerableSet for EnumerableSet.AddressSet;

    IERC20Burnable public FLY;

    EnumerableSet.AddressSet whitelistFrom;
    EnumerableSet.AddressSet whitelistTo;

    /// @inheritdoc IXFly
    uint256 public constant BASIS = 10_000;
    /// @inheritdoc IXFly
    uint256 public constant SLASHING_PENALTY = 5000;
    /// @inheritdoc IXFly
    uint256 public constant MIN_VEST = 14 days;
    /// @inheritdoc IXFly
    uint256 public constant MAX_VEST = 90 days;

    /// @inheritdoc IXFly
    mapping(address => VestPosition[]) public vestInfo;

    function initialize(address currentFly, address initialOwner)
        external
        initializer
    {
        __ERC20_init("xFly", "xFLY");
        __ERC20Pausable_init();
        __Ownable_init(initialOwner);
        __UUPSUpgradeable_init();

        FLY = IERC20Burnable(currentFly);
    }

    /// @inheritdoc IXFly
    function pause() external onlyOwner {
        _pause();
    }

    /// @inheritdoc IXFly
    function unpause() external onlyOwner {
        _unpause();
    }

    // ERC20 Overrides and Helpers

    function _update(
        address from,
        address to,
        uint256 value
    ) internal override(ERC20Upgradeable, ERC20PausableUpgradeable) {
        bool isWhitelisted = (whitelistFrom.contains(from) ||
            from == address(0) ||
            to == address(0) ||
            whitelistTo.contains(to));

        if (!isWhitelisted) {
            revert NotWhitelisted();
        }

        super._update(from, to, value);
    }

    // General use functions

    /// @inheritdoc IXFly
    function convertEmissionsToken(uint256 amount) external whenNotPaused {
        if (amount == 0) {
            revert ZeroAmount();
        }
        FLY.transferFrom(msg.sender, address(this), amount);
        _mint(msg.sender, amount);

        emit Converted(msg.sender, amount);
    }

    /// @inheritdoc IXFly
    function exit(uint256 amount)
        external
        whenNotPaused
        returns (uint256 exitedAmount)
    {
        if (amount == 0) {
            revert ZeroAmount();
        }
        /// @dev if it's at least 2 wei it will give a penalty
        uint256 penalty = ((amount * SLASHING_PENALTY) / BASIS);
        uint256 exitAmount = amount - penalty;

        if (penalty > 0) {
            FLY.burn(penalty);
        }
        _burn(msg.sender, amount);
        FLY.transfer(msg.sender, exitAmount);

        emit InstantExit(msg.sender, exitAmount);

        return exitAmount;
    }

    /// @inheritdoc IXFly
    function createVest(uint256 amount) external whenNotPaused {
        if (amount == 0) {
            revert ZeroAmount();
        }

        _burn(msg.sender, amount);
        uint256 vestLength = vestInfo[msg.sender].length;
        vestInfo[msg.sender].push(
            VestPosition(
                VestState.Vested,
                uint64(block.timestamp),
                uint64(block.timestamp + MAX_VEST),
                amount,
                vestLength
            )
        );

        emit ModifyVesting(msg.sender, vestLength, amount, VestState.Vested);
    }

    /// @inheritdoc IXFly
    function exitVest(uint256 vestId) external whenNotPaused {
        VestPosition storage vestPosition = vestInfo[msg.sender][vestId];
        if (vestPosition.amount == 0) {
            revert NoVest();
        }

        uint256 amount = vestPosition.amount;
        uint256 startTime = vestPosition.startTime;
        vestPosition.amount = 0;

        if (block.timestamp < startTime + MIN_VEST) {
            vestPosition.vestState = VestState.Canceled;
            _mint(msg.sender, amount);

            emit ModifyVesting(msg.sender, vestId, amount, VestState.Canceled);
        } else if (vestPosition.endTime <= block.timestamp) {
            vestPosition.vestState = VestState.Exited;
            FLY.transfer(msg.sender, amount);

            emit ModifyVesting(msg.sender, vestId, amount, VestState.Exited);
        }
        /// vest is in progress
        else {
            vestPosition.vestState = VestState.Exited;
            uint256 base = (amount * (SLASHING_PENALTY)) / BASIS;
            uint256 vestEarned = ((amount *
                (BASIS - SLASHING_PENALTY) *
                (block.timestamp - startTime)) / MAX_VEST) / BASIS;

            uint256 exitedAmount = base + vestEarned;
            uint256 penalty = amount - exitedAmount;

            if (penalty > 0) {
                FLY.burn(penalty);
            }
            FLY.transfer(msg.sender, exitedAmount);

            emit ModifyVesting(msg.sender, vestId, amount, VestState.Exited);
        }
    }

    // Permissioned functions

    function updateWhitelistFrom(
        address[] calldata addresses,
        bool[] calldata values
    ) external onlyOwner {
        if (addresses.length != values.length) {
            revert InvalidParameters();
        }
        for (uint256 i = 0; i < values.length; ++i) {
            bool success = values[i]
                ? whitelistFrom.add(addresses[i])
                : whitelistFrom.remove(addresses[i]);

            emit UpdateWhitelistFrom(addresses[i], values[i], success);
        }
    }

    function updateWhitelistTo(
        address[] calldata addresses,
        bool[] calldata values
    ) external onlyOwner {
        if (addresses.length != values.length) {
            revert InvalidParameters();
        }
        for (uint256 i = 0; i < values.length; ++i) {
            bool success = values[i]
                ? whitelistTo.add(addresses[i])
                : whitelistTo.remove(addresses[i]);

            emit UpdateWhitelistTo(addresses[i], values[i], success);
        }
    }

    // Getter functions

    /// @inheritdoc IXFly
    function getBalanceResiding() external view returns (uint256) {
        /// @dev simply returns the balance of the underlying
        return FLY.balanceOf(address(this));
    }

    /// @inheritdoc IXFly
    function usersTotalVests(address who) external view returns (uint256) {
        return vestInfo[who].length;
    }

    /// @inheritdoc IXFly
    function getVestInfo(address who, uint256 vestId)
        external
        view
        returns (VestPosition memory)
    {
        return vestInfo[who][vestId];
    }

    /// @inheritdoc IXFly
    function isWhitelistedFrom(address who) external view returns (bool) {
        return whitelistFrom.contains(who);
    }

    /// @inheritdoc IXFly
    function isWhitelistedTo(address who) external view returns (bool) {
        return whitelistTo.contains(who);
    }

    /// @inheritdoc IXFly
    function fly() external view returns (address) {
        return address(FLY);
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}
}
