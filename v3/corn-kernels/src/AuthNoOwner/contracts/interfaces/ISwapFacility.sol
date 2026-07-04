import {SendParam, MessagingFee} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IVault} from "../interfaces/IVault.sol";
import {IERC20Mintable} from "../interfaces/IERC20Mintable.sol";

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface ISwapFacility {
    event SwapExactCollateralForDebt(
        address indexed sender, uint256 collateralIn, uint256 debtOut, uint256 fee, address indexed to
    );
    event SwapExactDebtForCollateral(
        address indexed sender, uint256 debtIn, uint256 collateralOut, uint256 fee, address indexed to
    );

    event PreMintDebt(uint256 amount);
    event BurnExcessDebt(uint256 amount);
    event CollectFees(uint256 amount);

    event SwapInEnabledSet(bool enabled);
    event SwapOutEnabledSet(bool enabled);

    event SwapInFeeRateSet(uint256 rate);
    event SwapOutFeeRateSet(uint256 rate);

    event MintCapSet(uint256 newCap);
    event PreMintedDebtTargetSet(uint256 target);

    event FeeRecipientSet(address indexed feeRecipient);

    error SwapInDisabled();
    error SwapOutDisabled();
    error DeadlinePassed();
    error OutputTokenInvalidDecimals(uint8 decimals);
    error InputTokenTooFewDecimals(uint8 decimals);
    error InputTokenTooManyDecimals(uint8 decimals);
    error InputTokenInvalidDecimals(uint8 decimals);
    error FeeRateExceedsMax(uint256 _feeRate);
    error NoDebtToPreMint();
    error NoExcessDebtToBurn();
    error NoFeesToCollect();
    error ZeroDebtIn();
    error ZeroDebtOut();
    error ZeroCollateralIn();
    error ZeroCollateralOut();
    error InsufficientOutputAmount();
    error DebtInExceedsMax(uint256 debtIn, uint256 maxDebtIn);
    error ExceedsMintCap(uint256 debtOut);
    error CrosschainSwapInDisabled();
    error InvalidAddress();
    error InvalidFee();
    error MintCapBelowPreMintedDebtTarget(uint256 mintCap, uint256 preMintedDebtTarget);
    error DebtMintedBelowZero(uint256 amountMinted, uint256 debtMinted);

    function swapExactCollateralForDebt(uint256 collateralIn, uint256 minDebtOut, address to, uint256 deadline)
        external
        returns (uint256 debtOut, uint256 fee);

    function swapExactDebtForCollateral(uint256 debtIn, uint256 minCollateralOut, address to, uint256 deadline)
        external
        returns (uint256 collateralOut, uint256 fee);

    function swapInFeeRate() external view returns (uint16);
    function swapOutFeeRate() external view returns (uint16);
    function swapInEnabled() external view returns (bool);
    function swapOutEnabled() external view returns (bool);

    function debtMinted() external view returns (uint256);
    function debtMintCap() external view returns (uint256);

    function collateralToken() external view returns (IERC20Metadata);
    function debtToken() external view returns (IERC20Mintable);

    /// @notice Holder address for the collateral tokens.
    /// @dev This contract must be able to freely transfer collateralToken on behalf of the vault.
    function vault() external view returns (IVault);

    /// @notice Address to receive fees, which are always taken in debt token.
    function feeRecipient() external view returns (address);

    /// @notice Precision conversion factor for collateral token, debt token is expected to always have 18 decimals.
    function to18ConversionFactor() external view returns (uint256);
}
