// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "openzeppelin-contracts/contracts/access/Ownable.sol";
import "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import "openzeppelin-contracts/contracts/utils/Pausable.sol";
import "openzeppelin-contracts/contracts/token/ERC1155/extensions/ERC1155Supply.sol";

contract USDzVault is ERC1155Supply, Ownable, Pausable {
    using SafeERC20 for IERC20;

    string public name = "Anzen USDz Bond";
    string public symbol = "AnzBond";

    /// @notice The early exit penalty rate per day
    uint256 public constant EARLY_EXIT_PENALTY_RATE_PER_DAY = 0.002e18; // 0.2% per day

    /// @notice The maximum early exit penalty rate
    uint256 public constant MAX_EARLY_EXIT_PENALTY_RATE = 0.2e18; // 20%

    /// @notice The USDz token address
    address public immutable usdz;

    enum BondDuration {
        NinetyDays,
        OneEightyDays,
        ThreeSixtyDays
    }

    struct BondClass {
        uint256 price;
        uint256 duration;
        uint256 cap;
    }

    /// @notice The bond classes
    mapping(BondDuration => BondClass) public bondClasses;

    /// @notice The bond liabilities
    mapping(BondDuration => uint256) public bondLiabilities;

    /// @notice The maturity queue
    mapping(uint256 => mapping(BondDuration => uint256)) public maturityQueue;

    /// @notice The last updated maturity
    uint256 public lastUpdatedMaturity;

    event BondIssued(address indexed user, uint256 tokenId, uint256 amount, uint256 price, uint256 maturity);
    event BondRedeemed(address indexed user, uint256 indexed tokenId, uint256 indexed redeemAmount);
    event BondEarlyExit(address indexed user, uint256 indexed tokenId, uint256 exitAmount, uint256 actualExitAmount);
    event BondLiabilityUpdated(BondDuration indexed duration, uint256 indexed liability);
    event BondPriceUpdated(BondDuration indexed duration, uint256 indexed newPrice);
    event BondCapUpdated(BondDuration indexed duration, uint256 indexed newCap);

    constructor(address _usdz, uint256 _bondIssueCap)
        Ownable(msg.sender)
        ERC1155("https://rwa-api.anzen.finance/v1/bond/{id}.json")
    {
        usdz = _usdz;

        // Initialize bond classes with default prices, durations, and cap.
        bondClasses[BondDuration.NinetyDays] = BondClass({price: 0.975e18, duration: 90 days, cap: _bondIssueCap});
        bondClasses[BondDuration.OneEightyDays] = BondClass({price: 0.95e18, duration: 180 days, cap: _bondIssueCap});
        bondClasses[BondDuration.ThreeSixtyDays] = BondClass({price: 0.9e18, duration: 360 days, cap: _bondIssueCap});

        lastUpdatedMaturity = roundToMidnightUTC(block.timestamp);
    }

    /**
     * @notice Round a timestamp to midnight UTC.
     * @param timestamp The timestamp to round
     * @return The rounded timestamp
     */
    function roundToMidnightUTC(uint256 timestamp) public pure returns (uint256) {
        return (timestamp / 1 days) * 1 days;
    }

    /**
     * @notice Get the bond liability for a specific duration.
     * @param duration The bond duration
     * @return The bond liability for the duration
     */
    function getBondLiability(BondDuration duration) public view returns (uint256) {
        return bondLiabilities[duration];
    }

    /**
     * @notice Get the matured bond amount until a specific date.
     * @param until The date to calculate the matured bond amount
     * @return The matured bond amount for each duration
     */
    function getMatureBondAmount(uint256 until) public view returns (uint256, uint256, uint256) {
        uint256 today = roundToMidnightUTC(block.timestamp);
        uint256 timeIterator = today;

        if (timeIterator > until) {
            return (0, 0, 0);
        }

        uint256 ninetyDaysMatureAmount = 0;
        uint256 oneEightyDaysMatureAmount = 0;
        uint256 threeSixtyDaysMatureAmount = 0;
        while (timeIterator <= until) {
            ninetyDaysMatureAmount += maturityQueue[timeIterator][BondDuration.NinetyDays];
            oneEightyDaysMatureAmount += maturityQueue[timeIterator][BondDuration.OneEightyDays];
            threeSixtyDaysMatureAmount += maturityQueue[timeIterator][BondDuration.ThreeSixtyDays];

            timeIterator += 1 days;
        }
        return (ninetyDaysMatureAmount, oneEightyDaysMatureAmount, threeSixtyDaysMatureAmount);
    }

    /**
     * @notice User purchases a bond.
     * @param duration The bond duration
     * @param amount The bond amount to purchase
     */
    function purchaseBond(BondDuration duration, uint256 amount) external whenNotPaused {
        require(amount > 0, "invalid amount");

        BondClass memory bondClass = bondClasses[duration];
        uint256 maturity = roundToMidnightUTC(block.timestamp + bondClass.duration);
        uint256 cost = bondClass.price * amount / 1e18;

        // Update the bond liabilities.
        _updateBondLiability();

        require(bondLiabilities[duration] + amount <= bondClass.cap, "amount exceeds cap");

        // Update the bond liabilities.
        unchecked {
            bondLiabilities[duration] += amount;
        }

        // Add the bond issued amount to the maturity queue.
        maturityQueue[maturity][duration] += amount;

        // Use the maturity date as the token ID.
        _mint(msg.sender, maturity, amount, "");

        IERC20(usdz).safeTransferFrom(msg.sender, address(this), cost);

        emit BondIssued(msg.sender, maturity, amount, bondClass.price, maturity);
    }

    /**
     * @notice User exits a bond before maturity.
     * @param tokenId The bond maturity date
     * @param amount The bond amount to exit
     * @return The actual exit amount
     */
    function earlyExit(uint256 tokenId, uint256 amount) external returns (uint256) {
        require(block.timestamp < tokenId, "bond already matured");

        // Update the bond liabilities.
        _updateBondLiability();

        uint256 balance = balanceOf(msg.sender, tokenId);
        require(balance >= amount, "insufficient balance");

        // Burn the bond tokens.
        _burn(msg.sender, tokenId, amount);

        // Calculate the exit amount after applying the early exit penalty.
        uint256 timeToMaturityInDays = (tokenId - block.timestamp) / 1 days + 1;
        uint256 earlyExitPenaltyRate = timeToMaturityInDays * EARLY_EXIT_PENALTY_RATE_PER_DAY;
        if (earlyExitPenaltyRate > MAX_EARLY_EXIT_PENALTY_RATE) {
            earlyExitPenaltyRate = MAX_EARLY_EXIT_PENALTY_RATE;
        }
        uint256 exitAmount = amount * (1e18 - earlyExitPenaltyRate) / 1e18;

        IERC20(usdz).safeTransfer(msg.sender, exitAmount);

        emit BondEarlyExit(msg.sender, tokenId, amount, exitAmount);

        return exitAmount;
    }

    /**
     * @notice User redeems a bond after maturity.
     * @param tokenId The bond maturity date
     */
    function redeemBond(uint256 tokenId) external {
        require(block.timestamp >= tokenId, "bond not matured");

        // Update the bond liabilities.
        _updateBondLiability();

        uint256 balance = balanceOf(msg.sender, tokenId);

        // Burn the bond tokens.
        _burn(msg.sender, tokenId, balance);

        IERC20(usdz).safeTransfer(msg.sender, balance);

        emit BondRedeemed(msg.sender, tokenId, balance);
    }

    /**
     * @notice Update the bond liability.
     */
    function updateBondLiability() external {
        _updateBondLiability();
    }

    /* ========== ADMIN FUNCTIONS ========== */

    /**
     * @notice Update the bond price.
     * @param duration The bond duration
     * @param newPrice The new bond price
     */
    function updateBondPrice(BondDuration duration, uint256 newPrice) external onlyOwner {
        require(newPrice < 1e18, "invalid price");
        bondClasses[duration].price = newPrice;

        emit BondPriceUpdated(duration, newPrice);
    }

    /**
     * @notice Update the bond issue cap.
     * @param duration The bond duration
     * @param newCap The new bond issue cap
     */
    function updateBondCap(BondDuration duration, uint256 newCap) external onlyOwner {
        bondClasses[duration].cap = newCap;

        emit BondCapUpdated(duration, newCap);
    }

    /**
     * @notice Pause the contract.
     */
    function pause() external onlyOwner {
        _pause();
    }

    /**
     * @notice Unpause the contract.
     */
    function unpause() external onlyOwner {
        _unpause();
    }

    /**
     * @notice Set the URI
     * @param newuri The new URI
     */
    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }

    /* ========== INTERNAL FUNCTIONS ========== */

    /**
     * @dev Update the bond liability. This function iterates from the last updated maturity to the current day.
     *      It calculates the matured bond amount for each day and updates the bond liabilities.
     */
    function _updateBondLiability() internal {
        uint256 today = roundToMidnightUTC(block.timestamp);
        uint256 timeIterator = lastUpdatedMaturity;

        if (timeIterator > today) {
            return;
        }

        uint256 ninetyDaysMatureAmount = 0;
        uint256 oneEightyDaysMatureAmount = 0;
        uint256 threeSixtyDaysMatureAmount = 0;
        while (timeIterator <= today) {
            ninetyDaysMatureAmount += maturityQueue[timeIterator][BondDuration.NinetyDays];
            oneEightyDaysMatureAmount += maturityQueue[timeIterator][BondDuration.OneEightyDays];
            threeSixtyDaysMatureAmount += maturityQueue[timeIterator][BondDuration.ThreeSixtyDays];

            timeIterator += 1 days;
        }

        // Update the bond liabilities.
        bondLiabilities[BondDuration.NinetyDays] -= ninetyDaysMatureAmount;
        bondLiabilities[BondDuration.OneEightyDays] -= oneEightyDaysMatureAmount;
        bondLiabilities[BondDuration.ThreeSixtyDays] -= threeSixtyDaysMatureAmount;

        // Update the time cursor.
        lastUpdatedMaturity = timeIterator;

        emit BondLiabilityUpdated(BondDuration.NinetyDays, bondLiabilities[BondDuration.NinetyDays]);
        emit BondLiabilityUpdated(BondDuration.OneEightyDays, bondLiabilities[BondDuration.OneEightyDays]);
        emit BondLiabilityUpdated(BondDuration.ThreeSixtyDays, bondLiabilities[BondDuration.ThreeSixtyDays]);
    }
}
