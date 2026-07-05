// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.27;

import "./EzAuctionStorage.sol";
import "../Errors/Errors.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/proxy/beacon/UpgradeableBeacon.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {
    ERC165CheckerUpgradeable
} from "@openzeppelin/contracts-upgradeable/utils/introspection/ERC165CheckerUpgradeable.sol";
import {
    Ownable2StepUpgradeable
} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import "./Automation/IPaymentReceiver.sol";

/**
 * @author  RenzoProtocol
 * @title   EzAuction
 * @notice  Extension of the FeeFlowController contract by Euler Labs
 *          https://github.com/euler-xyz/fee-flow/blob/main/src/FeeFlowController.sol
 */

contract EzAuction is Ownable2StepUpgradeable, ReentrancyGuardUpgradeable, EzAuctionStorageV3 {
    using SafeERC20 for IERC20;

    uint256 public constant MIN_EPOCH_PERIOD = 1 hours;
    uint256 public constant MAX_EPOCH_PERIOD = 365 days;
    uint256 public constant MIN_PRICE_MULTIPLIER = 1.1e18; // Should at least be 110% of settlement price
    uint256 public constant MAX_PRICE_MULTIPLIER = 3e18; // Should not exceed 300% of settlement price
    uint256 public constant ABS_MIN_INIT_PRICE = 1e6; // Minimum sane value for init price
    uint256 public constant ABS_MAX_INIT_PRICE = type(uint192).max; // chosen so that initPrice * priceMultiplier does not exceed uint256
    uint256 public constant PRICE_MULTIPLIER_SCALE = 1e18;

    // Events
    event Buy(
        address indexed buyer,
        address indexed assetsReceiver,
        uint256 paymentAmount,
        uint256 epochId
    );
    event AuctionStarted(EpochData epoch);
    event AuctionCreated(EpochData epoch);
    event Paused(bool paused);
    event PauserUpdated(address oldPauser, address newPauser);
    event PaymentReceiverUpdated(address oldPaymentReceive, address newPaymentReceiver);
    event AuctionStarterUpdated(address oldAuctionStarter, address newAuctionStarter);
    event WethTokenUpdated(address oldWethToken, address newWethToken);

    modifier nonReentrantView() {
        require(!_reentrancyGuardEntered(), "ReentrancyGuard: reentrant view call");
        _;
    }

    /// @dev Only allows deposit and withdraw when not paused
    modifier whenNotPaused() {
        if (paused) revert AuctionPaused();
        _;
    }

    /// @dev Only allowed pauser and owner to change pause state
    modifier onlyOwnerOrPauser() {
        if (msg.sender != owner() && msg.sender != pauser) revert NotPauser();
        _;
    }

    /// @dev Only allowed pauser and owner to change pause state
    modifier onlyOwnerOrAuctionStarter() {
        if (msg.sender != owner() && msg.sender != auctionStarter)
            revert NotOwnerOrAuctionStarter();
        _;
    }

    /// @dev Prevents implementation contract from being initialized.
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        uint256 initPrice,
        address _paymentToken,
        address _paymentReceiver,
        uint256 _epochPeriod,
        uint256 _priceMultiplier,
        uint256 _minInitPrice,
        address auctionOwner
    ) public initializer {
        if (initPrice < _minInitPrice) revert InitPriceBelowMin();
        if (initPrice > ABS_MAX_INIT_PRICE) revert InitPriceExceedsMax();
        if (_epochPeriod < MIN_EPOCH_PERIOD) revert EpochPeriodBelowMin();
        if (_epochPeriod > MAX_EPOCH_PERIOD) revert EpochPeriodExceedsMax();
        if (_priceMultiplier < MIN_PRICE_MULTIPLIER) revert PriceMultiplierBelowMin();
        if (_priceMultiplier > MAX_PRICE_MULTIPLIER) revert PriceMultiplierExceedsMax();
        if (_minInitPrice < ABS_MIN_INIT_PRICE) revert MinInitPriceBelowMin();
        if (
            _paymentToken == address(0) ||
            auctionOwner == address(0) ||
            _paymentReceiver == address(0)
        ) revert InvalidZeroInput();

        _transferOwnership(auctionOwner);
        __ReentrancyGuard_init();

        currentEpoch.initPrice = uint192(initPrice);
        currentEpoch.state = AuctionState.NOTSTARTED;

        paymentToken = IERC20(_paymentToken);
        paymentReceiver = _paymentReceiver;
        epochPeriod = _epochPeriod;
        priceMultiplier = _priceMultiplier;
        minInitPrice = _minInitPrice;

        emit AuctionCreated(currentEpoch);
    }

    /**
     * @notice  Reverts renounceOwnership call
     * @dev     Revert to prevent any mistake call to renounceOwnership
     */
    function renounceOwnership() public view override onlyOwner {
        revert();
    }
    /**
     * @notice  Pause the vault
     * @dev     permissioned call (onlyPuaser)
     */
    function pause() external onlyOwnerOrPauser {
        paused = true;
        emit Paused(true);
    }

    /**
     * @notice  UnPause the vault
     * @dev     permissioned call (onlyOwner)
     */
    function unpause() external onlyOwner {
        paused = false;
        emit Paused(false);
    }

    /**
     * @notice  Update pauser address
     * @dev     permissioned call (onlyOwner)
     * @param   _pauser  new pauser address
     */
    function setPauser(address _pauser) external onlyOwner {
        if (_pauser == address(0)) revert InvalidZeroInput();
        emit PauserUpdated(pauser, _pauser);
        pauser = _pauser;
    }

    /**
     * @notice  Update payment receiver
     * @dev     permissioned call (onlyOwner)
     * @param   _paymentReceiver  new address to send payments to
     */
    function setPaymentReceiver(address _paymentReceiver) external onlyOwner {
        if (_paymentReceiver == address(0)) revert InvalidZeroInput();
        emit PaymentReceiverUpdated(paymentReceiver, _paymentReceiver);

        paymentReceiver = _paymentReceiver;
    }

    /**
     * @notice  Update auction starter account
     * @dev     permissioned call (onlyOwner)
     * @param   _auctionStarter  new address to allow to start auctions
     */
    function setAuctionStarter(address _auctionStarter) external onlyOwner {
        if (_auctionStarter == address(0)) revert InvalidZeroInput();
        emit AuctionStarterUpdated(auctionStarter, _auctionStarter);

        auctionStarter = _auctionStarter;
    }

    /**
     * @notice  Update WETH token address
     * @dev     Allows it to bet set to 0 to disable ETH deposits - permissioned call (onlyOwner)
     * @param   _wETHAddress  address to WETH token contract
     */
    function setWethToken(address _wETHAddress) external onlyOwner {
        emit WethTokenUpdated(wETHAddress, _wETHAddress);

        // Set variables
        wETHAddress = _wETHAddress;
    }

    /**
     * @notice  Starts the auction. The param "_initPrice"  can be used to set a higher initial price for the epoch
     *          than the one recorded while privious auction was bought through 'buy()'.
     *          It prevents the case when base assets combined value in underlying asset is higher than
     *          the caulated value (previousAuctionSold * priceMultiplier).
     * @dev     permissioned call by onlyOwner
     * @param   _initPrice  custom initialPrice for auction.
     */
    function startEpoch(uint256 _initPrice) external onlyOwnerOrAuctionStarter {
        if (currentEpoch.state != AuctionState.NOTSTARTED) revert AuctionAlreadyStarted();
        if (_initPrice > ABS_MAX_INIT_PRICE) revert InitPriceExceedsMax();
        if (_initPrice < currentEpoch.initPrice) revert InvalidInitPrice();
        currentEpoch.initPrice = uint192(_initPrice);
        currentEpoch.startTime = uint40(block.timestamp);
        currentEpoch.state = AuctionState.STARTED;

        emit AuctionStarted(currentEpoch);
    }

    /// @dev Allows a user to buy assets by transferring payment tokens and receiving the assets.
    /// @param assets The addresses of the assets to be bought.
    /// @param assetsReceiver The address that will receive the bought assets.
    /// @param epochId Id of the epoch to buy from, will revert if not the current epoch
    /// @param deadline The deadline timestamp for the purchase.
    /// @param maxPaymentTokenAmount The maximum amount of payment tokens the user is willing to spend.
    /// @return paymentAmount The amount of payment tokens transferred for the purchase.
    /// @notice This function performs various checks and transfers the payment tokens to the payment receiver.
    /// It also transfers the assets to the assets receiver and sets up a new auction with an updated initial price.
    function buy(
        address[] calldata assets,
        address assetsReceiver,
        uint256 epochId,
        uint256 deadline,
        uint256 maxPaymentTokenAmount
    ) external nonReentrant whenNotPaused returns (uint256 paymentAmount) {
        if (block.timestamp > deadline) revert DeadlinePassed();
        if (assets.length == 0) revert EmptyAssets();

        EpochData memory currentEpochCache = currentEpoch;

        if (currentEpochCache.state != AuctionState.STARTED) revert AuctionNotStarted();

        if (uint16(epochId) != currentEpochCache.epochId) revert EpochIdMismatch();

        address sender = _msgSender();

        paymentAmount = getPriceFromCache(currentEpochCache);

        if (paymentAmount > maxPaymentTokenAmount) revert MaxPaymentTokenAmountExceeded();

        if (paymentAmount > 0) {
            // Send the tokens to the paymentReceiver
            paymentToken.safeTransferFrom(sender, paymentReceiver, paymentAmount);

            // If the target supports the IPaymentReceiver interface, process the payment
            if (
                ERC165CheckerUpgradeable.supportsInterface(
                    paymentReceiver,
                    type(IPaymentReceiver).interfaceId
                )
            ) {
                // Call receiver and ignore if processing fails
                IPaymentReceiver(paymentReceiver).processPayment(paymentToken);
            }
        }

        for (uint256 i = 0; i < assets.length; ) {
            // Transfer full balance to buyer
            uint256 balance = IERC20(assets[i]).balanceOf(address(this));
            IERC20(assets[i]).safeTransfer(assetsReceiver, balance);
            unchecked {
                ++i;
            }
        }

        // Emit event for auction bought
        emit Buy(sender, assetsReceiver, paymentAmount, uint256(currentEpochCache.epochId));

        // Setup new auction
        uint256 newInitPrice = (paymentAmount * priceMultiplier) / PRICE_MULTIPLIER_SCALE;

        if (newInitPrice > ABS_MAX_INIT_PRICE) {
            newInitPrice = ABS_MAX_INIT_PRICE;
        } else if (newInitPrice < minInitPrice) {
            newInitPrice = minInitPrice;
        }

        // epochID is allowed to overflow, effectively reusing them
        unchecked {
            currentEpochCache.epochId++;
        }
        currentEpochCache.initPrice = uint192(newInitPrice);
        currentEpochCache.state = AuctionState.NOTSTARTED;
        currentEpochCache.startTime = 0;

        currentEpoch = currentEpochCache;

        emit AuctionCreated(currentEpoch);

        return paymentAmount;
    }

    /// @dev Retrieves the current price from the cache based on the elapsed time since the start of the epoch.
    /// @param currentEpochCache The EpochData struct containing the initial price and start time of the epoch.
    /// @return price The current price calculated based on the elapsed time and the initial price.
    /// @notice This function calculates the current price by subtracting a fraction of the initial price based on the elapsed time.
    // If the elapsed time exceeds the epoch period, the price will be 0.
    function getPriceFromCache(EpochData memory currentEpochCache) internal view returns (uint256) {
        // If Auction not started return 0
        if (currentEpochCache.state == AuctionState.NOTSTARTED) {
            return 0;
        }

        uint256 timePassed = block.timestamp - currentEpochCache.startTime;

        if (timePassed > epochPeriod) {
            return 0;
        }

        return
            currentEpochCache.initPrice - (currentEpochCache.initPrice * timePassed) / epochPeriod;
    }

    /// @dev Calculates the current price
    /// @return price The current price calculated based on the elapsed time and the initial price.
    /// @notice Uses the internal function `getPriceFromCache` to calculate the current price.
    function getPrice() external view nonReentrantView returns (uint256) {
        return getPriceFromCache(currentEpoch);
    }

    /// @dev Retrieves Slot0 as a memory struct
    /// @return Slot0 The Slot0 value as a Slot0 struct
    function getCurrentEpoch() external view nonReentrantView returns (EpochData memory) {
        return currentEpoch;
    }

    /// @dev Fallback function to receive Ether - will be automatically forwarded to WETH to convert to ERC20
    receive() external payable {
        if (msg.value == 0) revert InvalidZeroInput();
        if (wETHAddress == address(0)) revert InvalidZeroInput();

        // Send all value to WETH contract to convert to ERC20
        (bool success, ) = wETHAddress.call{ value: msg.value }("");
        if (!success) {
            revert CallFailed();
        }
    }
}
