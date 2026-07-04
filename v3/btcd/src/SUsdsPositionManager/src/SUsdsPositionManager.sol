// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

interface ILitePSMWrapper {
    function sellGem(address usr, uint256 gemAmt) external;
    function buyGem(address usr, uint256 gemAmt) external;
}

/// @title SUsdsPositionManager
/// @notice Holds USDC and sUSDS positions; provides atomic USDC↔sUSDS conversion operations.
/// @dev Uses OpenZeppelin Ownable for access control and SafeERC20 for safe token operations.
///      Follows the same patterns as YieldBasisStrategy and UniswapV3PositionManager.
contract SUsdsPositionManager is Ownable {
    using SafeERC20 for IERC20;

    /* ───────────────────────── Errors ───────────────────────── */

    error ZeroAddress();
    error ZeroAmount();
    error DelegatecallFailed();
    error InsufficientSharesReceived(uint256 expected, uint256 received);
    error InsufficientUsdcReceived(uint256 expected, uint256 received);

    /* ───────────────────────── Events ───────────────────────── */

    event Deposited(uint256 indexed usdcAmount, uint256 sharesReceived);
    event Withdrawn(uint256 indexed sharesAmount, uint256 usdcReceived, address indexed recipient);
    event TokensWithdrawn(address indexed token, address indexed to, uint256 amount);

    /* ───────────────────────── Constants ───────────────────────── */

    /// @dev Format: <subtype>:<investment>:<io token>:<version>
    string public TYP;

    uint256 private constant USDC_DECIMALS = 6;
    uint256 private constant USDS_DECIMALS = 18;
    uint256 private constant DECIMAL_CONVERSION = 10 ** (USDS_DECIMALS - USDC_DECIMALS); // 1e12

    /* ───────────────────────── Immutables ───────────────────────── */

    IERC20 public immutable USDC;
    IERC20 public immutable USDS;
    IERC4626 public immutable SUSDS;
    ILitePSMWrapper public immutable LITE_PSM;

    /* ───────────────────────── Constructor ───────────────────────── */

    constructor(
        address usdc_,
        address usds_,
        address susds_,
        address litePsm_,
        address owner_,
        string memory typ_
    ) Ownable(owner_) {
        if (usdc_ == address(0) || usds_ == address(0) || susds_ == address(0) || litePsm_ == address(0) || owner_ == address(0)) {
            revert ZeroAddress();
        }

        USDC = IERC20(usdc_);
        USDS = IERC20(usds_);
        SUSDS = IERC4626(susds_);
        LITE_PSM = ILitePSMWrapper(litePsm_);
        TYP = typ_;

        // Pre-approve for gas efficiency (follows pattern from YieldBasisStrategy)
        IERC20(usdc_).forceApprove(litePsm_, type(uint256).max);
        IERC20(usds_).forceApprove(litePsm_, type(uint256).max);
        IERC20(usds_).forceApprove(susds_, type(uint256).max);
    }

    /* ───────────────────────── External Functions ───────────────────────── */

    /// @notice Deposit USDC, convert to USDS, then deposit into sUSDS vault
    /// @param usdcAmount Amount of USDC to deposit (6 decimals)
    /// @param minSharesOut Minimum sUSDS shares to receive (slippage protection)
    /// @return shares Number of sUSDS shares received
    function buy(uint256 usdcAmount, uint256 minSharesOut) external onlyOwner returns (uint256 shares) {
        if (usdcAmount == 0) {
            revert ZeroAmount();
        }

        // 1. Convert USDC → USDS via PSM
        uint256 usdsBalanceBefore = USDS.balanceOf(address(this));
        LITE_PSM.sellGem(address(this), usdcAmount);
        uint256 usdsReceived = USDS.balanceOf(address(this)) - usdsBalanceBefore;

        // 2. Deposit USDS → sUSDS
        shares = SUSDS.deposit(usdsReceived, address(this));

        // 3. Validate slippage
        if (shares < minSharesOut) {
            revert InsufficientSharesReceived(minSharesOut, shares);
        }

        emit Deposited(usdcAmount, shares);
    }

    /// @notice Redeem sUSDS shares, convert USDS to USDC, send to receiver
    /// @param sharesAmount Amount of sUSDS shares to redeem
    /// @param minUsdcOut Minimum USDC to receive (slippage protection)
    /// @param receiver Address to receive USDC
    /// @return usdcReceived Amount of USDC received
    function sellAndTransfer(
        uint256 sharesAmount,
        uint256 minUsdcOut,
        address receiver
    ) external onlyOwner returns (uint256 usdcReceived) {
        if (sharesAmount == 0) {
            revert ZeroAmount();
        }
        if (receiver == address(0)) {
            revert ZeroAddress();
        }

        // 1. Redeem sUSDS → USDS
        uint256 usdsReceived = SUSDS.redeem(sharesAmount, address(this), address(this));

        // 2. Convert USDS → USDC via PSM
        uint256 usdcAmount = usdsReceived / DECIMAL_CONVERSION;
        uint256 usdcBalanceBefore = USDC.balanceOf(receiver);
        LITE_PSM.buyGem(receiver, usdcAmount);
        usdcReceived = USDC.balanceOf(receiver) - usdcBalanceBefore;

        // 3. Validate slippage
        if (usdcReceived < minUsdcOut) {
            revert InsufficientUsdcReceived(minUsdcOut, usdcReceived);
        }

        emit Withdrawn(sharesAmount, usdcReceived, receiver);
    }

    /// @notice Execute a delegatecall to a target contract
    /// @dev Follows pattern from YieldBasisStrategy and UniswapV3PositionManager
    /// @param target The address of the target contract
    /// @param data The calldata to send to the target contract
    /// @return result The returned data from the delegatecall
    function delegate(address target, bytes calldata data) external onlyOwner returns (bytes memory) {
        (bool success, bytes memory result) = target.delegatecall(data);
        if (!success) {
            revert DelegatecallFailed();
        }
        return result;
    }

    /// @notice Transfer out any ERC20 tokens held by the strategy
    /// @dev Follows pattern from YieldBasisStrategy
    /// @param token Address of the token to rescue
    /// @param to Recipient address
    /// @param amount Amount to rescue
    function transferERC20Tokens(address token, address to, uint256 amount) external onlyOwner {
        if (token == address(0) || to == address(0)) {
            revert ZeroAddress();
        }
        if (amount == 0) {
            revert ZeroAmount();
        }

        IERC20(token).safeTransfer(to, amount);

        emit TokensWithdrawn(token, to, amount);
    }

    /* ───────────────────────── View Functions ───────────────────────── */

    /// @notice Get total position value in USDC terms (6 decimals)
    /// @dev Includes both sUSDS position value and idle USDC held
    /// @return Total USDC value of position
    function balance() external view returns (uint256) {
        // sUSDS balance converted to USDS value, then to USDC
        uint256 susdsBalance = SUSDS.balanceOf(address(this));
        uint256 usdsValue = SUSDS.convertToAssets(susdsBalance);
        uint256 usdcValue = usdsValue / DECIMAL_CONVERSION;

        // Add any idle USDC held in contract
        uint256 idleUsdc = USDC.balanceOf(address(this));

        return usdcValue + idleUsdc;
    }

    /// @notice Get raw balances for maintenance checks
    /// @return susdsBalance sUSDS shares held
    /// @return usdcBalance Idle USDC held
    function getRawBalance() external view returns (uint256 susdsBalance, uint256 usdcBalance) {
        susdsBalance = SUSDS.balanceOf(address(this));
        usdcBalance = USDC.balanceOf(address(this));
    }

    /// @notice Get quote for USDC to sUSDS shares
    /// @param usdcAmount Amount of USDC (6 decimals)
    /// @return shares Expected sUSDS shares
    function getQuoteForUsdcToShares(uint256 usdcAmount) external view returns (uint256 shares) {
        // USDC → USDS is 1:1 via PSM (adjusting decimals)
        uint256 usdsAmount = usdcAmount * DECIMAL_CONVERSION;
        // USDS → sUSDS via ERC-4626 preview
        shares = SUSDS.previewDeposit(usdsAmount);
    }

    /// @notice Get quote for sUSDS shares to USDC
    /// @param sharesAmount Amount of sUSDS shares
    /// @return usdcOut Expected USDC amount (6 decimals)
    function getQuoteForSharesToUsdc(uint256 sharesAmount) external view returns (uint256 usdcOut) {
        // sUSDS → USDS via ERC-4626 preview
        uint256 usdsAmount = SUSDS.previewRedeem(sharesAmount);
        // USDS → USDC is 1:1 via PSM (adjusting decimals)
        usdcOut = usdsAmount / DECIMAL_CONVERSION;
    }

    /// @notice Get shares needed to receive a specific USDC amount (for withdrawals)
    /// @dev Uses ERC-4626 previewWithdraw to calculate shares needed
    /// @param usdcAmount Desired USDC output (6 decimals)
    /// @return shares sUSDS shares needed to redeem
    function getSharesForUsdcAmount(uint256 usdcAmount) external view returns (uint256 shares) {
        // USDC → USDS conversion (adjusting decimals)
        uint256 usdsAmount = usdcAmount * DECIMAL_CONVERSION;
        // USDS → sUSDS shares via ERC-4626 previewWithdraw
        shares = SUSDS.previewWithdraw(usdsAmount);
    }
}
