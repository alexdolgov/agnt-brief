// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {ERC20Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import {ERC20PermitUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {ERC20VotesUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20VotesUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {NoncesUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/NoncesUpgradeable.sol";
import {Ownable2StepUpgradeable, OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {ERC20BurnableUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {PriceFeed} from "./interfaces/IPriceFeed.sol";

contract Rain is
    Initializable,
    ERC20Upgradeable,
    Ownable2StepUpgradeable,
    ERC20PermitUpgradeable,
    ERC20BurnableUpgradeable,
    ERC20VotesUpgradeable,
    UUPSUpgradeable
{
    // ╔════════════════════════════════════════════════════════════════════╗ //
    // ║                            State Variables                         ║ //
    // ╚════════════════════════════════════════════════════════════════════╝ //

    /// @notice The timestamp when the contract was deployed.
    uint256 deploymentTimestamp;

    /// @notice The timestamp of the last minting event.
    uint256 lastMintedTimestamp;

    /// @notice The total amount of tokens minted due to inflation.
    uint256 public totalInflationMinted;

    /// @notice The lockup period after deployment before minting is allowed. ie: 90 days
    uint256 public constant LOCKUP_PERIOD = 7776000;

    /// @notice The cooldown period between daily minting attempts. ie: 1 days
    uint256 public constant MINT_COOLDOWN_PERIOD = 86400;

    /// @notice RainToken's daily inflation in USD.
    /// @dev The value is represented in wei (10^6 for USDT).
    uint256 public constant DAILY_INFLATION_USD = 50_000 * 10 ** 6;

    /// @notice The number of wei in one token.
    uint256 public constant WEI = 10 ** 18;

    /// @notice Initial supply of RAIN (1.15 trillion tokens).
    uint256 public constant INITIAL_SUPPLY = 1_150_000_000_000 * WEI;

    /// @notice Address of the oracle price feed
    PriceFeed public oraclePriceFeed;

    /// @notice The address of the treasury where minted tokens are sent.
    address public treasury;

    // ╔════════════════════════════════════════════════════════════════════╗ //
    // ║                            Errors                                  ║ //
    // ╚════════════════════════════════════════════════════════════════════╝ //

    /// @dev Revert when minting is attempted before the allowed period.
    error MintingNotAllowedYet();

    /// @dev Revert when the price from the oracle is invalid (zero).
    error InvalidPrice();

    /// @dev Revert when the calculated amount for minting is zero.
    error InvalidAmount();

    /// @dev Revert when minting is attempted more than once per day.
    error DailyAllowedLimitReached();

    /// @dev Revert when the oracle price feed is not set.
    error OraclePriceFeedNotSet();

    /// @dev Revert when an invalid address is provided.
    error InvalidAddress();

    /// @dev Revert when the new price feed address is the same as the current one.
    error SamePriceFeedAddress();

    // ╔════════════════════════════════════════════════════════════════════╗ //
    // ║                            Events                                  ║ //
    // ╚════════════════════════════════════════════════════════════════════╝ //

    /// @notice Emitted when the oracle price feed address is updated.
    /// @param oraclePriceFeed The new oracle price feed address.
    event PriceFeedSet(address indexed oraclePriceFeed);

    /// @notice Emitted when new tokens are minted due to inflation.
    /// @param to The address receiving the minted tokens.
    /// @param amount The amount of tokens minted.
    /// @param timestamp The timestamp when the minting occurred.
    event Minted(address indexed to, uint256 amount, uint256 timestamp);

    /// @notice Emitted when the treasury address is updated.
    /// @param newTreasury The new treasury address.
    /// @dev This event is emitted when the owner updates the treasury address.
    event TreasuryUpdated(address indexed newTreasury);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address initialOwner,
        address treasuryContract
    ) public initializer {
        __ERC20_init("RAIN", "RAIN");
        __Ownable2Step_init();
        __Ownable_init(initialOwner);
        __ERC20Permit_init("RAIN");
        __ERC20Burnable_init();
        __ERC20Votes_init();
        __UUPSUpgradeable_init();

        if (treasuryContract == address(0)) {
            revert InvalidAddress();
        }

        treasury = treasuryContract;

        _mint(treasury, INITIAL_SUPPLY);

        deploymentTimestamp = block.timestamp;
        lastMintedTimestamp = block.timestamp;
    }

    /// @notice Mints new tokens to the treasury based on a fixed USDT value using the current oracle price.
    /// @dev Enforces a 90-day lockup period after deployment and a 1-day cooldown between mints.
    /// @dev Requires the oracle price feed to be set before minting.
    /// @dev Updates the last minted timestamp and tracks total inflation minted.
    function dailyMinting() external onlyOwner {
        if (address(oraclePriceFeed) == address(0)) {
            revert OraclePriceFeedNotSet();
        }

        if (deploymentTimestamp + LOCKUP_PERIOD > block.timestamp) {
            revert MintingNotAllowedYet();
        }
        if (lastMintedTimestamp + MINT_COOLDOWN_PERIOD > block.timestamp) {
            revert DailyAllowedLimitReached();
        }

        uint256 rainPriceInUSD = oraclePriceFeed.getPrice();

        if (rainPriceInUSD == 0) {
            revert InvalidPrice();
        }

        // Calculate tokens needed for 50,000 USDT
        uint256 amount = (DAILY_INFLATION_USD * WEI) / rainPriceInUSD;

        if (amount == 0) {
            revert InvalidAmount();
        }

        lastMintedTimestamp = block.timestamp;
        totalInflationMinted += amount;

        _mint(treasury, amount);

        emit Minted({to: treasury, amount: amount, timestamp: block.timestamp});
    }

    /// @notice Sets the address of the oracle price feed contract.
    /// @dev Only callable by the contract owner. Reverts if the provided address is zero or the same as the current price feed.
    /// @param _oraclePriceFeed The address of the new oracle price feed contract.

    function setOraclePriceFeed(address _oraclePriceFeed) external onlyOwner {
        if (_oraclePriceFeed == address(0)) {
            revert InvalidAddress();
        }

        if (address(oraclePriceFeed) == _oraclePriceFeed) {
            revert SamePriceFeedAddress();
        }

        oraclePriceFeed = PriceFeed(_oraclePriceFeed);
        emit PriceFeedSet({oraclePriceFeed: _oraclePriceFeed});
    }

    /// @notice Updates the treasury address where minted tokens are sent.
    /// @dev Only callable by the contract owner. Reverts if the new address is zero or the same as the current treasury address.
    /// @param _newTreasury The new treasury address.
    function updateTreasury(address _newTreasury) external onlyOwner {
        if (_newTreasury == address(0) || _newTreasury == treasury) {
            revert InvalidAddress();
        }

        treasury = _newTreasury;
        emit TreasuryUpdated({newTreasury: _newTreasury});
    }

    function clock() public view override returns (uint48) {
        return uint48(block.timestamp);
    }

    // solhint-disable-next-line func-name-mixedcase
    function CLOCK_MODE() public pure override returns (string memory) {
        return "mode=timestamp";
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {}

    // The following functions are overrides required by Solidity.
    function _update(
        address from,
        address to,
        uint256 value
    ) internal override(ERC20Upgradeable, ERC20VotesUpgradeable) {
        super._update(from, to, value);
    }

    function nonces(
        address owner
    )
        public
        view
        override(ERC20PermitUpgradeable, NoncesUpgradeable)
        returns (uint256)
    {
        return super.nonces(owner);
    }
}
