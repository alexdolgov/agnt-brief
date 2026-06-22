// SPDX-License-Identifier: MIT
pragma solidity =0.8.18;

import {
    IERC20,
    SafeERC20
} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title VestingWallet
 * @dev This contract handles token vesting for different wallet addresses.
 */
contract VestingWallet is Ownable {
    /**
     * @dev Emitted when a new distribution is added.
     */
    event DistributionAdded(
        address indexed wallet,
        uint256 totalAmount,
        uint256[] dates,
        uint256[] amounts
    );

    /**
     * @dev Emitted when a distribution is updated.
     */
    event DistributionUpdated(
        address indexed wallet,
        uint256 totalAmount,
        uint256[] dates,
        uint256[] amounts
    );

    /**
     * @dev Emitted when the address of a distribution is changed.
     */
    event DistributionAddressChanged(
        address indexed oldWallet,
        address indexed newWallet
    );

    /**
     * @dev Emitted when a distribution is deleted.
     */
    event DistributionDeleted(address indexed wallet);

    /**
     * @dev Emitted when tokens are released.
     */
    event Released(address indexed wallet, uint256 amount);

    /**
     * @dev Represents a token distribution.
     */
    struct Distribution {
        uint256 totalAmount;
        uint256 distributedAmount;
        Schedule[] schedules;
    }

    /**
     * @dev Represents a vesting schedule.
     */
    struct Schedule {
        uint256 date;
        uint256 amount;
    }

    /**
     * @dev The token to be vested.
     */
    IERC20 public immutable token;

    /**
     * @dev The distributions for each wallet.
     */
    mapping(address => Distribution) public distributions;

    /**
     * @dev Sets the token for the contract.
     * @param _token The token to be used in the contract.
     */
    constructor(IERC20 _token) {
        require(address(_token) != address(0), "Token cannot be zero");
        token = _token;
    }

    /**
     * @dev Returns the distribution for a wallet.
     * @param wallet The address of the wallet.
     * @return totalAmount The total amount in the distribution.
     * @return distributedAmount The amount already distributed.
     * @return schedules The vesting schedules for the distribution.
     */
    function getDistribution(
        address wallet
    )
        public
        view
        returns (
            uint256 totalAmount,
            uint256 distributedAmount,
            Schedule[] memory schedules
        )
    {
        Distribution memory distribution = distributions[wallet];
        return (
            distribution.totalAmount,
            distribution.distributedAmount,
            distribution.schedules
        );
    }

    /**
     * @dev Adds a distribution for a wallet.
     * @param wallet The address of the wallet.
     * @param totalAmount The total amount in the distribution.
     * @param dates The dates for the vesting schedules.
     * @param amounts The amounts for the vesting schedules.
     * Emits a {DistributionAdded} event.
     */
    function addDistribution(
        address wallet,
        uint256 totalAmount,
        uint256[] memory dates,
        uint256[] memory amounts
    ) public onlyOwner {
        require(wallet != address(0), "Wallet cannot be zero");
        require(totalAmount > 0, "Total amount should be greater than 0");
        require(dates.length > 0, "No schedules found");
        require(
            dates.length == amounts.length,
            "Dates and amounts length mismatch"
        );
        Distribution storage distribution = distributions[wallet];
        require(distribution.totalAmount == 0, "Distribution already exists");
        emit DistributionAdded(wallet, totalAmount, dates, amounts);

        uint256 sumAmounts;
        for (uint256 i = 0; i < dates.length; i++) {
            sumAmounts += amounts[i];
            distribution.schedules.push(Schedule(dates[i], amounts[i]));
        }
        require(
            totalAmount == sumAmounts,
            "Total amount should equal the sum of amounts"
        );
        distribution.totalAmount = totalAmount;
    }

    /**
     * @dev Updates a distribution for a wallet.
     * @param wallet The address of the wallet.
     * @param totalAmount The total amount in the distribution.
     * @param dates The dates for the vesting schedules.
     * @param amounts The amounts for the vesting schedules.
     * Emits a {DistributionUpdated} event.
     */
    function updateDistribution(
        address wallet,
        uint256 totalAmount,
        uint256[] memory dates,
        uint256[] memory amounts
    ) public onlyOwner {
        require(wallet != address(0), "Wallet cannot be zero");
        require(totalAmount > 0, "Total amount should be greater than 0");
        require(dates.length > 0, "No schedules found");
        require(
            dates.length == amounts.length,
            "Dates and amounts length mismatch"
        );
        Distribution storage distribution = distributions[wallet];
        require(distribution.totalAmount != 0, "No distribution found");
        emit DistributionUpdated(wallet, totalAmount, dates, amounts);

        // users can only edit unexecuted distribution date or add new dates
        for (uint256 i = 0; i < dates.length; i++) {
            // slither-disable-next-line timestamp
            if (dates[i] >= block.timestamp) continue;
            bool existed = false;
            for (uint256 j = 0; j < distribution.schedules.length; j++) {
                if (dates[i] == distribution.schedules[j].date) {
                    existed = true;
                    break;
                }
            }
            require(existed, "Cannot add new dates before today");
        }
        delete distribution.schedules;

        uint256 sumAmounts;
        for (uint256 i = 0; i < dates.length; i++) {
            sumAmounts += amounts[i];
            distribution.schedules.push(Schedule(dates[i], amounts[i]));
        }
        require(
            totalAmount == sumAmounts,
            "Total amount should equal the sum of amounts"
        );
        distribution.totalAmount = totalAmount + distribution.distributedAmount;
    }

    /**
     * @dev Changes the wallet address for a distribution.
     * @param oldWallet The old wallet address.
     * @param newWallet The new wallet address.
     * Emits a {DistributionAddressChanged} event.
     */
    function changeDistributionAddress(
        address oldWallet,
        address newWallet
    ) public onlyOwner {
        require(newWallet != address(0), "New wallet cannot be zero");
        require(
            distributions[oldWallet].totalAmount != 0,
            "No distribution found"
        );
        require(
            distributions[newWallet].totalAmount == 0,
            "Distribution already exists"
        );
        emit DistributionAddressChanged(oldWallet, newWallet);
        distributions[newWallet] = distributions[oldWallet];
        delete distributions[oldWallet];
    }

    /**
     * @dev Deletes a distribution for a wallet.
     * @param wallet The address of the wallet.
     * Emits a {DistributionDeleted} event.
     */
    function deleteDistribution(address wallet) public onlyOwner {
        Distribution storage distribution = distributions[wallet];
        require(distribution.totalAmount != 0, "No distribution found");
        emit DistributionDeleted(wallet);

        uint256 total = distribution.distributedAmount;
        for (uint256 i = 0; i < distribution.schedules.length; i++) {
            // slither-disable-next-line timestamp
            if (block.timestamp >= distribution.schedules[i].date) {
                total += distribution.schedules[i].amount;
            } else {
                delete distribution.schedules[i];
            }
        }
        distribution.totalAmount = total;
    }

    /**
     * @dev Releases the vested tokens for a wallet.
     * @param wallet The address of the wallet.
     * Emits a {Released} event.
     */
    function release(address wallet) public {
        Distribution storage distribution = distributions[wallet];
        require(distribution.schedules.length > 0, "No distribution found");
        uint256 total = 0;
        for (uint256 i = 0; i < distribution.schedules.length; i++) {
            // slither-disable-next-line timestamp
            if (block.timestamp >= distribution.schedules[i].date) {
                total += distribution.schedules[i].amount;
                delete distribution.schedules[i];
            }
        }
        emit Released(wallet, total);
        distribution.distributedAmount += total;
        SafeERC20.safeTransfer(token, wallet, total);
    }
}
