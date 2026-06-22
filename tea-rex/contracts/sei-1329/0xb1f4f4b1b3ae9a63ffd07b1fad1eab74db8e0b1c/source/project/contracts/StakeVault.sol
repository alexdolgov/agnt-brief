// SPDX-License-Identifier: BUSL
// Teahouse Finance

pragma solidity ^0.8.28;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {ERC20Upgradeable, ERC20PermitUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";


/// @title StakeVault
/// @author Teahouse Finance
/// @notice This contract implements a staking vault, where users stake ERC20 tokens and get sToken in return.
/// @notice Owner can donate token into the vault to increase the value of sToken.
/// @notice Owner can also set a fee schedule where withdrawal fees can be determined by current time.
contract StakeVault is Initializable, UUPSUpgradeable, OwnableUpgradeable, ERC20PermitUpgradeable {

    using Math for uint256;
    using SafeERC20 for IERC20;

    struct Fees {
        uint64 timestamp;
        uint64 feeNumerator;
        uint64 feeDenominator;
    }

    error InvalidAddress();
    error InvalidPrice();
    error InvalidFeeSchedule();
    error SlippageCheck();
    error InvalidDonator();

    event UpdateFeeSchedule(Fees[] newFeeSchedule);
    event UpdateTreasury(address newTreasury);
    event UpdateDonator(address donator, bool isDonator);
    event Mint(address indexed minter, uint256 shareAmount, uint256 tokenAmount);
    event Burn(address indexed burner, uint256 shareAmount, uint256 tokenAmount, uint256 feeAmount);
    event Donate(address indexed donator, uint256 tokenAmount);
    event Sweep(address indexed sweeper, uint256 tokenAmount);

    uint8 private _decimals;
    IERC20 private _token;
    uint256 private _initialPriceNumerator;
    uint256 private _initialPriceDenominator;
    Fees[] private _feeSchedule;
    uint256 private _feeScheduleIndex;
    uint256 private _tokenBalance;
    mapping (address => bool) _donators;
    address private _treasury;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}

    /// @dev initializer
    /// @param owner_ owner address
    /// @param name_ name of sToken
    /// @param symbol_ symbol of sToken
    /// @param decimals_ decimals of sToken
    /// @param token_ token address
    /// @param initialPriceNumerator_ initial price numerator
    /// @param initialPriceDenominator_ initial price denominator
    /// @param feeSchedule_ fee schedule, see updateFeeSchedule function for detail
    /// @param treasury_ treasury address, fees go to this address
    function initialize(
        address owner_,
        string memory name_,
        string memory symbol_,
        uint8 decimals_,
        IERC20 token_,
        uint256 initialPriceNumerator_,
        uint256 initialPriceDenominator_,
        Fees[] memory feeSchedule_,
        address treasury_
    ) public initializer {
        __UUPSUpgradeable_init();
        __Ownable_init(owner_);
        __ERC20_init(name_, symbol_);
        __ERC20Permit_init(name_);
        
        require(owner_ != address(0), InvalidAddress());
        require(address(token_) != address(0), InvalidAddress());
        require(initialPriceNumerator_ != 0, InvalidPrice());
        require(initialPriceDenominator_ != 0, InvalidPrice());
        require(treasury_ != address(0), InvalidAddress());

        _decimals = decimals_;
        _token = token_;
        _initialPriceNumerator = initialPriceNumerator_;
        _initialPriceDenominator = initialPriceDenominator_;

        _feeSchedule = feeSchedule_;
        _validateFeeSchedule();

        _treasury = treasury_;
    }

    /// @notice get decimals of sToken
    /// @return decimals of sToken
    function decimals() override public view returns (uint8) {
        return _decimals;
    }

    /// @notice get token address
    /// @return token address
    function token() external view returns (address) {
        return address(_token);
    }

    /// @notice get current price of sToken
    /// @return numerator of sToken price
    /// @return denominator of sToken price
    function currentPrice() public view returns (uint256 numerator, uint256 denominator) {
        if (_tokenBalance == 0) {
            return (_initialPriceNumerator, _initialPriceDenominator);
        }
        else {
            return (_tokenBalance, totalSupply());
        }
    }

    /// @notice get fee schedule
    /// @return schedule fee schedule
    function feeSchedule() external view returns (Fees[] memory schedule) {
        return _feeSchedule;
    }

    /// @notice update fee schedule
    /// @notice owner only
    /// @param newFeeSchedule new fee schedule
    /// @notice fee schedule is an array of Fees structure
    /// @notice Fees.timestamp means the end time of the fee
    /// @notice Fees.timestamp must be in ascending order
    /// @notice Fees.numerator / Fees.denominator must be <= 100%
    /// @notice if current time is later than the timestamp of the last entry,
    /// @notice fees will be zero
    function updateFeeSchedule(Fees[] calldata newFeeSchedule) external onlyOwner {
        _feeSchedule = newFeeSchedule;
        _validateFeeSchedule();

        emit UpdateFeeSchedule(newFeeSchedule);
    }

    /// @notice get treasury address
    /// @return treasury address
    function treasury() external view returns (address) {
        return _treasury;
    }

    /// @notice update treasury address
    /// @notice owner only
    /// @param newTreasury new treasury address
    function updateTreasury(address newTreasury) external onlyOwner {
        require(newTreasury != address(0), InvalidAddress());

        _treasury = newTreasury;

        emit UpdateTreasury(newTreasury);
    }

    /// @notice see if an address is a donator
    /// @param donator address
    /// @return true if it's an donator, false if not
    function isDonator(address donator) external view returns (bool) {
        return _donators[donator];
    }

    /// @notice update donator list
    /// @param donator address
    /// @param set true to set as a donator, false to remove
    /// @notice owner only
    function updateDonator(address donator, bool set) external onlyOwner {
        require(donator != address(0), InvalidAddress());

        _donators[donator] = set;

        emit UpdateDonator(donator, set);
    }

    /// @notice get current fee
    /// @return numerator of fee
    /// @return denominator of fee
    function currentFee() external view returns (uint256 numerator, uint256 denominator) {
        (numerator, denominator,) = _currentFee();
    }

    /// @notice preview mint
    /// @param shareAmount share amount to mint
    /// @return tokenAmount amount of token required
    function previewMint(uint256 shareAmount) public view returns (uint256 tokenAmount) {
        (uint256 priceNumerator, uint256 priceDenominator) = currentPrice();
        tokenAmount = shareAmount.mulDiv(priceNumerator, priceDenominator, Math.Rounding.Ceil); // rounding up
    }

    /// @notice mint sToken
    /// @param shareAmount amount of sToken to mint
    /// @param maxTokenAmount max amount of tokens to use
    /// @return tokenAmount amount of token used
    function mint(uint256 shareAmount, uint256 maxTokenAmount) public returns (uint256 tokenAmount) {
        return _mintInternal(msg.sender, shareAmount, maxTokenAmount);
    }

    /// @notice mint sToken with permit
    /// @param minter minter address
    /// @param shareAmount amount of sToken to mint
    /// @param maxTokenAmount max amount of tokens to use
    /// @param deadline of permit signature
    /// @param v of permit signature
    /// @param r of permit signature
    /// @param s of permit signature
    /// @return tokenAmount amount of token used
    /// @notice signature amount must be maxTokenAmount
    function mintPermit(address minter, uint256 shareAmount, uint256 maxTokenAmount, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external returns (uint256 tokenAmount) {
        IERC20Permit(address(_token)).permit(minter, address(this), maxTokenAmount, deadline, v, r, s);
        return _mintInternal(minter, shareAmount, maxTokenAmount);
    }

    /// @notice internal mint function
    /// @param minter minter address
    /// @param shareAmount amount of sToken to mint
    /// @param maxTokenAmount max amount of tokens to use
    /// @return tokenAmount amount of token used
    function _mintInternal(address minter, uint256 shareAmount, uint256 maxTokenAmount) internal returns (uint256 tokenAmount) {
        tokenAmount = previewMint(shareAmount);
        require(tokenAmount <= maxTokenAmount, SlippageCheck());

        _token.safeTransferFrom(minter, address(this), tokenAmount);
        _mint(minter, shareAmount);

        _tokenBalance += tokenAmount;

        emit Mint(minter, shareAmount, tokenAmount);
    }

    /// @notice preview deposit
    /// @param tokenAmount amount of token to deposit
    /// @return shareAmount amount of sToken minted
    function previewDeposit(uint256 tokenAmount) public view returns (uint256 shareAmount) {
        (uint256 priceNumerator, uint256 priceDenominator) = currentPrice();
        shareAmount = tokenAmount.mulDiv(priceDenominator, priceNumerator); // rounding down
    }

    /// @notice deposit
    /// @param tokenAmount amount of token to deposit
    /// @param minShareAmount min amount of sToken to mint
    /// @return shareAmount amount of sToken minted
    function deposit(uint256 tokenAmount, uint256 minShareAmount) external returns (uint256 shareAmount) {
        return _depositInternal(msg.sender, tokenAmount, minShareAmount);
    }

    /// @notice deposit with permit
    /// @param minter minter address
    /// @param tokenAmount amount of token to deposit
    /// @param minShareAmount min amount of sToken to mint
    /// @param deadline of permit signature
    /// @param v of permit signature
    /// @param r of permit signature
    /// @param s of permit signature
    /// @return shareAmount amount of sToken minted
    function depositPermit(address minter, uint256 tokenAmount, uint256 minShareAmount, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external returns (uint256 shareAmount) {
        IERC20Permit(address(_token)).permit(minter, address(this), tokenAmount, deadline, v, r, s);
        return _depositInternal(minter, tokenAmount, minShareAmount);
    }

    /// @notice internal deposit function
    /// @param minter minter address
    /// @param tokenAmount amount of token to deposit
    /// @param minShareAmount min amount of sToken to mint
    /// @return shareAmount amount of sToken minted
    function _depositInternal(address minter, uint256 tokenAmount, uint256 minShareAmount) internal returns (uint256 shareAmount) {
        shareAmount = previewDeposit(tokenAmount);
        require(shareAmount >= minShareAmount, SlippageCheck());

        _token.safeTransferFrom(minter, address(this), tokenAmount);
        _mint(minter, shareAmount);

        _tokenBalance += tokenAmount;

        emit Mint(minter, shareAmount, tokenAmount);
    }

    /// @notice preview burn
    /// @param shareAmount amount of sToken to burn
    /// @return tokenAmount amount of token received by the burner
    /// @return feeAmount amount of fees
    /// @notice tokenAmount does not include feeAmount
    function previewBurn(uint256 shareAmount) public view returns (uint256 tokenAmount, uint256 feeAmount) {
        (tokenAmount, feeAmount,) = _previewBurn(shareAmount);
    }

    /// @notice internal preview burn function
    /// @param shareAmount amount of sToken to burn
    /// @return tokenAmount amount of token received by the burner
    /// @return feeAmount amount of fees
    /// @return index of fee schedule
    /// @notice tokenAmount does not include feeAmount
    function _previewBurn(uint256 shareAmount) internal view returns (uint256 tokenAmount, uint256 feeAmount, uint256 index) {
        (uint256 priceNumerator, uint256 priceDenominator) = currentPrice();

        uint256 feeNumerator;
        uint256 feeDenominator;
        (feeNumerator, feeDenominator, index) = _currentFee();
        tokenAmount = shareAmount.mulDiv(priceNumerator, priceDenominator); // rounding down
        feeAmount = tokenAmount.mulDiv(feeNumerator, feeDenominator, Math.Rounding.Ceil); // rounding up
        tokenAmount -= feeAmount;
    }

    /// @notice burn sToken
    /// @param shareAmount amount of sToken to burn
    /// @param minTokenAmount min amount of token to receive
    /// @return tokenAmount amount of token received by the burner
    /// @return feeAmount amount of fees
    function burn(uint256 shareAmount, uint256 minTokenAmount) external returns (uint256 tokenAmount, uint256 feeAmount) {
        uint256 index;
        (tokenAmount, feeAmount, index) = _previewBurn(shareAmount);
        require(tokenAmount >= minTokenAmount, SlippageCheck());

        _feeScheduleIndex = index;

        _burn(msg.sender, shareAmount);
        if (tokenAmount > 0) {
            _token.safeTransfer(msg.sender, tokenAmount);
        }

        if (feeAmount > 0) {
            _token.safeTransfer(_treasury, feeAmount);
        }

        _tokenBalance -= (tokenAmount + feeAmount);

        emit Burn(msg.sender, shareAmount, tokenAmount, feeAmount);
    }

    /// @notice donate token into the vault
    /// @notice donator only
    /// @param tokenAmount amount of token to donate
    function donate(uint256 tokenAmount) external {
        _donateInternal(msg.sender, tokenAmount);
    }

    /// @notice donate token with permit
    /// @param tokenAmount amount of token to donate
    /// @param deadline of permit signature
    /// @param v of permit signature
    /// @param r of permit signature
    /// @param s of permit signature
    function donatePermit(address donator, uint256 tokenAmount, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external {
        IERC20Permit(address(_token)).permit(donator, address(this), tokenAmount, deadline, v, r, s);
        _donateInternal(donator, tokenAmount);
    }

    /// @notice internal donate function
    /// @param donator address, must be in the donator list
    /// @param tokenAmount amount of token to donate
    function _donateInternal(address donator, uint256 tokenAmount) internal {
        require(_donators[donator], InvalidDonator());
        _token.safeTransferFrom(donator, address(this), tokenAmount);
        _tokenBalance += tokenAmount;

        emit Donate(donator, tokenAmount);
    }

    /// @notice sweep excess tokens
    /// @notice if someone sends tokens without using the proper functions (mint, deposit, or donate),
    /// @notice owner can send these tokens to treasury using this function
    /// @notice owner only
    /// @return amount of tokens sent to treasury
    function sweep() external onlyOwner returns (uint256) {
        uint256 balance = _token.balanceOf(address(this));
        uint256 extraBalance = balance - _tokenBalance;
        _token.safeTransfer(_treasury, extraBalance);

        emit Sweep(msg.sender, extraBalance);

        return extraBalance;
    }

    /// @notice internal function to validate fee schedule
    /// @notice this function make sure fee schedules are valid
    /// @notice timestamp are n ascending order and fees are not over 100%
    function _validateFeeSchedule() internal {
        uint256 previousTimestamp = 0;
        int256 index = -1;
        uint256 length = _feeSchedule.length;
        for (uint256 i = 0; i < length; i++) {
            Fees memory fee = _feeSchedule[i];
            require(fee.feeDenominator != 0, InvalidFeeSchedule());
            require(fee.feeNumerator <= _feeSchedule[i].feeDenominator, InvalidFeeSchedule());
            require(fee.timestamp > previousTimestamp, InvalidFeeSchedule());

            previousTimestamp = fee.timestamp;
            if (block.timestamp > previousTimestamp) {
                index = int256(i);
            }
        }

        _feeScheduleIndex = uint256(index + 1);
    }

    /// @notice internal function to get current fee
    /// @notice this function searches the fee schedule to find current fee
    /// @notice it also returns the index of fee schedule array corresponding to current fee
    /// @notice the index will be after the last entry of the index of there's no entry in the fee schedule
    /// @notice corresponding to current time
    function _currentFee() internal view returns (uint256 numerator, uint256 denominator, uint256 index) {
        uint256 i = _feeScheduleIndex;
        uint256 length = _feeSchedule.length;
        for (; i < length; i++) {
            if (_feeSchedule[i].timestamp > block.timestamp) {
                return (_feeSchedule[i].feeNumerator, _feeSchedule[i].feeDenominator, i);
            }
        }

        // default to zero fees
        return (0, 1, i + 1);
    }
}
