// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "./abstract/Ownable.sol";
import {ReentrancyGuard} from "./abstract/ReentrancyGuard.sol";
import {IBaseContracts} from "./interface/IBaseContracts.sol";
import {IERC20Custom} from "./interface/IERC20Custom.sol";
import {IERC20Token} from "./interface/IERC20Token.sol";
import {IERC20TokenRebase} from "./interface/IERC20TokenRebase.sol";
import {IFloor} from "./interface/IFloor.sol";
import {IMiscHelper} from "./interface/IMiscHelper.sol";
import {IPSM} from "./interface/IPSM.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20 as IERC20Safe} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 * @title Minter
 * @dev Token minting controller with phased distribution
 * @notice Manages token issuance through whitelist and public phases
 */
contract Minter is Ownable, ReentrancyGuard {
    /// @notice Protocol helper contract
    /// @dev Facilitates cross-contract interactions
    IMiscHelper public helper;
    /// @notice Core protocol tokens
    IERC20Token public immutable dusx;
    IERC20TokenRebase public immutable sttx;
    IFloor public immutable floor;
    /// @notice Stablecoins and PSMs
    IERC20Custom[] public stables;
    IPSM[] public pegStabilityModules;
    /// @notice Treasury configuration
    address public immutable treasury;
    uint256 public immutable maxMintAmount;
    uint256 public constant TREASURY_ALLOCATION = 10;
    /// @notice Minting rates and state
    uint256 private constant RATES_LENGTH = 10;
    uint256[RATES_LENGTH] public rates;
    uint256 public currentRatio;
    uint256 public supplyMinted;
    bool public whitelistMintActive;
    bool public publicMintActive;
    mapping(address => bool) public whitelistedWallets;
    /// @notice Events
    event WhitelistMintEnabled();
    event PublicMintEnabled();
    event WalletWhitelisted(address indexed wallet);
    event TokensMinted(address indexed user, uint256 amount);
    /// @notice Custom errors
    error ApproveFailed();
    error EmptyArray();
    error InvalidMintAmount();
    error MintAlreadyActive();
    error MintNotActive();
    error TokenReserveIsNotLowEnough();
    error UnsupportedStablecoin();
    error WalletNotWhitelisted();
    error ZeroAddress();
    error MintAmountCalculationFailed(uint256 stableAmount, uint256 rate);
    error MaxStableRangeCalculationFailed(uint256 supply, uint256 rate);
    modifier onlyWhitelisted() {
        if (!whitelistedWallets[_msgSender()]) revert WalletNotWhitelisted();
        _;
    }

    /**
     * @notice Initializes the minting contract
     * @param baseContracts_ Base contracts instance for protocol integration
     * @param treasury_ Treasury address for fee collection
     */
    constructor(IBaseContracts baseContracts_, address treasury_) {
        _ensureNonzeroAddress(address(baseContracts_));
        _ensureNonzeroAddress(treasury_);
        // Get immutable contracts from BaseContracts
        helper = baseContracts_.helper();
        dusx = baseContracts_.dusx();
        sttx = baseContracts_.sttx();
        floor = baseContracts_.floor();
        _ensureNonzeroAddress(address(helper));
        _ensureNonzeroAddress(address(dusx));
        _ensureNonzeroAddress(address(sttx));
        _ensureNonzeroAddress(address(floor));
        // Initialize PSMs and get their stablecoins
        IPSM[] memory psms_ = new IPSM[](2);
        psms_[0] = baseContracts_.psmCircle();
        psms_[1] = baseContracts_.psmTether();
        if (address(psms_[0]) == address(0) || address(psms_[1]) == address(0))
            revert ZeroAddress();
        pegStabilityModules = psms_;
        // Get stablecoins from PSMs
        IERC20Custom[] memory stables_ = new IERC20Custom[](2);
        stables_[0] = psms_[0].stableToken(); // Circle PSM -> USDC
        stables_[1] = psms_[1].stableToken(); // Tether PSM -> USDT
        if (
            address(stables_[0]) == address(0) ||
            address(stables_[1]) == address(0)
        ) revert ZeroAddress();
        stables = stables_;
        treasury = treasury_;
        rates = [4380, 4380, 4175, 4175, 4008, 4008, 4008, 4008, 4008, 4008];
        maxMintAmount = ((73_146_000 * 25) / 10) * 10 ** sttx.decimals();
        _setupApprovals(stables, pegStabilityModules);
    }

    /**
     * @notice Adds a wallet to whitelist
     * @param wallet Address to whitelist
     */
    function addWallet(address wallet) external onlyOwner {
        whitelistedWallets[wallet] = true;
        emit WalletWhitelisted(wallet);
    }

    /**
     * @notice Adds multiple wallets to whitelist
     * @param wallets Array of addresses to whitelist
     */
    function addWalletBatch(address[] memory wallets) external onlyOwner {
        uint256 length = wallets.length;
        for (uint256 i; i < length; i++) {
            whitelistedWallets[wallets[i]] = true;
            emit WalletWhitelisted(wallets[i]);
        }
    }

    /**
     * @notice Enables whitelist minting phase
     */
    function enableWhitelistMint() external onlyOwner {
        if (whitelistMintActive) revert MintAlreadyActive();
        whitelistMintActive = true;
        emit WhitelistMintEnabled();
    }

    /**
     * @notice Enables public minting phase
     */
    function enablePublicMint() external onlyOwner {
        if (publicMintActive) revert MintAlreadyActive();
        publicMintActive = true;
        emit PublicMintEnabled();
    }

    /**
     * @notice Mints tokens during whitelist phase
     * @param stablecoin Stablecoin used for minting
     * @param stableAmount Amount of stablecoin to mint against
     */
    function whitelistMint(
        IERC20Custom stablecoin,
        uint256 stableAmount
    ) external nonReentrant onlyWhitelisted {
        if (!whitelistMintActive) revert MintNotActive();
        _mint(stablecoin, stableAmount);
    }

    /**
     * @notice Mints tokens during public phase
     * @param stablecoin Stablecoin used for minting
     * @param stableAmount Amount of stablecoin to mint against
     */
    function publicMint(
        IERC20Custom stablecoin,
        uint256 stableAmount
    ) external nonReentrant {
        if (!publicMintActive) revert MintNotActive();
        _mint(stablecoin, stableAmount);
    }

    /**
     * @notice Mints remaining token supply
     * @param stablecoin Stablecoin used for minting
     */
    function mintRemainingSupply(
        IERC20Custom stablecoin
    ) external nonReentrant {
        if (!publicMintActive) revert MintNotActive();
        if (tokenReserve() >= sttx.maxSupply() / 100)
            revert TokenReserveIsNotLowEnough();
        uint256 decimalsDifference = 10 **
            (sttx.decimals() - stablecoin.decimals());
        uint256 stableAmount = (tokenReserve() / (rates[rates.length - 1])) /
            decimalsDifference;
        _mint(stablecoin, stableAmount);
    }

    /**
     * @notice Sends accumulated DUSX to floor contract
     */
    function sendToFloorDUSX() external nonReentrant {
        _sendToFloorDUSX();
    }

    /**
     * @notice Verifies if a wallet is whitelisted
     * @param wallet Address to verify
     * @return bool Whitelist status
     */
    function verifyWallet(address wallet) external view returns (bool) {
        return whitelistedWallets[wallet];
    }

    /**
     * @notice Calculates mint amount for given stablecoin input
     * @param stablecoin Stablecoin used for calculation
     * @param stableAmount Amount of stablecoin
     * @return uint256 Calculated mint amount
     */
    function calcMintAmount(
        IERC20Custom stablecoin,
        uint256 stableAmount
    ) public view returns (uint256) {
        uint256[RATES_LENGTH] memory supplyRangeLeft;
        uint256[RATES_LENGTH] memory maxStablePerRange = [
            uint256(0),
            uint256(0),
            uint256(0),
            uint256(0),
            uint256(0),
            uint256(0),
            uint256(0),
            uint256(0),
            uint256(0),
            uint256(0)
        ];
        bool maxStablePerRangeUpdated = false;
        uint256 mintAmount = 0;
        uint256 decimalsDifference = 10 **
            (sttx.decimals() - stablecoin.decimals());
        for (uint256 i; i < RATES_LENGTH; i++) {
            supplyRangeLeft[i] = (sttx.maxSupply() / RATES_LENGTH);
            // Check for overflow in maxStablePerRange calculation
            uint256 maxStable = ((sttx.maxSupply() / RATES_LENGTH) / rates[i]) /
                decimalsDifference;
            if (maxStable == 0 && (sttx.maxSupply() / RATES_LENGTH) != 0) {
                revert MaxStableRangeCalculationFailed(
                    sttx.maxSupply() / RATES_LENGTH,
                    rates[i]
                );
            }
            maxStablePerRange[i] = maxStable;
        }
        for (uint256 i; i < RATES_LENGTH; i++) {
            if (currentRatio < ((i + 1) * 100) / RATES_LENGTH) {
                supplyRangeLeft[i] =
                    (sttx.maxSupply() / RATES_LENGTH) *
                    (i + 1) -
                    supplyMinted;
                if (!maxStablePerRangeUpdated) {
                    uint256 maxStable = (supplyRangeLeft[i] / rates[i]) /
                        decimalsDifference;
                    if (maxStable == 0 && supplyRangeLeft[i] != 0) {
                        revert MaxStableRangeCalculationFailed(
                            supplyRangeLeft[i],
                            rates[i]
                        );
                    }
                    maxStablePerRange[i] = maxStable;
                    maxStablePerRangeUpdated = true;
                }
                if (stableAmount <= maxStablePerRange[i]) {
                    uint256 amount = (stableAmount * rates[i]) *
                        decimalsDifference;
                    if (
                        amount / rates[i] / decimalsDifference != stableAmount
                    ) {
                        revert MintAmountCalculationFailed(
                            stableAmount,
                            rates[i]
                        );
                    }
                    mintAmount += amount;
                    break;
                } else {
                    uint256 amount = (maxStablePerRange[i] * rates[i]) *
                        decimalsDifference;
                    if (
                        amount / rates[i] / decimalsDifference !=
                        maxStablePerRange[i]
                    ) {
                        revert MintAmountCalculationFailed(
                            maxStablePerRange[i],
                            rates[i]
                        );
                    }
                    mintAmount += amount;
                    stableAmount -= maxStablePerRange[i];
                }
            } else {
                maxStablePerRangeUpdated = false;
            }
        }
        return mintAmount > tokenReserve() ? tokenReserve() : mintAmount;
    }

    function calcStableAmount(
        IERC20Custom stablecoin,
        uint256 mintAmount
    ) public view returns (uint256) {
        uint256[RATES_LENGTH] memory maxStablePerRange = [
            uint256(0),
            uint256(0),
            uint256(0),
            uint256(0),
            uint256(0),
            uint256(0),
            uint256(0),
            uint256(0),
            uint256(0),
            uint256(0)
        ];
        bool maxStablePerRangeUpdated = false;
        uint256 stableAmount = 0;
        uint256 decimalsDifference = 10 **
            (sttx.decimals() - stablecoin.decimals());
        for (uint256 i; i < RATES_LENGTH; i++) {
            maxStablePerRange[i] =
                ((sttx.maxSupply() / RATES_LENGTH) / rates[i]) /
                decimalsDifference;
        }
        for (uint256 i; i < RATES_LENGTH; i++) {
            if (currentRatio < ((i + 1) * 100) / RATES_LENGTH) {
                if (!maxStablePerRangeUpdated) {
                    maxStablePerRange[i] =
                        (((sttx.maxSupply() / RATES_LENGTH) *
                            (i + 1) -
                            supplyMinted) / rates[i]) /
                        decimalsDifference;
                    maxStablePerRangeUpdated = true;
                }
                if (
                    mintAmount <=
                    (maxStablePerRange[i] * rates[i]) * decimalsDifference
                ) {
                    stableAmount +=
                        mintAmount /
                        (rates[i] * decimalsDifference);
                    break;
                } else {
                    stableAmount += maxStablePerRange[i];
                    mintAmount -=
                        (maxStablePerRange[i] * rates[i]) *
                        decimalsDifference;
                }
            } else {
                maxStablePerRangeUpdated = false;
            }
        }
        return stableAmount;
    }

    function tokenReserve() public view returns (uint256) {
        return sttx.maxSupply() - supplyMinted;
    }

    function _mint(IERC20Custom stablecoin, uint256 stableAmount) private {
        if (!_checkStable(stablecoin)) revert UnsupportedStablecoin();
        uint256 toMint = calcMintAmount(stablecoin, stableAmount);
        if (toMint == 0 || toMint > tokenReserve() || toMint > maxMintAmount)
            revert InvalidMintAmount();
        uint256 floorAmount = (stableAmount * (100 - TREASURY_ALLOCATION)) /
            100;
        supplyMinted += toMint;
        currentRatio = (supplyMinted * 100) / sttx.maxSupply();
        SafeERC20.safeTransferFrom(
            IERC20Safe(address(stablecoin)),
            _msgSender(),
            address(this),
            stableAmount
        );
        IERC20TokenRebase(address(sttx)).rebase();
        IERC20TokenRebase(address(sttx)).mint(_msgSender(), toMint);
        uint256 length = stables.length;
        for (uint256 i; i < length; i++) {
            if (stablecoin == stables[i]) {
                helper.psmSwapStableForDUSX(
                    pegStabilityModules[i],
                    address(this),
                    floorAmount
                );
                break;
            }
        }
        SafeERC20.safeTransfer(
            IERC20Safe(address(stablecoin)),
            treasury,
            stablecoin.balanceOf(address(this))
        );
        _sendToFloorDUSX();
        emit TokensMinted(_msgSender(), toMint);
    }

    function _sendToFloorDUSX() private {
        uint256 dusxBalance = dusx.balanceOf(address(this));
        if (dusxBalance > 0) {
            helper.depositFloor(dusxBalance);
        }
    }

    function _setupApprovals(
        IERC20Custom[] memory stables_,
        IPSM[] memory psms_
    ) private {
        uint256 length = stables_.length;
        for (uint256 i; i < length; i++) {
            bool successStables = stables_[i].approve(
                address(psms_[i]),
                type(uint256).max
            );
            if (!successStables) {
                revert ApproveFailed();
            }
        }
        bool successDUSX = dusx.approve(address(floor), type(uint256).max);
        if (!successDUSX) {
            revert ApproveFailed();
        }
    }

    function _checkStable(IERC20Custom stablecoin) private view returns (bool) {
        uint256 length = stables.length;
        bool found = false;
        for (uint256 i; i < length; i++) {
            if (stablecoin == stables[i]) {
                found = true;
                break;
            }
        }
        return found;
    }

    // Validates that an address is not zero
    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }
}
